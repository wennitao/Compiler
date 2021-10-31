package AST;

import Util.position;

public class primaryNode extends ExpressionNode {
    public enum primaryType {
        This, Null, Int, Bool, String, Identifier
    }

    public primaryType type ;
    public String identifier ;

    public primaryNode (position pos, primaryType _type, String _identifier) {
        super (pos) ;
        type = _type ;
        identifier = _identifier ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
