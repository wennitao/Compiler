package MIR;

import MIR.IRType.IRIntType;
import MIR.IRType.IRNullType;
import MIR.IRType.IRType;

public class constant extends entity {
    public int value ;
    public constant (int _value, IRType _type) {
        super (_type) ;
        value = _value ;
    }
    public constant (constant _c) {
        super (_c.type) ;
        value = _c.value ;
    }
    @Override
    public String toString () {
        if (type instanceof IRIntType && ((IRIntType) type).width != 1) return Integer.toString(value) ;
        else if (type instanceof IRIntType && ((IRIntType) type).width == 1) return value == 1 ? "true" : "false" ;
        else return "null" ;
    }
}
