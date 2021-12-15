package MIR;

import MIR.IRType.IRType;

public class constant extends entity {
    int value ;
    public constant (int _value, IRType _type) {
        super (_type) ;
        value = _value ;
    }
    @Override
    public String toString () {
        return Integer.toString(value) ;
    }
}
