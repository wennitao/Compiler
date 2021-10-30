package AST;

import Util.position;

public class whileStmtNode extends LoopStmtNode {
    public ExpressionNode expression ;
    public StatementNode statement ;

    public whileStmtNode (position pos, ExpressionNode _expression, StatementNode _statement) {
        super (pos) ;
        expression = _expression ;
        statement = _statement ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
