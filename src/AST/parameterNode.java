package AST;

import Util.position;

public class parameterNode extends ASTNode {
    public varTypeNode type ;
    public String name ;

    public parameterNode (position pos, varTypeNode _type, String _name) {
        super (pos) ;
        type = _type ;
        name = _name ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
