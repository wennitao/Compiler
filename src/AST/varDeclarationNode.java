package AST;

import java.beans.Expression;

import Util.position;

public class varDeclarationNode extends ASTNode{
    public String name ;
    public expressionNode expression ;
    public Boolean isInitialized ;

    public varDeclarationNode (position pos, String _name) {
        super (pos) ;
        name = _name ;
        isInitialized = false ;
    }

    public varDeclarationNode (position pos, String _name, expressionNode _expression) {
        name = _name ;
        expression = _expression ;
        isInitialized = true ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
