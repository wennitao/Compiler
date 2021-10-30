package AST;

import Util.position;

public class forIncrNode extends ASTNode {
    public expressionNode expression ;
     
    public forIncrNode (position pos, expressionNode _expression) {
        super (pos) ;
        expression = _expression ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
