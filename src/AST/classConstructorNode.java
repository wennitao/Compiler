package AST;

import Util.position;

public class classConstructorNode extends ASTNode {
    public String name ;
    public suiteNode suite ;

    public classConstructorNode (position pos, String _name, suiteNode _suite) {
        super (pos) ;
        name = _name ;
        suite = _suite ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit(this) ;
    }
}
