package MIR;

import MIR.IRType.IRType;

public class register extends entity {
    int registerID ;
    public IRType type ;
    public register (int _registerID, IRType _type) {
        super () ;
        registerID = _registerID; type = _type ;
    }
    @Override
    public String toString() {
        return "%" + registerID ;
    }
}
