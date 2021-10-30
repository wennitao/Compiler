package AST;

import Util.position;

abstract public class ASTNode {
    public position pos ;

    public ASTNode (position _pos) {
        pos = _pos ;
    }

    abstract public void accept (ASTVisitor visitor) ;
}