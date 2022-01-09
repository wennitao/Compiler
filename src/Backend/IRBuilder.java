package Backend;

import java.util.ArrayList;

import AST.*;
import AST.primaryNode.primaryType;
import AST.unaryExprNode.unaryOperator;
import MIR.*;
import MIR.IRType.IRArrayType;
import MIR.IRType.IRClassType;
import MIR.IRType.IRIntType;
import MIR.IRType.IRNullType;
import MIR.IRType.IRPointerType;
import MIR.IRType.IRType;
import MIR.IRType.IRVoidType;
import MIR.binary.IROperator;
import Util.FlowController;
import Util.Scope;
import Util.Type;
import Util.globalScope;
import Util.position;
import Util.Type.basicType;
import AST.binaryExprNode.binaryOperator;

public class IRBuilder implements ASTVisitor{
    private globalDefine globalDef ;
    private block currentBlock ;
    private function curFunction ;
    private Scope curScope ;
    private globalScope gScope ;
    private entity returnEntity ;
    private boolean copyVariable, isFunctionID, isGlobalDef, isArrayExpr, mainFuncIsDefined, isClassDefine, varDefNeedToStore ;
    private functioncall curFuncCall ;
    private ArrayList<IRType> curFuncCallParameters ;
    private function mainFunc ;
    private FlowController flowController ;
    private IRClassType curClassType ;
    private register curClass ;

    public IRBuilder(globalDefine _globalDef, globalScope _gScope) {
        globalDef = _globalDef; gScope = _gScope; curScope = _gScope ;
        copyVariable = true; isFunctionID = false; isGlobalDef = false; isArrayExpr = false; mainFuncIsDefined = false ;
        isClassDefine = false; varDefNeedToStore = true ;
        addBuiltinFunction() ;
    }

