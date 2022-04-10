package Optimize;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

import MIR.binary;
import MIR.block;
import MIR.branch;
import MIR.constant;
import MIR.entity;
import MIR.function;
import MIR.functioncall;
import MIR.globalDefine;
import MIR.label;
import MIR.load;
import MIR.phi;
import MIR.register;
import MIR.statement;
import MIR.binary.IROperator;

public class ConstantPropagation {
    private globalDefine globalDefine ;
    public ConstantPropagation (globalDefine _globalDefine) {
        globalDefine = _globalDefine ;
        analyzeRoot() ;
    }

    private void analyzeRoot () {
        for (function curFunc : globalDefine.functions) {
            analyzeFunction(curFunc);
        }
    }

    Set<register> regs = new HashSet<>() ;
    Map<register, Integer> regVal = new HashMap<>(), regFlag = new HashMap<>() ;
    Map<block, Boolean> blockExecuted = new HashMap<>() ;
    Map<register, Set<statement> > regUseStmt = new HashMap<>() ;

    Queue<register> W_v = new LinkedList<>() ;
    Queue<block> W_b = new LinkedList<>() ;

    private void analyzeFunction (function curFunc) {
        regs = new HashSet<>() ;
        regVal = new HashMap<>(); regFlag = new HashMap<>() ;
        blockExecuted = new HashMap<>() ;
        regUseStmt = new HashMap<>() ;

        for (block curBlock : curFunc.blocks)
            for (statement stmt : curBlock.statements) {
                regs.addAll(stmt.getDefVar()) ;
                regs.addAll(stmt.getUseVar()) ;
            }
        for (register reg : regs) {
            regVal.put(reg, -1); regFlag.put(reg, -1) ;
            regUseStmt.put(reg, new HashSet<>()) ;
        }
        for (block curBlock : curFunc.blocks)
            for (statement stmt : curBlock.statements) {
                for (register reg : stmt.getUseVar())
                    regUseStmt.get(reg).add(stmt) ;
            }
        for (block curBlock : curFunc.blocks)
            blockExecuted.put(curBlock, false) ;
        
        W_v = new LinkedList<>() ;
        W_b = new LinkedList<>() ;
        block headBlock = curFunc.blocks.get(0) ;
        blockExecuted.put(headBlock, true) ;
        W_b.add(headBlock) ;
        while (!W_v.isEmpty() || !W_b.isEmpty()) {
            if (!W_v.isEmpty()) {
                register x = W_v.poll() ;
                for (statement stmt : regUseStmt.get(x)) {
                    analyzeStatement(curFunc, stmt) ;
                }
            }
            if (!W_b.isEmpty()) {
                block b = W_b.poll() ;
                for (statement stmt : b.statements) {
                    analyzeStatement(curFunc, stmt) ;
                }
            }
        }

        ArrayList<block> deleteBlocks = new ArrayList<>() ;
        for (block b : curFunc.blocks) {
            if (blockExecuted.get(b) == false)
                deleteBlocks.add(b) ;
        }
        for (block b : deleteBlocks) curFunc.blocks.remove(b) ;

        for (block curBlock : curFunc.blocks) {
            ArrayList<statement> deleteStmts = new ArrayList<>() ;
            for (statement stmt : curBlock.statements) {
                for (register reg : stmt.getUseVar()) {
                    if (regFlag.get(reg) == 0) 
                        stmt.updateUseReg(reg, new constant(regVal.get(reg), reg.type));
                }
                for (register reg : stmt.getDefVar())
                    if (regFlag.get(reg) == 0)
                        deleteStmts.add(stmt) ;
            }
            for (statement stmt : deleteStmts)
                curBlock.statements.remove(stmt) ;
        }
    }

