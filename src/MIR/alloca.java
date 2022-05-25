package MIR;

import java.util.HashSet;
import java.util.Set;

import MIR.IRType.IRType;

public class alloca extends statement {
    public register reg ;
    public IRType type ;
    public alloca (register _reg, IRType _type) {
        reg = _reg ;
        type = _type ;
    }

    @Override 
    public String toString () {
        return reg + " = alloca " + type ;
    }

    @Override
    public Set<register> getUseVar() {
        return new HashSet<>() ;
    }
    @Override
    public Set<register> getDefVar() {
        return new HashSet<>() ;
    }
    
    @Override
    public void updateUseReg (register origReg, entity toReg) {
        
    }

    @Override
    public void updateDefReg (register origReg, register toReg) {
        if (reg == origReg) reg = toReg ;
    }

    public Object clone () {
        alloca newAlloca = new alloca(reg, type) ;
        return newAlloca ;
    }
}