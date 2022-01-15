package Util;

import java.util.HashMap;

import MIR.entity;
import Util.error.semanticError;

public class Scope {
    public HashMap<String, Type> members ;
    public HashMap<String, entity> entities ;
    public HashMap<String, Integer> memberID ;
    private Scope parentScope ;
    Integer curNum ;

    public Scope () {
        members = new HashMap<>() ;
        entities = new HashMap<>() ;
        memberID = new HashMap<>() ;
        parentScope = null ;
        curNum = 0 ;
    }

    public Scope (Scope _parentScope) {
        members = new HashMap<>() ;
        entities = new HashMap<>() ;
        memberID = new HashMap<>() ;
        parentScope = _parentScope ;
        curNum = 0 ;
    }

    public Scope parentScope () {
        return parentScope ;
    }

    public void defineVariable (String name, Type type, position pos) {
        if (members.containsKey(name)) throw new semanticError("redefined variable " + name, pos) ;
        members.put(name, type) ;
        memberID.put (name, curNum ++) ;
    }

    public boolean containsVariable (String name, boolean lookUpon) {
        if (members.containsKey(name)) return true ;
        else if (parentScope != null && lookUpon) return parentScope.containsVariable(name, true) ;
        else return false ;
    }

    public Type getType (position pos, String name, boolean lookUpon) {
        if (members.containsKey(name)) return members.get(name) ;
        else if (parentScope != null && lookUpon) return parentScope.getType(pos, name, true) ;
        else throw new semanticError("identifier " + name + " not found", pos);
    }

    public entity getEntity (String name, boolean lookUpon) {
        if (entities.containsKey(name)) return entities.get(name) ;
        else if (parentScope != null && lookUpon) return parentScope.getEntity(name, true) ;
        return null ;
    }
}
