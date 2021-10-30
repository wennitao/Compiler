package AST;

import Util.position;

public class forStmtNode extends LoopStmtNode {
    public forInitNode forInit ;
    public forConditionNode forCondition ;
    public forIncrNode forIncr ;

    public StatementNode statement ;

    public forStmtNode (position pos, forInitNode _forInit, forConditionNode _forCondition, forIncrNode _forIncr, ExpressionNode _expression) {
        super (pos) ;
        forInit = _forInit ;
        forCondition = _forCondition ;
        forIncr = _forIncr ;
    } 

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
