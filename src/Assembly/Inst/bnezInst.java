package Assembly.Inst;

import Assembly.Operand.Reg;
import MIR.label;

public class bnezInst extends Inst {
    public label toLabel ;
    public bnezInst (Reg rs, label _toLabel) {
        rs1 = rs; toLabel = _toLabel ;
    }
    @Override
    public String toString() {
        return "bnez\t" + rs1 + ", ." + toLabel.labelID ;
    }
}
