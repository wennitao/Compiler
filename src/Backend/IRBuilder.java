package Backend;

import AST.*;
import AST.primaryNode.primaryType;
import MIR.*;
import MIR.IRType.IRIntType;
import MIR.IRType.IRType;
import MIR.binary.IROperator;
import Util.Scope;
import Util.Type;
import Util.globalScope;
import Util.Type.basicType;
import AST.binaryExprNode.binaryOperator;

public class IRBuilder implements ASTVisitor{
    private block currentBlock ;
    private mainFn fn ;
    private Scope curScope ;
    private globalScope gScope ;
    private int curRegisterID ;
    private entity returnEntity ;

    public IRBuilder(mainFn _fn, globalScope _gScope) {
        curRegisterID = 0 ;
        fn = _fn; gScope = _gScope ;curScope = _gScope ;
        currentBlock = fn.rootBlock ;
    }

    private IRType toIRType (Type type) {
        IRType varIRType ;
        if (type.type == Type.basicType.Int) varIRType = new IRIntType(32) ;
        else if (type.type == Type.basicType.Bool) varIRType = new IRIntType(8) ;
        else varIRType = new IRIntType(32) ;
        return varIRType ;
    }

    public boolean isCompareOperator (binaryOperator op) {
        return op == binaryOperator.Greater || op == binaryOperator.GreaterEqual
        || op == binaryOperator.Less || op == binaryOperator.LessEqual
        || op == binaryOperator.NotEqual || op == binaryOperator.Equal ;
    }

    public boolean isArithmeticOperator (binaryOperator op) {
        return op == binaryOperator.Plus || op == binaryOperator.Minus
        || op == binaryOperator.Mul || op == binaryOperator.Div || op == binaryOperator.Mod
        || op == binaryOperator.RightShift || op == binaryOperator.LeftShift
        || op == binaryOperator.And || op == binaryOperator.Or || op == binaryOperator.Caret ;
    }

    @Override 
    public void visit (arrayExprNode it) {}

    @Override
    public void visit (binaryExprNode it) {
        if (isArithmeticOperator(it.binaryOp)) {
            it.leftExpression.accept(this) ;
            Type leftType = it.leftExpression.type ;
            entity left = returnEntity ;
            it.rightExpression.accept(this) ;
            Type rightType = it.rightExpression.type ;
            entity right = returnEntity ;
            if (leftType.type == basicType.Int) {
                returnEntity = new register(curRegisterID, toIRType(leftType)) ;
                currentBlock.push_back(new binary(IROperator.values()[it.binaryOp.ordinal()], toIRType(leftType), left, right, new register(curRegisterID, toIRType(leftType)))) ;
                curRegisterID ++ ;
            }
        } else if (isCompareOperator(it.binaryOp)) {
            it.leftExpression.accept(this) ;
            Type leftType = it.leftExpression.type ;
            entity left = returnEntity ;
            it.rightExpression.accept(this) ;
            Type rightType = it.rightExpression.type ;
            entity right = returnEntity ;
            if (leftType.type == basicType.Int) {
                register cmpRes = new register(curRegisterID, new IRIntType(1)) ; // i1
                currentBlock.push_back(new binary(IROperator.values()[it.binaryOp.ordinal()], toIRType(leftType), left, right, new register(curRegisterID, toIRType(leftType)))) ;
                curRegisterID ++ ;
                register i8Res = new register (curRegisterID, new IRIntType(8)) ; // i8
                currentBlock.push_back(new zext(cmpRes, i8Res, cmpRes.type, i8Res.type));
                returnEntity = i8Res ;
                curRegisterID ++ ;
            }
        } else if (it.binaryOp == binaryOperator.Assign) {

        } else if (it.binaryOp == binaryOperator.Dot) {

        } else if (it.binaryOp == binaryOperator.AndAnd) {

        } else if (it.binaryOp == binaryOperator.OrOr) {

        }
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
    public void visit (primaryNode it) {
        if (it.type == primaryType.Int) {
            // IRType type = new IRIntType(32) ;
            // currentBlock.push_back(new alloca(new register(curRegisterID, type), type));
            // currentBlock.push_back(new store(type, new constant(Integer.parseInt(it.identifier)), new register(curRegisterID, type)));
            // returnEntity = new register(curRegisterID, type) ;
            returnEntity = new constant(Integer.parseInt(it.identifier)) ;
            // curRegisterID ++ ;
        } else if (it.type == primaryType.Bool) {
            // IRType type = new IRIntType(8) ;
            // currentBlock.push_back(new alloca(new register(curRegisterID, type), type));
            if (it.identifier == "true") {
                returnEntity = new constant(1) ;
                // currentBlock.push_back(new store(type, new constant(1), new register(curRegisterID, type)));
            } else {
                returnEntity = new constant(0) ;
                // currentBlock.push_back(new store(type, new constant(0), new register(curRegisterID, type)));
            }
            // returnEntity = new register(curRegisterID, type) ;
            // curRegisterID ++ ;
        } else {
            if (it.type == primaryType.Identifier) {
                entity variableEntity = curScope.getEntity(it.identifier, true) ;
                IRType type = ((register) variableEntity).type ;
                returnEntity = new register(curRegisterID, type) ;
                currentBlock.push_back(new load(type, variableEntity, new register(curRegisterID, type)));
                curRegisterID ++ ;
            }
        }
    }

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
        it.typeNode.accept(this) ;
        Type varType = it.type ;
        IRType varIRType = toIRType(varType) ;
        it.varDeclarations.forEach(x -> {
            int varRegID = curRegisterID ;
            curScope.entities.put(x.name, new register(curRegisterID, varIRType)) ;
            currentBlock.push_back (new alloca(new register(curRegisterID, varIRType), varIRType));
            curRegisterID ++ ;
            if (x.isInitialized) {
                x.expression.accept(this) ;
                currentBlock.push_back(new store(varIRType, returnEntity, new register(varRegID, varIRType))) ;
            }
        });
    }

    @Override
    public void visit (varTypeNode it) {}
    
    @Override
    public void visit (whileStmtNode it) {}
}
