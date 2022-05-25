package MIR;

import java.util.HashSet;
import java.util.Set;

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

    @Override
    public Set<register> getUseVar() {
        Set<register> S = new HashSet<>() ;
        S.add((register) from) ;
        return S ;
    }
    @Override
    public Set<register> getDefVar() {
        Set<register> S = new HashSet<>() ;
        S.add((register) to) ;
        return S ;
    }

    @Override
    public void updateUseReg (register origReg, entity toReg) {
        if (from == origReg) from = toReg ;   
    }

    @Override
    public void updateDefReg (register origReg, register toReg) {
        if (to == origReg) to = toReg ;
    }
}
