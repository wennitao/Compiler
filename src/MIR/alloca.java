package MIR;

import MIR.IRType.IRType;

public class alloca extends statement {
    public register reg ;
    public IRType type ;
    public alloca (register _reg, IRType _type) {
        reg = _reg ;
        type = _type ;
    }
    @Override 
    public String toString () {
        return reg + " = alloca " + type ;
    }
}