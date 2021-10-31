package AST;

import Util.position;

public class ifStmtNode extends StatementNode {
    public ExpressionNode expression ;
    public StatementNode trueStatement, falseStatement ;

    public ifStmtNode (position pos, ExpressionNode _expression, StatementNode _trueStatement, StatementNode _falseStatement) {
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
