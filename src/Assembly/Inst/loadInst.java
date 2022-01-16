package Assembly.Inst;

import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

public class loadInst extends Inst {
    public enum loadOp {
        lb, lh, lw, lbu, lhu
    } ;
    loadOp op ;
    Imm imm ;
    public loadInst (int _size, Reg _rs, Reg _rd, Imm _imm) {
        if (_size == 1) op = loadOp.lb ;
        else if (_size == 2) op = loadOp.lh ;
        else op = loadOp.lw ;
        rs1 = _rs; rd = _rd; imm = _imm ;
    }
}
