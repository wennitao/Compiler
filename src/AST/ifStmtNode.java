package AST;

import Util.position;

public class ifStmtNode extends ASTNode {
    public ExpressionNode expression ;
    public statementNode trueStatement, falseStatement ;

    public ifStmtNode (position pos, ExpressionNode _expression, statementNode _trueStatement, statementNode _falseStatement) {
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
