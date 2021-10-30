package AST;

import Util.position;

public class unaryExprNode extends ExpressionNode {
    public enum unaryOperator {
        Plus, Minus, Tilde, Not ;
    }

    public unaryOperator unaryOp ;
    public ExpressionNode expression ;

    public unaryExprNode (position pos, unaryOperator _unaryOp, ExpressionNode _expression) {
        super (pos) ;
        unaryOp = _unaryOp ;
        expression = _expression ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
