package Assembly.Inst;

public class callInst extends Inst {
    String symbol ;
    public callInst (String _symbol) {
        symbol = _symbol ;
    }
    @Override
    public String toString () {
        return "call\t" + symbol ;
    }
}
