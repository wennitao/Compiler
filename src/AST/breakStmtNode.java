package AST;

import Util.position;

public class breakStmtNode extends controlStmtNode {
    public breakStmtNode (position pos) {
        super (pos) ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
