
package AST;

import Util.position;

public class arrayExprNode extends ExpressionNode {
    public ExpressionNode arrayIdentifier, arrayIndex ;
    
    public arrayExprNode (position pos, ExpressionNode _arrayIdentifier, ExpressionNode _arrayIndex) {
        super (pos) ;
        arrayIdentifier = _arrayIdentifier ;
        arrayIndex = _arrayIndex ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
