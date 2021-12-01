package Backend;

import MIR.function;
import MIR.globalDefine;

public class IRPrinter {
    public void visitGlobalDef (globalDefine globalDef) {
        globalDef.globalDefStmt.forEach(x -> {
            System.out.println(x) ;
        });
        System.out.println();
        globalDef.functions.forEach(x -> {
            x.print() ;
        });
    }
}
