package AST;

import Util.position;

public class bracketExprNode extends ExpressionNode {
    public ExpressionNode expression ;

    public bracketExprNode (position pos, ExpressionNode _expression) {
        super (pos) ;
        expression = _expression ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
