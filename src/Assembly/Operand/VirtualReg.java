package Assembly.Operand;

public class VirtualReg extends Reg {
    public int size ;
    public VirtualReg (String _identifier, int _size) {
        super (_identifier) ;
        size = _size ;
    }
    public VirtualReg (int id, int _size) {
        super ("VirtualReg_" + Integer.toString(id)) ;
        size = _size ;
    }
    @Override
    public String toString () {
        return identifier ;
    }
}
