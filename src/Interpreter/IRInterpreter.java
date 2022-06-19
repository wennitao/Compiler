package Interpreter;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.Stack;

import MIR.* ;
import MIR.IRType.* ;
import MIR.binary.IROperator;

public class IRInterpreter {
    globalDefine globalDefine ;
    public IRInterpreter (globalDefine _GlobalDefine) {
        globalDefine = _GlobalDefine ;
        beginInterpretation() ;
    }

    Scanner scanner = new Scanner(System.in) ;

    private class stackInfo {
        function curFunction ;
        block curBlock, preBlock ;
        Integer curStatementIdx ;
        statement curStatement ;
        Map<register, Integer> regValue ;
        Map<register, String> stringValue ;
        register returnReg = null ;
        stackInfo (function f, block cur, block pre, Integer curStmtIdx, statement curStmt, Map<register, Integer> regV, Map<register, String> stringV) {
            curFunction = f; curBlock = cur; preBlock = pre; curStatementIdx = curStmtIdx; curStatement = curStmt ;
            this.regValue = regV; this.stringValue = stringV ;
        }
    }

    int[] MEM = new int[32 * 1024 * 1024] ;    

    Map<register, Integer> globalRegValue = new HashMap<>() ;
    Map<register, String> globalStringValue = new HashMap<>() ;
    Map<register, Integer> regValue = new HashMap<>(), regOffset = new HashMap<>() ;
    Map<register, String> stringValue = new HashMap<>() ;

    Stack<stackInfo> callStack = new Stack<>() ;
    function curFunction = null ;
    block curBlock = null, preBlock = null ;
    Integer curStatementIdx = null ;
    statement curStatement = null ;
    int curStackOffset = 0 ;

    void beginInterpretation () {
        handleGlobalDefineStmt();
        collectFunctions();

        function mainFunction = null ;
        for (function f : globalDefine.functions) {
            if (f.identifier.equals("main")) {
                mainFunction = f; break ;
            }
        }
        curFunction = mainFunction ;
        curBlock = mainFunction.blocks.get(0) ;
        curStatementIdx = Integer.valueOf(0) ;
        curStatement = curBlock.statements.get(0) ;
        stackInfo curInfo = new stackInfo(curFunction, curBlock, preBlock, curStatementIdx, curStatement, regValue, stringValue) ;
        curInfo.returnReg = mainFunction.returnReg ;
        callStack.push(curInfo) ;

        while (!callStack.isEmpty()) {
            InterpretInstruction();
        }
        // System.out.println("exit code: " + entityToInt(mainFunction.returnReg)) ;
    }

    Map<String, ArrayList<Integer> > classOffset = new HashMap<>() ;

    void handleGlobalDefineStmt () {
        for (statement curDefineStmt : globalDefine.globalDefStmt) {
            if (curDefineStmt instanceof globalDefineStmt) {
                globalDefineStmt curGlobalDefineStmt = (globalDefineStmt) curDefineStmt ;
                // globalRegValue.put(curGlobalDefineStmt.reg, curGlobalDefineStmt.initConstant.value) ;
                regOffset.put(curGlobalDefineStmt.reg, curStackOffset) ;
                globalRegValue.put(curGlobalDefineStmt.reg, curStackOffset) ;
                MEM[curStackOffset] = curGlobalDefineStmt.initConstant.value ;
                curStackOffset += curGlobalDefineStmt.reg.type.size ;
            } else if (curDefineStmt instanceof globalStringConstantStmt) {
                globalStringConstantStmt curGlobalStringConstantStmt = (globalStringConstantStmt) curDefineStmt ;
                globalStringValue.put(curGlobalStringConstantStmt.reg, curGlobalStringConstantStmt.initStr) ;
                regOffset.put(curGlobalStringConstantStmt.reg, curStackOffset) ;
                globalRegValue.put(curGlobalStringConstantStmt.reg, curStackOffset) ;
                String str = curGlobalStringConstantStmt.initStr ;
                for (int i = 0; i < str.length(); i ++)
                    MEM[curStackOffset + i] = str.charAt(i) ;
                curStackOffset += str.length() ;
            } else if (curDefineStmt instanceof structDefine) {
                structDefine classDefine = (structDefine) curDefineStmt ;
                IRClassType classType = classDefine.classType ;
                String className = classDefine.classType.className ;
                ArrayList<Integer> offset = new ArrayList<>() ;
                offset.add(0) ;
                for (int i = 0; i < classType.classTypes.size(); i ++) {
                    IRType curType = classType.classTypes.get(i) ;
                    int size = 0 ;
                    if (curType instanceof IRPointerType) size = 8 ;
                    else size = ((IRIntType) curType).width / 8 ;
                    offset.add(offset.get(offset.size() - 1) + size) ;
                }
                classOffset.put(className, offset) ;
            }
        }
    }

