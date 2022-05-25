package MIR;

import java.util.Set;

public abstract class statement implements Cloneable {
    public statement() {}
    public statement(statement _Statement) {}
    public abstract Set<register> getUseVar() ;
    public abstract Set<register> getDefVar() ;
    public abstract void updateUseReg (register origReg, entity toReg) ;
    public abstract void updateDefReg (register origReg, register toReg) ;
    // @Override
    // public abstract Object clone() throws CloneNotSupportedException ;
    public Object clone() {
        try {
            return super.clone() ;
        } catch (Exception e) {
            return null ;
        }
    }
}
