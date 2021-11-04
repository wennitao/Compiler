package AST;

public interface ASTVisitor {
    void visit (RootNode it) ;

    void visit (builtinTypeNode it) ;
    void visit (expressionListNode it) ;

    void visit (globalVarDefNode it) ;

    void visit (classConstructorNode it) ;
    void visit (classDefNode it) ;
    
    void visit (functionDefNode it) ;
    void visit (functionParameterDefNode it) ;
    void visit (functionTypeNode it) ;
    
    void visit (arrayExprNode it) ;
    void visit (binaryExprNode it) ;
    void visit (bracketExprNode it) ;
    void visit (functionCallExprNode it) ;
    void visit (lambdaStmtNode it) ;
    void visit (postIncExprNode it) ;
    void visit (preIncExprNode it) ;
    void visit (primaryNode it) ;
    void visit (unaryExprNode it) ;

    void visit (suiteNode it) ;
    void visit (varDeclarationNode it) ;
    void visit (varDefNode it) ;
    void visit (varTypeNode it) ;

    void visit (newSizeNode it) ;
    void visit (newVarNode it) ;
    void visit (parameterNode it) ;
    
    void visit (forConditionNode it) ;
    void visit (forIncrNode it) ;
    void visit (forInitNode it) ;
    void visit (forStmtNode it) ;
    void visit (whileStmtNode it) ;

    void visit (ifStmtNode it) ;

    void visit (breakStmtNode it) ;
    void visit (continueStmtNode it) ;
    void visit (returnStmtNode it) ;
    void visit (statementNode it) ;
}
