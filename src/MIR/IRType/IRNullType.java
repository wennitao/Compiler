package MIR.IRType;

public class IRNullType extends IRType {
    public IRType toType ;
    public IRNullType () {
        super () ;
    }
    @Override
    public String toString() {
        return toType.toString() ; 
    }
}
