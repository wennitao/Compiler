package AST;

import Util.position;

public class functionCallExprNode extends ExpressionNode {
    public ExpressionNode functionIdentifier ;
    public expressionListNode expressionList ;

    public functionCallExprNode (position pos, ExpressionNode _functionIdentifier, expressionListNode _expressionList) {
        super (pos) ;
        functionIdentifier = _functionIdentifier ;
        expressionList = _expressionList ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
