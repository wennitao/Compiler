package Frontend;

import AST.*;
import AST.postIncExprNode.postIncOperator;
import AST.preIncExprNode.preIncOperator;
import AST.unaryExprNode.unaryOperator;
import Parser.MxLiteBaseVisitor;
import Parser.MxLiteParser;
import Util.Type;
import Util.position;

public class ASTBuilder extends MxLiteBaseVisitor<ASTNode> {
    @Override
    public ASTNode visitProgram (MxLiteParser.ProgramContext ctx) {
        RootNode root = new RootNode(new position(ctx)) ;
        ctx.beginDef().forEach(v -> root.statements.add((BeginDefNode) visit(v)));
        return root ;
    }

    @Override
    public ASTNode visitGlobalVarDefStmt (MxLiteParser.GlobalVarDefStmtContext ctx) {
        return new globalVarDefNode(new position(ctx), (varDefNode) visit (ctx.varDef())) ;
        // return visit (ctx.varDef()) ;
    }

    @Override
    public ASTNode visitFunctionDef (MxLiteParser.FunctionDefContext ctx) {
        return new functionDefNode(new position(ctx), (functionTypeNode) visit (ctx.functionType()), ctx.Identifier().toString(), (functionParameterDefNode) visit (ctx.functionParameterDef()), (suiteNode) visit (ctx.suite())) ;
    }

    @Override
    public ASTNode visitArrayExpr (MxLiteParser.ArrayExprContext ctx) {
        return new arrayExprNode(new position(ctx), (ExpressionNode) visit (ctx.expression(0)), (ExpressionNode) visit (ctx.expression(1))) ;
    }

    @Override
    public ASTNode visitAtomExpr (MxLiteParser.AtomExprContext ctx) {
        return visit (ctx.primary()) ;
    }

