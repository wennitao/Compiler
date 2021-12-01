package MIR;

import MIR.IRType.IRType;

public class trunc extends statement {
    IRType fromType, toType ;
    register from, to ;
    public trunc (register _from, register _to, IRType _fromType, IRType _toType) {
        fromType = _fromType; toType = _toType ;
        from = _from; to = _to ;
    }
    @Override
    public String toString() {
        return to + " = trunc " + fromType + " " + from + " to " + toType ;
    }
}
