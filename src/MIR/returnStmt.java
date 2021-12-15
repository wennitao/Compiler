package MIR;

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
}
