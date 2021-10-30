package AST;

import java.util.ArrayList;

import Util.position;

public class functionParameterDefNode extends ASTNode {
    public ArrayList<parameterNode> parameters ;
    public functionParameterDefNode (position pos) {
        super (pos) ;
        parameters = new ArrayList<>();
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
