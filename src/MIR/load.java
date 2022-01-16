package MIR;

import MIR.IRType.IRPointerType;
import MIR.IRType.IRType;

public class load extends statement {
    public IRType type ;
    public entity from, to ;
    public load (IRType _type, entity _from, entity _to) {
        type = _type; from = _from; to = _to ;
    }
    @Override
    public String toString() {
        return to + " = load " + to.type + ", " + from.type + " " + from ; 
    }
}
