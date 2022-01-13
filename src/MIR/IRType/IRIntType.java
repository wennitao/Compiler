package MIR.IRType;

public class IRIntType extends IRType {
    public int width ;
    public IRIntType (int _width) {
        super () ;
        this.size = _width / 8 ;
        width = _width ;
    }
    @Override
    public String toString () {
        return "i" + width ;
    }
}
