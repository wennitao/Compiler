package AST;

import java.util.ArrayList;

import Util.position;

public class expressionListNode extends ASTNode {
    public ArrayList<ExpressionNode> expressions ;

    public expressionListNode (position pos) {
        super (pos) ;
        expressions = new ArrayList<>() ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
