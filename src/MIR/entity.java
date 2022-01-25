package MIR;

import MIR.IRType.IRType;

public abstract class entity {
    public IRType type ;
    public boolean isLvalue = false ;
    public entity (IRType _type) {
        type = _type ;
    }
}
