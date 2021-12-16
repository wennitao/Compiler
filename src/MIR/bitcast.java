package MIR;

import MIR.IRType.IRType;

public class bitcast extends statement {
    public register from, to ;
    public IRType toType ;
    public bitcast (register _from, register _to, IRType _toType) {
        from = _from; to = _to; toType = _toType ;
    }
    @Override
    public String toString () {
        return to + " = bitcast " + from.type + " " + from + " to " + toType ;
    }
}
