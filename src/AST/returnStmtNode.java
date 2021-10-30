package AST;

import Util.position;

public class returnStmtNode extends ControlStmtNode {
    public ExpressionNode expression ;
    
    public returnStmtNode (position pos, ExpressionNode _expression) {
        super (pos) ;
        expression = _expression ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
