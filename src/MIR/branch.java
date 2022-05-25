package MIR;

import java.util.HashSet;
import java.util.Set;

public class branch extends statement {
    public boolean isConditioned ;
    public entity condition = null ;
    public label trueBranch, falseBranch ;
    public branch (entity _condition, label _trueBranch, label _falseBranch) {
        condition = _condition ;
        trueBranch = _trueBranch; falseBranch = _falseBranch ;
        isConditioned = true ;
    }
    public branch (label _trueBranch) {
        trueBranch = _trueBranch ;
        isConditioned = false ;
    }

    @Override
    public String toString () {
        if (isConditioned) return "br i1 " + condition + ", label " + trueBranch + ", label " + falseBranch ;
        else return "br label " + trueBranch ;
    }

    @Override
    public Set<register> getUseVar() {
        Set<register> S = new HashSet<>() ;
        if (isConditioned && condition instanceof register) S.add((register) condition) ;
        return S ;
    }
    @Override
    public Set<register> getDefVar() {
        Set<register> S = new HashSet<>() ;
        return S ;
    }

    @Override
    public void updateUseReg (register origReg, entity toReg) {
        if (condition == origReg) condition = toReg ;
    }

    @Override
    public void updateDefReg (register origReg, register toReg) {
        
    }
}
