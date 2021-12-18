package MIR;

import java.util.ArrayList;

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
}
