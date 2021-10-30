package AST;

import Util.position;

public class globalVarDefNode extends BeginDefNode {
    public varDefNode varDef ;

    public globalVarDefNode (position pos, varDefNode _varDef) {
        super (pos) ;
        varDef = _varDef ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
