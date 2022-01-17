package Assembly.Operand;

public class PhysicalReg extends Reg {
    public PhysicalReg (String identifier) {
        super (identifier) ;
    }
    @Override
    public String toString() {
        return identifier ;
    }
}

