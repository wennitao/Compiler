package AST;

import Util.position;

public class forStmtNode extends LoopStmtNode {
    public forInitNode forInit ;
    public forConditionNode forCondition ;
    public forIncrNode forIncr ;

    public statementNode statement ;

    public forStmtNode (position pos, forInitNode _forInit, forConditionNode _forCondition, forIncrNode _forIncr, statementNode _statement) {
        super (pos) ;
        forInit = _forInit ;
        forCondition = _forCondition ;
        forIncr = _forIncr ;
        statement = _statement ;
    } 

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
