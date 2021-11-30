package MIR;

import MIR.IRType.IRType;

public class binary extends statement {
    public enum IROperator {
        add, sub, mul, sdiv, srem, 
        slt, sle, sgt, sge, eq, ne, 
        shl, ashr, and, xor, or
    } ;

    public IROperator op ;
    public IRType type ;
    public entity left, right, dest ;
    public binary (IROperator _op, IRType _type, entity _left, entity _right, entity _dest) {
        op = _op; type = _type ;
        left = _left; right = _right; dest = _dest ;
    }
    @Override
    public String toString() {
        return dest + " = " + op.name() + " " + type + " " + left + ", " + right ;
    }
}
