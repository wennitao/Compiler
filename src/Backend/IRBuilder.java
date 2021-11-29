package Backend;

import javax.lang.model.type.TypeKind;

import AST.*;
import MIR.*;
import MIR.IRType.IRIntType;
import MIR.IRType.IRType;
import Util.Scope;
import Util.Type;
import Util.globalScope;

public class IRBuilder implements ASTVisitor{
    private block currentBlock ;
    private mainFn fn ;
    private Scope curScope ;
    private globalScope gScope ;
    private Type returnType ;

    public IRBuilder(mainFn _fn, globalScope _gScope) {
        fn = _fn; gScope = _gScope ;curScope = _gScope ;
        currentBlock = fn.rootBlock ;
    }

    @Override 
    public void visit (arrayExprNode it) {}

    @Override
    public void visit (binaryExprNode it) {
        
    }

    @Override
    public void visit (bracketExprNode it) {}

    @Override
    public void visit (breakStmtNode it) {}

    @Override
    public void visit (builtinTypeNode it) {}

    @Override
    public void visit (classConstructorNode it) {}

    @Override
    public void visit (classDefNode it) {}

    @Override
    public void visit (continueStmtNode it) {}

    @Override
    public void visit (expressionListNode it) {}

    @Override
    public void visit (forConditionNode it) {}

    @Override
    public void visit (forIncrNode it) {}

    @Override
    public void visit (forInitNode it) {}

    @Override
    public void visit (forStmtNode it) {}

    @Override
    public void visit (functionCallExprNode it) {}

    @Override
    public void visit (functionDefNode it) {

    }

    @Override
    public void visit (functionParameterDefNode it) {}
    
    @Override
    public void visit (functionTypeNode it) {}

    @Override
    public void visit (globalVarDefNode it) {
        it.varDef.accept(this) ;
    }

    @Override
    public void visit (ifStmtNode it) {}

    @Override
    public void visit (lambdaStmtNode it) {}

    @Override
    public void visit (newSizeNode it) {}

    @Override
    public void visit (newVarNode it) {}

    @Override
    public void visit (parameterNode it) {}

    @Override
    public void visit (postIncExprNode it) {}

    @Override
    public void visit (preIncExprNode it) {}

    @Override
    public void visit (primaryNode it) {}

    @Override
    public void visit (returnStmtNode it) {}

    @Override
    public void visit (RootNode it) {
        it.statements.forEach(x -> x.accept(this)) ;
    }

    @Override
    public void visit (statementNode it) {
        if (it.suite != null) {
            curScope = new Scope(curScope) ;
            it.suite.accept(this) ;
            curScope = curScope.parentScope() ;
        }
        if (it.varDefstmt != null) it.varDefstmt.accept(this) ;
        if (it.ifStmt != null) it.ifStmt.accept(this) ;
        if (it.loopStmt != null) it.loopStmt.accept(this) ;
        if (it.controlStmt != null) it.controlStmt.accept(this) ;
        if (it.expression != null) it.expression.accept(this) ;
    }

    @Override 
    public void visit (suiteNode it) {}

    @Override
    public void visit (unaryExprNode it) {}

    @Override
    public void visit (varDeclarationNode it) {}

    @Override
    public void visit (varDefNode it) {
        it.type.accept(this) ;
        Type varType = returnType;
        IRType varIRType ;
        if (varType.type == Type.basicType.Int) varIRType = new IRIntType(32) ;
        else if (varType.type == Type.basicType.Bool) varIRType = new IRIntType(8) ;
        else varIRType = new IRIntType(32) ;
        it.varDeclarations.forEach(x -> {
            currentBlock.push_back (new alloca(x.name, varIRType));
            if (x.isInitialized) {
                x.expression.accept(this) ;
            }
        });
    }

    @Override
    public void visit (varTypeNode it) {
        if (it.classID != null) {
            returnType = new Type(it.classID, it.dim, true) ;
        } else {
            returnType = new Type(it.builtinType.bType, it.dim, true) ;
        }
    }
    
    @Override
    public void visit (whileStmtNode it) {}
}
