package AST;

import java.util.ArrayList;

import Util.position;

public class classDefNode extends BeginDefNode {
    public String name ;
    public classConstructorNode classConstructor ;
    public ArrayList<functionDefNode> functionDef ;
    public ArrayList<varDefNode> varDef ;

    public classDefNode (position pos, String _name) {
        super (pos) ;
        name = _name ;
        functionDef = new ArrayList<>() ;
        varDef = new ArrayList<>() ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
