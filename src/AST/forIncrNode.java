package AST;

import Util.position;

public class forIncrNode extends ASTNode {
    public ExpressionNode expression ;
     
    public forIncrNode (position pos, ExpressionNode _expression) {
        super (pos) ;
        expression = _expression ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
