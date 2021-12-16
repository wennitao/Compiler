package Backend;

import java.util.ArrayList;

import AST.*;
import AST.primaryNode.primaryType;
import MIR.*;
import MIR.IRType.IRArrayType;
import MIR.IRType.IRIntType;
import MIR.IRType.IRNullType;
import MIR.IRType.IRPointerType;
import MIR.IRType.IRType;
import MIR.IRType.IRVoidType;
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
    private boolean copyVariable, isFunctionID, isGlobalDef, isArrayExpr ;
    private functioncall curFuncCall ;
    private int returnArraySize ;

    public IRBuilder(globalDefine _globalDef, globalScope _gScope) {
        globalDef = _globalDef; gScope = _gScope; curScope = _gScope ;
        copyVariable = true; isFunctionID = false; isGlobalDef = false; isArrayExpr = false ;
    }

    private IRType toIRType (Type type) {
        IRType varIRType ;
        if (type.type == Type.basicType.Int) {
            if (type.dim == 0) varIRType = new IRIntType(32) ;
            else {
                IRType base = new IRIntType(32) ;
                IRType cur = base ;
                for (int i = 1; i <= type.dim; i ++) {
                    IRType nxt = new IRPointerType(cur) ;
                    cur = nxt ;
                }
                varIRType = cur ;
            }
        } else if (type.type == Type.basicType.Bool) {
            if (type.dim == 0) varIRType = new IRIntType(8) ;
            else {
                IRType base = new IRIntType(8) ;
                IRType cur = base ;
                for (int i = 1; i <= type.dim; i ++) {
                    IRType nxt = new IRPointerType(cur) ;
                    cur = nxt ;
                }
                varIRType = cur ;
            }
        } 
        else if (type.type == Type.basicType.Void) varIRType = new IRVoidType() ;
        else if (type.type == Type.basicType.Null) varIRType = new IRNullType() ;
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
    public void visit (arrayExprNode it) {
        isArrayExpr = true ;
        it.arrayIdentifier.accept(this) ;
        register arrayReg = (register) returnEntity ;
        it.arrayIndex.accept(this) ;
        constant arrayInd = (constant) returnEntity ;
        register returnReg = new register(curFunction.curRegisterID ++, ((IRPointerType)arrayReg.type).type) ;
        currentBlock.push_back(new getelementptr(arrayReg, arrayInd, returnReg)) ;
        returnEntity = returnReg ;
        isArrayExpr = false ;
    }

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
            copyVariable = false; it.leftExpression.accept(this) ; copyVariable = true ;
            Type leftType = it.leftExpression.type ;
            entity left = returnEntity ;
            copyVariable = true; it.rightExpression.accept(this) ;
            Type rightType = it.rightExpression.type ;
            entity right = returnEntity ;
            if (right instanceof register) typeCasting((register) right, (register) left);
            currentBlock.push_back(new store(toIRType(leftType), returnEntity, left));
            returnEntity = right ;
        } else if (it.binaryOp == binaryOperator.Dot) {

        } else if (it.binaryOp == binaryOperator.AndAnd) {
            
        } else if (it.binaryOp == binaryOperator.OrOr) {

        }
    }

    @Override
    public void visit (bracketExprNode it) {
        it.expression.accept(this) ;
    }

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
    public void visit (expressionListNode it) {
        it.expressions.forEach(x -> {
            x.accept(this) ;
            curFuncCall.parameters.add(returnEntity) ;
        }) ;
    }

    @Override
    public void visit (forConditionNode it) {
        it.expression.accept(this) ;
        if (returnEntity instanceof register && ((IRIntType)returnEntity.type).width != 1) {
            register i1Reg = new register(0, new IRIntType(1)) ;
            typeCasting((register) returnEntity, i1Reg) ;
            // returnEntity = i1Reg ;
        }
    }

    @Override
    public void visit (forIncrNode it) {
        it.expression.accept(this) ;
    }

    @Override
    public void visit (forInitNode it) {
        if (it.varDef != null) it.varDef.accept(this) ;
        if (it.expression != null) it.expression.accept(this) ;
    }

    @Override
    public void visit (forStmtNode it) {
        curScope = new Scope (curScope) ;
        if (it.forInit != null) it.forInit.accept(this) ;
        
        label conditionLabel = new label("ID" + curFunction.curRegisterID + "_for_condition") ;
        // label conditionLabel = new label(curFunction.curRegisterID) ;
        // block conditionBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block conditionBlock = new block(conditionLabel.labelID) ;
        // label suiteLabel = new label(curFunction.curRegisterID) ;
        label suiteLabel = new label("ID" + curFunction.curRegisterID + "_for_suite") ;
        // block suiteBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block suiteBlock = new block (suiteLabel.labelID) ;
        // label incrLabel = new label(curFunction.curRegisterID) ;
        label incrLabel = new label ("ID" + curFunction.curRegisterID + "_for_incr") ;
        // block incrBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block incrBlock = new block (incrLabel.labelID) ;
        // label forOutLabel = new label(curFunction.curRegisterID) ;
        label forOutLabel = new label("ID" + curFunction.curRegisterID + "_for_out") ;
        // block forOutBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block forOutBlock = new block(forOutLabel.labelID) ;

        currentBlock.push_back(new branch(conditionLabel)) ;
        currentBlock = conditionBlock ;
        it.forCondition.accept(this) ;
        entity conditionReg = returnEntity ;
        currentBlock.push_back(new branch(conditionReg, suiteLabel, forOutLabel));
        curFunction.blocks.add(conditionBlock) ;
        
        currentBlock = suiteBlock ;
        it.statement.accept(this) ;
        currentBlock.push_back(new branch(incrLabel));
        curFunction.blocks.add (suiteBlock) ;

        if (it.forIncr != null) {
            currentBlock = incrBlock ;
            it.forIncr.accept(this) ;
            currentBlock.push_back(new branch(conditionLabel));
            curFunction.blocks.add(incrBlock) ;
        }
        
        currentBlock = forOutBlock ;
        curFunction.blocks.add (forOutBlock) ;
        curScope = curScope.parentScope() ;
    }

    @Override
    public void visit (functionCallExprNode it) {
        isFunctionID = true ;
        it.functionIdentifier.accept(this) ;
        isFunctionID = false ;
        it.expressionList.accept(this) ;
        register destReg = new register(curFunction.curRegisterID ++, curFuncCall.returnType) ;
        curFuncCall.destReg = destReg ;
        currentBlock.push_back(curFuncCall) ;
        returnEntity = destReg ;
    }

    @Override
    public void visit (functionDefNode it) {
        function newFunc = new function(it.name) ;
        if (it.functionType.isVoid == true) newFunc.returnType = new IRVoidType() ;
        else newFunc.returnType = toIRType(it.functionType.type.type) ;
        curFunction = newFunc ;
        globalDef.functions.add(newFunc) ;
        currentBlock = newFunc.rootBlock ;
        curScope = gScope.getScopeFromFunctionName(it.pos, it.name) ;
        it.parameters.accept(this) ;
        label functionEntryLabel = new label(it.name + "_entry") ;
        currentBlock.identifier = functionEntryLabel.labelID ;
        for (int i = 0; i < curFunction.parameters.size(); i ++) {
            register parameterReg = curFunction.parameters.get(i) ;
            register copyReg = new register(curFunction.curRegisterID ++, parameterReg.type) ;
            currentBlock.push_back(new alloca(copyReg, copyReg.type)) ;
            currentBlock.push_back(new store(copyReg.type, parameterReg, copyReg));
            curScope.entities.put(curFunction.parameterId.get(i), copyReg) ;
        }
        it.suite.accept(this) ; 
        if (curFunction.returnType instanceof IRVoidType) currentBlock.push_back(new returnStmt(new register (0, new IRVoidType()))) ;
        curScope = curScope.parentScope() ;
    }

    @Override
    public void visit (functionParameterDefNode it) {
        it.parameters.forEach(x -> {
            x.accept(this) ;
            curFunction.parameters.add ((register) returnEntity) ;
        }) ;
    }
    
    @Override
    public void visit (functionTypeNode it) {}

    @Override
    public void visit (globalVarDefNode it) {
        isGlobalDef = true ;
        it.varDef.accept(this) ;
        isGlobalDef = false ;
    }

    @Override
    public void visit (ifStmtNode it) {
        it.expression.accept(this) ;
        if (returnEntity instanceof register && ((IRIntType)((register) returnEntity).type).width != 1) {
            register i1Reg = new register(0, new IRIntType(1)) ;
            typeCasting((register) returnEntity, i1Reg) ;
            // returnEntity = i1Reg ;
        }
        // label trueLabel = new label(curFunction.curRegisterID) ;
        label trueLabel = new label ("ID" + curFunction.curRegisterID + "_if_true") ;
        // block trueBranch = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block trueBranch = new block (trueLabel.labelID) ;
        // label falseLabel = new label(curFunction.curRegisterID) ;
        label falseLabel = new label("ID" + curFunction.curRegisterID + "_if_false") ;
        // block falseBranch = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block falseBranch = new block(falseLabel.labelID) ;
        currentBlock.push_back(new branch(returnEntity, trueLabel, falseLabel));
        
        // label ifOutLabel = new label (curFunction.curRegisterID) ;
        label ifOutLabel = new label("ID" + curFunction.curRegisterID + "_if_out") ;
        // block ifOutBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block ifOutBlock = new block(ifOutLabel.labelID) ;
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
    public void visit (newVarNode it) {
        int pos = it.newSize.size() - 1;
        for (int i = 0; i < it.newSize.size(); i ++)
            if (it.newSize.get(i).expression == null) {
                pos = i - 1; break ;
            }
        Type baseType = new Type (it.type) ;
        baseType.dim = 0 ;
        IRType baseIRType = toIRType(baseType) ;
        IRType curType = baseIRType ;
        for (int i = pos + 1; i < it.newSize.size(); i ++) {
            IRType nxtType = new IRPointerType(curType) ;
            curType = nxtType ;
        }
        for (int i = pos; i >= 0; i --) {
            it.newSize.get(i).expression.accept(this) ;
            IRType nxtType = new IRArrayType(((constant) returnEntity).value, curType) ;
            curType = nxtType ;
        }
        register reg = new register(curFunction.curRegisterID ++, curType) ;
        currentBlock.push_back(new alloca(reg, curType)) ;
        curType = new IRPointerType(curType) ;
        reg.type = curType ;
        returnEntity = reg ;
    }

    @Override
    public void visit (parameterNode it) {
        IRType curIRType = toIRType(it.type.type) ;
        register curParameter = new register(curFunction.curRegisterID ++, curIRType) ;
        // curScope.entities.put(it.name, curParameter) ;
        curFunction.parameterId.add(it.name) ;
        returnEntity = curParameter ;
    }

    @Override
    public void visit (postIncExprNode it) {
        copyVariable = false; it.expression.accept(this); copyVariable = true ;
        register varCopy = new register(curFunction.curRegisterID ++, ((register) returnEntity).type) ;
        currentBlock.push_back(new load(varCopy.type, returnEntity, varCopy)) ;
        register resReg = new register(curFunction.curRegisterID ++, new IRIntType(32)) ;
        currentBlock.push_back(new binary(IROperator.add, varCopy.type, varCopy, new constant(1, new IRIntType(32)), resReg)) ;
        currentBlock.push_back(new store(varCopy.type, resReg, returnEntity)) ;
        returnEntity = varCopy ;
    }

    @Override
    public void visit (preIncExprNode it) {
        copyVariable = false; it.expression.accept(this); copyVariable = true ;
        register varCopy = new register(curFunction.curRegisterID ++, ((register) returnEntity).type) ;
        currentBlock.push_back(new load(varCopy.type, returnEntity, varCopy)) ;
        register resReg = new register(curFunction.curRegisterID ++, new IRIntType(32)) ;
        currentBlock.push_back(new binary(IROperator.add, varCopy.type, varCopy, new constant(1, new IRIntType(32)), resReg)) ;
        currentBlock.push_back(new store(varCopy.type, resReg, returnEntity)) ;
        returnEntity = resReg ;
    }

    @Override
    public void visit (primaryNode it) {
        if (it.type == primaryType.Int) {
            returnEntity = new constant(Integer.parseInt(it.identifier), new IRIntType(32)) ;
        } else if (it.type == primaryType.Bool) {
            if (it.identifier == "true") {
                returnEntity = new constant(1, new IRIntType(8)) ;
            } else {
                returnEntity = new constant(0, new IRIntType(8)) ;
            }
        } else if (it.type == primaryType.Null) {
            returnEntity = new register(0, new IRNullType()) ;
        } else {
            if (it.type == primaryType.Identifier) {
                if (isFunctionID) {
                    Type functionReturnType = gScope.getReturnTypeFromFunctionName(it.pos, it.identifier) ;
                    IRType functionReturnIRType = toIRType(functionReturnType) ;
                    functioncall fcall ;
                    if (functionReturnType.type == Type.basicType.Void) {
                        fcall = new functioncall(it.identifier, functionReturnIRType) ;
                    } else {
                        // register returnReg = new register(curFunction.curRegisterID ++, toIRType(functionReturnType)) ;
                        fcall = new functioncall(it.identifier, functionReturnIRType, null) ;
                    }
                    curFuncCall = fcall ;
                } else {
                    entity variableEntity = curScope.getEntity(it.identifier, true) ;
                    IRType type = variableEntity.type ;
                    if (copyVariable || isArrayExpr) {
                        returnEntity = new register(curFunction.curRegisterID, type) ;
                        currentBlock.push_back(new load(type, variableEntity, new register(curFunction.curRegisterID, type)));
                        curFunction.curRegisterID ++ ;
                    } else {
                        returnEntity = variableEntity ;
                    }
                }
            }
        }
    }

    @Override
    public void visit (returnStmtNode it) {
        if (it.expression != null) it.expression.accept(this) ;
        currentBlock.push_back(new returnStmt(returnEntity)) ;
    }

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

    public void typeCasting (register from, register to) {
        returnEntity = from ;
        if (from.type instanceof IRIntType && to.type instanceof IRIntType) {
            int fromWidth = ((IRIntType)from.type).width ;
            int toWidth = ((IRIntType)to.type).width ;
            if (fromWidth == toWidth) return ;
            register returnReg = new register(curFunction.curRegisterID ++, to.type) ;
            if (fromWidth < toWidth) {
                currentBlock.push_back(new zext(from, returnReg, from.type, to.type));
            } else if (fromWidth > toWidth) {
                currentBlock.push_back(new trunc(from, returnReg, from.type, to.type));
            }
            returnEntity = returnReg ;
        } else {
            if (from.type instanceof IRNullType) {
                returnEntity = from ;
            } else {
                register returnReg = new register(curFunction.curRegisterID ++, to.type) ;
                currentBlock.push_back(new bitcast(from, returnReg, to.type));
                returnEntity = returnReg ;
            }
        }
    }

    @Override
    public void visit (varDefNode it) {
        it.typeNode.accept(this) ;
        Type varType = it.type ;
        IRType varIRType = toIRType(varType) ;
        it.varDeclarations.forEach(x -> {
            if (!isGlobalDef) {
                int varRegID = curFunction.curRegisterID ;
                register varReg = new register(varRegID, varIRType) ;
                curScope.entities.put(x.name, varReg) ;
                currentBlock.push_back (new alloca(varReg, varIRType));
                curFunction.curRegisterID ++ ;
                if (x.isInitialized) {
                    x.expression.accept(this) ;
                    if (returnEntity instanceof register)
                        typeCasting((register) returnEntity, varReg);
                    currentBlock.push_back(new store(varIRType, returnEntity, varReg)) ;
                }
            } else {
                globalRegister reg = new globalRegister(x.name, varIRType) ;
                curScope.entities.put(x.name, reg) ;
                if (x.isInitialized) {
                    x.expression.accept(this) ;
                    if (returnEntity instanceof constant)
                        globalDef.globalDefStmt.add(new globalDefineStmt(reg, (constant) returnEntity)) ;
                } else {
                    globalDef.globalDefStmt.add(new globalDefineStmt(reg)) ;
                }
            }
        });
    }

    @Override
    public void visit (varTypeNode it) {}
    
    @Override
    public void visit (whileStmtNode it) {
        // label conditionLabel = new label(curFunction.curRegisterID) ;
        label conditionLabel = new label("ID" + curFunction.curRegisterID + "_while_condition") ;
        // block conditionBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block conditionBlock = new block(conditionLabel.labelID) ;
        currentBlock.push_back(new branch(conditionLabel));
        
        currentBlock = conditionBlock ;
        it.expression.accept(this) ;
        if (returnEntity instanceof register && (((IRIntType)(returnEntity.type)).width != 1)) {
            register i1Reg = new register(0, new IRIntType(1)) ;
            typeCasting((register) returnEntity, i1Reg) ;
            // returnEntity = i1Reg ;
        }

        // label suiteLabel = new label(curFunction.curRegisterID) ;
        // block suiteBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        // label whileOutLabel = new label(curFunction.curRegisterID) ;
        // block whileOutBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        label suiteLabel = new label("ID" + curFunction.curRegisterID + "_while_suite") ;
        block suiteBlock = new block(suiteLabel.labelID) ;
        label whileOutLabel = new label("ID" + curFunction.curRegisterID + "_while_out") ;
        block whileOutBlock = new block(whileOutLabel.labelID) ;
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
