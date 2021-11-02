package Frontend;

import java.util.ArrayList;
import java.util.concurrent.Flow;

import AST.*;
import Util.FlowController;
import Util.Scope;
import Util.Type;
import Util.globalScope;
import Util.position;
import Util.Type.basicType;
import Util.error.semanticError;

public class SemanticChecker implements ASTVisitor {
    private globalScope gScope ;
    private Scope curScope ;
    private Type returnType ;
    FlowController flowController ;

    public SemanticChecker (globalScope _gScope) {
        curScope = gScope = _gScope ;
    }

    public void checkAssign (position pos, Type leftType, Type rightType) {
        if (!leftType.isLeftValue) throw new semanticError("cannot assign to rvalue", pos) ;
        if (rightType.type == Type.basicType.Null) {
            if ((leftType.type != Type.basicType.Class && leftType.type != Type.basicType.This && leftType.type != Type.basicType.String && leftType.dim <= 0) || (leftType.type == Type.basicType.String && leftType.dim == 0))
                throw new semanticError("cannot assign null", pos) ;
        } else if (rightType.type == Type.basicType.This) {
            if (leftType.type != basicType.Class) 
                throw new semanticError("cannot assign this", pos) ;
            if (!leftType.Identifier.equals(gScope.Identifier))
                throw new semanticError("cannot assign this", pos) ;
        } else {
            if (leftType.type != rightType.type)
                throw new semanticError("type of left and right does not match", pos) ;
            if (leftType.type == basicType.Class)
                if (rightType.Identifier == null || !leftType.Identifier.equals(rightType.Identifier))
                    throw new semanticError("type does not match", pos) ;
            if (leftType.dim != rightType.dim)
                throw new semanticError("dimension not match", pos) ;
        }
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
        curScope = new Scope (curScope) ;
        gScope.defineFunction(it.pos, it.name, curScope, new Type(Type.basicType.Void, 0, false), new ArrayList<>());
        flowController = new FlowController(it.name) ;
        it.suite.accept(this) ;
        curScope = curScope.parentScope() ;
    }

    @Override
    public void visit (classDefNode it) {
        curScope = ((globalScope) curScope).getScopeFromClassName(it.pos, it.name) ;
        gScope = (globalScope) curScope ;
        gScope.Identifier = it.name ;
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
        curScope = gScope.getScopeFromFunctionName(it.pos, it.name) ;
        flowController = new FlowController(it.name) ;
        it.suite.accept(this) ;
        if (!flowController.functionName.equals(new String("main"))) {
            returnType = gScope.getReturnTypeFromFunctionName(it.pos, it.name) ;
            if (returnType.type != Type.basicType.Void && !flowController.isReturned)
                throw new semanticError("function does not return", it.pos) ;
        }
        curScope = curScope.parentScope() ;
    }

    @Override
    public void visit (functionParameterDefNode it) {

    }

    @Override
    public void visit (functionTypeNode it) {

    }

    @Override
    public void visit (globalVarDefNode it) {
        it.varDef.accept(this) ;
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
        it.statementNodes.forEach(x -> x.accept(this)) ;
    }

    @Override
    public void visit (unaryExprNode it) {

    }

    @Override
    public void visit (varDeclarationNode it) {}

    @Override
    public void visit (varDefNode it) {
        it.type.accept(this) ;
        Type varType = returnType;
        it.varDeclarations.forEach(x -> {
            if (gScope.findClass(x.name, true))
                throw new semanticError("variable name duplciates with class", x.pos) ;
            if (x.isInitialized) {
                x.expression.accept(this) ;
                checkAssign(x.pos, varType, returnType);
            }
            curScope.defineVariable(x.name, varType, x.pos) ;
        });
    }

    @Override
    public void visit (varTypeNode it) {
        if (it.classID != null) {
            if (!gScope.findClass(it.classID, true))
                throw new semanticError("class name not found", it.pos) ;
            returnType = new Type(it.classID, it.dim, true) ;
        } else {
            returnType = new Type(it.builtinType.bType, it.dim, true) ;
        }
    }

    @Override
    public void visit (whileStmtNode it) {

    }
}
