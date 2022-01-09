package Frontend;

import java.util.ArrayList;

import AST.*;
import AST.binaryExprNode.binaryOperator;
import AST.primaryNode.primaryType;
import AST.unaryExprNode.unaryOperator;
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
    boolean isFunctionID ;

    public SemanticChecker (globalScope _gScope) {
        gScope = _gScope; curScope = _gScope ;
        isFunctionID = false ;
    }

    public void typeMatchCheck (position pos, Type leftType, Type rightType) {
        if (leftType.type != rightType.type)
            throw new semanticError("type of left and right does not match", pos) ;
        if (leftType.type == basicType.Class)
            if (rightType.Identifier == null || !leftType.Identifier.equals(rightType.Identifier))
                throw new semanticError("type does not match", pos) ;
        if (leftType.dim != rightType.dim)
            throw new semanticError("dimension not match", pos) ;
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
            typeMatchCheck(pos, leftType, rightType) ;
        }
    }    

    @Override
    public void visit (arrayExprNode it) {
        boolean isFunctionIDBackup = isFunctionID ;
        isFunctionID = false ;
        it.arrayIndex.accept(this) ;
        if (returnType.type != Type.basicType.Int || returnType.dim > 0)
            throw new semanticError("wrong index type", it.arrayIndex.pos) ;
        it.arrayIndex.type = new Type (returnType) ;
        isFunctionID = isFunctionIDBackup ;
        it.arrayIdentifier.accept(this) ;
        returnType.dim -- ;
        if (returnType.dim < 0)
            throw new semanticError("dimension not matched", it.pos) ;
        it.type = new Type (returnType) ;
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
    public void visit (binaryExprNode it) {
        if (it.binaryOp == binaryExprNode.binaryOperator.Dot) {
            Boolean isFunctionIDBackup = isFunctionID ;
            isFunctionID = false ;
            it.leftExpression.accept(this) ;
            it.leftExpression.type = new Type (returnType) ;
            isFunctionID = isFunctionIDBackup ;
            Type leftExpressionType = returnType;
            globalScope gScopeBackup = gScope ;
            if (leftExpressionType.dim > 0) gScope = (globalScope) gScope.getScopeFromClassName(it.pos, "__Array") ;
            else if (leftExpressionType.type == basicType.String) gScope = (globalScope) gScope.getScopeFromClassName(it.pos, "string") ;
            else if (leftExpressionType.type == basicType.Class) gScope = (globalScope) gScope.getScopeFromClassName(it.pos, returnType.Identifier) ;
            else if (leftExpressionType.type != basicType.This) throw new semanticError("it cannot use dot operator", it.pos) ;
            Scope curScopeBackup = curScope ;
            curScope = gScope ;
            it.rightExpression.accept(this) ;
            it.rightExpression.type = new Type (returnType) ;
            curScope = curScopeBackup; gScope = gScopeBackup ;
        } else {
            it.leftExpression.accept(this) ;
            it.leftExpression.type = new Type (returnType) ;
            Type leftExpressionType = returnType ;
            it.rightExpression.accept(this) ;
            Type rightExpressionType = returnType ;
            it.rightExpression.type = new Type (returnType) ;
            if (it.binaryOp == binaryExprNode.binaryOperator.Assign) {
                checkAssign(it.pos, leftExpressionType, rightExpressionType) ;
                returnType.isLeftValue = false ;
            } else {
                if (leftExpressionType.dim > 0 || leftExpressionType.type == basicType.Class) {
                    if (it.binaryOp != binaryOperator.Equal && it.binaryOp != binaryOperator.NotEqual)
                        throw new semanticError("class or array can only compute with == or !=", it.pos) ;
                    // = or !=
                    if (rightExpressionType.type != basicType.Null)
                        typeMatchCheck(it.pos, leftExpressionType, rightExpressionType) ;
                    returnType = new Type (basicType.Bool, 0, false) ;
                } else if (rightExpressionType.dim > 0 || rightExpressionType.type == basicType.Class) {
                    if (it.binaryOp != binaryOperator.Equal && it.binaryOp != binaryOperator.NotEqual)
                        throw new semanticError("class or array can only compute with == or !=", it.pos) ;
                    // = or !=
                    if (leftExpressionType.type != basicType.Null)
                        typeMatchCheck(it.pos, leftExpressionType, rightExpressionType) ;
                    returnType = new Type (basicType.Bool, 0, false) ;
                } else {
                    if (leftExpressionType.type == basicType.Int) {
                        typeMatchCheck(it.pos, leftExpressionType, rightExpressionType);
                        if (isCompareOperator(it.binaryOp)) // return bool
                            returnType = new Type (basicType.Bool, 0, false) ;
                        else if (isArithmeticOperator(it.binaryOp)) // return int
                            returnType = new Type (basicType.Int, 0, false) ;
                        else 
                            throw new semanticError("wrong operator with int", it.pos) ;    
                    } else if (leftExpressionType.type == basicType.Bool) {
                        typeMatchCheck(it.pos, leftExpressionType, rightExpressionType);
                        if (it.binaryOp == binaryOperator.Equal || it.binaryOp == binaryOperator.NotEqual
                        || it.binaryOp == binaryOperator.AndAnd || it.binaryOp == binaryOperator.OrOr)
                            returnType = new Type(basicType.Bool, 0, false) ;
                        else
                            throw new semanticError("wrong operator with bool", it.pos) ;
                    } else if (leftExpressionType.type == basicType.String) {
                        typeMatchCheck(it.pos, leftExpressionType, rightExpressionType);
                        if (it.binaryOp == binaryOperator.Plus)
                            returnType = new Type (basicType.String, 0, false) ;
                        else if (isCompareOperator(it.binaryOp))
                            returnType = new Type (basicType.Bool, 0, false) ;
                        else
                            throw new semanticError("wrong operator with string", it.pos) ;   
                    } else if (leftExpressionType.type == basicType.Null) {
                        typeMatchCheck(it.pos, leftExpressionType, rightExpressionType) ;
                        if (it.binaryOp == binaryOperator.Equal || it.binaryOp == binaryOperator.NotEqual)
                            returnType = new Type (basicType.Bool, 0, false) ;
                        else
                            throw new semanticError("wrong operator with null", it.pos) ;
                    } else {
                        throw new semanticError("invalid binary expression", it.pos) ;
                    }
                }
            }
        }
    }

    @Override
    public void visit (bracketExprNode it) {
        it.expression.accept(this) ;
        it.expression.type = new Type (returnType) ;
    }

    @Override 
    public void visit (breakStmtNode it) {
        flowController.breakLoop(it.pos) ;
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
        if (it.classConstructor != null) {
            if (!it.classConstructor.name.equals(it.name)) throw new semanticError("class constructor does not match", it.pos) ;
            it.classConstructor.accept(this) ;
        }
        it.functionDef.forEach(x -> {
            if (x.name.equals(it.name)) throw new semanticError("function name duplicates with class name", it.pos) ;
            x.accept(this) ;
        });
        gScope = (globalScope) gScope.parentScope() ;
        curScope = curScope.parentScope() ;
    }

    @Override
    public void visit (continueStmtNode it) {
        flowController.continueLoop(it.pos) ;
    }

    @Override
    public void visit (expressionListNode it) {
        it.expressions.forEach(x -> x.accept(this)) ;
    }

    @Override 
    public void visit (forConditionNode it) {
        it.expression.accept(this) ;
        it.expression.type = new Type (returnType) ;
        if (returnType.type != Type.basicType.Bool || returnType.dim > 0) 
            throw new semanticError("for condition should be bool", it.pos) ;
    }

    @Override
    public void visit (forIncrNode it) {
        it.expression.accept(this) ;
    }

    @Override
    public void visit (forInitNode it) {
        if (it.varDef != null) it.varDef.accept(this) ;
        if (it.expression != null) {
            it.expression.accept(this) ;
            it.expression.type = new Type (returnType) ;
        }
    }

    @Override
    public void visit (forStmtNode it) {
        flowController.inLoop();
        curScope = new Scope(curScope) ;
        if (it.forInit != null) it.forInit.accept(this) ;
        if (it.forCondition != null) it.forCondition.accept(this) ;
        // else throw new semanticError("empty for condition", it.pos) ;
        if (it.forIncr != null) it.forIncr.accept(this) ;
        it.statement.accept(this) ;
        curScope = curScope.parentScope() ;
        flowController.outLoop();
    }

    @Override
    public void visit (functionCallExprNode it) {
        isFunctionID = true ;
        it.functionIdentifier.accept(this) ;
        if (returnType.type != Type.basicType.Function)
            throw new semanticError("function call error", it.pos) ;
        isFunctionID = false ;
        ArrayList<Type> functionParameters = returnType.functionParameters ;
        Type functionReturnType = returnType.functionReturnType ;
        if (it.expressionList.expressions.size() != functionParameters.size())
            throw new semanticError("wrong size of funtion parameters", it.pos) ;
        for (int i = 0; i < it.expressionList.expressions.size(); i ++) {
            it.expressionList.expressions.get(i).accept(this) ;
            Type curFunctionParameterType = functionParameters.get(i) ;
            checkAssign(it.expressionList.pos, curFunctionParameterType, returnType) ;
        }
        returnType = new Type (functionReturnType) ;
        returnType.isLeftValue = false ;
        it.type = new Type (returnType) ;
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
        it.expression.accept(this) ;
        it.expression.type = new Type (returnType) ;
        if (returnType.type != Type.basicType.Bool || returnType.dim > 0)
            throw new semanticError("expression type in if statement should be bool", it.pos) ;
        curScope = new Scope(curScope) ;
        it.trueStatement.accept(this) ;
        curScope = curScope.parentScope() ;
        if (it.falseStatement != null) {
            curScope = new Scope (curScope) ;
            it.falseStatement.accept(this) ;
            curScope = curScope.parentScope() ;
        }
    }

    @Override
    public void visit (lambdaStmtNode it) {
        curScope = new Scope (curScope) ;
        ArrayList<Type> functionParameters = new ArrayList<>() ;
        if (it.functionParameters != null) {
            it.functionParameters.parameters.forEach(x -> {
                x.type.accept(this) ;
                curScope.defineVariable(x.name, returnType, x.pos) ;
                functionParameters.add(returnType) ;
            });
        }
        FlowController flowControllerBackup = flowController ;
        flowController = new FlowController("__lambda") ;
        it.suite.accept(this) ;
        if (!flowController.isReturned) throw new semanticError("lambda statement has no return", it.pos) ;
        Type lambdaReturnType = new Type (flowController.returnType) ;
        flowController = flowControllerBackup ;
        curScope = curScope.parentScope() ;
        if (it.expressionList.expressions.size() != functionParameters.size())
            throw new semanticError ("lmabda parameter size does not match", it.pos) ;
        for (int i = 0; i < it.expressionList.expressions.size(); i ++) {
            it.expressionList.expressions.get(i).accept(this) ;
            Type parameterType = functionParameters.get(i) ;
            checkAssign(it.pos, parameterType, returnType) ;
        }
        returnType = lambdaReturnType ;
        returnType.isLeftValue = false ;
        it.type = new Type (returnType) ;
    }

    @Override
    public void visit (newSizeNode it) {

    }

    @Override
    public void visit (newVarNode it) {
        Type type ;
        if (it.classID != null) 
            type = new Type (it.classID, it.newSize.size(), true) ;
        else
            type = new Type (it.builtinType.bType, it.newSize.size(), true) ;
        boolean valid = true, hasOneValid = false ;
        for (int i = 0; i < it.newSize.size(); i ++) {
            newSizeNode curNode = it.newSize.get(i) ;
            if (curNode.expression == null) valid = false ;
            else {
                hasOneValid = true ;
                if (!valid) throw new semanticError("an index is empty", it.pos) ;
                curNode.expression.accept(this) ;
                if (returnType.type != basicType.Int || returnType.dim > 0)
                    throw new semanticError("index is not int", curNode.pos) ;
            }
        }
        if (!valid && !hasOneValid) throw new semanticError("all indexes are empty", it.pos) ;
        returnType = type ;
        it.type = new Type (returnType) ;
    }

    @Override
    public void visit (parameterNode it) {

    }

    @Override
    public void visit (postIncExprNode it) {
        it.expression.accept(this) ;
        it.expression.type = new Type (returnType) ;
        if (returnType.type != basicType.Int || returnType.dim > 0)
            throw new semanticError("wrong object with pre-increase expression", it.pos) ;
        if (!returnType.isLeftValue)
            throw new semanticError("object should be left value", it.pos) ;
        returnType.isLeftValue = false ;
    }

    @Override
    public void visit (preIncExprNode it) {
        it.expression.accept(this) ;
        it.expression.type = new Type (returnType) ;
        if (returnType.type != basicType.Int || returnType.dim > 0)
            throw new semanticError("wrong object with pre-increase expression", it.pos) ;
        if (!returnType.isLeftValue)
            throw new semanticError("object should be left value", it.pos) ;
    }

    @Override
    public void visit (primaryNode it) {
        if (it.type == primaryType.This)
            returnType = new Type(basicType.This, 0, false) ;
        else if (it.type == primaryType.Bool)
            returnType = new Type(basicType.Bool, 0, false) ;
        else if (it.type == primaryType.Int)
            returnType = new Type(basicType.Int, 0, false) ;
        else if (it.type == primaryType.Null)
            returnType = new Type(basicType.Null, 0, false) ;
        else if (it.type == primaryType.String)
            returnType = new Type(basicType.String, 0, false) ;
        else {
            if (isFunctionID) {
                Type functionReturnType = gScope.getReturnTypeFromFunctionName(it.pos, it.identifier) ;
                ArrayList<Type> functionParameters = gScope.getParametersFromFunctionName(it.pos, it.identifier) ;
                returnType = new Type(it.identifier, functionReturnType, functionParameters) ;
            } else {
                returnType = new Type (curScope.getType(it.pos, it.identifier, true)) ;
            }
        }
    } 

    @Override
    public void visit (returnStmtNode it) {
        if (it.expression != null) it.expression.accept(this) ;
        else returnType = new Type(basicType.Void, 0, false) ;
        flowController.returnFunction(it.pos, gScope, returnType) ;
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
        it.expression.accept(this);
        if (it.unaryOp == unaryOperator.Not) {
            if (returnType.type != basicType.Bool || returnType.dim > 0)
                throw new semanticError("! not operated on boolean", it.pos) ;
        } else {
            if (returnType.type != basicType.Int || returnType.dim > 0)
                throw new semanticError("wrong object with the unary operator", it.pos) ;
        }
        returnType.isLeftValue = false ;
        it.type = new Type (returnType) ;
    }

    @Override
    public void visit (varDeclarationNode it) {}

    @Override
    public void visit (varDefNode it) {
        it.typeNode.accept(this) ;
        it.type = new Type (returnType) ;
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
        it.expression.accept(this) ;
        if (returnType.type != Type.basicType.Bool || returnType.dim > 0)
            throw new semanticError("expression in while statement should be bool", it.pos) ;
        flowController.inLoop();
        curScope = new Scope(curScope) ;
        it.statement.accept(this) ;
        curScope = curScope.parentScope() ;
        flowController.outLoop();
    }
}
