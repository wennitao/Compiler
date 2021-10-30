package AST;

import Util.position;

public class postIncExprNode extends ExpressionNode {
    public enum postIncOperator {
        SelfPlus, SelfMinus
    }

    public postIncOperator postIncOp ;
    public ExpressionNode expression ;

    public postIncExprNode (position pos, postIncOperator _postIncOp, ExpressionNode _expression) {
        super (pos) ;
        postIncOp = _postIncOp ;
        expression = _expression ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
