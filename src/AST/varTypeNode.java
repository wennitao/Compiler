package AST;

import Util.position;

public class varTypeNode extends ASTNode {
    public String classID ;
    public builtinTypeNode builtinType ;
    public int dim ;

    public varTypeNode (position pos, String _classID, builtinTypeNode _builtinType, int _dim) {
        super (pos) ;
        classID = _classID ;
        builtinType = _builtinType ;
        dim = _dim ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
