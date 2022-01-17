package Assembly.Inst;

import Assembly.Operand.Reg;

public class mvInst extends Inst {
    public mvInst (Reg _rs, Reg _rd) {
        rs1 = _rs; rd = _rd ;
    }
    @Override
    public String toString () {
        return "mv\t" + rd + ", " + rs1 ;
    }
}
