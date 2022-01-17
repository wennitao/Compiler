package Assembly.Inst;

import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

public class storeInst extends Inst {
    public enum storeOp {
        sb, sh, sw 
    } ;
    storeOp op ;
    Imm imm ;
    public storeInst (int size, Reg _rs1, Imm _imm, Reg _rs2) {
        if (size == 1) op = storeOp.sb ;
        else if (size == 2) op = storeOp.sh ;
        else op = storeOp.sw ;
        rs1 = _rs1; rs2 = _rs2; imm = _imm ;
    }
    @Override
    public String toString() {
        return op.name() + "\t" + rs1 + ", " + imm + "(" + rs2 + ")" ;
    }
}
