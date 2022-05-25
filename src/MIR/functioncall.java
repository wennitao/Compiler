package MIR;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import MIR.IRType.IRType;
import MIR.IRType.IRVoidType;

public class functioncall extends statement {
    public String functionName, realFunctionName ;
    public IRType returnType ;
    public boolean isVoid ;
    public register destReg = null ;
    public ArrayList<entity> parameters ;
    public functioncall () {
        super () ;
        parameters = new ArrayList<>() ;
        functionName = new String() ;
    }
    public functioncall (String _functionName) {
        super () ;
        functionName = _functionName; isVoid = true ;
        returnType = new IRVoidType() ;
        parameters = new ArrayList<>() ;
        realFunctionName = new String() ;
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

    @Override
    public Set<register> getUseVar() {
        Set<register> S = new HashSet<>() ;
        for (entity cur : parameters) {
            if (cur instanceof register) S.add((register) cur) ;
        }
        return S ;
    }
    @Override
    public Set<register> getDefVar() {
        Set<register> S = new HashSet<>() ;
        if (!isVoid) S.add(destReg) ;
        return S ;
    }

    @Override
    public void updateUseReg (register origReg, entity toReg) {
        for (int i = 0; i < parameters.size(); i ++) {
            if (parameters.get(i) == origReg)
                parameters.set(i, toReg) ;
        }
    }

    @Override
    public void updateDefReg (register origReg, register toReg) {
        if (destReg == origReg) destReg = toReg ;
    }

    public Object clone () {
        functioncall newFunctioncall = new functioncall() ;
        newFunctioncall.destReg = destReg ;
        newFunctioncall.functionName = functionName ;
        newFunctioncall.isVoid = isVoid ;
        newFunctioncall.parameters = new ArrayList<>(parameters) ;
        newFunctioncall.realFunctionName = realFunctionName ;
        newFunctioncall.returnType = returnType ;
        return newFunctioncall ;
    }
}
