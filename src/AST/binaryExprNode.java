package AST;

import Util.position;

public class binaryExprNode extends ExpressionNode {
    public enum binaryOperator {
        Plus, Minus, Mul, Div, Mod, 
        Less, LessEqual, Greater, GreaterEqual, Equal, NotEqual, 
        LeftShift, RightShift, And, Caret, Or, AndAnd, OrOr, 
        Assign, Dot
    }

    public binaryOperator binaryOp ;
    public ExpressionNode leftExpression, rightExpression ;

    public binaryExprNode (position pos, binaryOperator _binaryOp, ExpressionNode _left, ExpressionNode _right) {
        super (pos) ;
        binaryOp = _binaryOp;
        leftExpression = _left ;
        rightExpression = _right ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
