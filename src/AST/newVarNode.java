package AST;

import java.util.ArrayList;

import Util.position;

public class newVarNode extends ExpressionNode {
    public String classID ;
    public builtinTypeNode builtinType ;
    public ArrayList<newSizeNode> newSize ;

    public newVarNode (position pos, String _classID, builtinTypeNode _builtinType) {
        super (pos) ;
        classID = _classID ;
        builtinType = _builtinType ;
        newSize = new ArrayList<>();
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
