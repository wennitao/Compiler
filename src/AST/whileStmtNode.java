package AST;

import Util.position;

public class whileStmtNode extends loopStmtNode {
    public expressionNode expression ;
    public statementNode statement ;

    public whileStmtNode (position pos, expressionNode _expression, statementNode _statement) {
        super (pos) ;
        expression = _expression ;
        statement = _statement ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
