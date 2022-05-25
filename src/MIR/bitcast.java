package MIR;

import java.util.HashSet;
import java.util.Set;

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
    @Override
    public Set<register> getUseVar() {
        Set<register> S = new HashSet<>() ;
        S.add(from) ;
        return S ;
    }
    @Override
    public Set<register> getDefVar() {
        Set<register> S = new HashSet<>() ;
        S.add(to) ;
        return S ;
    }

    @Override
    public void updateUseReg (register origReg, entity toReg) {
        if (from == origReg) from = (register) toReg ;
    }

    @Override
    public void updateDefReg (register origReg, register toReg) {
        if (to == origReg) to = toReg ;
    }
}