    private void analyzeStatement (function curFunc, statement stmt) {
        if (stmt instanceof binary) {
            binary curBinary = (binary) stmt ;
            entity leftEntity = curBinary.left, rightEntity = curBinary.right ;
            register dest = (register) curBinary.dest ;
            boolean left = (leftEntity instanceof constant) || (leftEntity instanceof register && regFlag.get((register) leftEntity) == 0) ;
            boolean right = (rightEntity instanceof constant) || (rightEntity instanceof register && regFlag.get((register) rightEntity) == 0) ;
            if (left && right) {
                int leftVal, rightVal ;
                if (leftEntity instanceof constant) leftVal = ((constant) leftEntity).value ;
                else leftVal = regVal.get((register) leftEntity) ;
                if (rightEntity instanceof constant) rightVal = ((constant) rightEntity).value ;
                else rightVal = regVal.get((register) rightEntity) ;
                int res = binaryExprCal(curBinary.op, leftVal, rightVal) ;
                updateReg(dest, 0, res);
            } else if ((leftEntity instanceof register && regFlag.get((register) leftEntity) == 1) || (rightEntity instanceof register && regFlag.get((register) rightEntity) == 1)) {
                updateReg(dest, 1, 0);
            }
        } else if (stmt instanceof phi) {
            phi curPhi = (phi) stmt ;
            register destReg = curPhi.destReg ;
            boolean regHasTwoVals = false ;
            Set<Integer> possibleVals = new HashSet<>() ; 
            for (int i = 0; i < curPhi.labels.size(); i ++) {
                label curLabel = curPhi.labels.get(i) ;
                entity curVal = curPhi.value.get(i) ;
                block curBlock = curFunc.labelToBlock.get(curLabel.labelID) ;
                if (blockExecuted.get(curBlock) == true) {
                    if (curVal instanceof register && regFlag.get((register) curVal) == 1) {
                        regHasTwoVals = true ;
                        updateReg(destReg, 1, 0);
                    } else if (curVal instanceof constant) {
                        possibleVals.add(((constant) curVal).value) ;
                    } else {
                        possibleVals.add(regVal.get((register) curVal)) ;
                    }
                }
            }
            if (!regHasTwoVals) {
                if (possibleVals.size() >= 2) {
                    updateReg(destReg, 1, 0);
                } else if (possibleVals.size() == 1) {
                    int val = -1 ;
                    for (Integer x : possibleVals) {
                        val = x; break ;
                    }
                    updateReg(destReg, 0, val) ;
                }
            }
        } else if (stmt instanceof load) {
            load curLoad = (load) stmt ;
            updateReg((register) curLoad.to, 1, 0);
        } else if (stmt instanceof functioncall) {
            functioncall curFuncCall = (functioncall) stmt ;
            if (!curFuncCall.isVoid) updateReg(curFuncCall.destReg, 1, 0);
        } else if (stmt instanceof branch) {
            branch curBranch = (branch) stmt ;
            if (curBranch.isConditioned) {
                entity val = curBranch.condition ;
                if (val instanceof constant) {
                    if (((constant) val).value == 1) {
                        updateBlock(curFunc.labelToBlock.get(curBranch.trueBranch.labelID));
                    } else {
                        updateBlock(curFunc.labelToBlock.get(curBranch.falseBranch.labelID));
                    }
                } else {
                    if (regFlag.get((register) val) == 0) {
                        if (regVal.get((register) val) == 1) {
                            updateBlock(curFunc.labelToBlock.get(curBranch.trueBranch.labelID)); 
                        } else {
                            updateBlock(curFunc.labelToBlock.get(curBranch.falseBranch.labelID));
                        }
                    } else {
                        updateBlock(curFunc.labelToBlock.get(curBranch.trueBranch.labelID));
                        updateBlock(curFunc.labelToBlock.get(curBranch.falseBranch.labelID));
                    }
                }
            } else {
                updateBlock(curFunc.labelToBlock.get(curBranch.trueBranch.labelID));
            }
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

    private void updateReg (register reg, int flag, int val) {
        if (flag == 0) {
            regVal.put(reg, val) ;
            if (regFlag.get(reg) == -1) {
                regFlag.put(reg, 0) ;
                W_v.add(reg) ;
            }
        } else if (flag == 1) {
            if (regFlag.get(reg) <= 0) {
                regFlag.put(reg, 1) ;
                W_v.add(reg) ;
            }
        }
    }

    private void updateBlock (block b) {
        if (blockExecuted.get(b) == false) {
            blockExecuted.put(b, true) ;
            W_b.add(b) ;
        }
    }
}
