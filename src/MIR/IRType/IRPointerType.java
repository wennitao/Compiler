package MIR.IRType;

import MIR.entity;

public class IRPointerType extends IRType {
    public IRType type ;
    public IRPointerType (IRType _type) {
        super () ;
        type = _type ;
        this.size = 8 ;
    }
    @Override
    public String toString () {
        return type + "*" ;
    }
}
