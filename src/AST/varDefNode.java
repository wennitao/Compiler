package AST;

import java.util.ArrayList;

import Util.position;

public class varDefNode extends ASTNode {
    public varTypeNode typeNode ;
    public ArrayList<varDeclarationNode> varDeclarations ;

    public varDefNode (position pos, varTypeNode _type) {
        super (pos) ;
        typeNode = _type ;
        varDeclarations = new ArrayList<>();
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
