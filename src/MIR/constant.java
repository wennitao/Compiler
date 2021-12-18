package MIR;

import MIR.IRType.IRIntType;
import MIR.IRType.IRType;

public class constant extends entity {
    public int value ;
    public constant (int _value, IRType _type) {
        super (_type) ;
        value = _value ;
    }
    @Override
    public String toString () {
        if (type instanceof IRIntType && ((IRIntType) type).width == 32) return Integer.toString(value) ;
        return value == 1 ? "true" : "false" ;
    }
}