    private void addBuiltinFunction () {
        function newFunc = new function("print") ;
        ArrayList<IRType> parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.returnType = new IRVoidType() ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType(new IRIntType(8)))) ;
        parameters.add(new IRPointerType(new IRIntType(8))) ;
        gScope.functionIRParameters.put("print", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("println") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.returnType = new IRVoidType() ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType(new IRIntType(8)))) ;
        parameters.add (new IRPointerType(new IRIntType(8))) ;
        gScope.functionIRParameters.put("println", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("printInt") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.returnType = new IRVoidType() ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRIntType(32))) ;
        parameters.add (new IRIntType(32)) ;
        gScope.functionIRParameters.put("printInt", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("printlnInt") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.returnType = new IRVoidType() ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRIntType(32))) ;
        parameters.add (new IRIntType(32)) ;
        gScope.functionIRParameters.put("printlnInt", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("getString") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.returnType = new IRPointerType(new IRIntType(8)) ;
        gScope.functionIRParameters.put("getString", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("getInt") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.returnType = new IRIntType(32) ;
        gScope.functionIRParameters.put("getInt", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("toString") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRIntType(32))) ;
        parameters.add(new IRIntType(32)) ;
        newFunc.returnType = new IRPointerType(new IRIntType(8)) ;
        gScope.functionIRParameters.put("toString", parameters) ;
        globalDef.functions.add(newFunc) ;

        gScope = (globalScope) gScope.getScopeFromClassName(new position(0, 0), "__Array") ;
        newFunc = new function ("size") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add(new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(32) ;
        gScope.functionIRParameters.put("size", parameters) ;
        globalDef.functions.add(newFunc) ;
        gScope = (globalScope) gScope.parentScope() ;

        gScope = (globalScope) gScope.getScopeFromClassName(new position(0, 0), "string") ;
        newFunc = new function ("length") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(32) ;
        gScope.functionIRParameters.put("length", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("substring") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRIntType (32))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRIntType (32))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        parameters.add (new IRIntType (32)) ;
        parameters.add (new IRIntType (32)) ;
        newFunc.returnType = new IRPointerType(new IRIntType(8)) ;
        gScope.functionIRParameters.put("substring", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("parseInt") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(32) ;
        gScope.functionIRParameters.put("parseInt", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("ord") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRIntType (32))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        parameters.add (new IRIntType(32)) ;
        newFunc.returnType = new IRIntType(8) ;
        gScope.functionIRParameters.put("ord", parameters) ;
        globalDef.functions.add(newFunc) ;
        
        gScope = (globalScope) gScope.parentScope() ;

        newFunc = new function ("string_add") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRPointerType(new IRIntType(8)) ;
        gScope.functionIRParameters.put("string_add", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("string_equal") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(1) ;
        gScope.functionIRParameters.put("string_equal", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("string_notEqual") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(1) ;
        gScope.functionIRParameters.put("string_notEqual", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("string_less") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(1) ;
        gScope.functionIRParameters.put("string_less", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("string_lessEqual") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(1) ;
        gScope.functionIRParameters.put("string_lessEqual", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("string_greater") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(1) ;
        gScope.functionIRParameters.put("string_greater", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("string_greaterEqual") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(1) ;
        gScope.functionIRParameters.put("string_greaterEqual", parameters) ;
        globalDef.functions.add(newFunc) ;
    }

    private IRType toIRArrayType (IRType baseType, int dim) {
        IRType cur = baseType ;
        for (int i = 1; i <= dim; i ++) {
            IRType nxt = new IRPointerType(cur) ;
            cur = nxt ;
        }
        return cur ;
    }

    private IRType toIRType (Type type) {
        IRType varIRType ;
        if (type.type == Type.basicType.Int) {
            varIRType = toIRArrayType(new IRIntType(32), type.dim) ;
        } else if (type.type == Type.basicType.Bool) {
            varIRType = toIRArrayType(new IRIntType(8), type.dim) ;
        } 
        else if (type.type == Type.basicType.Void) varIRType = new IRVoidType() ;
        else if (type.type == Type.basicType.Null) varIRType = new IRNullType() ;
        else if (type.type == Type.basicType.Class) {
            IRType baseType = gScope.getIRTypeFromClassName(type.Identifier) ; 
            varIRType = toIRArrayType(baseType, type.dim) ;
        }
        else if (type.type == Type.basicType.String) {
            IRType baseType = new IRPointerType(new IRIntType(8)) ;
            varIRType = toIRArrayType(baseType, type.dim) ;
        }
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
        boolean copyVariableBackup = copyVariable ;
        copyVariable = false; it.arrayIdentifier.accept(this); copyVariable = copyVariableBackup ;
        register arrayReg = (register) returnEntity ;
        register array = new register(curFunction.curRegisterID ++, ((IRPointerType)arrayReg.type).type) ;
        currentBlock.push_back(new load(array.type, arrayReg, array)) ;
        copyVariableBackup = copyVariable ;
        copyVariable = true; it.arrayIndex.accept(this); copyVariable = copyVariableBackup ;
        entity arrayInd = returnEntity ;
        register returnRegPointer = new register (curFunction.curRegisterID ++, array.type) ;
        getelementptr cur = new getelementptr(array, returnRegPointer) ;
        cur.value.add(arrayInd) ;
        currentBlock.push_back(cur) ;
        if (copyVariable) {
            register returnReg = new register(curFunction.curRegisterID ++, ((IRPointerType) returnRegPointer.type).type) ;
            currentBlock.push_back(new load(returnReg.type, returnRegPointer, returnReg)) ;
            returnEntity = returnReg ;
        } else {
            returnEntity = returnRegPointer ;
        }
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
            } else if (leftType.type == basicType.String && it.binaryOp == binaryOperator.Plus) {
                register res = new register(curFunction.curRegisterID ++, new IRPointerType(new IRIntType(8))) ;
                functioncall stringAdd = new functioncall("string_add", res.type, res) ;
                stringAdd.parameters.add(left); stringAdd.parameters.add(right) ;
                currentBlock.push_back(stringAdd) ;
                returnEntity = res ;
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
            } else if (leftType.type == basicType.String) {
                if (it.binaryOp == binaryOperator.Equal) {
                    register res = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
                    functioncall func = new functioncall("string_equal", res.type, res) ;
                    func.parameters.add(left); func.parameters.add(right) ;
                    currentBlock.push_back(func) ;
                    returnEntity = res ;
                } else if (it.binaryOp == binaryOperator.NotEqual) {
                    register res = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
                    functioncall func = new functioncall("string_notEqual", res.type, res) ;
                    func.parameters.add(left); func.parameters.add(right) ;
                    currentBlock.push_back(func) ;
                    returnEntity = res ;
                } else if (it.binaryOp == binaryOperator.Less) {
                    register res = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
                    functioncall func = new functioncall("string_less", res.type, res) ;
                    func.parameters.add(left); func.parameters.add(right) ;
                    currentBlock.push_back(func) ;
                    returnEntity = res ;
                } else if (it.binaryOp == binaryOperator.Greater) {
                    register res = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
                    functioncall func = new functioncall("string_greater", res.type, res) ;
                    func.parameters.add(left); func.parameters.add(right) ;
                    currentBlock.push_back(func) ;
                    returnEntity = res ;
                } else if (it.binaryOp == binaryOperator.LessEqual) {
                    register res = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
                    functioncall func = new functioncall("string_lessEqual", res.type, res) ;
                    func.parameters.add(left); func.parameters.add(right) ;
                    currentBlock.push_back(func) ;
                    returnEntity = res ;
                } else if (it.binaryOp == binaryOperator.GreaterEqual) {
                    register res = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
                    functioncall func = new functioncall("string_greaterEqual", res.type, res) ;
                    func.parameters.add(left); func.parameters.add(right) ;
                    currentBlock.push_back(func) ;
                    returnEntity = res ;
                }
            }
        } else if (it.binaryOp == binaryOperator.Assign) {
            copyVariable = false; it.leftExpression.accept(this) ; copyVariable = true ;
            Type leftType = it.leftExpression.type ;
            entity left = returnEntity ;
            copyVariable = true; it.rightExpression.accept(this) ;
            Type rightType = it.rightExpression.type ;
            entity right = returnEntity ;
            if (right instanceof register) typeCasting((register) right, ((IRPointerType) left.type).type) ;
            currentBlock.push_back(new store(((IRPointerType) left.type).type, returnEntity, left));
            returnEntity = right ;
        } else if (it.binaryOp == binaryOperator.Dot) {
            boolean isFunctionIDBackup = isFunctionID ;
            isFunctionID = false ;
            boolean copyVariableBackup = copyVariable ;
            copyVariable = false; it.leftExpression.accept(this); copyVariable = copyVariableBackup ;
            isFunctionID = isFunctionIDBackup ;
            Type leftType = it.leftExpression.type ;
            entity left = returnEntity ;
            if (leftType.type == basicType.Class) {
                curClass = (register) left ;
                curClassType = (IRClassType) gScope.getIRTypeFromClassName(leftType.Identifier) ;
                if (curFuncCall != null) {
                    curFuncCall.functionName += "class" + curClassType.className + "_" ;
                    curFuncCall.parameters.add(curClass) ;
                } 
                globalScope gScopeBackup = gScope ;
                Scope curScopeBackup = curScope ;
                gScope = (globalScope)gScope.getScopeFromClassName(it.pos, leftType.Identifier) ;
                curScope = gScope ;
                it.rightExpression.accept(this) ;
                gScope = gScopeBackup; curScope = curScopeBackup ;
                curClass = null; curClassType = null ;
            } else if (leftType.dim > 0) {
                if (curFuncCall != null) {
                    curFuncCall.parameters.add(left) ;
                }
                globalScope gScopeBackup = gScope ;
                Scope curScopeBackup = curScope ;
                gScope = (globalScope)gScope.getScopeFromClassName(it.pos, "__Array") ;
                curScope = gScope ;
                it.rightExpression.accept(this) ;
                gScope = gScopeBackup; curScope = curScopeBackup ;
            } else if (leftType.type == basicType.String) {
                if (curFuncCall != null) {
                    register leftValue = new register(curFunction.curRegisterID ++, ((IRPointerType)left.type).type) ;
                    currentBlock.push_back(new load(leftValue.type, left, leftValue));
                    curFuncCall.parameters.add(leftValue) ;
                }
                globalScope gScopeBackup = gScope ;
                Scope curScopeBackup = curScope ;
                gScope = (globalScope)gScope.getScopeFromClassName(it.pos, "string") ;
                curScope = gScope ;
                it.rightExpression.accept(this) ;
                gScope = gScopeBackup; curScope = curScopeBackup ;
            }
        } else if (it.binaryOp == binaryOperator.AndAnd) {
            it.leftExpression.accept(this) ;
            label curLabel = new label(currentBlock.identifier) ;
            label trueLabel = new label("ID" + (curFunction.curRegisterID - 1) + "_AndAnd_true") ;
            block trueBlock = new block(trueLabel.labelID) ;
            label outLabel = new label("ID" + (curFunction.curRegisterID - 1) + "_AndAnd_out") ;
            block outBlock = new block(outLabel.labelID) ;
            currentBlock.push_back(new branch(returnEntity, trueLabel, outLabel)) ;
            currentBlock = trueBlock ;
            it.rightExpression.accept(this) ;
            currentBlock.push_back(new branch(outLabel)) ;
            currentBlock = outBlock ;
            register returnReg = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
            phi phiStmt = new phi(returnReg, new IRIntType(1)) ;
            phiStmt.labels.add(curLabel); phiStmt.value.add(new constant(0, new IRIntType(1))) ;
            phiStmt.labels.add(trueLabel); phiStmt.value.add (returnEntity) ;
            currentBlock.push_back(phiStmt) ;
            curFunction.blocks.add(trueBlock); curFunction.blocks.add(outBlock) ;
            returnEntity = returnReg ;
        } else if (it.binaryOp == binaryOperator.OrOr) {
            it.leftExpression.accept(this) ;
            label curLabel = new label(currentBlock.identifier) ;
            label outLabel = new label("ID" + (curFunction.curRegisterID - 1) + "_OrOr_out") ;
            block outBlock = new block(outLabel.labelID) ;
            label falseLabel = new label("ID" + (curFunction.curRegisterID - 1) + "_OrOr_false") ;
            block falseBlock = new block(falseLabel.labelID) ;
            currentBlock.push_back(new branch(returnEntity, outLabel, falseLabel)) ;
            currentBlock = falseBlock ;
            it.rightExpression.accept(this) ;
            currentBlock.push_back(new branch(outLabel)) ;
            currentBlock = outBlock ;
            register returnReg = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
            phi phiStmt = new phi(returnReg, new IRIntType(1)) ;
            phiStmt.labels.add(curLabel); phiStmt.value.add(new constant(1, new IRIntType(1))) ;
            phiStmt.labels.add(falseLabel); phiStmt.value.add (returnEntity) ;
            currentBlock.push_back(phiStmt) ;
            curFunction.blocks.add(falseBlock); curFunction.blocks.add(outBlock) ;
            returnEntity = returnReg ;
        }
    }

    @Override
    public void visit (bracketExprNode it) {
        it.expression.accept(this) ;
    }

    @Override
    public void visit (breakStmtNode it) {
        currentBlock.push_back(new branch(flowController.loopOutLabel.peek()));
    }

    @Override
    public void visit (builtinTypeNode it) {}

    @Override
    public void visit (classConstructorNode it) {
        function constructorFunc = new function(it.name) ;
        constructorFunc.returnType = new IRVoidType() ;
        curFunction = constructorFunc ;
        currentBlock = curFunction.rootBlock ;
        register parameterReg = new register(curFunction.curRegisterID ++, new IRPointerType(curClassType)) ;
        curFunction.parameterId.add("__class_ptr") ;
        curFunction.parameters.add (parameterReg) ;
        register copyReg = new register(curFunction.curRegisterID ++, new IRPointerType(parameterReg.type)) ;
        currentBlock.push_back(new alloca(copyReg, parameterReg.type)) ;
        currentBlock.push_back(new store(copyReg.type, parameterReg, copyReg));
        curClass = copyReg ;
        it.suite.accept(this) ;
        currentBlock.push_back(new branch(new label(curFunction.returnBlock.identifier)));
        currentBlock = curFunction.returnBlock ;
        currentBlock.push_back(new returnStmt(new register(0, new IRVoidType())));
        curFunction.blocks.add(curFunction.returnBlock) ;
        globalDef.functions.add(constructorFunc) ;
    }

    @Override
    public void visit (classDefNode it) {
        curScope = ((globalScope) curScope).getScopeFromClassName(it.pos, it.name) ;
        gScope = (globalScope) curScope ;
        isClassDefine = true ;
        IRClassType classType = new IRClassType(it.name) ;
        curClassType = classType ;
        it.varDef.forEach(x -> x.accept(this)) ;
        if (it.classConstructor != null) it.classConstructor.accept(this) ;
        it.functionDef.forEach(x -> x.accept(this)) ;
        globalDef.globalDefStmt.add(new structDefine(classType)) ;
        gScope = (globalScope) gScope.parentScope() ;
        curScope = curScope.parentScope() ;
        gScope.classType.put(it.name, curClassType) ;
        isClassDefine = false ;
        curClassType = null ;
    }

    @Override
    public void visit (continueStmtNode it) {
        if (flowController.loopIncrLabel.peek() != null) currentBlock.push_back(new branch(flowController.loopIncrLabel.peek()));
        else currentBlock.push_back(new branch(flowController.loopConditionLabel.peek()));
    }

    @Override
    public void visit (expressionListNode it) {
        if (it.expressions.isEmpty()) return ;
        int offset = curFuncCallParameters.size() - it.expressions.size() ;
        for (int i = 0; i < it.expressions.size(); i ++) {
            it.expressions.get(i).accept(this) ;
            if (returnEntity instanceof register) typeCasting((register) returnEntity, curFuncCallParameters.get(i + offset));
            curFuncCall.parameters.add(returnEntity) ;
        }
    }

    @Override
    public void visit (forConditionNode it) {
        it.expression.accept(this) ;
        if (returnEntity instanceof register) {
            // register i1Reg = new register(0, new IRIntType(1)) ;
            typeCasting((register) returnEntity, new IRIntType(1)) ;
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
        
        label conditionLabel = new label("ID" + (curFunction.curRegisterID - 1) + "_for_condition") ;
        // label conditionLabel = new label(curFunction.curRegisterID) ;
        // block conditionBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block conditionBlock = new block(conditionLabel.labelID) ;
        // label suiteLabel = new label(curFunction.curRegisterID) ;
        label suiteLabel = new label("ID" + (curFunction.curRegisterID - 1) + "_for_suite") ;
        // block suiteBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block suiteBlock = new block (suiteLabel.labelID) ;
        // label incrLabel = new label(curFunction.curRegisterID) ;
        label incrLabel = new label ("ID" + (curFunction.curRegisterID - 1) + "_for_incr") ;
        // block incrBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block incrBlock = new block (incrLabel.labelID) ;
        // label forOutLabel = new label(curFunction.curRegisterID) ;
        label forOutLabel = new label("ID" + (curFunction.curRegisterID - 1) + "_for_out") ;
        // block forOutBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block forOutBlock = new block(forOutLabel.labelID) ;

        flowController.inLoop(incrLabel, conditionLabel, forOutLabel);

        currentBlock.push_back(new branch(conditionLabel)) ;
        currentBlock = conditionBlock ;
        it.forCondition.accept(this) ;
        entity conditionReg = returnEntity ;
        currentBlock.push_back(new branch(conditionReg, suiteLabel, forOutLabel));
        curFunction.blocks.add(conditionBlock) ;
        
        currentBlock = suiteBlock ;
        curFunction.blocks.add (suiteBlock) ;
        it.statement.accept(this) ;
        currentBlock.push_back(new branch(incrLabel));

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
        boolean isFunctionIDBackup = isFunctionID ;
        isFunctionID = true;
        functioncall funcCallBackup = curFuncCall ;
        ArrayList<IRType> parametersBackup = curFuncCallParameters ;
        curFuncCall = new functioncall() ;
        it.functionIdentifier.accept(this) ;
        isFunctionID = isFunctionIDBackup ;
        // curFuncCallParameters = gScope.getIRParametersFromFunctionName(it.pos, curFuncCall.functionName) ;
        it.expressionList.accept(this) ;
        register destReg = new register(curFunction.curRegisterID ++, curFuncCall.returnType) ;
        curFuncCall.destReg = destReg ;
        currentBlock.push_back(curFuncCall) ;
        returnEntity = destReg ;
        curFuncCall = funcCallBackup ;
        curFuncCallParameters = parametersBackup ;
    }

    @Override
    public void visit (functionDefNode it) {
        if (it.name.equals(new String("main")) && mainFuncIsDefined) {
            curFunction = mainFunc ;
            currentBlock = mainFunc.rootBlock ;
        } else {
            function newFunc ;
            if (isClassDefine) newFunc = new function("class" + curClassType.className + "_" + it.name) ;
            else newFunc = new function(it.name) ;
            // function newFunc = new function(it.name) ;
            currentBlock = newFunc.rootBlock ;
            if (it.functionType.isVoid == true) newFunc.returnType = new IRVoidType() ;
            else newFunc.returnType = toIRType(it.functionType.type.type) ;
            label functionEntryLabel = new label(it.name + "_entry") ;
            currentBlock.identifier = functionEntryLabel.labelID ;
            curFunction = newFunc ;
            globalDef.functions.add(newFunc) ;
        }
        flowController = new FlowController(it.name) ;
        curScope = gScope.getScopeFromFunctionName(it.pos, it.name) ;
        ArrayList<IRType> IRparameters = new ArrayList<>() ;
        if (isClassDefine) {
            register parameterReg = new register(curFunction.curRegisterID ++, new IRPointerType(curClassType)) ;
            curFunction.parameterId.add("__class_ptr") ;
            curFunction.parameters.add (parameterReg) ;
            IRparameters.add(parameterReg.type) ;
        }
        it.parameters.accept(this) ;
        for (int i = 0; i < curFunction.parameters.size(); i ++) {
            register parameterReg = curFunction.parameters.get(i) ;
            IRparameters.add (parameterReg.type) ;
            register copyReg = new register(curFunction.curRegisterID ++, new IRPointerType (parameterReg.type)) ;
            currentBlock.push_back(new alloca(copyReg, parameterReg.type)) ;
            currentBlock.push_back(new store(copyReg.type, parameterReg, copyReg));
            curScope.entities.put(curFunction.parameterId.get(i), copyReg) ;
            if (isClassDefine && i == 0) curClass = copyReg ;
        }
        gScope.functionIRParameters.put (curFunction.identifier, IRparameters) ;
        register returnReg = new register(curFunction.curRegisterID ++, new IRPointerType (curFunction.returnType)) ;
        curFunction.returnReg = returnReg ;
        if (!(curFunction.returnType instanceof IRVoidType)) currentBlock.push_back(new alloca(returnReg, curFunction.returnType)) ;
        it.suite.accept(this) ;
        currentBlock.push_back(new branch(new label(curFunction.returnBlock.identifier))) ;
        curFunction.blocks.add(curFunction.returnBlock) ;
        currentBlock = curFunction.returnBlock ;
        if (curFunction.returnType instanceof IRVoidType) currentBlock.push_back(new returnStmt(new register (0, new IRVoidType()))) ;
        else {
            register reg = new register(curFunction.curRegisterID ++, curFunction.returnType) ;
            currentBlock.push_back(new load(reg.type, curFunction.returnReg, reg)) ;
            currentBlock.push_back(new returnStmt(reg)) ;
        }
        curScope = curScope.parentScope() ;
        if (curClass != null) curClass = null ;
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
        if (returnEntity instanceof register) {
            // register i1Reg = new register(0, new IRIntType(1)) ;
            typeCasting((register) returnEntity, new IRIntType(1)) ;
            // returnEntity = i1Reg ;
        }
        // label trueLabel = new label(curFunction.curRegisterID) ;
        label trueLabel = new label ("ID" + (curFunction.curRegisterID - 1) + "_if_true") ;
        // block trueBranch = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block trueBranch = new block (trueLabel.labelID) ;
        // label falseLabel = new label(curFunction.curRegisterID) ;
        label falseLabel = new label("ID" + (curFunction.curRegisterID - 1) + "_if_false") ;
        // block falseBranch = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block falseBranch = new block(falseLabel.labelID) ;
        
        // label ifOutLabel = new label (curFunction.curRegisterID) ;
        label ifOutLabel = new label("ID" + (curFunction.curRegisterID - 1) + "_if_out") ;
        // block ifOutBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block ifOutBlock = new block(ifOutLabel.labelID) ;
        if (it.falseStatement != null) currentBlock.push_back(new branch(returnEntity, trueLabel, falseLabel));
        else currentBlock.push_back(new branch(returnEntity, trueLabel, ifOutLabel));
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
        if (it.newSize.size() == 0) {
            varDefNeedToStore = false ;
            return ;
        }
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
        register reg = new register(curFunction.curRegisterID ++, new IRPointerType (curType)) ;
        currentBlock.push_back(new alloca(reg, curType)) ;
        // curType = new IRPointerType(curType) ;
        // reg.type = curType ;
        curType = reg.type ;
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
        boolean copyVariableBackup = copyVariable ;
        copyVariable = false; it.expression.accept(this); copyVariable = copyVariableBackup ;
        register varCopy = new register(curFunction.curRegisterID ++, ((IRPointerType) returnEntity.type).type) ;
        currentBlock.push_back(new load(varCopy.type, returnEntity, varCopy)) ;
        register resReg = new register(curFunction.curRegisterID ++, new IRIntType(32)) ;
        currentBlock.push_back(new binary(IROperator.add, varCopy.type, varCopy, new constant(1, new IRIntType(32)), resReg)) ;
        currentBlock.push_back(new store(varCopy.type, resReg, returnEntity)) ;
        returnEntity = varCopy ;
    }

    @Override
    public void visit (preIncExprNode it) {
        boolean copyVariableBackup = copyVariable ;
        copyVariable = false; it.expression.accept(this); copyVariable = copyVariableBackup ;
        register varCopy = new register(curFunction.curRegisterID ++, ((IRPointerType) returnEntity.type).type) ;
        currentBlock.push_back(new load(varCopy.type, returnEntity, varCopy)) ;
        register resReg = new register(curFunction.curRegisterID ++, new IRIntType(32)) ;
        currentBlock.push_back(new binary(IROperator.add, varCopy.type, varCopy, new constant(1, new IRIntType(32)), resReg)) ;
        currentBlock.push_back(new store(varCopy.type, resReg, returnEntity)) ;
    }

    @Override
    public void visit (primaryNode it) {
        if (it.type == primaryType.Int) {
            returnEntity = new constant(Integer.parseInt(it.identifier), new IRIntType(32)) ;
        } else if (it.type == primaryType.Bool) {
            if (it.identifier.equals(new String("true"))) {
                returnEntity = new constant(1, new IRIntType(8)) ;
            } else {
                returnEntity = new constant(0, new IRIntType(8)) ;
            }
        } else if (it.type == primaryType.Null) {
            returnEntity = new register(0, new IRNullType()) ;
        } else if (it.type == primaryType.This) {
            returnEntity = curClass ;
        } else if (it.type == primaryType.String) {
            globalStringConstantStmt curStmt = new globalStringConstantStmt(it.identifier.substring(1, it.identifier.length() - 1)) ;
            globalDef.globalDefStmt.add(curStmt) ;
            returnEntity = curStmt.reg ;
        } else {
            if (it.type == primaryType.Identifier) {
                if (isFunctionID) {
                    Type functionReturnType = gScope.getReturnTypeFromFunctionName(it.pos, it.identifier) ;
                    IRType functionReturnIRType = toIRType(functionReturnType) ;
                    // functioncall fcall ;
                    if (functionReturnType.type == Type.basicType.Void) {
                        // fcall = new functioncall(identifier) ;
                        curFuncCall.functionName += it.identifier ;
                        curFuncCall.isVoid = true ;
                    } else {
                        // register returnReg = new register(curFunction.curRegisterID ++, toIRType(functionReturnType)) ;
                        // fcall = new functioncall(identifier, functionReturnIRType, null) ;
                        curFuncCall.functionName += it.identifier ;
                        curFuncCall.returnType = functionReturnIRType ;
                    }
                    curFuncCallParameters = gScope.getIRParametersFromFunctionName(it.pos, curFuncCall.functionName) ;
                    // curFuncCall = fcall ;
                } else {
                    Integer regID = gScope.memberID.get (it.identifier) ;
                    if (curClass == null) {
                        entity variableEntity = curScope.getEntity(it.identifier, true) ;
                        IRType type = ((IRPointerType) variableEntity.type).type ;
                        if (copyVariable || isArrayExpr) {
                            returnEntity = new register(curFunction.curRegisterID, type) ;
                            currentBlock.push_back(new load(type, variableEntity, new register(curFunction.curRegisterID, type)));
                            curFunction.curRegisterID ++ ;
                        } else {
                            returnEntity = variableEntity ;
                        }
                    } else {
                        register classReg = new register (curFunction.curRegisterID ++, ((IRPointerType)curClass.type).type) ;
                        currentBlock.push_back(new load(classReg.type, curClass, classReg));
                        register returnRegPointer = new register(curFunction.curRegisterID ++, new IRPointerType(toIRType(gScope.getType(it.pos, it.identifier, true)))) ; 
                        getelementptr curInst = new getelementptr(classReg, returnRegPointer) ;
                        curInst.value.add(new constant(0, new IRIntType(32))) ;
                        curInst.value.add(new constant(regID.intValue(), new IRIntType(32))) ;
                        currentBlock.push_back(curInst) ;
                        if (copyVariable || isArrayExpr) {
                            register returnReg = new register (curFunction.curRegisterID ++, ((IRPointerType) returnRegPointer.type).type) ;
                            currentBlock.push_back(new load(returnReg.type, returnRegPointer, returnReg)) ;
                            returnEntity = returnReg ;
                        } else {
                            returnEntity = returnRegPointer ; 
                        }
                    }
                }
            }
        }
    }

    @Override
    public void visit (returnStmtNode it) {
        if (it.expression != null) it.expression.accept(this) ;
        // if (!(curFunction.returnType instanceof IRVoidType)) currentBlock.push_back(new returnStmt(returnEntity)) ;
        if (!(curFunction.returnType instanceof IRVoidType)) currentBlock.push_back(new store(returnEntity.type, returnEntity, curFunction.returnReg));
        label returnLabel = new label(curFunction.identifier + "_return") ;
        currentBlock.push_back(new branch(returnLabel)) ;
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
    public void visit (unaryExprNode it) {
        it.expression.accept(this) ;
        if (it.unaryOp == unaryOperator.Not) {
            if (returnEntity instanceof register) {
                // register i1reg = new register(0, new IRIntType(1)) ;
                typeCasting((register) returnEntity, new IRIntType(1)) ;
            }
            register returnReg = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
            currentBlock.push_back(new binary(IROperator.xor, new IRIntType(1), returnEntity, new constant(1, new IRIntType(1)), returnReg)) ;
            returnEntity = returnReg ;
        } else if (it.unaryOp == unaryOperator.Tilde) {
            register returnReg = new register(curFunction.curRegisterID ++, new IRIntType(32)) ;
            currentBlock.push_back(new binary(IROperator.xor, new IRIntType(32), returnEntity, new constant(-1, new IRIntType(32)), returnReg));
            returnEntity = returnReg ;
        } else {
            register returnReg = new register(curFunction.curRegisterID ++, new IRIntType(32)) ;
            currentBlock.push_back(new binary(IROperator.sub, new IRIntType(32), new constant(0, new IRIntType(32)), returnEntity, returnReg));
            returnEntity = returnReg ;
        }
    }

    @Override
    public void visit (varDeclarationNode it) {}

    public void typeCasting (register from, IRType toType) {
        returnEntity = from ;
        if (from.type instanceof IRIntType && toType instanceof IRIntType) {
            int fromWidth = ((IRIntType)from.type).width ;
            int toWidth = ((IRIntType)toType).width ;
            if (fromWidth == toWidth) return ;
            register returnReg = new register(curFunction.curRegisterID ++, toType) ;
            if (fromWidth < toWidth) {
                currentBlock.push_back(new zext(from, returnReg, from.type, toType));
            } else if (fromWidth > toWidth) {
                currentBlock.push_back(new trunc(from, returnReg, from.type, toType));
            }
            returnEntity = returnReg ;
        } else {
            if (from.type instanceof IRNullType || from.type.equals(toType)) {
                returnEntity = from ;
            } else {
                register returnReg = new register(curFunction.curRegisterID ++, toType) ;
                currentBlock.push_back(new bitcast(from, returnReg, toType));
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
            if (isClassDefine) {
                curClassType.classTypes.add(varIRType) ;
            }
            else if (!isGlobalDef) {
                int varRegID = curFunction.curRegisterID ;
                register varReg = new register(varRegID, new IRPointerType (varIRType)) ;
                curScope.entities.put(x.name, varReg) ;
                currentBlock.push_back (new alloca(varReg, varIRType));
                curFunction.curRegisterID ++ ;
                if (x.isInitialized) {
                    varDefNeedToStore = true ;
                    x.expression.accept(this) ;
                    if (varDefNeedToStore) {
                        if (returnEntity instanceof register)
                            typeCasting((register) returnEntity, varIRType);
                        currentBlock.push_back(new store(varIRType, returnEntity, varReg)) ;
                    }
                }
                if (varType.type == Type.basicType.Class) {
                    functioncall curFuncCall = new functioncall(it.type.Identifier) ;
                    curFuncCall.parameters.add(varReg) ;
                    currentBlock.push_back(curFuncCall) ;
                } 
            } else {
                register reg = new register(x.name, new IRPointerType (varIRType), true) ;
                curScope.entities.put(x.name, reg) ;
                if (x.isInitialized) {
                    if (!mainFuncIsDefined) {
                        function newFunc = new function("main") ;
                        newFunc.returnType = new IRIntType(32) ;
                        label functionEntryLabel = new label("main" + "_entry") ;
                        newFunc.rootBlock.identifier = functionEntryLabel.labelID ;
                        globalDef.functions.add(newFunc) ;
                        mainFunc = newFunc; mainFuncIsDefined = true ;
                    }
                    curFunction = mainFunc ;
                    currentBlock = curFunction.rootBlock ;
                    x.expression.accept(this) ;
                    if (returnEntity instanceof constant)
                        globalDef.globalDefStmt.add(new globalDefineStmt(reg, (constant) returnEntity)) ;
                    else {
                        if (varIRType instanceof IRIntType) globalDef.globalDefStmt.add(new globalDefineStmt(reg, new constant(0, varIRType))) ;
                        else globalDef.globalDefStmt.add(new globalDefineStmt(reg, new constant(0, new IRNullType()))) ;
                        typeCasting((register) returnEntity, varIRType) ;
                        currentBlock.push_back(new store(reg.type, returnEntity, reg));
                    }
                    curFunction = null; currentBlock = null ;
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
        if (returnEntity instanceof register) {
            // register i1Reg = new register(0, new IRIntType(1)) ;
            typeCasting((register) returnEntity, new IRIntType(1)) ;
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

        flowController.inLoop(null, conditionLabel, whileOutLabel);
        
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
