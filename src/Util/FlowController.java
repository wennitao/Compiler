package Util;

import java.util.Stack;

import MIR.label;
import Util.Type.basicType;
import Util.error.semanticError;

public class FlowController {
    private int loopCount ;
    public Type returnType ;
    public boolean isReturned ;
    public String functionName ;
    public Stack<label> loopIncrLabel ;
    public Stack<label> loopConditionLabel ;
    public Stack<label> loopOutLabel ;

    public FlowController (String _functionName) {
        functionName = _functionName ;
        isReturned = false ;
        loopCount = 0 ;
        loopIncrLabel = new Stack<>() ;
        loopConditionLabel = new Stack<>() ;
        loopOutLabel = new Stack<>() ;
    }

    public void checkAssign (position pos, globalScope gScope, Type leftType, Type rightType) {
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
            if (leftType.type != rightType.type)
                throw new semanticError("type of left and right does not match", pos) ;
            if (leftType.type == basicType.Class)
                if (rightType.Identifier == null || !leftType.Identifier.equals(rightType.Identifier))
                    throw new semanticError("type does not match", pos) ;
            if (leftType.dim != rightType.dim)
                throw new semanticError("dimension not match", pos) ;
        }
    }
    
    public void inLoop (label incrLabel, label conditionLabel, label outLabel) {
        loopIncrLabel.push(incrLabel) ;
        loopConditionLabel.push(conditionLabel) ;
        loopOutLabel.push(outLabel) ;
    }

    public void inLoop () {
        loopCount ++ ;
    }

    public void outLoop (boolean flag) {
        loopIncrLabel.pop(); loopConditionLabel.pop(); loopOutLabel.pop() ;
    }

    public void outLoop () {
        loopCount -- ;
    }

    public void breakLoop (position pos) {
        if (loopCount <= 0)
            throw new semanticError("no loop to break", pos) ;
    }

    public void continueLoop (position pos) {
        if (loopCount <= 0)
            throw new semanticError("no loop to continue", pos) ;
    }

    public void returnFunction (position pos, globalScope gScope, Type returnType) {
        Type functionReturnType ;
        if (functionName.equals(new String ("__lambda"))) {
            if (this.returnType == null) {
                this.returnType = new Type (returnType) ;
                this.returnType.isLeftValue = true ;
            }
            functionReturnType = this.returnType ;
        } else {
            functionReturnType = gScope.getReturnTypeFromFunctionName(pos, functionName) ;
        }
        if (functionReturnType.type == basicType.Void) {
            if (returnType.type != basicType.Void)
                throw new semanticError("function does not return void", pos) ;  
        } else {
            checkAssign(pos, gScope, functionReturnType, returnType) ;
        }
        isReturned = true ;
    }
}
