package MIR.IRType;

public class IRArrayType extends IRType {
    public int arraySize ;
    public IRType type ;
    public IRArrayType (int _size, IRType _type) {
        this.size = _size * _type.size ;
        arraySize = _size ;
        type = _type ;
    }
    @Override
    public String toString () {
        return "[" + arraySize + " x " + type + "]" ;
    }
}
