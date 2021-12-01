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
    private globalDefine globalDef ;
    private block currentBlock ;
    private function curFunction ;
    private Scope curScope ;
    private globalScope gScope ;
    private entity returnEntity ;
    private boolean copyVariable ;

    public IRBuilder(globalDefine _globalDef, globalScope _gScope) {
        globalDef = _globalDef; gScope = _gScope; curScope = _gScope ;
        copyVariable = true ;
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
                returnEntity = new register(curFunction.curRegisterID, toIRType(leftType)) ;
                currentBlock.push_back(new binary(IROperator.values()[it.binaryOp.ordinal()], toIRType(leftType), left, right, new register(curFunction.curRegisterID, toIRType(leftType)))) ;
                curFunction.curRegisterID ++ ;
            }
        } else if (isCompareOperator(it.binaryOp)) {
            it.leftExpression.accept(this) ;
            Type leftType = it.leftExpression.type ;
            entity left = returnEntity ;
            it.rightExpression.accept(this) ;
            Type rightType = it.rightExpression.type ;
            entity right = returnEntity ;
            if (leftType.type == basicType.Int) {
                register cmpRes = new register(curFunction.curRegisterID, new IRIntType(1)) ; // i1
                currentBlock.push_back(new binary(IROperator.values()[it.binaryOp.ordinal()], toIRType(leftType), left, right, new register(curFunction.curRegisterID, toIRType(leftType)))) ;
                curFunction.curRegisterID ++ ;
                returnEntity = cmpRes ; // i1
                // register i8Res = new register (curFunction.curRegisterID, new IRIntType(8)) ; // i8
                // currentBlock.push_back(new zext(cmpRes, i8Res, cmpRes.type, i8Res.type));
                // returnEntity = i8Res ;
                // curFunction.curRegisterID ++ ;
            }
        } else if (it.binaryOp == binaryOperator.Assign) {
            copyVariable = false; it.leftExpression.accept(this) ;
            Type leftType = it.leftExpression.type ;
            entity left = returnEntity ;
            copyVariable = true; it.rightExpression.accept(this) ;
            Type rightType = it.rightExpression.type ;
            entity right = returnEntity ;
            currentBlock.push_back(new store(toIRType(leftType), right, left));
            returnEntity = right ;
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
        function newFunc = new function(it.name) ;
        curFunction = newFunc ;
        globalDef.functions.add(newFunc) ;
        currentBlock = newFunc.rootBlock ;
        curScope = gScope.getScopeFromFunctionName(it.pos, it.name) ;
        it.suite.accept(this) ;
        curScope = curScope.parentScope() ;
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
    public void visit (ifStmtNode it) {
        it.expression.accept(this) ;
        if (returnEntity instanceof register && ((IRIntType)((register) returnEntity).type).width != 1) {
            register i1Reg = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
            alignWidth((register) returnEntity, i1Reg) ;
            returnEntity = i1Reg ;
        }
        label trueLabel = new label(curFunction.curRegisterID) ;
        block trueBranch = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        label falseLabel = new label(curFunction.curRegisterID) ;
        block falseBranch = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        currentBlock.push_back(new branch(returnEntity, trueLabel, falseLabel));
        
        label ifOutLabel = new label (curFunction.curRegisterID) ;
        block ifOutBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        currentBlock = trueBranch ;
        curScope = new Scope (curScope) ;
        it.trueStatement.accept(this) ;
        currentBlock.push_back(new branch(ifOutLabel)) ;
        curScope = curScope.parentScope() ;
        if (it.falseStatement != null) {
            currentBlock = falseBranch ;
            curScope = new Scope(curScope) ;
            it.falseStatement.accept(this) ;
            currentBlock.push_back(new branch(ifOutLabel));
            curScope = curScope.parentScope() ;
        }
        currentBlock = ifOutBlock ;

        curFunction.blocks.add(trueBranch); 
        if (it.falseStatement != null) curFunction.blocks.add(falseBranch) ;
        curFunction.blocks.add(ifOutBlock) ;
    }

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
            returnEntity = new constant(Integer.parseInt(it.identifier)) ;
        } else if (it.type == primaryType.Bool) {
            if (it.identifier == "true") {
                returnEntity = new constant(1) ;
            } else {
                returnEntity = new constant(0) ;
            }
        } else {
            if (it.type == primaryType.Identifier) {
                entity variableEntity = curScope.getEntity(it.identifier, true) ;
                IRType type = ((register) variableEntity).type ;
                if (copyVariable) {
                    returnEntity = new register(curFunction.curRegisterID, type) ;
                    currentBlock.push_back(new load(type, variableEntity, new register(curFunction.curRegisterID, type)));
                    curFunction.curRegisterID ++ ;
                } else {
                    returnEntity = variableEntity ;
                }
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
    public void visit (suiteNode it) {
        it.statementNodes.forEach(x -> x.accept(this)) ;
    }

    @Override
    public void visit (unaryExprNode it) {}

    @Override
    public void visit (varDeclarationNode it) {}

    public void alignWidth (register from, register to) {
        int fromWidth = ((IRIntType)from.type).width ;
        int toWidth = ((IRIntType)to.type).width ;
        if (fromWidth < toWidth) {
            currentBlock.push_back(new zext(from, to, from.type, to.type));
        } else if (fromWidth > toWidth) {
            currentBlock.push_back(new trunc(from, to, from.type, to.type));
        }
    }

    @Override
    public void visit (varDefNode it) {
        it.typeNode.accept(this) ;
        Type varType = it.type ;
        IRType varIRType = toIRType(varType) ;
        it.varDeclarations.forEach(x -> {
            int varRegID = curFunction.curRegisterID ;
            register varReg = new register(varRegID, varIRType) ;
            curScope.entities.put(x.name, varReg) ;
            currentBlock.push_back (new alloca(varReg, varIRType));
            curFunction.curRegisterID ++ ;
            if (x.isInitialized) {
                x.expression.accept(this) ;
                if (returnEntity instanceof register)
                    alignWidth((register) returnEntity, varReg);
                currentBlock.push_back(new store(varIRType, returnEntity, varReg)) ;
            }
        });
    }

    @Override
    public void visit (varTypeNode it) {}
    
    @Override
    public void visit (whileStmtNode it) {
        label conditionLabel = new label(curFunction.curRegisterID) ;
        block conditionBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        currentBlock.push_back(new branch(conditionLabel));
        
        currentBlock = conditionBlock ;
        it.expression.accept(this) ;
        if (returnEntity instanceof register && ((IRIntType)((register) returnEntity).type).width != 1) {
            register i1Reg = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
            alignWidth((register) returnEntity, i1Reg) ;
            returnEntity = i1Reg ;
        }

        label suiteLabel = new label(curFunction.curRegisterID) ;
        block suiteBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        label whileOutLabel = new label(curFunction.curRegisterID) ;
        block whileOutBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        currentBlock.push_back(new branch(returnEntity, suiteLabel, whileOutLabel));
        curFunction.blocks.add(conditionBlock) ;
        
        currentBlock = suiteBlock ;
        curScope = new Scope(curScope) ;
        it.statement.accept(this) ;
        curScope = curScope.parentScope() ;
        currentBlock.push_back(new branch(conditionLabel)) ;
        curFunction.blocks.add(suiteBlock) ;

        currentBlock = whileOutBlock ;
        curFunction.blocks.add(whileOutBlock) ;
    }
}
