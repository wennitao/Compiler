package AST;

import Util.position;

public class preIncExprNode extends ExpressionNode {
    public enum preIncOperator {
        SelfPlus, SelfMinus
    }

    public preIncOperator preIncOp ;
    public ExpressionNode expression ;

    public preIncExprNode (position pos, preIncOperator _preIncOp, ExpressionNode _expression) {
        super (pos) ;
        preIncOp = _preIncOp ;
        expression = _expression ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
