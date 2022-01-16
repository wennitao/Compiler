package Assembly.Inst;

import Assembly.Operand.Reg;

public abstract class Inst {
    public Inst prev = null, next = null ;
    public Reg rs1, rs2, rd ;
}
