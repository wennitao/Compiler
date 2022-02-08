package Assembly.Inst;

import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

public class loadInst extends Inst {
    public enum loadOp {
        lb, lh, lw, lbu, lhu
    } ;
    loadOp op ;
    Imm imm ;
    public String symbol = null ;
    public loadInst (int _size, Reg _rd, Imm _imm, Reg _rs2) {
        if (_size == 1) op = loadOp.lb ;
        else if (_size == 2) op = loadOp.lh ;
        else op = loadOp.lw ;
        rd = _rd; rs2 = _rs2; imm = _imm ;
    }
    public loadInst (int _size, String _symbol, Reg _rd) {
        if (_size == 1) op = loadOp.lb ;
        else if (_size == 2) op = loadOp.lh ;
        else op = loadOp.lw ;
        symbol = _symbol; rd = _rd ;
    }
    @Override
    public String toString() {
        return op.name() + "\t" + rd + ", " + (symbol == null ? imm + "(" + rs2 + ")" : symbol) ;
    }
}
