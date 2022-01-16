package Assembly.Operand;

public abstract class Reg extends Operand {
    String identifier ;
    public Reg (String _identifier) {
        identifier = _identifier ;
    }
}
