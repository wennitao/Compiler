package MIR;

import java.util.ArrayList;

import MIR.IRType.IRType;

public class functioncall extends statement {
    public String functionName ;
    public IRType returnType ;
    public boolean isVoid ;
    public register destReg ;
    public ArrayList<entity> parameters ;
    public functioncall (String _functionName, IRType _returnType) {
        super () ;
        functionName = _functionName; isVoid = true ;
        returnType = _returnType ;
        parameters = new ArrayList<>() ;
    }
    public functioncall (String _functionName, IRType _returnType, register _destReg) {
        super () ;
        functionName = _functionName; destReg = _destReg ;
        returnType = _returnType ;
        isVoid = false ;
        parameters = new ArrayList<>() ;
    }
    @Override
    public String toString () {
        String str = new String() ;
        if (isVoid) {
            str = "call void @" + functionName + '(' ;
        } else {
            str = destReg + " = call " + returnType + " @" + functionName + '(' ;
        }
        for (int i = 0; i < parameters.size() - 1; i ++) {
            entity cur = parameters.get(i) ;
            str = str + cur.type + " " + cur + ", " ;
        }
        if (!parameters.isEmpty()) {
            entity cur = parameters.get (parameters.size() - 1) ;
            str = str + cur.type + " " + cur ;
        }
        str = str + ')' ;
        return str ;
    }
}