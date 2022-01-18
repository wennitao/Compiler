package Assembly.Inst;

import Assembly.Operand.Imm;
import Assembly.Operand.Reg;

public class liInst extends Inst {
    Imm imm ;
    public liInst (Reg _rd, Imm _imm) {
        rd = _rd; imm = _imm ;
    }
    @Override
    public String toString() {
        return "li\t" + rd + ", " + imm ;
    }
}
