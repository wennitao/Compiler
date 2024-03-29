import AST.RootNode;
import Assembly.AssemblyGlobalDefine;
import Backend.AssemblyBuilder;
import Backend.AssemblyPrinter;
import Backend.IRBuilder;
import Backend.IRPrinter;
import Frontend.ASTBuilder;
import Frontend.SymbolCollector;
import Interpreter.IRInterpreter;
import MIR.globalDefine;
import Optimize.AggressiveDCE;
import Optimize.ConstantPropagation;
import Optimize.InlineExpansion;
import Optimize.MemToReg;
import Optimize.RegisterAllocation;
import Optimize.SimpleDCE;
import Frontend.SemanticChecker;
import Parser.MxLiteLexer;
import Parser.MxLiteParser;
import Util.*;
import Util.error.*;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;

public class main {
    private static String Semantic = "-fsyntax-only";
    private static String Output = "-o";
    public static void main(String[] args) throws Exception{
        boolean SemanticSwitch = false ;
        PrintStream out = System.out ;
        for (int i = 0; i < args.length; i ++) {
            if (args[i].charAt(0) == '-') {
                if (args[i].equals(Semantic))
                    SemanticSwitch = true ;
                else if (args[i].equals(Output))
                    out = new PrintStream(new FileOutputStream(args[i+1]));
            }
        }

        boolean JitSwitch = false ;

        String name = "test.mx";
        // InputStream raw = System.in;
        InputStream raw = new FileInputStream(name);
        PrintStream IRout = new PrintStream("llvm-test.ll") ;
        PrintStream SSA = new PrintStream("ssa.ll") ;
        PrintStream SCCP = new PrintStream("SCCP.ll") ;
        PrintStream ADCE = new PrintStream("ADCE.ll") ;
        PrintStream IROptOut = new PrintStream("opt.ll") ;
        PrintStream AssmDebugOut = new PrintStream("debug.s") ;
        out = new PrintStream("test.s") ;
        try {
            CharStream input = CharStreams.fromStream(raw);
            MxLiteLexer lexer = new MxLiteLexer(input);
            lexer.removeErrorListeners();
            lexer.addErrorListener(new MxLiteErrorListener());
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            MxLiteParser parser = new MxLiteParser(tokens);
            parser.removeErrorListeners();
            parser.addErrorListener(new MxLiteErrorListener());

            ParseTree parseTreeRoot = parser.program();
            ASTBuilder astBuilder = new ASTBuilder();
            // System.out.println("visit root\n");
            RootNode ASTRoot = (RootNode) astBuilder.visit(parseTreeRoot);

            globalScope gScope = new globalScope();
            new SymbolCollector(gScope).visit(ASTRoot);
            new SemanticChecker(gScope).visit(ASTRoot);

            if (!SemanticSwitch) {
                globalDefine globalDef = new globalDefine() ;
                System.out.println ("begin building IR...") ;
                new IRBuilder(globalDef, gScope).visit(ASTRoot) ;
                new IRPrinter().visitGlobalDef(IRout, globalDef);
                System.out.println ("begin building SSA...") ;
                new MemToReg(globalDef) ;
                new IRPrinter().visitGlobalDef(SSA, globalDef);

                if (!JitSwitch) {
                    System.out.println ("begin SCCP...") ;
                    new ConstantPropagation(globalDef) ;
                    new IRPrinter().visitGlobalDef(SCCP, globalDef);
                    System.out.println ("begin ADCE...") ;
                    new AggressiveDCE(globalDef).DCE() ;
                    new IRPrinter().visitGlobalDef(ADCE, globalDef);
                    System.out.println ("begin Inline...") ;
                    new InlineExpansion (globalDef) ;
                    new IRPrinter().visitGlobalDef(IROptOut, globalDef);

                    AssemblyGlobalDefine assemblyGlobalDefine = new AssemblyGlobalDefine() ;
                    System.out.println ("begin Assembly Builder...") ;
                    new AssemblyBuilder(globalDef, assemblyGlobalDefine) ;
                    new AssemblyPrinter(AssmDebugOut, assemblyGlobalDefine) ;
                    System.out.println ("begin color assign...") ;
                    new RegisterAllocation(assemblyGlobalDefine) ;
                    new AssemblyPrinter(out, assemblyGlobalDefine) ;
                } else {
                    new IRInterpreter(globalDef) ;
                }
            }
        } catch(error er) {
            System.err.println(er.toString());
            throw new RuntimeException();
        }
    }
}