    Map<String, function> strToFunction = new HashMap<>();
    private void collectFunctions () {
        for (function curFunction : globalDefine.functions) {
            strToFunction.put(curFunction.identifier, curFunction) ;     
        }
    }

    void InterpretInstruction () {
        System.out.println (curStatement) ;
        boolean moveToNextInst = false ;
        if (curStatement instanceof alloca) {
            alloca curAlloca = (alloca) curStatement ;
            regOffset.put(curAlloca.reg, curStackOffset) ;
            curStackOffset += curAlloca.type.size ;
        } else if (curStatement instanceof binary) {
            binary curBinary = (binary) curStatement ;
            entity leftEntity = curBinary.left, rightEntity = curBinary.right ;
            int leftVal = entityToInt(leftEntity), rightVal = entityToInt(rightEntity);
            int res = binaryExprCal(curBinary.op, leftVal, rightVal) ;
            // regValue.put((register) curBinary.dest, res) ;
            updateReg((register) curBinary.dest, res);
        } else if (curStatement instanceof bitcast) {
            bitcast curBitcast = (bitcast) curStatement ;
            // regValue.put(curBitcast.to, regValue.get(curBitcast.from)) ;
            updateReg(curBitcast.to, entityToInt(curBitcast.from));
            if (globalStringValue.containsKey(curBitcast.from) || stringValue.containsKey(curBitcast.from))
                updateReg(curBitcast.to, entityToString(curBitcast.from));
        } else if (curStatement instanceof branch) {
            branch curBranch = (branch) curStatement ;
            if (curBranch.isConditioned) {
                int val = entityToInt(curBranch.condition) ;
                block toBlock = (val == 1) ? curFunction.labelToBlock.get(curBranch.trueBranch.labelID) : curFunction.labelToBlock.get(curBranch.falseBranch.labelID) ;
                preBlock = curBlock; curBlock = toBlock ;
                curStatementIdx = 0;
                curStatement = curBlock.statements.get(0) ;
            } else {
                block toBlock = curFunction.labelToBlock.get(curBranch.trueBranch.labelID) ;
                preBlock = curBlock; curBlock = toBlock ;
                curStatementIdx = 0 ;
                curStatement = curBlock.statements.get(0) ;
            }
            moveToNextInst = true ;
        } else if (curStatement instanceof functioncall) {
            functioncall curFunctioncall = (functioncall) curStatement ;
            function callFunction = strToFunction.get(curFunctioncall.functionName) ;
            if (callFunction.isBuiltin) {
                handleBuiltinFuncitoncall(curFunctioncall);
            } else {
                Map<register, Integer> newRegValue = new HashMap<>() ;
                Map<register, String> newStringValue = new HashMap<>() ;
                for (int i = 0; i < curFunctioncall.parameters.size(); i ++) {
                    entity input = curFunctioncall.parameters.get(i) ;
                    register reg = callFunction.parameters.get(i) ;
                    if (input instanceof constant) newRegValue.put(reg, ((constant) input).value) ;
                    else if (regValue.containsKey(input)) newRegValue.put(reg, regValue.get((register) input)) ;
                    else if (globalRegValue.containsKey(input)) newRegValue.put(reg, globalRegValue.get((register) input)) ;
                    else newStringValue.put(reg, stringValue.get(input)) ;
                }

                curFunction = callFunction ;
                curBlock = callFunction.blocks.get(0) ;
                curStatementIdx = Integer.valueOf(0) ;
                curStatement = curBlock.statements.get(0) ;
                regValue = newRegValue; stringValue = newStringValue ;
                stackInfo curInfo = new stackInfo(curFunction, curBlock, preBlock, curStatementIdx, curStatement, regValue, stringValue) ;
                if (!curFunctioncall.isVoid) curInfo.returnReg = curFunctioncall.destReg ;
                callStack.push(curInfo) ;
                moveToNextInst = true ;
            }
        } else if (curStatement instanceof getelementptr) {
            getelementptr curGetelementptr = (getelementptr) curStatement ;
            register from = curGetelementptr.from, to = curGetelementptr.to ;
            int size = ((IRPointerType) from.type).type.size ;
            if (curGetelementptr.value.size() == 1) {
                entity value = curGetelementptr.value.get(0) ;
                int offset = entityToInt(value) * size ;
                // regValue.put(to, regValue.get(from) + offset) ;
                updateReg(to, entityToInt(from) + offset);
            } else {
                entity value = curGetelementptr.value.get(1) ;
                int idx = entityToInt(value) ;
                String className = ((IRClassType)((IRPointerType) from.type).type).className ;
                int offset = classOffset.get(className).get(idx) ;
                // regValue.put(to, regValue.get(from) + offset) ;
                updateReg(to, entityToInt(from) + offset);
            }
        } else if (curStatement instanceof load) {
            load curLoad = (load) curStatement ;
            register reg = (register) curLoad.to ;
            // int memPos = regValue.get(curLoad.from) ;
            int memPos = entityToInt(curLoad.from) ;
            // regValue.put(reg, MEM[memPos]) ;
            updateReg(reg, MEM[memPos]);
        } else if (curStatement instanceof phi) {
            phi curPhi = (phi) curStatement ;
            register reg = curPhi.destReg ;
            int value = 0 ;
            for (int i = 0; i < curPhi.labels.size(); i ++) {
                label curLabel = curPhi.labels.get(i) ;
                if (preBlock.identifier.equals(curLabel.labelID)) {
                    value = entityToInt(curPhi.value.get(i)) ;
                    break ;
                }
            }
            // regValue.put(reg, value) ;
            updateReg(reg, value);
        } else if (curStatement instanceof returnStmt) {
            returnStmt curReturnStmt = (returnStmt) curStatement ;
            int value = 0 ;
            register returnReg = callStack.peek().returnReg ;
            if (returnReg != null) value = entityToInt(curReturnStmt.returnReg) ;
            callStack.pop() ;
            if (callStack.isEmpty()) {
                // main return
                System.out.println("exit code: " + value);
                return ;
            }
            stackInfo curInfo = callStack.peek() ;
            curFunction = curInfo.curFunction ;
            curBlock = curInfo.curBlock ;
            preBlock = curInfo.preBlock ;
            curStatementIdx = curInfo.curStatementIdx ;
            curStatement = curInfo.curStatement ;
            regValue = curInfo.regValue ;
            stringValue = curInfo.stringValue ;
            if (returnReg != null) updateReg(returnReg, value) ;
        } else if (curStatement instanceof store) {
            store curStore = (store) curStatement ;
            int value = entityToInt(curStore.from) ;
            int memPos = entityToInt(curStore.dest) ;
            MEM[memPos] = value ;
        } else if (curStatement instanceof trunc) {
            trunc curTrunc = (trunc) curStatement ;
            regValue.put((register) curTrunc.to, entityToInt(curTrunc.from)) ;
        } else if (curStatement instanceof zext) {
            zext curZext = (zext) curStatement ;
            regValue.put((register) curZext.to, entityToInt(curZext.from)) ;
        }
    
        if (!moveToNextInst) {
            curStatementIdx ++ ;
            callStack.peek().curStatementIdx = curStatementIdx ;
            curStatement = curBlock.statements.get(curStatementIdx) ;
        }
    }

