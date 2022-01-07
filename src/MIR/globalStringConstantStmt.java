package MIR;

import MIR.IRType.IRArrayType;
import MIR.IRType.IRIntType;
import MIR.IRType.IRPointerType;

public class globalStringConstantStmt extends statement {
    public register reg ;
    static int stringConstantID = 0 ;
    public String stringConstant ;
    public globalStringConstantStmt (String initString) {
        reg = new register(new String(".str." + stringConstantID ++), new IRPointerType (new IRArrayType(initString.length() + 1, new IRIntType(8))), true) ;
        stringConstant = new String(initString + "\\00") ;
    }

    @Override
    public String toString () {
        return reg + " = private constant " + ((IRPointerType)reg.type).type + " c\"" + stringConstant + "\"" ;
    }
}
