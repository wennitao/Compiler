package MIR;

public class branch extends statement {
    boolean isConditioned ;
    entity condition ;
    label trueBranch, falseBranch ;
    public branch (entity _condition, label _trueBranch, label _falseBranch) {
        condition = _condition ;
        trueBranch = _trueBranch; falseBranch = _falseBranch ;
        isConditioned = true ;
    }
    public branch (label _trueBranch) {
        trueBranch = _trueBranch ;
        isConditioned = false ;
    }

    @Override
    public String toString () {
        if (isConditioned) return "br i1 " + condition + ", label " + trueBranch + ", label " + falseBranch ;
        else return "br label " + trueBranch ;
    }
}
