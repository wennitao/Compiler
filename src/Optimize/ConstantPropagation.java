package Optimize;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

import MIR.* ;
import MIR.binary.IROperator;

public class ConstantPropagation {
    private globalDefine globalDefine ;
    public ConstantPropagation (globalDefine _globalDefine) {
        globalDefine = _globalDefine ;
        analyzeRoot() ;
    }

    private void analyzeRoot () {
        for (function curFunc : globalDefine.functions) {
            if (curFunc.isBuiltin) continue ;
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
        updateBranch (curFunc) ;

        regs = new HashSet<>() ;
        regVal = new HashMap<>(); regFlag = new HashMap<>() ;
        blockExecuted = new HashMap<>() ;
        regUseStmt = new HashMap<>() ;
        Map<block, ArrayList<phi> > blockToPhi = new HashMap<>() ;

        regs.addAll(curFunc.parameters) ;

        for (block curBlock : curFunc.blocks)
            for (statement stmt : curBlock.statements) {
                regs.addAll(stmt.getDefVar()) ;
                regs.addAll(stmt.getUseVar()) ;
            }

        for (register reg : regs) {
            if (reg.isGlobal) {
                regVal.put(reg, 0); regFlag.put(reg, 1) ;
            } else {
                regVal.put(reg, -1); regFlag.put(reg, -1) ;
            }
            regUseStmt.put(reg, new HashSet<>()) ;
        }
        for (block curBlock : curFunc.blocks)
            for (statement stmt : curBlock.statements) {
                for (register reg : stmt.getUseVar())
                    regUseStmt.get(reg).add(stmt) ;
            }
        for (block curBlock : curFunc.blocks)
            blockExecuted.put(curBlock, false) ;

        for (block b : curFunc.blocks)
            blockToPhi.put(b, new ArrayList<>()) ;
        for (block curBlock : curFunc.blocks)
            for (statement stmt : curBlock.statements) {
                if (stmt instanceof phi) {
                    phi curPhi = (phi) stmt ;
                    for (label curLabel : curPhi.labels) {
                        block b = curFunc.labelToBlock.get(curLabel.labelID) ;
                        if (!blockToPhi.containsKey(b)) blockToPhi.put(b, new ArrayList<>()) ;
                        blockToPhi.get(b).add(curPhi) ;
                    }
                }
            }
        
        W_v = new LinkedList<>() ;
        W_b = new LinkedList<>() ;
        block headBlock = curFunc.blocks.get(0) ;
        blockExecuted.put(headBlock, true) ;
        W_b.add(headBlock) ;

        // function parameters
        for (register reg : curFunc.parameters) {
            updateReg(reg, 1, 0) ;
            W_v.add(reg) ;
        }

        while (!W_v.isEmpty() || !W_b.isEmpty()) {
            if (!W_v.isEmpty()) {
                register x = W_v.poll() ;
                if (x.isGlobal) continue ;
                for (statement stmt : regUseStmt.get(x)) {
                    analyzeStatement(curFunc, stmt) ;
                }
            } else if (!W_b.isEmpty()) {
                block b = W_b.poll() ;
                for (statement stmt : b.statements) {
                    analyzeStatement(curFunc, stmt) ;
                }
                // System.out.println(b.identifier) ;
                for (phi stmt : blockToPhi.get(b)) {
                    // System.out.println(stmt);
                    analyzeStatement(curFunc, stmt);
                }
            }
        }

        // System.out.println(curFunc.identifier);
        // for (register reg : regs) {
        //     System.out.println(reg + " flag: " + regFlag.get(reg) + " val: " + regVal.get(reg));
        // }

        // update phi before delete blocks
        for (block b : curFunc.blocks) {
            for (statement stmt : b.statements) {
                if (!(stmt instanceof phi)) continue ;
                phi curPhi = (phi) stmt ;
                ArrayList<Integer> deleteIdx = new ArrayList<>() ;
                for (int i = 0; i < curPhi.labels.size(); i ++) {
                    label curLabel = curPhi.labels.get(i) ;
                    block fromBlock = curFunc.labelToBlock.get(curLabel.labelID) ;
                    if (blockExecuted.get(fromBlock) == false) deleteIdx.add(i) ;
                }
                for (int i = deleteIdx.size() - 1; i >= 0; i --) {
                    int idx = deleteIdx.get(i) ;
                    curPhi.labels.remove(idx) ;
                    curPhi.value.remove(idx) ;
                }
            }
        }

        ArrayList<block> deleteBlocks = new ArrayList<>() ;
        for (block b : curFunc.blocks) {
            if (blockExecuted.get(b) == false)
                deleteBlocks.add(b) ;
        }
        for (block b : deleteBlocks) curFunc.blocks.remove(b) ;

        // update constant and delete unused defs
        for (block curBlock : curFunc.blocks) {
            ArrayList<statement> deleteStmts = new ArrayList<>() ;
            ArrayList<statement> stmtNeedUpdate = new ArrayList<>(), updateStmt = new ArrayList<>() ;
            for (statement stmt : curBlock.statements) {
                for (register reg : stmt.getUseVar()) {
                    if (regFlag.get(reg) == 0) {
                        stmt.updateUseReg(reg, new constant(regVal.get(reg), reg.type));
                        if (stmt instanceof branch) {
                            branch curBranch = (branch) stmt ;
                            stmtNeedUpdate.add(stmt) ;
                            branch newBranch = new branch(regVal.get(reg) == 1 ? curBranch.trueBranch : curBranch.falseBranch) ;
                            updateStmt.add(newBranch) ;
                        }
                    }
                }
                for (register reg : stmt.getDefVar())
                    if (regFlag.get(reg) == 0)
                        deleteStmts.add(stmt) ;
            }
            for (statement stmt : deleteStmts)
                curBlock.statements.remove(stmt) ;
            for (int i = 0; i < stmtNeedUpdate.size(); i ++) {
                statement stmt = stmtNeedUpdate.get(i) ;
                int idx = curBlock.statements.indexOf(stmt) ;
                curBlock.statements.set(idx, updateStmt.get(i)) ;
            }
        }

        // copy propagation
        for (block b : curFunc.blocks) {
            ArrayList<statement> deleteStatements = new ArrayList<>() ;
            for (statement stmt : b.statements) {
                if (!(stmt instanceof phi)) continue ;
                phi curPhi = (phi) stmt ;
                if (curPhi.labels.size() > 1) continue ;
                deleteStatements.add(curPhi) ;
                register fromReg = curPhi.destReg, toReg = (register) curPhi.value.get(0) ;
                for (statement useStmt : regUseStmt.get(fromReg))
                    useStmt.updateUseReg(fromReg, toReg);
            }
            b.statements.removeAll(deleteStatements) ;
        }

        curFunc.getSuccAndPred();

        // eliminate block only has one branch
        // Map<block, block> branchBlock = new HashMap<>() ;
        // deleteBlocks = new ArrayList<>() ;
        // for (int i = 0; i < curFunc.blocks.size(); i ++) {
        //     block b = curFunc.blocks.get(i) ;
        //     statement stmt = b.statements.get(b.statements.size() - 1) ;
        //     if (stmt instanceof branch) {
        //         branch curBranch = (branch) stmt ;
        //         if (!curBranch.isConditioned && b.statements.size() == 1) {
        //             branchBlock.put(b, curFunc.labelToBlock.get(curBranch.trueBranch.labelID)) ;
        //             deleteBlocks.add(b) ;
        //         }
        //     }
        // }
        // for (block b : deleteBlocks) curFunc.blocks.remove(b) ;
        // for (int i = 0; i < curFunc.blocks.size(); i ++) {
        //     block b = curFunc.blocks.get(i) ;
        //     statement stmt = b.statements.get(b.statements.size() - 1) ;
        //     if (stmt instanceof branch) {
        //         branch curBranch = (branch) stmt ;
        //         if (curBranch.isConditioned) {
        //             block curBlock = curFunc.labelToBlock.get(curBranch.falseBranch.labelID) ;
        //             if (branchBlock.containsKey(curBlock))
        //                 curBranch.falseBranch = new label(branchBlock.get(curBlock).identifier) ;
        //         }
        //         block curBlock = curFunc.labelToBlock.get(curBranch.trueBranch.labelID) ;
        //         if (branchBlock.containsKey(curBlock))
        //             curBranch.trueBranch = new label(branchBlock.get(curBlock).identifier) ;
        //     }
        // }

        // curFunc.getSuccAndPred();
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
            // System.out.println(stmt) ;
            for (int i = 0; i < curPhi.labels.size(); i ++) {
                label curLabel = curPhi.labels.get(i) ;
                entity curVal = curPhi.value.get(i) ;
                block curBlock = curFunc.labelToBlock.get(curLabel.labelID) ;
                // System.out.println(curBlock.identifier + " " + blockExecuted.get(curBlock)) ;
                if (blockExecuted.containsKey(curBlock) && blockExecuted.get(curBlock) == true) {
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
                // System.out.println("size: " + possibleVals.size());
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
        } else if (stmt instanceof bitcast) {
            bitcast curBitcast = (bitcast) stmt ;
            register from = curBitcast.from, to = curBitcast.to ;
            updateReg(to, regFlag.get(from), regVal.get(from));
        } else if (stmt instanceof trunc) {
            trunc curTrunc = (trunc) stmt ;
            entity from = curTrunc.from ;
            register to = (register) curTrunc.to ;
            if (from instanceof constant) updateReg(to, 0, ((constant) from).value) ;
            else updateReg(to, regFlag.get((register) from), regVal.get((register) from));
        } else if (stmt instanceof zext) {
            zext curZext = (zext) stmt ;
            entity from = curZext.from ;
            register to = (register) curZext.to ;
            if (from instanceof constant) updateReg(to, 0, ((constant) from).value) ;
            else updateReg(to, regFlag.get((register) from), regVal.get((register) from));
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
            if (regFlag.get(reg) == -1) {
                regFlag.put(reg, 0) ;
                regVal.put(reg, val) ;
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

    // constant conditional branch
    private void updateBranch (function curFunction) {
        for (block b : curFunction.blocks) {
            for (int i = 0; i < b.statements.size(); i ++) {
                statement stmt = b.statements.get(i) ;
                if (stmt instanceof branch) {
                    branch curBranch = (branch) stmt ;
                    if (curBranch.isConditioned && curBranch.condition instanceof constant) {
                        constant cond = (constant) curBranch.condition ;
                        branch newBranch = new branch(cond.value == 1 ? curBranch.trueBranch : curBranch.falseBranch) ;
                        b.statements.set(i, newBranch) ;
                    }
                }
            }
        }
    }
}
