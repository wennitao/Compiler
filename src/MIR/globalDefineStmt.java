package MIR;

import java.util.HashSet;
import java.util.Set;

import MIR.IRType.IRPointerType;

public class globalDefineStmt extends statement {
    public register reg ;
    public constant initConstant ;
    public globalDefineStmt (register _reg) {
        reg = _reg ;
        initConstant = new constant(0, ((IRPointerType)reg.type).type) ;
    }
    public globalDefineStmt (register _reg, constant _init) {
        reg = _reg; initConstant = _init ;
    }

    @Override
    public String toString () {
        return reg + " = global " + ((IRPointerType)reg.type).type + " " + initConstant ;
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
        
    }
}
