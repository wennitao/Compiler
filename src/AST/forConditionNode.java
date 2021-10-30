package AST;

import Util.position;

public class forConditionNode extends ASTNode {
    public expressionNode expression ;

    public forConditionNode (position pos, expressionNode _expression) {
        super (pos) ;
        expression = _expression ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
