package Backend;

import AST.*;
import MIR.*;
import Util.Scope;
import Util.globalScope;

public class IRBuilder implements ASTVisitor{
    private block currentBlock ;
    private mainFn fn ;
    private Scope currentScope ;
    private globalScope gScope ;

    public IRBuilder(mainFn _fn, globalScope _gScope) {
        fn = _fn; gScope = _gScope ;currentScope = _gScope ;
        currentBlock = fn.rootBlock ;
    }

    @Override 
    public void visit (arrayExprNode it) {}

    @Override
    public void visit (binaryExprNode it) {}

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
    public void visit (functionDefNode it) {}

    @Override
    public void visit (functionParameterDefNode it) {}
    
    @Override
    public void visit (functionTypeNode it) {}

    @Override
    public void visit (globalVarDefNode it) {}

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
    public void visit (RootNode it) {}

    @Override
    public void visit (statementNode it) {}

    @Override 
    public void visit (suiteNode it) {}

    @Override
    public void visit (unaryExprNode it) {}

    @Override
    public void visit (varDeclarationNode it) {}

    @Override
    public void visit (varDefNode it) {}

    @Override
    public void visit (varTypeNode it) {}
    
    @Override
    public void visit (whileStmtNode it) {}
}
