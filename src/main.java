import AST.RootNode;
import Assembly.AssemblyGlobalDefine;
import Backend.AssemblyBuilder;
import Backend.AssemblyPrinter;
import Backend.IRBuilder;
import Backend.IRPrinter;
import Frontend.ASTBuilder;
import Frontend.SymbolCollector;
import MIR.globalDefine;
import Optimize.MemToReg;
import Optimize.RegisterAllocation;
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
        String name = "test.mx";
        InputStream raw = System.in;
        // InputStream raw = new FileInputStream(name);
        // PrintStream out = new PrintStream(System.out) ;
        // PrintStream out2 = new PrintStream(System.out) ;
        PrintStream IRout = new PrintStream("llvm-test.ll") ;
        PrintStream IROptOut = new PrintStream("opt.ll") ;
        PrintStream AssmDebugOut = new PrintStream("debug.s") ;
        // PrintStream out = new PrintStream("test.s") ;
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
                new IRBuilder(globalDef, gScope).visit(ASTRoot) ;
                new IRPrinter().visitGlobalDef(IRout, globalDef);
                new MemToReg(globalDef) ;
                new IRPrinter().visitGlobalDef(IROptOut, globalDef);

                AssemblyGlobalDefine assemblyGlobalDefine = new AssemblyGlobalDefine() ;
                new AssemblyBuilder(globalDef, assemblyGlobalDefine) ;
                new AssemblyPrinter(AssmDebugOut, assemblyGlobalDefine) ;
                new RegisterAllocation(assemblyGlobalDefine) ;
                new AssemblyPrinter(out, assemblyGlobalDefine) ;
            }
        } catch(error er) {
            System.err.println(er.toString());
            throw new RuntimeException();
        }
    }
}