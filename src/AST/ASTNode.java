package AST;

import Util.Type;
import Util.position;

abstract public class ASTNode {
    public position pos ;
    public Type type ;

    public ASTNode (position _pos) {
        pos = _pos ;
    }

    abstract public void accept (ASTVisitor visitor) ;
}