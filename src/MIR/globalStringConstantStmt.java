package MIR;

import MIR.IRType.IRArrayType;
import MIR.IRType.IRIntType;
import MIR.IRType.IRPointerType;

public class globalStringConstantStmt extends statement {
    public register reg ;
    static int stringConstantID = 0 ;
    public String stringConstant ;
    public globalStringConstantStmt (String initString) {
        int len = initString.length() ;
        reg = new register(new String(".str." + stringConstantID ++), new IRPointerType (new IRArrayType(len, new IRIntType(8))), true) ;
        stringConstant = initString.replace("\\", "\\5C").replace("\n", "\\0A").replace("\"", "\\22").replace("\0", "\\00") ;
    }

    @Override
    public String toString () {
        return reg + " = private constant " + ((IRPointerType)reg.type).type + " c\"" + stringConstant + "\"" ;
    }
}
