package Util;

import java.util.ArrayList;

public class Type {
    public enum basicType {
        Int, Bool, String, Void, Class, Function, This, Null
    }
    public basicType type ;
    public String Identifier ;
    public int dim ;
    public boolean isLeftValue ;
    public Type functionReturnType ;
    public ArrayList<Type> functionParameters ;

    public Type (basicType _type, int _dim, boolean _isLeftValue) {
        type = _type ;
        dim = _dim ;
        isLeftValue = _isLeftValue ;
    }

    public Type (String _identifier, int _dim, boolean _isLeftValue) { //class
        type = basicType.Class ;
        Identifier = _identifier ;
        dim = _dim ;
        isLeftValue = _isLeftValue ;
    }

    public Type (String _identifier, Type returnType, ArrayList<Type> parameters) { //function
        type = basicType.Function ;
        Identifier = _identifier ;
        functionReturnType = returnType ;
        functionParameters = parameters ;
        dim = 0 ;
        isLeftValue = false ;
    }

    public Type (Type _type) {
        type = _type.type ;
        Identifier = _type.Identifier ;
        dim = _type.dim ;
        isLeftValue = _type.isLeftValue ;
        if (_type.functionReturnType != null)
            functionReturnType = new Type (_type.functionReturnType) ;
        else
            functionReturnType = null ;
        if (_type.functionParameters != null)
            functionParameters = new ArrayList<>(_type.functionParameters) ;
        else
            functionParameters = null ;
    }
}
