package AST;

import Util.position;

public class forInitNode extends ASTNode {
    public varDefNode varDef ;
    public ExpressionNode expression ;

    public forInitNode (position pos, varDefNode _varDef, ExpressionNode _expression) {
        super (pos) ;
        varDef = _varDef ;
        expression = _expression ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
