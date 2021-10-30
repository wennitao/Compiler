package AST;

import java.util.ArrayList;

import Util.position;

public class RootNode extends ASTNode {
    public ArrayList<BeginDefNode> statements ;

    public RootNode (position pos) {
        super (pos) ;
        statements = new ArrayList<>() ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
