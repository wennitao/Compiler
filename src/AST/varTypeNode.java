package AST;

import Util.position;

public class varTypeNode extends ASTNode {
    public String classID ;
    public builtinTypeNode builtinType ;

    public varTypeNode (position pos, String _classID, builtinTypeNode _builtinType) {
        super (pos) ;
        classID = _classID ;
        builtinType = _builtinType ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
