package MIR;

import MIR.IRType.IRType;

public class alloca extends statement {
    public String identifier ;
    public IRType type ;
    public alloca (String _identifier, IRType _type) {
        identifier = _identifier ;
        type = _type ;
    }
    @Override 
    public String toString () {
        return "%" + identifier + " = alloca " + type ;
    }
}