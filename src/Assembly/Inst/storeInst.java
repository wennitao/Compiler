package Assembly.Inst;

import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

public class storeInst extends Inst {
    public enum storeOp {
        sb, sh, sw 
    } ;
    storeOp op ;
    Imm imm ;
    String symbol = null ;
    public storeInst (int size, Reg _rs1, Imm _imm, Reg _rs2) {
        if (size == 1) op = storeOp.sb ;
        else if (size == 2) op = storeOp.sh ;
        else op = storeOp.sw ;
        rs1 = _rs1; rs2 = _rs2; imm = _imm ;
    }
    public storeInst (int size, String _symbol, Reg _rs1, Reg _rs2) {
        if (size == 1) op = storeOp.sb ;
        else if (size == 2) op = storeOp.sh ;
        else op = storeOp.sw ;
        symbol = _symbol; rs1 = _rs1; rs2 = _rs2 ;
    }
    @Override
    public String toString() {
        return op.name() + "\t" + rs1 + ", " + (symbol == null ? imm + "(" + rs2 + ")" : symbol + ", " + rs2) ;
    }
}
