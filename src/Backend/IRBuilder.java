package Backend;

import java.util.ArrayList;

import AST.*;
import AST.primaryNode.primaryType;
import AST.unaryExprNode.unaryOperator;
import MIR.*;
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
import AST.postIncExprNode.postIncOperator;
import AST.preIncExprNode.preIncOperator;

public class IRBuilder implements ASTVisitor{
    private globalDefine globalDef ;
    private block currentBlock, initCurrentBlock ;
    private function curFunction ;
    private Scope curScope ;
    private globalScope gScope ;
    private entity returnEntity ;
    private boolean isFunctionID, isGlobalDef, isClassDefine, hasAddFunctionName ;
    private functioncall curFuncCall ;
    private ArrayList<IRType> curFuncCallParameters ;
    private function initFunc ;
    private FlowController flowController ;
    private IRClassType curClassType ;
    private register curClass ;

    public IRBuilder(globalDefine _globalDef, globalScope _gScope) {
        globalDef = _globalDef; gScope = _gScope; curScope = _gScope ;

        initFunc = new function("__init") ;
        // label functionEntryLabel = new label(initFunc.identifier + "_entry") ;
        // initFunc.rootBlock.identifier = functionEntryLabel.labelID ;
        initFunc.returnType = new IRVoidType() ;
        // initFunc.rootBlock.blockLabel = functionEntryLabel ;
        initFunc.allocaBlock.push_back(new branch(new label(initFunc.rootBlock.identifier)));
        initCurrentBlock = initFunc.rootBlock ;

        isFunctionID = false; isGlobalDef = false ;
        isClassDefine = false; hasAddFunctionName = false ;
        addBuiltinFunction() ;
        globalDef.functions.add(initFunc) ;
    }

