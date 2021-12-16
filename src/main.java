import AST.RootNode;
import Backend.IRBuilder;
import Backend.IRPrinter;
import Frontend.ASTBuilder;
import Frontend.SymbolCollector;
import MIR.function;
import MIR.globalDefine;
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
    public static void main(String[] args) throws Exception{
        String name = "test.mx";
        // InputStream raw = System.in;
        // PrintStream out = new PrintStream(System.out) ;
        PrintStream out = new PrintStream("llvm-test.ll") ;
        InputStream raw = new FileInputStream(name);
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

            globalDefine globalDef = new globalDefine() ;
            // function mainFn = new function("main") ;
            new IRBuilder(globalDef, gScope).visit(ASTRoot) ;
            new IRPrinter().visitGlobalDef(out, globalDef);
        } catch(error er) {
            System.err.println(er.toString());
            throw new RuntimeException();
        }
    }
}