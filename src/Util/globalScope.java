package Util;

import java.util.ArrayList;
import java.util.HashMap;

import MIR.IRType.IRType;
import Util.error.semanticError;

public class globalScope extends Scope {
    public String Identifier ;
    private HashMap<String, globalScope> classScope = new HashMap<>() ;
    public HashMap<String, IRType> classType = new HashMap<>() ;
    private HashMap<String, Scope> functionScope = new HashMap<>() ;
    private HashMap<String, Type> functionRetType = new HashMap<>() ;
    private HashMap<String, ArrayList<Type> > functionParameters = new HashMap<>() ;

    public globalScope() {
        Identifier = "Global" ;
    }

    public globalScope (Scope scope, String _identifier) {
        super (scope) ;
        Identifier = _identifier ;
    }

    public void defineClass (position pos, String name, globalScope scope) {
        if (classScope.containsKey(name)) throw new semanticError("class " + name + " redefined", pos) ;
        else if (functionScope.containsKey(name)) throw new semanticError(name + " already defined as a function", pos) ;
        else if (super.containsVariable(name, false)) throw new semanticError(name + " already defined as a variable", pos) ;
        else classScope.put(name, scope) ;
    }

    public void defineFunction (position pos, String name, Scope scope, Type returnType, ArrayList<Type> parameters) {
        if (functionScope.containsKey(name)) throw new semanticError("function " + name + " redefined", pos) ;
        else if (classScope.containsKey(name)) throw new semanticError(name + " already defined as a class", pos) ;
        else {
            functionScope.put (name, scope) ;
            functionRetType.put(name, returnType) ;
            functionParameters.put (name, parameters) ;
        }
    }

    public Scope getScopeFromClassName (position pos, String name) {
        if (classScope.containsKey(name)) return classScope.get(name) ;
        else if (this.parentScope() != null) return ((globalScope) this.parentScope()).getScopeFromClassName(pos, name) ;
        else throw new semanticError("class " + name + " not found", pos);
    }

    public Scope getScopeFromFunctionName (position pos, String name) {
        if (functionScope.containsKey(name)) return functionScope.get (name) ;
        else if (this.parentScope() != null) return ((globalScope) this.parentScope()).getScopeFromFunctionName(pos, name) ;
        else throw new semanticError("function " + name + " not found", pos) ;
    }

    public boolean getFunctionInClass (position pos, String name) {
        if (functionRetType.containsKey(name)) return true ;
        return false ;
    }

    public Type getReturnTypeFromFunctionName (position pos, String name) {
        if (functionRetType.containsKey(name)) return functionRetType.get (name) ;
        else if (this.parentScope() != null) return ((globalScope) this.parentScope()).getReturnTypeFromFunctionName(pos, name) ;
        else throw new semanticError("function " + name + " not found", pos) ;
    }

    public ArrayList<Type> getParametersFromFunctionName (position pos, String name) {
        if (functionParameters.containsKey(name)) return functionParameters.get (name) ;
        else if (this.parentScope() != null) return ((globalScope) this.parentScope()).getParametersFromFunctionName(pos, name) ;
        else throw new semanticError("function " + name + " not found", pos) ;
    }

    public IRType getIRTypeFromClassName (String name) {
        if (classType.containsKey(name)) return classType.get (name) ;
        else if (this.parentScope() != null) ((globalScope) this.parentScope()).getIRTypeFromClassName(name) ;
        return null ;
    }

    public boolean findClass (String name, boolean lookUpon) {
        if (classScope.containsKey(name)) return true ;
        else if (this.parentScope() != null && lookUpon) return ((globalScope)this.parentScope()).findClass(name, lookUpon) ;
        else return false ;
    }

    public boolean findFunction (String name, boolean lookUpon) {
        if (functionScope.containsKey(name)) return true ;
        else if (this.parentScope() != null && lookUpon) return ((globalScope)this.parentScope()).findFunction(name, lookUpon) ;
        else return false ;
    }

    @Override
    public boolean containsVariable (String name, boolean lookUpon) {
        if (functionScope.containsKey(name)) return true ;
        else return super.containsVariable(name, lookUpon) ;
    }
}
