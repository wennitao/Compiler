package Assembly.Inst;

import Assembly.Operand.Reg;

public class binaryInst extends Inst {
    public enum binaryInstOp {
        add, sub, xor, or, and, sll, srl, sra, slt, sltu, mul, div, rem ;
    }
    binaryInstOp op ;
    public binaryInst (binaryInstOp _op, Reg _rs1, Reg _rs2, Reg _rd) {
        op = _op; rs1 = _rs1; rs2 = _rs2; rd = _rd ;
    }
    @Override
    public String toString() {
        return op.name() + "\t" + rd + ", " + rs1 + ", " + rs2 ;
    }
}
