package MIR;

import java.util.Set;

public abstract class statement {
    public statement() {}
    public abstract Set<register> getUseVar() ;
    public abstract Set<register> getDefVar() ;
}
