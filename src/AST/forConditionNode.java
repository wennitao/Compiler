package AST;

import Util.position;

public class forConditionNode extends ASTNode {
    public ExpressionNode expression ;

    public forConditionNode (position pos, ExpressionNode _expression) {
        super (pos) ;
        expression = _expression ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
