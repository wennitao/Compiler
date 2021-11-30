package MIR;

import MIR.IRType.IRType;

public class store extends statement {
    IRType type ;
    int value ;
    entity from, dest ;

    public store (IRType _type, entity _from, entity _dest) {
        type = _type; from = _from; dest = _dest ;
    }

    @Override
    public String toString () {
        return "store " + type + " " + from + ", " + type + "* " + dest ;
    }
}
