package Assembly.Inst;

import MIR.label;

public class jumpInst extends Inst{
    label toLabel ;
    public jumpInst (label _toLabel) {
        toLabel = _toLabel ;
    }
}
