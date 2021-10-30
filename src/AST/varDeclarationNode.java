package AST;

import Util.position;

public class varDeclarationNode extends ASTNode{
    public String name ;
    public ExpressionNode expression ;
    public Boolean isInitialized ;

    public varDeclarationNode (position pos, String _name) {
        super (pos) ;
        name = _name ;
        isInitialized = false ;
    }

    public varDeclarationNode (position pos, String _name, ExpressionNode _expression) {
        super (pos) ;
        name = _name ;
        expression = _expression ;
        isInitialized = true ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
