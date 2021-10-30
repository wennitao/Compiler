package AST;

import Util.position;
import Util.Type;

public class builtinTypeNode extends ASTNode {
    public Type.basicType bType ;

    public builtinTypeNode (position pos, Type.basicType _Type) {
        super (pos) ;
        bType = _Type ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
