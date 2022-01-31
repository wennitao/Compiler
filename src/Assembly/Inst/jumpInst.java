package Assembly.Inst;

import MIR.label;

public class jumpInst extends Inst{
    public label toLabel ;
    public jumpInst (label _toLabel) {
        toLabel = _toLabel ;
    }
    @Override
    public String toString () {
        return "j\t." + toLabel.labelID ;
    }
}
