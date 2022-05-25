package MIR;

import java.util.HashSet;
import java.util.Set;

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
    @Override
    public Set<register> getUseVar() {
        Set<register> S = new HashSet<>() ;
        if (left instanceof register) S.add((register) left) ;
        if (right instanceof register) S.add((register) right) ;
        return S ;
    }
    @Override
    public Set<register> getDefVar() {
        Set<register> S = new HashSet<>() ;
        S.add ((register) dest) ;
        return S ;
    }

    @Override
    public void updateUseReg (register origReg, entity toReg) {
        if (left == origReg) left = toReg ;
        if (right == origReg) right = toReg ;
    }

    @Override
    public void updateDefReg (register origReg, register toReg) {
        if (dest == origReg) dest = toReg ;
    }

    public Object clone () {
        binary newBinary = new binary(op, type, left, right, dest) ;
        return newBinary ;
    }
}
