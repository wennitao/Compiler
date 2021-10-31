package Util;

import java.util.HashMap;

import Util.error.semanticError;

public class Scope {
    private HashMap<String, Type> members ;
    private Scope parentScope ;

    public Scope (Scope _parentScope) {
        members = new HashMap<>() ;
        parentScope = _parentScope ;
    }

    public Scope parentScope () {
        return parentScope ;
    }

    public void defineVariable (String name, Type t, position pos) {
        if (members.containsKey(name)) throw new semanticError("redefined variable " + name, pos) ;
        members.put(name, t) ;
    }

    public boolean containsVariable (String name, boolean lookUpon) {
        if (members.containsKey(name)) return true ;
        else if (parentScope != null && lookUpon) return parentScope.containsVariable(name, true) ;
        else return false ;
    }

    public Type getType (String name, boolean lookUpon) {
        if (members.containsKey(name)) return members.get(name) ;
        else if (parentScope != null && lookUpon) return parentScope.getType(name, true) ;
        else return null ;
    }
}
