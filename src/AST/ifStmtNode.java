package AST;

import Util.position;

public class ifStmtNode extends statementNode {
    public expressionNode expression ;
    public statementNode trueStatement ;
    public statementNode falseStatement ;

    public ifStmtNode (position pos, expressionNode _expression, statementNode _trueStatement, statementNode _falseStatement) {
        super (pos) ;
        expression = _expression ;
        trueStatement = _trueStatement ;
        falseStatement = _falseStatement ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
