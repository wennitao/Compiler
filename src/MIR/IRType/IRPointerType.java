package MIR.IRType;

public class IRPointerType extends IRType {
    public IRType type ;
    public IRPointerType (IRType _type) {
        super () ;
        type = _type ;
    }
    @Override
    public String toString () {
        return type + "*" ;
    }
}
