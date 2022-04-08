package MIR;

import java.util.HashSet;
import java.util.Set;

import MIR.IRType.IRType;

public class trunc extends statement {
    IRType fromType, toType ;
    public register from, to ;
    public trunc (register _from, register _to, IRType _fromType, IRType _toType) {
        fromType = _fromType; toType = _toType ;
        from = _from; to = _to ;
    }
    @Override
    public String toString() {
        return to + " = trunc " + fromType + " " + from + " to " + toType ;
    }
    @Override
    public Set<register> getUseVar() {
        Set<register> S = new HashSet<>() ;
        if (from instanceof register) S.add((register) from) ;
        return S ;
    }
    @Override
    public Set<register> getDefVar() {
        Set<register> S = new HashSet<>() ;
        if (to instanceof register) S.add((register) to) ;
        return S ;
    }
}
