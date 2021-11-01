package Frontend;

import java.util.ArrayList;

import AST.*;
import Util.Scope;
import Util.Type;
import Util.globalScope;
import Util.Type.basicType;
import Util.error.semanticError;

public class SemanticChecker implements ASTVisitor {
    private globalScope gScope ;
    private Scope curScope ;

    public SemanticChecker (globalScope _gScope) {
        curScope = gScope = _gScope ;
    }

    @Override
    public void visit (arrayExprNode it) {
        
    }

    @Override
    public void visit (binaryExprNode it) {

    }

    @Override
    public void visit (bracketExprNode it) {

    }

    @Override 
    public void visit (breakStmtNode it) {
        
    }

    @Override
    public void visit (builtinTypeNode it) {

    }

    @Override
    public void visit (classConstructorNode it) {
        
    }

    @Override
    public void visit (classDefNode it) {
        curScope = ((globalScope) curScope).getScopeFromClassName(it.pos, it.name) ;
        gScope = (globalScope) curScope ;
        if (it.classConstructor != null) {
            if (!it.classConstructor.name.equals(it.name)) throw new semanticError("class constructor does not match", it.pos) ;
            it.classConstructor.accept(this) ;
        }
        it.functionDef.forEach(x -> {
            if (x.name.equals(it.name)) throw new semanticError("function name duplicates with class name", it.pos) ;
            x.accept(this) ;
        });
        it.varDef.forEach(x -> {
            x.accept(this) ;
        });
        gScope = (globalScope) gScope.parentScope() ;
        curScope = curScope.parentScope() ;
    }

    @Override
    public void visit (continueStmtNode it) {

    }

    @Override
    public void visit (expressionListNode it) {

    }

    @Override 
    public void visit (forConditionNode it) {

    }

    @Override
    public void visit (forIncrNode it) {

    }

    @Override
    public void visit (forInitNode it) {

    }

    @Override
    public void visit (forStmtNode it) {

    }

    @Override
    public void visit (functionCallExprNode it) {

    }

    @Override
    public void visit (functionDefNode it) {

    }

    @Override
    public void visit (functionParameterDefNode it) {

    }

    @Override
    public void visit (functionTypeNode it) {

    }

    @Override
    public void visit (globalVarDefNode it) {

    }

    @Override
    public void visit (ifStmtNode it) {

    }

    @Override
    public void visit (lambdaStmtNode it) {

    }

    @Override
    public void visit (newSizeNode it) {

    }

    @Override
    public void visit (newVarNode it) {

    }

    @Override
    public void visit (parameterNode it) {

    }

    @Override
    public void visit (postIncExprNode it) {

    }

    @Override
    public void visit (preIncExprNode it) {

    }

    @Override
    public void visit (primaryNode it) {

    } 

    @Override
    public void visit (returnStmtNode it) {

    }

    @Override
    public void visit (RootNode it) {
        it.statements.forEach(x -> x.accept(this)) ;
        if (!gScope.findFunction("main", false)) throw new semanticError("function main not defined", it.pos) ;
        Type mainReturnType = gScope.getReturnTypeFromFunctionName(it.pos, "main") ;
        if (mainReturnType.type != basicType.Int || mainReturnType.dim > 0) throw new semanticError("function main wrong return type", it.pos) ;
        ArrayList<Type> mainParameters = gScope.getParametersFromFunctionName(it.pos, "main") ;
        if (mainParameters.size() > 0) throw new semanticError("function main should not have parameters", it.pos) ; 
    }

    @Override
    public void visit (suiteNode it) {

    }

    @Override
    public void visit (unaryExprNode it) {

    }

    @Override
    public void visit (varDeclarationNode it) {

    }

    @Override
    public void visit (varDefNode it) {

    }

    @Override
    public void visit (varTypeNode it) {

    }

    @Override
    public void visit (whileStmtNode it) {

    }
}
