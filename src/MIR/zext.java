package MIR;

import java.util.HashSet;
import java.util.Set;

import MIR.IRType.IRType;

public class zext extends statement {
    IRType fromType, toType ;
    public register from, to ;
    public zext (register _from, register _to, IRType _fromType, IRType _toType) {
        fromType = _fromType; toType = _toType ;
        from = _from; to = _to ;
    }

    @Override
    public String toString() {
        return to + " = zext " + fromType + " " + from + " to " + toType ;
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

    @Override
    public void updateUseReg (register origReg, entity toReg) {
        if (from == origReg) from = (register) toReg ;
    }
}