    private void addBuiltinFunction () {
        function newFunc = new function("print") ;
        ArrayList<IRType> parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.returnType = new IRVoidType() ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType(new IRIntType(8)))) ;
        parameters.add(new IRPointerType(new IRIntType(8))) ;
        // gScope.functionIRParameters.put("print", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("println") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.returnType = new IRVoidType() ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType(new IRIntType(8)))) ;
        parameters.add (new IRPointerType(new IRIntType(8))) ;
        // gScope.functionIRParameters.put("println", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("printInt") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.returnType = new IRVoidType() ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRIntType(32))) ;
        parameters.add (new IRIntType(32)) ;
        // gScope.functionIRParameters.put("printInt", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("printlnInt") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.returnType = new IRVoidType() ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRIntType(32))) ;
        parameters.add (new IRIntType(32)) ;
        // gScope.functionIRParameters.put("printlnInt", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("getString") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.returnType = new IRPointerType(new IRIntType(8)) ;
        // gScope.functionIRParameters.put("getString", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("getInt") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.returnType = new IRIntType(32) ;
        // gScope.functionIRParameters.put("getInt", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("toString") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRIntType(32))) ;
        parameters.add(new IRIntType(32)) ;
        newFunc.returnType = new IRPointerType(new IRIntType(8)) ;
        // gScope.functionIRParameters.put("toString", parameters) ;
        globalDef.functions.add(newFunc) ;

        // gScope = (globalScope) gScope.getScopeFromClassName(new position(0, 0), "__Array") ;
        // newFunc = new function ("size") ;
        // parameters = new ArrayList<>() ;
        // newFunc.isBuiltin = true ;
        // newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        // parameters.add(new IRPointerType (new IRIntType (8))) ;
        // newFunc.returnType = new IRIntType(32) ;
        // // gScope.functionIRParameters.put("size", parameters) ;
        // globalDef.functions.add(newFunc) ;
        // gScope = (globalScope) gScope.parentScope() ;

        gScope = (globalScope) gScope.getScopeFromClassName(new position(0, 0), "string") ;
        newFunc = new function ("length") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(32) ;
        // gScope.functionIRParameters.put("length", parameters) ;
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
        // gScope.functionIRParameters.put("substring", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("parseInt") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(32) ;
        // gScope.functionIRParameters.put("parseInt", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("ord") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRIntType (32))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        parameters.add (new IRIntType(32)) ;
        newFunc.returnType = new IRIntType(32) ;
        // gScope.functionIRParameters.put("ord", parameters) ;
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
        // gScope.functionIRParameters.put("string_add", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("string_equal") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(1) ;
        // gScope.functionIRParameters.put("string_equal", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("string_notEqual") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(1) ;
        // gScope.functionIRParameters.put("string_notEqual", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("string_less") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(1) ;
        // gScope.functionIRParameters.put("string_less", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("string_lessEqual") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(1) ;
        // gScope.functionIRParameters.put("string_lessEqual", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("string_greater") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(1) ;
        // gScope.functionIRParameters.put("string_greater", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("string_greaterEqual") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRPointerType (new IRIntType (8)))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        parameters.add (new IRPointerType (new IRIntType (8))) ;
        newFunc.returnType = new IRIntType(1) ;
        // gScope.functionIRParameters.put("string_greaterEqual", parameters) ;
        globalDef.functions.add(newFunc) ;

        newFunc = new function ("malloc") ;
        parameters = new ArrayList<>() ;
        newFunc.isBuiltin = true ;
        newFunc.parameters.add(new register(newFunc.curRegisterID ++, new IRIntType (64))) ;
        parameters.add (new IRIntType (64)) ;
        newFunc.returnType = new IRPointerType (new IRIntType (8)) ;
        // gScope.functionIRParameters.put("malloc", parameters) ;
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
            // IRType baseType = new IRPointerType (gScope.getIRTypeFromClassName(type.Identifier)) ; 
            IRType baseType = new IRPointerType(new IRClassType(type.Identifier)) ;
            baseType.size = 0 ;
            Scope classScope = gScope.getScopeFromClassName(new position(0, 0), type.Identifier) ;
            for (String key : classScope.members.keySet()) {
                Type curType = classScope.members.get(key) ;
                if (curType.type == basicType.Bool) baseType.size += 1 ;
                else if (curType.type == basicType.Int && curType.dim == 0) baseType.size += 4 ;
                else baseType.size += 8 ;
            }
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
        it.arrayIdentifier.accept(this) ;
        register arrayReg = (register) returnEntity ;
        register array = new register(curFunction.curRegisterID ++, ((IRPointerType)arrayReg.type).type) ;
        currentBlock.push_back(new load(array.type, arrayReg, array)) ;
        it.arrayIndex.accept(this) ;
        entity arrayInd = returnEntity ;
        if (returnEntity.isLvalue) {
            arrayInd = new register(curFunction.curRegisterID ++, new IRIntType(32)) ;
            currentBlock.push_back(new load(new IRIntType(32), returnEntity, arrayInd));
        }
        register returnRegPointer = new register (curFunction.curRegisterID ++, array.type) ;
        returnRegPointer.isLvalue = true ;
        getelementptr cur = new getelementptr(array, returnRegPointer) ;
        cur.value.add(arrayInd) ;
        currentBlock.push_back(cur) ;
        returnEntity = returnRegPointer ;
    }

    @Override
    public void visit (binaryExprNode it) {
        if (isArithmeticOperator(it.binaryOp)) {
            it.leftExpression.accept(this) ;
            Type leftType = it.leftExpression.type ;
            entity left = returnEntity ;
            if (returnEntity.isLvalue) {
                left = new register(curFunction.curRegisterID ++, ((IRPointerType) left.type).type) ;
                currentBlock.push_back(new load(left.type, returnEntity, left));
            }
            it.rightExpression.accept(this) ;
            Type rightType = it.rightExpression.type ;
            entity right = returnEntity ;
            if (returnEntity.isLvalue) {
                right = new register(curFunction.curRegisterID ++, ((IRPointerType) right.type).type) ;
                currentBlock.push_back(new load(right.type, returnEntity, right));
            }
            if (leftType.type == basicType.Int) {
                // constant calculation
                // if (left instanceof constant && right instanceof constant) {
                //     int leftValue = ((constant) left).value, rightValue = ((constant) right).value ;
                //     constant res = new constant(0, left.type) ;
                //     if (it.binaryOp == binaryOperator.Plus) res.value = leftValue + rightValue ;
                //     else if (it.binaryOp == binaryOperator.Minus) res.value = leftValue - rightValue ;
                //     else if (it.binaryOp == binaryOperator.Mul) res.value = leftValue * rightValue ;
                //     else if (it.binaryOp == binaryOperator.Div) res.value = rightValue == 0 ? -1 : leftValue / rightValue ;
                //     else if (it.binaryOp == binaryOperator.LeftShift) res.value = leftValue << rightValue ;
                //     else if (it.binaryOp == binaryOperator.RightShift) res.value = leftValue >> rightValue ;
                //     else if (it.binaryOp == binaryOperator.And) res.value = leftValue & rightValue ;
                //     else if (it.binaryOp == binaryOperator.Or) res.value = leftValue | rightValue ;
                //     else if (it.binaryOp == binaryOperator.Caret) res.value = leftValue ^ rightValue ;
                //     returnEntity = res ;
                // } else {
                    register res = new register(curFunction.curRegisterID ++, left.type) ;
                    currentBlock.push_back(new binary(IROperator.values()[it.binaryOp.ordinal()], left.type, left, right, res)) ;
                    returnEntity = res ;
                // }
            } else if (leftType.type == basicType.String && it.binaryOp == binaryOperator.Plus) {
                typeCasting((register) left, new IRPointerType(new IRIntType(8))) ;
                register leftString = (register) returnEntity ;
                typeCasting((register) right, new IRPointerType(new IRIntType(8))) ;
                register rightString = (register) returnEntity ;
                register res = new register(curFunction.curRegisterID ++, new IRPointerType(new IRIntType(8))) ;
                functioncall stringAdd = new functioncall("string_add", res.type, res) ;
                stringAdd.parameters.add(leftString); stringAdd.parameters.add(rightString) ;
                currentBlock.push_back(stringAdd) ;
                returnEntity = res ;
            }
        } else if (isCompareOperator(it.binaryOp)) {
            it.leftExpression.accept(this) ;
            Type leftType = it.leftExpression.type ;
            entity left = returnEntity ;
            if (returnEntity.isLvalue) {
                left = new register(curFunction.curRegisterID ++, ((IRPointerType) left.type).type) ;
                currentBlock.push_back(new load(left.type, returnEntity, left));
            }
            it.rightExpression.accept(this) ;
            Type rightType = it.rightExpression.type ;
            entity right = returnEntity ;
            if (returnEntity.isLvalue) {
                right = new register(curFunction.curRegisterID ++, ((IRPointerType) right.type).type) ;
                currentBlock.push_back(new load(right.type, returnEntity, right));
            }
            if (leftType.type == basicType.Int) {
                // if (left instanceof constant && right instanceof constant) {
                //     int leftValue = ((constant) left).value, rightValue = ((constant) right).value ;
                //     constant res = new constant(0, new IRIntType(1)) ;
                //     if (it.binaryOp == binaryOperator.Greater) res.value = leftValue > rightValue ? 1 : 0 ;
                //     else if (it.binaryOp == binaryOperator.GreaterEqual) res.value = leftValue >= rightValue ? 1 : 0 ;
                //     else if (it.binaryOp == binaryOperator.Less) res.value = leftValue < rightValue ? 1 : 0 ;
                //     else if (it.binaryOp == binaryOperator.LessEqual) res.value = leftValue <= rightValue ? 1 : 0 ;
                //     else if (it.binaryOp == binaryOperator.Equal) res.value = leftValue == rightValue ? 1 : 0 ;
                //     else if (it.binaryOp == binaryOperator.NotEqual) res.value = leftValue != rightValue ? 1 : 0 ;
                //     returnEntity = res ;
                // } else {
                    register cmpRes = new register(curFunction.curRegisterID ++, new IRIntType(1)) ; // i1
                    currentBlock.push_back(new binary(IROperator.values()[it.binaryOp.ordinal()], left.type, left, right, cmpRes)) ;
                    returnEntity = cmpRes ; // i1
                // }
            } else if (leftType.type == basicType.String) {
                typeCasting((register) left, new IRPointerType(new IRIntType(8))) ;
                register leftString = (register) returnEntity ;
                typeCasting((register) right, new IRPointerType(new IRIntType(8))) ;
                register rightString = (register) returnEntity ;
                if (it.binaryOp == binaryOperator.Equal) {
                    register res = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
                    functioncall func = new functioncall("string_equal", res.type, res) ;
                    func.parameters.add(leftString); func.parameters.add(rightString) ;
                    currentBlock.push_back(func) ;
                    returnEntity = res ;
                } else if (it.binaryOp == binaryOperator.NotEqual) {
                    register res = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
                    functioncall func = new functioncall("string_notEqual", res.type, res) ;
                    func.parameters.add(leftString); func.parameters.add(rightString) ;
                    currentBlock.push_back(func) ;
                    returnEntity = res ;
                } else if (it.binaryOp == binaryOperator.Less) {
                    register res = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
                    functioncall func = new functioncall("string_less", res.type, res) ;
                    func.parameters.add(leftString); func.parameters.add(rightString) ;
                    currentBlock.push_back(func) ;
                    returnEntity = res ;
                } else if (it.binaryOp == binaryOperator.Greater) {
                    register res = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
                    functioncall func = new functioncall("string_greater", res.type, res) ;
                    func.parameters.add(leftString); func.parameters.add(rightString) ;
                    currentBlock.push_back(func) ;
                    returnEntity = res ;
                } else if (it.binaryOp == binaryOperator.LessEqual) {
                    register res = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
                    functioncall func = new functioncall("string_lessEqual", res.type, res) ;
                    func.parameters.add(leftString); func.parameters.add(rightString) ;
                    currentBlock.push_back(func) ;
                    returnEntity = res ;
                } else if (it.binaryOp == binaryOperator.GreaterEqual) {
                    register res = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
                    functioncall func = new functioncall("string_greaterEqual", res.type, res) ;
                    func.parameters.add(leftString); func.parameters.add(rightString) ;
                    currentBlock.push_back(func) ;
                    returnEntity = res ;
                }
            } else if (leftType.type == basicType.Null || rightType.type == basicType.Null) {
                register res = new register(curFunction.curRegisterID ++, new IRIntType(1)) ;
                IRType tmpType = leftType.type == basicType.Null ? right.type : left.type ;
                currentBlock.push_back(new binary(IROperator.values()[it.binaryOp.ordinal()], tmpType, left, right, res)) ;
                returnEntity = res ;
            }
        } else if (it.binaryOp == binaryOperator.Assign) {
            it.leftExpression.accept(this) ;
            Type leftType = it.leftExpression.type ;
            entity left = returnEntity ;
            it.rightExpression.accept(this) ;
            Type rightType = it.rightExpression.type ;
            entity right = returnEntity ;
            if (returnEntity.isLvalue) {
                right = new register(curFunction.curRegisterID ++, ((IRPointerType) right.type).type) ;
                currentBlock.push_back(new load(right.type, returnEntity, right));
            }
            if (right instanceof register) typeCasting((register) right, ((IRPointerType) left.type).type) ;
            currentBlock.push_back(new store(((IRPointerType) left.type).type, returnEntity, left));
            returnEntity = right ;
        } else if (it.binaryOp == binaryOperator.Dot) {
            boolean isFunctionIDBackup = isFunctionID ;
            isFunctionID = false; it.leftExpression.accept(this); isFunctionID = isFunctionIDBackup ;
            Type leftType = it.leftExpression.type ;
            entity left = returnEntity ;
            if (leftType.dim > 0) {
                if (curFuncCall != null) {
                    register leftValue = new register(curFunction.curRegisterID ++, ((IRPointerType)left.type).type) ;
                    currentBlock.push_back(new load(leftValue.type, left, leftValue));
                    curFuncCall.parameters.add(leftValue) ;
                }
                register curClassBackup = curClass ;
                IRClassType curClassTypeBackup = curClassType ;
                curClass = null; curClassType = null ;
                globalScope gScopeBackup = gScope ;
                Scope curScopeBackup = curScope ;
                gScope = (globalScope)gScope.getScopeFromClassName(it.pos, "__Array") ;
                curScope = gScope ;
                it.rightExpression.accept(this) ;
                gScope = gScopeBackup; curScope = curScopeBackup ;
                curClass = curClassBackup; curClassType = curClassTypeBackup ;
            } else if (leftType.type == basicType.Class || leftType.type == basicType.This) {
                register curClassBackup = curClass ;
                IRClassType curClassTypeBackup = curClassType ;
                boolean hasAddFunctionNameBackup = hasAddFunctionName ;
                if (left.isLvalue) {
                    register classValue = new register(curFunction.curRegisterID ++, ((IRPointerType)left.type).type) ;
                    currentBlock.push_back(new load(classValue.type, left, classValue)) ;
                    curClass = classValue ;
                } else {
                    curClass = (register) left ;
                }
                // curClass = (register) left ;
                String className ;
                className = ((IRClassType)((IRPointerType)curClass.type).type).className ;
                curClassType = new IRClassType(className) ;
                if (curFuncCall != null && isFunctionID) {
                    hasAddFunctionName = true ;
                    curFuncCall.functionName += "class" + curClassType.className + "_" ;
                    curFuncCall.parameters.add(curClass) ;
                } 
                globalScope gScopeBackup = gScope ;
                Scope curScopeBackup = curScope ;
                gScope = (globalScope)gScope.getScopeFromClassName(it.pos, className) ;
                curScope = gScope ;
                it.rightExpression.accept(this) ;
                gScope = gScopeBackup; curScope = curScopeBackup ;
                curClass = curClassBackup; curClassType = curClassTypeBackup;
                hasAddFunctionName = hasAddFunctionNameBackup ;
            } else if (leftType.type == basicType.String) {
                if (curFuncCall != null) {
                    if (!left.isLvalue) {
                        curFuncCall.parameters.add(left) ;
                    } else {
                        register leftValue = new register(curFunction.curRegisterID ++, ((IRPointerType)left.type).type) ;
                        currentBlock.push_back(new load(leftValue.type, left, leftValue));
                        curFuncCall.parameters.add(leftValue) ;
                    }
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
            if (returnEntity.isLvalue) {
                register value = new register(curFunction.curRegisterID ++, ((IRPointerType)returnEntity.type).type) ;
                currentBlock.push_back(new load(value.type, returnEntity, value));
                returnEntity = value ;
            }
            label curLabel = new label(currentBlock.identifier) ;
            label trueLabel = new label(curFunction.identifier + "_ID" + (curFunction.curRegisterID - 1) + "_AndAnd_true") ;
            block trueBlock = new block(trueLabel.labelID) ;
            label outLabel = new label(curFunction.identifier + "_ID" + (curFunction.curRegisterID - 1) + "_AndAnd_out") ;
            block outBlock = new block(outLabel.labelID) ;
            if (returnEntity instanceof constant) {
                int value = ((constant) returnEntity).value ;
                if (value == 1) currentBlock.push_back(new branch(trueLabel));
                else currentBlock.push_back(new branch(outLabel));
            } else {
                typeCasting((register) returnEntity, new IRIntType(1));
                currentBlock.push_back(new branch(returnEntity, trueLabel, outLabel)) ;
            }
            currentBlock = trueBlock ;
            it.rightExpression.accept(this) ;
            if (returnEntity.isLvalue) {
                register value = new register(curFunction.curRegisterID ++, ((IRPointerType)returnEntity.type).type) ;
                currentBlock.push_back(new load(value.type, returnEntity, value));
                returnEntity = value ;
            }
            if (returnEntity instanceof register) typeCasting((register) returnEntity, new IRIntType(1)) ;
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
            if (returnEntity.isLvalue) {
                register value = new register(curFunction.curRegisterID ++, ((IRPointerType)returnEntity.type).type) ;
                currentBlock.push_back(new load(value.type, returnEntity, value));
                returnEntity = value ;
            }
            label curLabel = new label(currentBlock.identifier) ;
            label outLabel = new label(curFunction.identifier + "_ID" + (curFunction.curRegisterID - 1) + "_OrOr_out") ;
            block outBlock = new block(outLabel.labelID) ;
            label falseLabel = new label(curFunction.identifier + "_ID" + (curFunction.curRegisterID - 1) + "_OrOr_false") ;
            block falseBlock = new block(falseLabel.labelID) ;
            if (returnEntity instanceof register) typeCasting((register) returnEntity, new IRIntType(1));
            currentBlock.push_back(new branch(returnEntity, outLabel, falseLabel)) ;
            currentBlock = falseBlock ;
            it.rightExpression.accept(this) ;
            if (returnEntity.isLvalue) {
                register value = new register(curFunction.curRegisterID ++, ((IRPointerType)returnEntity.type).type) ;
                currentBlock.push_back(new load(value.type, returnEntity, value));
                returnEntity = value ;
            }
            if (returnEntity instanceof register) typeCasting((register) returnEntity, new IRIntType(1));
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
        // currentBlock.push_back(new alloca(copyReg, parameterReg.type)) ;
        curFunction.allocaInst.add(new alloca(copyReg, parameterReg.type)) ;
        currentBlock.push_back(new store(copyReg.type, parameterReg, copyReg));
        flowController = new FlowController(it.name) ;
        // curClass = copyReg ;
        curClass = parameterReg ;
        it.suite.accept(this) ;
        curClass = null ;
        currentBlock.push_back(new branch(new label(curFunction.returnBlock.identifier)));
        currentBlock = curFunction.returnBlock ;
        currentBlock.push_back(new returnStmt(new register(0, new IRVoidType())));
        curFunction.blocks.add(curFunction.returnBlock) ;
        currentBlock = curFunction.allocaBlock ;
        for (alloca allocaInst : curFunction.allocaInst) currentBlock.push_back(allocaInst) ;
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
        else {
            function constructorFunc = new function(it.name) ;
            constructorFunc.returnType = new IRVoidType() ;
            curFunction = constructorFunc ;
            currentBlock = curFunction.rootBlock ;
            register parameterReg = new register(curFunction.curRegisterID ++, new IRPointerType(curClassType)) ;
            curFunction.parameterId.add("__class_ptr") ;
            curFunction.parameters.add (parameterReg) ;
            register copyReg = new register(curFunction.curRegisterID ++, new IRPointerType(parameterReg.type)) ;
            // currentBlock.push_back(new alloca(copyReg, parameterReg.type)) ;
            curFunction.allocaInst.add(new alloca(copyReg, parameterReg.type)) ;
            currentBlock.push_back(new store(copyReg.type, parameterReg, copyReg));
            currentBlock.push_back(new branch(new label(curFunction.returnBlock.identifier)));
            currentBlock = curFunction.returnBlock ;
            currentBlock.push_back(new returnStmt(new register(0, new IRVoidType())));
            curFunction.blocks.add(curFunction.returnBlock) ;
            currentBlock = curFunction.allocaBlock ;
            for (alloca inst : curFunction.allocaInst) currentBlock.push_back(inst) ;
            globalDef.functions.add(constructorFunc) ;
            curFunction = null; currentBlock = null ;
        }
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
            if (returnEntity.isLvalue) {
                register value = new register(curFunction.curRegisterID ++, ((IRPointerType)returnEntity.type).type) ;
                currentBlock.push_back(new load(value.type, returnEntity, value));
                returnEntity = value ;
            }
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
        
        label conditionLabel = new label(curFunction.identifier + "_ID" + (curFunction.curRegisterID - 1) + "_for_condition") ;
        // label conditionLabel = new label(curFunction.curRegisterID) ;
        // block conditionBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block conditionBlock = new block(conditionLabel.labelID);
        // label suiteLabel = new label(curFunction.curRegisterID) ;
        label suiteLabel = new label(curFunction.identifier + "_ID" + (curFunction.curRegisterID - 1) + "_for_suite") ;
        // block suiteBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block suiteBlock = new block (suiteLabel.labelID) ;
        // label incrLabel = new label(curFunction.curRegisterID) ;
        label incrLabel = new label (curFunction.identifier + "_ID" + (curFunction.curRegisterID - 1) + "_for_incr") ;
        // block incrBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block incrBlock = new block (incrLabel.labelID) ;
        // label forOutLabel = new label(curFunction.curRegisterID) ;
        label forOutLabel = new label(curFunction.identifier + "_ID" + (curFunction.curRegisterID - 1) + "_for_out") ;
        // block forOutBlock = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block forOutBlock = new block(forOutLabel.labelID) ;

        flowController.inLoop(incrLabel, conditionLabel, forOutLabel);

        if (it.forCondition != null) {
            currentBlock.push_back(new branch(conditionLabel)) ;
            currentBlock = conditionBlock ;
            it.forCondition.accept(this) ;
            if (returnEntity.isLvalue) {
                register value = new register(curFunction.curRegisterID ++, ((IRPointerType)returnEntity.type).type) ;
                currentBlock.push_back(new load(value.type, returnEntity, value));
                returnEntity = value ;
            }
            entity conditionReg = returnEntity ;
            currentBlock.push_back(new branch(conditionReg, suiteLabel, forOutLabel));
            curFunction.blocks.add(conditionBlock) ;
        } else {
            currentBlock.push_back(new branch(suiteLabel)) ;
        }
        
        currentBlock = suiteBlock ;
        curFunction.blocks.add (suiteBlock) ;
        it.statement.accept(this) ;

        if (it.forIncr != null) {
            currentBlock.push_back(new branch(incrLabel));
            currentBlock = incrBlock ;
            it.forIncr.accept(this) ;
            if (it.forCondition != null) currentBlock.push_back(new branch(conditionLabel));
            else currentBlock.push_back(new branch (suiteLabel)) ;
            curFunction.blocks.add(incrBlock) ;
        } else {
            if (it.forCondition != null) currentBlock.push_back(new branch(conditionLabel));
            else currentBlock.push_back(new branch (suiteLabel)) ;
        }
        
        flowController.outLoop(true) ;
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
        if (curFuncCall.functionName.equals("size")) {
            register arrayReg = (register) curFuncCall.parameters.get(0) ;
            register headPtr = new register(curFunction.curRegisterID ++, new IRPointerType(new IRIntType(32))) ;
            currentBlock.push_back(new bitcast(arrayReg, headPtr, headPtr.type)) ;
            register sizePtr = new register(curFunction.curRegisterID ++, new IRPointerType(new IRIntType(32))) ;
            getelementptr offset = new getelementptr(headPtr, sizePtr) ;
            offset.value.add(new constant(-1, new IRIntType(8))) ;
            currentBlock.push_back(offset);
            register sizeValue = new register (curFunction.curRegisterID ++, new IRIntType(32)) ;
            currentBlock.push_back(new load(sizeValue.type, sizePtr, sizeValue)) ;
            returnEntity = sizeValue ;
        } else {
            register destReg = new register(curFunction.curRegisterID ++, curFuncCall.returnType) ;
            curFuncCall.destReg = destReg ;
            currentBlock.push_back(curFuncCall) ;
            returnEntity = destReg ;
        }
        curFuncCall = funcCallBackup ;
        curFuncCallParameters = parametersBackup ;
    }

    @Override
    public void visit (functionDefNode it) {
        function newFunc ;
        if (isClassDefine) newFunc = new function("class" + curClassType.className + "_" + it.name) ;
        else newFunc = new function(it.name) ;
        currentBlock = newFunc.rootBlock ;
        if (it.functionType.isVoid == true) newFunc.returnType = new IRVoidType() ;
        else {
            newFunc.returnType = toIRType(it.functionType.type.type) ;
            // if (it.functionType.type.type.dim > 0 || it.functionType.type.type.type == basicType.Class)
                // newFunc.returnType = new IRPointerType (newFunc.returnType) ;
        }
        // label functionEntryLabel = new label(newFunc.identifier + "_entry") ;
        // currentBlock.identifier = functionEntryLabel.labelID ;
        curFunction = newFunc ;
        globalDef.functions.add(newFunc) ;
        flowController = new FlowController(it.name) ;
        curScope = gScope.getScopeFromFunctionName(it.pos, it.name) ;
        if (newFunc.identifier.equals("main")) {
            currentBlock.push_back(new functioncall("__init")) ;
        }
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
            copyReg.isLvalue = true ;
            // currentBlock.push_back(new alloca(copyReg, parameterReg.type)) ;
            curFunction.allocaInst.add(new alloca(copyReg, parameterReg.type)) ;
            currentBlock.push_back(new store(copyReg.type, parameterReg, copyReg));
            curScope.entities.put(curFunction.parameterId.get(i), copyReg) ;
            if (isClassDefine && i == 0) {
                register classValue = new register (curFunction.curRegisterID ++, ((IRPointerType) copyReg.type).type) ;
                currentBlock.push_back(new load(classValue.type, copyReg, classValue));
                // curClass = copyReg ;
                curClass = classValue ;
            }
        }
        // gScope.functionIRParameters.put (curFunction.identifier, IRparameters) ;
        register returnReg = new register(curFunction.curRegisterID ++, new IRPointerType (curFunction.returnType)) ;
        curFunction.returnReg = returnReg ;
        if (!(curFunction.returnType instanceof IRVoidType)) {
            // currentBlock.push_back(new alloca(returnReg, curFunction.returnType)) ;
            curFunction.allocaInst.add(new alloca(returnReg, curFunction.returnType)) ;
            if (curFunction.identifier.equals("main")) currentBlock.push_back(new store(curFunction.returnType, new constant (0, new IRIntType(32)), returnReg));
        }
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
        currentBlock = curFunction.allocaBlock ;
        for (alloca curAlloca : curFunction.allocaInst) currentBlock.push_back(curAlloca) ;
        currentBlock.push_back(new branch(new label(curFunction.rootBlock.identifier)));
        curScope = curScope.parentScope() ;
        if (curClass != null) curClass = null ;
        curFunction = null; currentBlock = null;
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
        if (returnEntity.isLvalue) {
            register value = new register(curFunction.curRegisterID ++, ((IRPointerType)returnEntity.type).type) ;
            currentBlock.push_back(new load(value.type, returnEntity, value));
            returnEntity = value ;
        }
        if (returnEntity instanceof register) {
            // register i1Reg = new register(0, new IRIntType(1)) ;
            typeCasting((register) returnEntity, new IRIntType(1)) ;
            // returnEntity = i1Reg ;
        }
        // label trueLabel = new label(curFunction.curRegisterID) ;
        label trueLabel = new label (curFunction.identifier + "_ID" + (curFunction.curRegisterID - 1) + "_if_true") ;
        // block trueBranch = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block trueBranch = new block (trueLabel.labelID) ;
        // label falseLabel = new label(curFunction.curRegisterID) ;
        label falseLabel = new label(curFunction.identifier + "_ID" + (curFunction.curRegisterID - 1) + "_if_false") ;
        // block falseBranch = new block(Integer.toString(curFunction.curRegisterID ++)) ;
        block falseBranch = new block(falseLabel.labelID) ;
        
        // label ifOutLabel = new label (curFunction.curRegisterID) ;
        label ifOutLabel = new label(curFunction.identifier + "_ID" + (curFunction.curRegisterID - 1) + "_if_out") ;
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

    private entity mallocArray (ArrayList<entity> newEntities, int cur, IRType baseType) {
        int dim = newEntities.size() - cur ;
        IRType curIRType = baseType ;
        for (int i = 0; i < dim; i ++)
            curIRType = new IRPointerType (curIRType) ;
        entity arraySizeEntity = newEntities.get (cur) ;
        entity arraySize = arraySizeEntity ;
        if (!(arraySizeEntity instanceof constant)) {
            arraySize = new register (curFunction.curRegisterID ++, new IRIntType (64)) ;
            currentBlock.push_back(new zext ((register) arraySizeEntity, (register) arraySize, arraySizeEntity.type, arraySize.type));
        }
        int singleSize = ((IRPointerType) curIRType).type.size ;
        register mallocSize = new register (curFunction.curRegisterID ++, new IRIntType (64)) ;
        currentBlock.push_back(new binary(IROperator.mul, mallocSize.type, arraySize, new constant(singleSize, new IRIntType(64)), mallocSize)) ;
        register mallocSizePlus4 = new register (curFunction.curRegisterID ++, new IRIntType (64)) ;
        currentBlock.push_back(new binary(IROperator.add, mallocSizePlus4.type, mallocSize, new constant (4, new IRIntType(64)), mallocSizePlus4)) ;
        register mallocPtr = new register (curFunction.curRegisterID ++, new IRPointerType(new IRIntType (8))) ;
        functioncall mallocFuncCall = new functioncall("malloc", mallocPtr.type, mallocPtr) ;
        mallocFuncCall.parameters.add(mallocSizePlus4) ;
        currentBlock.push_back(mallocFuncCall) ;
        register mallocPtr32 = new register (curFunction.curRegisterID ++, new IRPointerType(new IRIntType (32))) ;
        currentBlock.push_back(new bitcast (mallocPtr, mallocPtr32, mallocPtr32.type));
        currentBlock.push_back(new store(arraySizeEntity.type, arraySizeEntity, mallocPtr32)) ;
        register arrayHeadPtr = new register(curFunction.curRegisterID ++, mallocPtr32.type) ;
        getelementptr offset = new getelementptr(mallocPtr32, arrayHeadPtr) ;
        offset.value.add(new constant (1, new IRIntType (32))) ;
        currentBlock.push_back(offset) ;
        register curArrayPtr = new register (curFunction.curRegisterID ++, curIRType) ;
        currentBlock.push_back(new bitcast(arrayHeadPtr, curArrayPtr, curArrayPtr.type)) ;

        if (dim == 1) return curArrayPtr ;

        register loopVar = new register(curFunction.curRegisterID ++, new IRPointerType (new IRIntType (32))) ;
        // currentBlock.push_back(new alloca(loopVar, new IRIntType (32)));
        curFunction.allocaInst.add(new alloca(loopVar, new IRIntType (32))) ;
        currentBlock.push_back(new store(new IRIntType(32), new constant (0, new IRIntType(32)), loopVar));
        label conditionLabel = new label(curFunction.identifier + "_ID" + (curFunction.curRegisterID - 1) + "_for_condition") ;
        block conditionBlock = new block(conditionLabel.labelID);
        label suiteLabel = new label(curFunction.identifier + "_ID" + (curFunction.curRegisterID - 1) + "_for_suite") ;
        block suiteBlock = new block (suiteLabel.labelID) ;
        label incrLabel = new label (curFunction.identifier + "_ID" + (curFunction.curRegisterID - 1) + "_for_incr") ;
        block incrBlock = new block (incrLabel.labelID) ;
        label forOutLabel = new label(curFunction.identifier + "_ID" + (curFunction.curRegisterID - 1) + "_for_out") ;
        block forOutBlock = new block(forOutLabel.labelID) ;
        currentBlock.push_back(new branch (conditionLabel)) ;

        curFunction.blocks.add(conditionBlock) ;
        // condition block
        currentBlock = conditionBlock ;
        register loopVarValue = new register (curFunction.curRegisterID ++, new IRIntType (32)) ;
        currentBlock.push_back(new load(loopVarValue.type, loopVar, loopVarValue)) ;
        entity curLimit = newEntities.get(cur) ;
        register cmpResValue = new register (curFunction.curRegisterID ++, new IRIntType(1)) ;
        currentBlock.push_back(new binary(IROperator.slt, loopVarValue.type, loopVarValue, curLimit, cmpResValue)) ;
        currentBlock.push_back(new branch(cmpResValue, suiteLabel, forOutLabel)) ;
        
        curFunction.blocks.add (suiteBlock) ;
        // suite block
        currentBlock = suiteBlock ;
        loopVarValue = new register (curFunction.curRegisterID ++, new IRIntType (32)) ;
        currentBlock.push_back(new load(loopVarValue.type, loopVar, loopVarValue)) ;
        register nxtArrayPtr = new register (curFunction.curRegisterID ++, curIRType) ;
        getelementptr getPtr = new getelementptr (curArrayPtr, nxtArrayPtr) ;
        getPtr.value.add(loopVarValue) ;
        currentBlock.push_back(getPtr) ;
        entity nxtArray = mallocArray(newEntities, cur + 1, baseType) ;
        currentBlock.push_back(new store(nxtArray.type, nxtArray, nxtArrayPtr)) ;
        currentBlock.push_back(new branch (incrLabel)) ;

        curFunction.blocks.add (incrBlock) ;
        // incr block
        currentBlock = incrBlock ;
        loopVarValue = new register (curFunction.curRegisterID ++, new IRIntType (32)) ;
        currentBlock.push_back(new load(loopVarValue.type, loopVar, loopVarValue)) ;
        register nxtLoopVarValue = new register (curFunction.curRegisterID ++, new IRIntType (32)) ;
        currentBlock.push_back(new binary(IROperator.add, loopVarValue.type, loopVarValue, new constant (1, new IRIntType (32)), nxtLoopVarValue)) ;
        currentBlock.push_back(new store(loopVar.type, nxtLoopVarValue, loopVar)) ;
        currentBlock.push_back(new branch (conditionLabel)) ;

        curFunction.blocks.add (forOutBlock) ;
        currentBlock = forOutBlock ;

        return curArrayPtr ;
    }

    @Override
    public void visit (newVarNode it) {
        Type curType = it.type ;
        IRType curIRType = toIRType(curType) ;
        int curIRTypeSize = curIRType.size ;
        if (it.newSize.size() == 0) {
            curIRType = ((IRPointerType)curIRType).type ;
            curIRType.size = curIRTypeSize ;
            register mallocReg = new register(curFunction.curRegisterID ++, new IRPointerType(new IRIntType(8))) ;
            functioncall mallocFuncCall = new functioncall("malloc", mallocReg.type, mallocReg) ;
            mallocFuncCall.parameters.add(new constant(curIRType.size, new IRIntType(64))) ;
            currentBlock.push_back(mallocFuncCall) ;
            register returnReg = new register(curFunction.curRegisterID ++, new IRPointerType(curIRType)) ;
            currentBlock.push_back(new bitcast(mallocReg, returnReg, returnReg.type)) ;
            functioncall classConstructFunc = new functioncall (it.type.Identifier) ;
            classConstructFunc.parameters.add (returnReg) ;
            currentBlock.push_back(classConstructFunc) ;
            returnEntity = returnReg ;
        } else {
            ArrayList<entity> newEntities = new ArrayList<>() ;
            it.newSize.forEach(x -> {
                if (x.expression == null) return ;
                x.expression.accept(this) ;
                if (returnEntity.isLvalue) {
                    register value = new register(curFunction.curRegisterID ++, ((IRPointerType)returnEntity.type).type) ;
                    currentBlock.push_back(new load(value.type, returnEntity, value));
                    returnEntity = value ;
                }
                newEntities.add(returnEntity) ;
            });
            Type baseType = new Type (curType) ;
            baseType.dim = 0 ;
            IRType baseIRType = toIRType(baseType) ;
            for (int i = newEntities.size(); i < it.newSize.size(); i ++)
                baseIRType = new IRPointerType(baseIRType) ;
            returnEntity = mallocArray (newEntities, 0, baseIRType) ;
        }
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
        it.expression.accept(this) ; // isLvalue
        register varCopy = new register(curFunction.curRegisterID ++, ((IRPointerType) returnEntity.type).type) ;
        currentBlock.push_back(new load(varCopy.type, returnEntity, varCopy)) ;
        register resReg = new register(curFunction.curRegisterID ++, new IRIntType(32)) ;
        if (it.postIncOp == postIncOperator.SelfPlus) currentBlock.push_back(new binary(IROperator.add, varCopy.type, varCopy, new constant(1, new IRIntType(32)), resReg)) ;
        else currentBlock.push_back(new binary(IROperator.sub, varCopy.type, varCopy, new constant(1, new IRIntType(32)), resReg)) ;
        currentBlock.push_back(new store(varCopy.type, resReg, returnEntity)) ;
        returnEntity = varCopy ;
    }

    @Override
    public void visit (preIncExprNode it) {
        it.expression.accept(this); // isLvalue ;
        register varCopy = new register(curFunction.curRegisterID ++, ((IRPointerType) returnEntity.type).type) ;
        currentBlock.push_back(new load(varCopy.type, returnEntity, varCopy)) ;
        register resReg = new register(curFunction.curRegisterID ++, new IRIntType(32)) ;
        if (it.preIncOp == preIncOperator.SelfPlus) currentBlock.push_back(new binary(IROperator.add, varCopy.type, varCopy, new constant(1, new IRIntType(32)), resReg)) ;
        else currentBlock.push_back(new binary(IROperator.sub, varCopy.type, varCopy, new constant(1, new IRIntType(32)), resReg)) ;
        currentBlock.push_back(new store(varCopy.type, resReg, returnEntity)) ;
        returnEntity.isLvalue = true ;
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
            String str = it.identifier.substring(1, it.identifier.length() - 1) ;
            str = str.replace("\\\\", "\\") ;
            str = str.replace("\\n", "\n") ;
            str = str.replace("\\\"", "\"") ;
            str = str + "\0" ;
            globalStringConstantStmt curStmt = new globalStringConstantStmt(str) ;
            globalDef.globalDefStmt.add(curStmt) ;
            returnEntity = curStmt.reg ;
        } else {
            if (it.type == primaryType.Identifier) {
                if (isFunctionID) {
                    Type functionReturnType = gScope.getReturnTypeFromFunctionName(it.pos, it.identifier) ;
                    IRType functionReturnIRType = toIRType(functionReturnType) ;
                    // if (functionReturnType.dim > 0 || functionReturnType.type == basicType.Class)
                        // functionReturnIRType = new IRPointerType(functionReturnIRType) ;
                    // functioncall fcall ;
                    if (curClass != null && !hasAddFunctionName && gScope.getFunctionInClass(it.pos, it.identifier)) {
                        curFuncCall.functionName += "class" + curClassType.className + "_" ;
                        // register classValue = new register(curFunction.curRegisterID ++, ((IRPointerType)curClass.type).type) ;
                        // currentBlock.push_back(new load(classValue.type, curClass, classValue)); 
                        // curFuncCall.parameters.add(classValue) ;
                        curFuncCall.parameters.add(curClass) ;
                    }
                    if (functionReturnType.type == Type.basicType.Void) {
                        // fcall = new functioncall(identifier) ;
                        curFuncCall.realFunctionName = new String (it.identifier) ;
                        curFuncCall.functionName += it.identifier ;
                        curFuncCall.isVoid = true ;
                    } else {
                        // register returnReg = new register(curFunction.curRegisterID ++, toIRType(functionReturnType)) ;
                        // fcall = new functioncall(identifier, functionReturnIRType, null) ;
                        curFuncCall.realFunctionName = new String (it.identifier) ;
                        curFuncCall.functionName += it.identifier ;
                        curFuncCall.returnType = functionReturnIRType ;
                    }
                    // curFuncCallParameters = gScope.getIRParametersFromFunctionName(it.pos, curFuncCall.functionName) ;
                    ArrayList<Type> parameterTypes = gScope.getParametersFromFunctionName(it.pos, curFuncCall.realFunctionName) ;
                    curFuncCallParameters = new ArrayList<>() ;
                    for (int i = 0; i < parameterTypes.size(); i ++) {
                        curFuncCallParameters.add(toIRType(parameterTypes.get(i))) ;
                    }
                    // curFuncCall = fcall ;
                } else {
                    Integer regID = gScope.memberID.get (it.identifier) ;
                    if (curClass == null) {
                        entity variableEntity = curScope.getEntity(it.identifier, true) ;
                        IRType type = ((IRPointerType) variableEntity.type).type ;
                        returnEntity = variableEntity ;
                    } else {
                        entity variableEntity = curScope.getEntity(it.identifier, true) ;
                        if (variableEntity != null) {
                        // if (regID == null) {
                            IRType type = ((IRPointerType) variableEntity.type).type ;
                            returnEntity = variableEntity ;
                        } else {
                            // register classReg = new register (curFunction.curRegisterID ++, ((IRPointerType)curClass.type).type) ;
                            // currentBlock.push_back(new load(classReg.type, curClass, classReg));
                            register returnRegPointer = new register(curFunction.curRegisterID ++, new IRPointerType(toIRType(curScope.getType(it.pos, it.identifier, true)))) ; 
                            // getelementptr curInst = new getelementptr(classReg, returnRegPointer) ;
                            getelementptr curInst = new getelementptr(curClass, returnRegPointer) ;
                            curInst.value.add(new constant(0, new IRIntType(32))) ;
                            curInst.value.add(new constant(regID.intValue(), new IRIntType(32))) ;
                            currentBlock.push_back(curInst) ;
                            returnEntity = returnRegPointer; returnRegPointer.isLvalue = true ;
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
        if (!(curFunction.returnType instanceof IRVoidType)) {
            if (returnEntity.isLvalue) {
                register value = new register(curFunction.curRegisterID ++, ((IRPointerType)returnEntity.type).type) ;
                currentBlock.push_back(new load(value.type, returnEntity, value));
                returnEntity = value ;
            }
            if (returnEntity instanceof register) typeCasting((register) returnEntity, curFunction.returnType) ;
            currentBlock.push_back(new store(returnEntity.type, returnEntity, curFunction.returnReg));
        }
        label returnLabel = new label(curFunction.identifier + "_return") ;
        currentBlock.push_back(new branch(returnLabel)) ;
        currentBlock.hasJumped = true ;
    }

    @Override
    public void visit (RootNode it) {
        it.statements.forEach(x -> x.accept(this)) ;
        initCurrentBlock.push_back(new branch(new label(initFunc.returnBlock.identifier)));
        initFunc.blocks.add (initFunc.returnBlock) ;
        initCurrentBlock = initFunc.returnBlock ;
        initCurrentBlock.push_back(new returnStmt(new register(0, new IRVoidType()))) ;
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
        if (returnEntity.isLvalue) {
            register value = new register(curFunction.curRegisterID ++, ((IRPointerType)returnEntity.type).type) ;
            currentBlock.push_back(new load(value.type, returnEntity, value));
            returnEntity = value ;
        }
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
            if (from.type instanceof IRNullType) {
                ((IRNullType) from.type).toType = toType ;
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
                curClassType.size += varIRType.size ;
            }
            if (!isGlobalDef && curFunction != null) {
                int varRegID = curFunction.curRegisterID ;
                register varReg = new register(varRegID, new IRPointerType (varIRType)) ;
                varReg.isLvalue = true ;
                curScope.entities.put(x.name, varReg) ;
                // currentBlock.push_back (new alloca(varReg, varIRType));
                curFunction.allocaInst.add(new alloca(varReg, varIRType)) ;
                curFunction.curRegisterID ++ ;
                if (x.isInitialized) {
                    x.expression.accept(this) ;
                    if (returnEntity.isLvalue) {
                        register value = new register(curFunction.curRegisterID ++, ((IRPointerType)returnEntity.type).type) ;
                        currentBlock.push_back(new load(value.type, returnEntity, value));
                        returnEntity = value ;
                    }
                    if (varType.dim > 0) varReg.type = new IRPointerType(returnEntity.type) ;
                    if (returnEntity instanceof register)
                        typeCasting((register) returnEntity, varIRType);
                    currentBlock.push_back(new store(varIRType, returnEntity, varReg)) ;
                }
                // if (varType.type == Type.basicType.Class) {
                //     functioncall curFuncCall = new functioncall(it.type.Identifier) ;
                //     curFuncCall.parameters.add(varReg) ;
                //     currentBlock.push_back(curFuncCall) ;
                // }
            } 
            if (isGlobalDef) {
                register reg = new register(x.name, new IRPointerType (varIRType), true) ;
                reg.isLvalue = true ;
                curScope.entities.put(x.name, reg) ;
                if (x.isInitialized) {
                    initFunc.isEmpty = false ;
                    curFunction = initFunc ;
                    currentBlock = initCurrentBlock ;
                    x.expression.accept(this) ;
                    if (returnEntity.isLvalue) {
                        register value = new register(curFunction.curRegisterID ++, ((IRPointerType)returnEntity.type).type) ;
                        currentBlock.push_back(new load(value.type, returnEntity, value));
                        returnEntity = value ;
                    }
                    if (varType.dim > 0) reg.type = new IRPointerType(returnEntity.type) ;
                    if (returnEntity instanceof constant)
                        globalDef.globalDefStmt.add(new globalDefineStmt(reg, (constant) returnEntity)) ;
                    else {
                        if (varIRType instanceof IRIntType) globalDef.globalDefStmt.add(new globalDefineStmt(reg, new constant(0, varIRType))) ;
                        else globalDef.globalDefStmt.add(new globalDefineStmt(reg, new constant(0, new IRNullType()))) ;
                        typeCasting((register) returnEntity, varIRType) ;
                        currentBlock.push_back(new store(reg.type, returnEntity, reg));
                    }
                    initCurrentBlock = currentBlock ;
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
        label conditionLabel = new label(curFunction.identifier + "_ID" + curFunction.curRegisterID + "_while_condition") ;
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
        label suiteLabel = new label(curFunction.identifier + "_ID" + curFunction.curRegisterID + "_while_suite") ;
        block suiteBlock = new block(suiteLabel.labelID) ;
        label whileOutLabel = new label(curFunction.identifier + "_ID" + curFunction.curRegisterID + "_while_out") ;
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

        flowController.outLoop(true) ;
        currentBlock = whileOutBlock ;
        curFunction.blocks.add(whileOutBlock) ;
    }
}
