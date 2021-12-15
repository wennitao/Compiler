package MIR;

import MIR.IRType.IRType;

public class register extends entity {
    public int registerID ;
    public register (int _registerID, IRType _type) {
        super (_type) ;
        registerID = _registerID ;
    }
    @Override
    public String toString() {
        return "%" + registerID ;
    }
}
