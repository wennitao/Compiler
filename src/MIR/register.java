package MIR;

import MIR.IRType.IRNullType;
import MIR.IRType.IRType;

public class register extends entity {
    public String registerID ;
    public boolean isGlobal ;
    public register (int _registerID, IRType _type) {
        super (_type) ;
        registerID = new String("v_" + Integer.toString(_registerID)) ;
        // registerID = new String(Integer.toString(_registerID)) ;
        isGlobal = false ;
    }
    public register (String _registerID, IRType _type, boolean _isGlobal) {
        super (_type) ;
        registerID = new String("v_" + _registerID) ;
        // registerID = new String(_registerID) ;
        isGlobal = _isGlobal ;
    }
    public register (register _reg) {
        super (_reg.type) ;
        registerID = _reg.registerID ;
    }
    @Override
    public String toString() {
        if (this.type instanceof IRNullType) return "null" ;
        if (!isGlobal) return "%" + registerID ;
        else return "@" + registerID ;
    }
}
