package Assembly.Inst;

import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

public class ImmInst extends Inst {
    public enum immInstOp {
        addi, xori, ori, andi, slli, srli, srai, slti, sltiu
    } ;
    public immInstOp op ;
    public Imm imm ;
    public ImmInst (immInstOp _op, Reg _rs1, Imm _imm, Reg _rd) {
        op = _op; rs1 = _rs1; imm = _imm; rd = _rd ;
    }
    @Override
    public String toString() {
        return op.name() + "\t" + rd + ", " + rs1 + ", " + imm ;
    }
}
