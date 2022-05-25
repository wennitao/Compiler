package MIR;

import java.util.HashSet;
import java.util.Set;

import MIR.IRType.IRNullType;
import MIR.IRType.IRPointerType;
import MIR.IRType.IRType;
import MIR.IRType.IRVoidType;

public class store extends statement {
    public IRType type ;
    int value ;
    public entity from, dest ;

    public store (IRType _type, entity _from, entity _dest) {
        type = _type; from = _from; dest = _dest ;
    }

    @Override
    public String toString () {
        // if (from.type instanceof IRNullType) return "store " + from + ", " + dest.type + " " + dest ;
        return "store " + ((IRPointerType) dest.type).type + " " + from + ", " + dest.type + " " + dest ;
    }

    @Override
    public Set<register> getUseVar() {
        Set<register> S = new HashSet<>() ;
        if (from instanceof register) S.add((register) from) ;
        if (dest instanceof register) S.add((register) dest) ;
        return S ;
    }
    @Override
    public Set<register> getDefVar() {
        Set<register> S = new HashSet<>() ;
        S.add((register) dest) ;
        return S ;
    }

    @Override
    public void updateUseReg (register origReg, entity toReg) {
        if (from == origReg) from = toReg ;
    }

    @Override
    public void updateDefReg (register origReg, register toReg) {
        if (dest == origReg) dest = toReg ;   
    }
}
