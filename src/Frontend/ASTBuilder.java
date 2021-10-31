package Frontend;

import AST.ASTNode;
import AST.BeginDefNode;
import AST.RootNode;
import Parser.MxLiteBaseVisitor;
import Parser.MxLiteParser;
import Util.position;

public class ASTBuilder extends MxLiteBaseVisitor<ASTNode> {
    @Override
    public ASTNode visitProgram (MxLiteParser.ProgramContext ctx) {
        RootNode root = new RootNode(new position(ctx)) ;
        ctx.beginDef().forEach(v -> root.statements.add((BeginDefNode) visit(v)));
        return root ;
    }
    
}