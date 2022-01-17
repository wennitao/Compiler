package Assembly.Inst;

import Assembly.Operand.Reg;

public class laInst extends Inst {
    public String symbol ;
    public laInst (Reg _rd, String _symbol) {
        rd = _rd; symbol = _symbol ;
    }
    @Override
    public String toString () {
        return "la\t" + rd + ", " + symbol ;
    }
}
