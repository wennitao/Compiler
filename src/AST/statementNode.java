package AST;

import Util.position;

public class statementNode extends ASTNode {
    public suiteNode suite ;
    public varDefNode varDefstmt ;
    public ifStmtNode ifStmt ;
    public LoopStmtNode loopStmt ;
    public ControlStmtNode controlStmt ;
    public ExpressionNode expression ;
    public statementNode (position pos) {
        super (pos) ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
