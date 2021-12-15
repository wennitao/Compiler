package Backend;

import java.io.PrintStream;

import MIR.globalDefine;

public class IRPrinter {
    public void visitGlobalDef (PrintStream out, globalDefine globalDef) {
        globalDef.globalDefStmt.forEach(x -> {
            out.println(x) ;
        });
        out.println();
        globalDef.functions.forEach(x -> {
            x.print(out) ;
        });
    }
}
