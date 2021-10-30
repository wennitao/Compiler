package AST;

import Util.position;

public class functionTypeNode extends ASTNode {
    public varTypeNode type ;
    public Boolean isVoid ;

    public functionTypeNode (position pos, Boolean _isVoid) {
        super (pos) ;
        isVoid = _isVoid ;
    }

    public functionTypeNode (position pos, Boolean _isVoid, varTypeNode _type) {
        super (pos) ;
        isVoid = _isVoid ;
        type = _type ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
