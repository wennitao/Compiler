package AST;

import Util.position;

public class returnStmtNode extends controlStmtNode {
    public expressionNode expression ;
    
    public returnStmtNode (position pos, expressionNode _expression) {
        super (pos) ;
        expression = _expression ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
