package MIR;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import MIR.IRType.IRType;

public class phi extends statement {
    public register destReg ;
    public IRType type ;
    public ArrayList<entity> value ;
    public ArrayList<label> labels ;
    public phi (register _destReg, IRType _type) {
        destReg = _destReg; type = _type ;
        value = new ArrayList<>() ;
        labels = new ArrayList<>() ;
    }

    @Override
    public String toString() {
        String res = destReg + " = phi " + type + " " ;
        for (int i = 0; i < value.size() - 1; i ++) {
            res = res + "[ " + value.get(i) + ", " + labels.get(i) + " ], " ;
        }
        if (!value.isEmpty()) res = res + "[ " + value.get(value.size() - 1) + ", " + labels.get(labels.size() - 1) + " ]" ;
        return res ;
    }

    @Override
    public Set<register> getUseVar() {
        Set<register> S = new HashSet<>() ;
        for (entity cur : value) {
            if (cur instanceof register) S.add((register) cur) ;
        }
        return S ;
    }
    @Override
    public Set<register> getDefVar() {
        Set<register> S = new HashSet<>() ;
        S.add(destReg) ;
        return S ;
    }

    @Override
    public void updateUseReg (register origReg, entity toReg) {
        for (int i = 0; i < value.size(); i ++) {
            if (value.get(i) == origReg)
                value.set(i, toReg) ;
        }
    }

    @Override
    public void updateDefReg (register origReg, register toReg) {
        if (destReg == origReg) destReg = toReg ;
    }

    public Object clone () {
        // System.out.println("clone phi");
        phi newPhi = new phi(destReg, type) ;
        newPhi.value = new ArrayList<>(value) ;
        newPhi.labels = new ArrayList<>(labels) ;
        return newPhi ;
    }
}