    private int binaryExprCal (IROperator op, int leftVal, int rightVal) {
        int res = 0 ;
        if (op == IROperator.add) res = leftVal + rightVal ;
        else if (op == IROperator.sub) res = leftVal - rightVal ;
        else if (op == IROperator.mul) res = leftVal * rightVal ;
        else if (op == IROperator.sdiv) res = rightVal == 0 ? -1 : leftVal / rightVal ;
        else if (op == IROperator.shl) res = leftVal << rightVal ;
        else if (op == IROperator.ashr) res = leftVal >> rightVal ;
        else if (op == IROperator.and) res = leftVal & rightVal ;
        else if (op == IROperator.or) res = leftVal | rightVal ;
        else if (op == IROperator.xor) res = leftVal ^ rightVal ;

        else if (op == IROperator.sgt) res = leftVal > rightVal ? 1 : 0 ;
        else if (op == IROperator.sge) res = leftVal >= rightVal ? 1 : 0 ;
        else if (op == IROperator.slt) res = leftVal < rightVal ? 1 : 0 ;
        else if (op == IROperator.sle) res = leftVal <= rightVal ? 1 : 0 ;
        else if (op == IROperator.eq) res = leftVal == rightVal ? 1 : 0 ;
        else if (op == IROperator.ne) res = leftVal != rightVal ? 1 : 0 ;
        return res ;
    }

