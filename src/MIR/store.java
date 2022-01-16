package MIR;

import MIR.IRType.IRNullType;
import MIR.IRType.IRPointerType;
import MIR.IRType.IRType;
import MIR.IRType.IRVoidType;

public class store extends statement {
    public IRType type ;
    int value ;
    public entity from, dest ;

    public store (IRType _type, entity _from, entity _dest) {
        type = _type; from = _from; dest = _dest ;
    }

    @Override
    public String toString () {
        // if (from.type instanceof IRNullType) return "store " + from + ", " + dest.type + " " + dest ;
        return "store " + ((IRPointerType) dest.type).type + " " + from + ", " + dest.type + " " + dest ;
    }
}
