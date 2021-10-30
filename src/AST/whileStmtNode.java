package AST;

import Util.position;

public class whileStmtNode extends LoopStmtNode {
    public ExpressionNode expression ;
    public statementNode statement ;

    public whileStmtNode (position pos, ExpressionNode _expression, statementNode _statement) {
        super (pos) ;
        expression = _expression ;
        statement = _statement ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
