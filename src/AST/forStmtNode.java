package AST;

import Util.position;

public class forStmtNode extends loopStmtNode {
    public forInitNode forInit ;
    public forConditionNode forCondition ;
    public forIncrNode forIncr ;

    public statementNode statement ;

    public forStmtNode (position pos, forInitNode _forInit, forConditionNode _forCondition, forIncrNode _forIncr, expressionNode _expression) {
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
