package MIR;

public class constant extends entity {
    int value ;
    public constant (int _value) {
        super () ;
        value = _value ;
    }
    @Override
    public String toString () {
        return Integer.toString(value) ;
    }
}
