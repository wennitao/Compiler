package MIR;

import java.util.HashSet;
import java.util.Set;

import MIR.IRType.IRVoidType;

public class returnStmt extends statement {
    public entity returnReg ;
    public returnStmt (entity _returnReg) {
        super () ;
        returnReg = _returnReg ;
    }
    @Override
    public String toString () {
        if (returnReg instanceof constant) return "ret i32 " + returnReg ;
        else if (((register)returnReg).type instanceof IRVoidType) return "ret void" ;
        else return "ret " + ((register)returnReg).type + " " + returnReg ;
    }
    @Override
    public Set<register> getUseVar() {
        Set<register> S = new HashSet<>() ;
        if (returnReg instanceof register) S.add((register) returnReg) ;
        return S ;
    }
    @Override
    public Set<register> getDefVar() {
        return new HashSet<>() ;
    }

    @Override
    public void updateUseReg (register origReg, entity toReg) {
        if (returnReg == origReg) returnReg = toReg ;
    }

    @Override
    public void updateDefReg (register origReg, register toReg) {
        
    }
}