    @Override
    public ASTNode visitBinaryExpr (MxLiteParser.BinaryExprContext ctx) {
        binaryExprNode binaryExpr = new binaryExprNode(new position(ctx), null, (ExpressionNode) visit (ctx.expression(0)), (ExpressionNode) visit (ctx.expression(1))) ;
        if (ctx.Plus() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.Plus ;
        else if (ctx.Minus() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.Minus ;
        else if (ctx.Mul() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.Mul ;
        else if (ctx.Div() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.Div ;
        else if (ctx.Mod() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.Mod ;
        else if (ctx.Less() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.Less ;
        else if (ctx.LessEqual() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.LessEqual ;
        else if (ctx.Greater() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.Greater ;
        else if (ctx.GreaterEqual() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.GreaterEqual ;
        else if (ctx.Equal() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.Equal ;
        else if (ctx.NotEqual() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.NotEqual ;
        else if (ctx.LeftShift() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.LeftShift ;
        else if (ctx.RightShift() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.RightShift ;
        else if (ctx.And() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.And ;
        else if (ctx.Caret() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.Caret ;
        else if (ctx.Or() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.Or ;
        else if (ctx.AndAnd() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.AndAnd ;
        else if (ctx.OrOr() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.OrOr ;
        else if (ctx.Assign() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.Assign ;
        else if (ctx.Dot() != null) binaryExpr.binaryOp = binaryExprNode.binaryOperator.Dot ;
        return binaryExpr ;
    }

    @Override
    public ASTNode visitBracketExpr (MxLiteParser.BracketExprContext ctx) {
        return new bracketExprNode(new position(ctx), (ExpressionNode) visit (ctx.expression())) ;
    }

    @Override
    public ASTNode visitBreakStmt (MxLiteParser.BreakStmtContext ctx) {
        return new breakStmtNode(new position(ctx)) ;
    }

    @Override
    public ASTNode visitBuiltinType (MxLiteParser.BuiltinTypeContext ctx) {
        builtinTypeNode builtinType = new builtinTypeNode(new position(ctx), null) ;
        if (ctx.Int() != null) builtinType.bType = Type.basicType.Int ;
        else if (ctx.Bool() != null) builtinType.bType = Type.basicType.Bool ;
        else if (ctx.String() != null) builtinType.bType = Type.basicType.String ;
        return builtinType ;
    }

    @Override
    public ASTNode visitClassConstructor (MxLiteParser.ClassConstructorContext ctx) {
        return new classConstructorNode(new position(ctx), ctx.Identifier().toString(), (suiteNode) visit(ctx.suite())) ;
    }

    @Override
    public ASTNode visitClassDef (MxLiteParser.ClassDefContext ctx) {
        classDefNode classDef = new classDefNode(new position(ctx), ctx.Identifier().toString()) ;
        if (ctx.classConstructor() != null) classDef.classConstructor = (classConstructorNode) visit (ctx.classConstructor()) ;
        ctx.varDefStmt().forEach(v -> classDef.varDef.add ((varDefNode) visit (v)));
        ctx.functionDef().forEach(v -> classDef.functionDef.add((functionDefNode) visit (v)));
        return classDef ;
    }

    @Override
    public ASTNode visitContinueStmt (MxLiteParser.ContinueStmtContext ctx) {
        return new continueStmtNode(new position(ctx)) ;
    }

    @Override
    public ASTNode visitControlStmt (MxLiteParser.ControlStmtContext ctx) {
        if (ctx.breakStmt() != null) return visit (ctx.breakStmt()) ;
        else if (ctx.continueStmt() != null) return visit (ctx.continueStmt()) ;
        else return visit (ctx.returnStmt()) ;
    }

    @Override
    public ASTNode visitExpressionList (MxLiteParser.ExpressionListContext ctx) {
        expressionListNode expressionList = new expressionListNode(new position(ctx)) ;
        ctx.expression().forEach(v -> expressionList.expressions.add ((ExpressionNode) visit (v)));
        return expressionList ;
    }

    @Override 
    public ASTNode visitLoopStmt (MxLiteParser.LoopStmtContext ctx) {
        if (ctx.forStmt() != null) return visit (ctx.forStmt()) ;
        else return visit (ctx.whileStmt()) ;
    }

    @Override
    public ASTNode visitForCondition (MxLiteParser.ForConditionContext ctx) {
        return new forConditionNode(new position(ctx), (ExpressionNode) visit (ctx.expression())) ;
    }

    @Override
    public ASTNode visitForIncr (MxLiteParser.ForIncrContext ctx) {
        return new forIncrNode(new position(ctx), (ExpressionNode) visit (ctx.expression())) ;
    }

    @Override
    public ASTNode visitForInit (MxLiteParser.ForInitContext ctx) {
        if (ctx.varDef() != null) return new forInitNode(new position(ctx), (varDefNode) visit (ctx.varDef()), null) ;
        else return new forInitNode(new position(ctx), null, (ExpressionNode) visit (ctx.expression())) ;
    }

    @Override
    public ASTNode visitForStmt (MxLiteParser.ForStmtContext ctx) {
        forInitNode forInit = ctx.forInit() != null ?  (forInitNode) visit (ctx.forInit()) : null ;
        forConditionNode forCondition = ctx.forCondition() != null ? (forConditionNode) visit (ctx.forCondition()) : null ;
        forIncrNode forIncr = ctx.forIncr() != null ? (forIncrNode) visit (ctx.forIncr()) : null ;
        forStmtNode cur = new forStmtNode(new position(ctx), forInit, forCondition, forIncr, (statementNode) visit (ctx.statement())) ;
        return cur ;
        // return new forStmtNode(new position(ctx), forInit, forCondition, forIncr, (StatementNode) visit (ctx.statement())) ;
    }

    @Override
    public ASTNode visitFunctionCallExpr (MxLiteParser.FunctionCallExprContext ctx) {
        return new functionCallExprNode(new position(ctx), (ExpressionNode) visit (ctx.expression()), (expressionListNode) visit (ctx.expressionList())) ;
    }

    @Override
    public ASTNode visitFunctionParameterDef (MxLiteParser.FunctionParameterDefContext ctx) {
        functionParameterDefNode functionParameterDef = new functionParameterDefNode(new position(ctx)) ;
        ctx.parameter().forEach(v -> functionParameterDef.parameters.add ((parameterNode) visit (v)));
        return functionParameterDef ;
    }

    @Override
    public ASTNode visitFunctionType (MxLiteParser.FunctionTypeContext ctx) {
        functionTypeNode functionType = new functionTypeNode(new position(ctx), null) ;
        if (ctx.Void() != null) functionType.isVoid = true ;
        else {
            functionType.isVoid = false ;
            functionType.type = (varTypeNode) visit (ctx.varType()) ;
        }
        return functionType ;
    }

    @Override
    public ASTNode visitIfStmt (MxLiteParser.IfStmtContext ctx) {
        ifStmtNode ifStatement = new ifStmtNode(new position(ctx), (ExpressionNode) visit (ctx.expression()), (statementNode) visit (ctx.statement(0)), null) ;
        if (ctx.statement(1) != null) ifStatement.falseStatement = (statementNode) visit (ctx.statement(1)) ;
        return ifStatement ;
        // return new ifStmtNode(new position(ctx), (ExpressionNode) visit (ctx.expression()), (StatementNode) visit (ctx.statement(0)), (StatementNode) visit (ctx.statement(1))) ;
    }

    @Override
    public ASTNode visitLambdaExpr (MxLiteParser.LambdaExprContext ctx) {
        return visit (ctx.lambdaStmt()) ;
    }

    @Override
    public ASTNode visitLambdaStmt (MxLiteParser.LambdaStmtContext ctx) {
        functionParameterDefNode parameters = ctx.functionParameterDef() != null ? (functionParameterDefNode)visit (ctx.functionParameterDef()) : null ;
        return new lambdaStmtNode(new position(ctx), parameters, (suiteNode) visit (ctx.suite()), (expressionListNode) visit (ctx.expressionList())) ;
    }

    @Override
    public ASTNode visitNewExpr (MxLiteParser.NewExprContext ctx) {
        return visit (ctx.newVar()) ;
    }

    @Override
    public ASTNode visitNewSize (MxLiteParser.NewSizeContext ctx) {
        return new newSizeNode(new position(ctx), ctx.expression() != null ? (ExpressionNode) visit (ctx.expression()) : null) ;
    }

    @Override
    public ASTNode visitNewVar (MxLiteParser.NewVarContext ctx) {
        newVarNode newVar = new newVarNode(new position(ctx), null, null) ;
        if (ctx.Identifier() != null) newVar.classID = ctx.Identifier().toString() ;
        else newVar.builtinType = (builtinTypeNode) visit (ctx.builtinType()) ;
        ctx.newSize().forEach(v -> newVar.newSize.add ((newSizeNode) visit (v)));
        return newVar; 
    }
    
    @Override
    public ASTNode visitParameter (MxLiteParser.ParameterContext ctx) {
        return new parameterNode(new position(ctx), (varTypeNode) visit (ctx.varType()), ctx.Identifier().toString()) ;
    }

    @Override
    public ASTNode visitPostIncExpr (MxLiteParser.PostIncExprContext ctx) {
        return new postIncExprNode(new position(ctx), ctx.SelfPlus() != null ? postIncOperator.SelfPlus : postIncOperator.SelfMinus, (ExpressionNode) visit (ctx.expression())) ;
    }

    @Override
    public ASTNode visitPreIncExpr (MxLiteParser.PreIncExprContext ctx) {
        return new preIncExprNode(new position(ctx), ctx.SelfPlus() != null ? preIncOperator.SelfPlus : preIncOperator.SelfMinus, (ExpressionNode) visit (ctx.expression())) ;
    }

    @Override
    public ASTNode visitPrimary (MxLiteParser.PrimaryContext ctx) {
        if (ctx.This() != null) return new primaryNode(new position(ctx), primaryNode.primaryType.This, null) ;
        else if (ctx.Null() != null) return new primaryNode(new position(ctx), primaryNode.primaryType.Null, null) ;
        else if (ctx.DecimalInteger() != null) return new primaryNode(new position(ctx), primaryNode.primaryType.Int, ctx.DecimalInteger().toString()) ;
        else if (ctx.BoolLiteral() != null) return new primaryNode(new position(ctx), primaryNode.primaryType.Bool, ctx.BoolLiteral().toString()) ;
        else if (ctx.StringObject() != null) return new primaryNode(new position(ctx), primaryNode.primaryType.String, ctx.StringObject().toString()) ;
        else return new primaryNode(new position(ctx), primaryNode.primaryType.Identifier, ctx.Identifier().toString()) ;
    }

    @Override
    public ASTNode visitReturnStmt (MxLiteParser.ReturnStmtContext ctx) {
        return new returnStmtNode(new position(ctx), ctx.expression() != null ? (ExpressionNode) visit (ctx.expression()) : null) ;
    }

    @Override
    public ASTNode visitStatement (MxLiteParser.StatementContext ctx) {
        statementNode statement = new statementNode(new position(ctx)) ;
        if (ctx.suite() != null) statement.suite = (suiteNode) visit (ctx.suite()) ;
        if (ctx.varDefStmt() != null) statement.varDefstmt = (varDefNode) visit (ctx.varDefStmt()) ;
        if (ctx.ifStmt() != null) statement.ifStmt = (ifStmtNode) visit(ctx.ifStmt()) ;
        if (ctx.loopStmt() != null) statement.loopStmt = (LoopStmtNode) visit (ctx.loopStmt()) ;
        if (ctx.controlStmt() != null) statement.controlStmt = (ControlStmtNode) visit (ctx.controlStmt()) ;
        if (ctx.expression() != null) statement.expression = (ExpressionNode) visit (ctx.expression()) ;
        return statement ;
    }

    @Override
    public ASTNode visitSuite (MxLiteParser.SuiteContext ctx) {
        suiteNode suite = new suiteNode(new position(ctx)) ;
        ctx.statement().forEach(v -> suite.statementNodes.add ((statementNode) visit (v)));
        return suite ;
    }

    @Override
    public ASTNode visitUnaryExpr (MxLiteParser.UnaryExprContext ctx) {
        unaryExprNode unaryExpr = new unaryExprNode(new position(ctx), null, (ExpressionNode) visit (ctx.expression())) ;
        if (ctx.Plus() != null) unaryExpr.unaryOp = unaryOperator.Plus ;
        else if (ctx.Minus() != null) unaryExpr.unaryOp = unaryOperator.Minus ;
        else if (ctx.Tilde() != null) unaryExpr.unaryOp = unaryOperator.Tilde ;
        else if (ctx.Not() != null) unaryExpr.unaryOp = unaryOperator.Not ;
        return unaryExpr ;
    }

    @Override
    public ASTNode visitVarDeclaration (MxLiteParser.VarDeclarationContext ctx) {
        if (ctx.expression() == null) return new varDeclarationNode(new position(ctx), ctx.Identifier().toString()) ;
        else return new varDeclarationNode(new position(ctx), ctx.Identifier().toString(), (ExpressionNode) visit (ctx.expression())) ;
    }

    @Override
    public ASTNode visitVarDef (MxLiteParser.VarDefContext ctx) {
        varDefNode varDef = new varDefNode(new position(ctx), (varTypeNode) visit (ctx.varType())) ;
        ctx.varDeclaration().forEach(v -> varDef.varDeclarations.add ((varDeclarationNode) visit (v)));
        return varDef ;
    }

    @Override
    public ASTNode visitVarDefStmt (MxLiteParser.VarDefStmtContext ctx) {
        return visit (ctx.varDef()) ;
    }

    @Override
    public ASTNode visitVarType (MxLiteParser.VarTypeContext ctx) {
        assert (ctx.LeftBracket().size() == ctx.RightBracket().size()) ;
        if (ctx.Identifier() != null) return new varTypeNode(new position(ctx), ctx.Identifier().toString(), null, ctx.LeftBracket().size()) ;
        else return new varTypeNode(new position(ctx), null, (builtinTypeNode) visit (ctx.builtinType()), ctx.LeftBracket().size()) ;
    }

    @Override
    public ASTNode visitWhileStmt (MxLiteParser.WhileStmtContext ctx) {
        return new whileStmtNode(new position(ctx), (ExpressionNode) visit (ctx.expression()), (statementNode) visit (ctx.statement())) ;
    }
}