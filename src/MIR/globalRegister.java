package MIR;

import MIR.IRType.IRType;

public class globalRegister extends entity {
    public String registerID ;
    public globalRegister (String _registerID, IRType type) {
        super (type) ;
        registerID = _registerID ;
    }
    @Override
    public String toString () {
        return "@" + registerID ;
    }
}
