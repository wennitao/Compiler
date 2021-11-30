package MIR;

import MIR.IRType.IRType;

public class zext extends statement {
    IRType fromType, toType ;
    register from, to ;
    public zext (register _from, register _to, IRType _fromType, IRType _toType) {
        fromType = _fromType; toType = _toType ;
        from = _from; to = _to ;
    }
    @Override
    public String toString() {
        return to + " = zext " + fromType + from + " to " + toType ;
    }
}