    void handleBuiltinFuncitoncall (functioncall builtinFunctioncall) {
        String functionName = builtinFunctioncall.functionName ;
        if (functionName.equals("print")) {
            register reg = (register) builtinFunctioncall.parameters.get(0) ;
            String str = stringValue.get(reg) ;
            System.out.print(str);
        } else if (functionName.equals("println")) {
            register reg = (register) builtinFunctioncall.parameters.get(0) ;
            String str = stringValue.get(reg) ;
            System.out.println(str);
        } else if (functionName.equals("printInt")) {
            register reg = (register) builtinFunctioncall.parameters.get(0) ;
            int val = regValue.get(reg) ;
            System.out.print(val);
        } else if (functionName.equals("printlnInt")) {
            register reg = (register) builtinFunctioncall.parameters.get(0) ;
            int val = regValue.get(reg) ;
            System.out.println(val);
        } else if (functionName.equals("getString")) {
            register reg = builtinFunctioncall.destReg ;
            String str = scanner.next() ;
            stringValue.put(reg, str) ;
            regOffset.put(reg, curStackOffset) ;
            regValue.put(reg, curStackOffset) ;
            for (int i = 0; i < str.length(); i ++)
                MEM[curStackOffset + i] = str.charAt(i) ;
            curStackOffset += str.length() ;
        } else if (functionName.equals("getInt")) {
            register reg = builtinFunctioncall.destReg ;
            int val = scanner.nextInt() ;
            regValue.put(reg, val) ;
        } else if (functionName.equals("toString")) {
            register reg = builtinFunctioncall.destReg ;
            entity ent = builtinFunctioncall.parameters.get(0) ;
            int val = entityToInt(ent) ;
            String str = Integer.toString(val) ;
            stringValue.put(reg, str) ;
            regOffset.put(reg, curStackOffset) ;
            regValue.put(reg, curStackOffset) ;
            for (int i = 0; i < str.length(); i ++)
                MEM[curStackOffset + i] = str.charAt(i) ;
            curStackOffset += str.length() ;
        } else if (functionName.equals("length")) {
            register reg = builtinFunctioncall.destReg ;
            register strReg = (register) builtinFunctioncall.parameters.get(0) ;
            String str = stringValue.get(strReg) ;
            regValue.put(reg, str.length()) ;
        } else if (functionName.equals("substring")) {
            register reg = builtinFunctioncall.destReg ;
            register strReg = (register) builtinFunctioncall.parameters.get(0) ;
            int left = entityToInt(builtinFunctioncall.parameters.get(1)) ;
            int right = entityToInt(builtinFunctioncall.parameters.get(2)) ;
            String str = stringValue.get(strReg).substring(left, right) ;
            stringValue.put(reg, str) ;
            regOffset.put(reg, curStackOffset) ;
            regValue.put(reg, curStackOffset) ;
            for (int i = 0; i < str.length(); i ++)
                MEM[curStackOffset + i] = str.charAt(i) ;
            curStackOffset += str.length() ;
        } else if (functionName.equals("parseInt")) {
            register reg = builtinFunctioncall.destReg ;
            register strReg = (register) builtinFunctioncall.parameters.get(0) ;
            String str = stringValue.get(strReg) ;
            int val = Integer.parseInt(str) ;
            regValue.put(reg, val) ;
        } else if (functionName.equals("ord")) {
            register reg = builtinFunctioncall.destReg ;
            register strReg = (register) builtinFunctioncall.parameters.get(0) ;
            String str = stringValue.get(strReg) ;
            int idx = entityToInt(builtinFunctioncall.parameters.get(1)) ;
            regValue.put(reg, str.charAt(idx) - 0) ;
        } else if (functionName.equals("string_add")) {
            register strReg1 = (register) builtinFunctioncall.parameters.get(0) ;
            register strReg2 = (register) builtinFunctioncall.parameters.get(1) ;
            String str1 = stringValue.get(strReg1), str2 = stringValue.get(strReg2) ;
            String str = str1 + str2 ;
            register reg = builtinFunctioncall.destReg ;
            stringValue.put(reg, str) ;
            regOffset.put(reg, curStackOffset) ;
            regValue.put(reg, curStackOffset) ;
            for (int i = 0; i < str.length(); i ++)
                MEM[curStackOffset + i] = str.charAt(i) ;
            curStackOffset += str.length() ;
        } else if (functionName.equals("string_equal")) {
            register strReg1 = (register) builtinFunctioncall.parameters.get(0) ;
            register strReg2 = (register) builtinFunctioncall.parameters.get(1) ;
            String str1 = stringValue.get(strReg1), str2 = stringValue.get(strReg2) ;
            register reg = builtinFunctioncall.destReg ;
            int val = str1.equals(str2) ? 1 : 0 ;
            regValue.put(reg, val) ;
        } else if (functionName.equals("string_notEqual")) {
            register strReg1 = (register) builtinFunctioncall.parameters.get(0) ;
            register strReg2 = (register) builtinFunctioncall.parameters.get(1) ;
            String str1 = stringValue.get(strReg1), str2 = stringValue.get(strReg2) ;
            register reg = builtinFunctioncall.destReg ;
            int val = str1.equals(str2) ? 0 : 1 ;
            regValue.put(reg, val) ;
        } else if (functionName.equals("string_less")) {
            register strReg1 = (register) builtinFunctioncall.parameters.get(0) ;
            register strReg2 = (register) builtinFunctioncall.parameters.get(1) ;
            String str1 = stringValue.get(strReg1), str2 = stringValue.get(strReg2) ;
            register reg = builtinFunctioncall.destReg ;
            int val = str1.compareTo(str2) < 0 ? 1 : 0 ;
            regValue.put(reg, val) ;
        } else if (functionName.equals("string_lessEqual")) {
            register strReg1 = (register) builtinFunctioncall.parameters.get(0) ;
            register strReg2 = (register) builtinFunctioncall.parameters.get(1) ;
            String str1 = stringValue.get(strReg1), str2 = stringValue.get(strReg2) ;
            register reg = builtinFunctioncall.destReg ;
            int val = str1.compareTo(str2) <= 0 ? 1 : 0 ;
            regValue.put(reg, val) ;
        } else if (functionName.equals("string_greater")) {
            register strReg1 = (register) builtinFunctioncall.parameters.get(0) ;
            register strReg2 = (register) builtinFunctioncall.parameters.get(1) ;
            String str1 = stringValue.get(strReg1), str2 = stringValue.get(strReg2) ;
            register reg = builtinFunctioncall.destReg ;
            int val = str1.compareTo(str2) > 0 ? 1 : 0 ;
            regValue.put(reg, val) ;
        } else if (functionName.equals("string_greaterEqual")) {
            register strReg1 = (register) builtinFunctioncall.parameters.get(0) ;
            register strReg2 = (register) builtinFunctioncall.parameters.get(1) ;
            String str1 = stringValue.get(strReg1), str2 = stringValue.get(strReg2) ;
            register reg = builtinFunctioncall.destReg ;
            int val = str1.compareTo(str2) >= 0 ? 1 : 0 ;
            regValue.put(reg, val) ;
        } else if (functionName.equals("malloc")) {
            register reg = builtinFunctioncall.destReg ;
            int val = entityToInt(builtinFunctioncall.parameters.get(0)) ;
            regOffset.put(reg, curStackOffset) ;
            regValue.put(reg, curStackOffset) ;
            for (int i = 0; i < val; i ++)
                MEM[curStackOffset + i] = 0 ;
            curStackOffset += val ;
        }
    }

    int entityToInt (entity entity) {
        if (entity instanceof constant) return ((constant) entity).value ;
        else if (((register) entity).isGlobal) return globalRegValue.get(entity) ;
        else return regValue.get(entity) ;
    }
    String entityToString (entity entity) {
        if (globalStringValue.containsKey(entity)) return globalStringValue.get(entity) ;
        else return stringValue.get(entity) ;
    }
    void updateReg (register reg, int value) {
        if (reg.isGlobal) globalRegValue.put(reg, value) ;
        else regValue.put(reg, value) ;
    }
    void updateReg (register reg, String value) {
        stringValue.put(reg, value) ;
    }
}
