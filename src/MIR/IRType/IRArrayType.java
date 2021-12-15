package MIR.IRType;

public class IRArrayType extends IRType {
    public int size ;
    public IRType type ;
    public IRArrayType (int _size, IRType _type) {
        size = _size ;
        type = _type ;
    }
    @Override
    public String toString () {
        return "[" + size + " x " + type + "]" ;
    }
}
