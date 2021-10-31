package AST;

import Util.position;

public class lambdaStmtNode extends ExpressionNode {
    public functionParameterDefNode functionParameters ;
    public suiteNode suite ;
    public expressionListNode expressionList ;

    public lambdaStmtNode (position pos, functionParameterDefNode _functionParameters, suiteNode _suite, expressionListNode _expressionList) {
        super (pos) ;
        functionParameters = _functionParameters;
        suite = _suite ;
        expressionList = _expressionList ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
