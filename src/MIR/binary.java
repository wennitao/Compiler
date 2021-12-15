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
    private boolean isCompareOperator (IROperator op) {
        return op == IROperator.slt || op == IROperator.sle || op == IROperator.sgt || op == IROperator.sge
        || op == IROperator.eq || op == IROperator.ne ;
    }
    @Override
    public String toString() {
        if (isCompareOperator(op)) return dest + " = icmp " + op.name() + " " + type + " " + left + ", " + right ;
        else return dest + " = " + op.name() + " " + type + " " + left + ", " + right ;
    }
}
