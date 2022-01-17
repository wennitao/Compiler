package Assembly.Operand;

public class Imm extends Operand {
    public int value ;
    public Imm (int _value) {
        value = _value ;
    }
    @Override
    public String toString () {
        return Integer.toString(value) ;
    }
}
