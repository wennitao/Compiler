package Backend;

import MIR.block;
import MIR.mainFn;

public class IRPrinter {
    public void visitBlock (block curBlock) {
        curBlock.print() ;
    }

    public void visitFn (mainFn fn) {
        visitBlock(fn.rootBlock) ;
    }
}
