package AST;

import java.util.ArrayList;

import Util.position;

public class varDefNode extends StatementNode {
    public varTypeNode type ;
    public ArrayList<varDeclarationNode> varDeclarations ;

    public varDefNode (position pos, varTypeNode _type) {
        super (pos) ;
        type = _type ;
        varDeclarations = new ArrayList<>();
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
