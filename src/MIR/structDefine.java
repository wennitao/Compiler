package MIR;

import java.util.HashSet;
import java.util.Set;

import MIR.IRType.IRClassType;
import MIR.IRType.IRType;

public class structDefine extends statement {
    public IRClassType classType ;
    public structDefine (IRClassType _classType) {
        classType = _classType ;
    }
    @Override
    public String toString() {
        String res = classType + " = type { " ;
        for (int i = 0; i < classType.classTypes.size() - 1; i ++) {
            IRType type = classType.classTypes.get(i) ;
            res = res + type + ", " ;
        } 
        if (!classType.classTypes.isEmpty()) {
            IRType type = classType.classTypes.get (classType.classTypes.size() - 1) ;
            res = res + type ;
        }
        res = res + " }" ;
        return res ;
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
