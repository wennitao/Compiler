package MIR.IRType;

import java.util.ArrayList;

public class IRClassType extends IRType {
    public String className ;
    public ArrayList<IRType> classTypes ;
    public IRClassType (String _className) {
        this.size = 0 ;
        className = _className ;
        classTypes = new ArrayList<>() ;
    }
    @Override
    public String toString () {
        return "%class." + className ;
    }
}
