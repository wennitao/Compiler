package Assembly.Inst;

import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

public class loadInst extends Inst {
    public enum loadOp {
        lb, lh, lw, lbu, lhu
    } ;
    loadOp op ;
    Imm imm ;
    public loadInst (int _size, Reg _rs1, Imm _imm, Reg _rs2) {
        if (_size == 1) op = loadOp.lb ;
        else if (_size == 2) op = loadOp.lh ;
        else op = loadOp.lw ;
        rs1 = _rs1; rs2 = _rs2; imm = _imm ;
    }
    @Override
    public String toString() {
        return op.name() + "\t" + rs1 + ", " + imm + "(" + rs2 + ")" ;
    }
}
