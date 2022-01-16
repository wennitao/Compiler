package Assembly.Inst;

import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

public class storeInst extends Inst {
    public enum storeOp {
        sb, sh, sw 
    } ;
    storeOp op ;
    Imm imm ;
    public storeInst (int size, Reg _rs, Reg _rd, Imm _imm) {
        if (size == 1) op = storeOp.sb ;
        else if (size == 2) op = storeOp.sh ;
        else op = storeOp.sw ;
        rs1 = _rs; rd = _rd; imm = _imm ;
    }
}
