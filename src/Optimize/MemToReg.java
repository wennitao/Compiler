package Optimize;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.Stack;

import MIR.* ;
import MIR.IRType.IRPointerType;

public class MemToReg {
    private globalDefine globalDefine ;
    private Map<block, ArrayList<block> > bucket ;
    private Map<block, Integer> dfnum ;
    private Map<block, block> parent, semi, ancestor, idom, samedom, best ;
    private Map<Integer, block> vertex ;
    private int N = 0 ;

    private Map<block, Set<block> > child, DF ; // Dominator Tree

    private Set<register> allocaRegs ;
    private Map<block, Set<register> > A_orig, A_phi ; // variables defined in block
    private Map<register, Set<block> > defsites ;
    // private Map<register, Integer> Count ;
    // private Map<register, Stack<Integer> > Stack ;
    // private Map<register, ArrayList<register> > newRegisters ;
    private Map<block, Set<phi> > phiInsertions ;
    
    public MemToReg (globalDefine _globalDefine) {
        globalDefine = _globalDefine ;
        analyzeRoot () ;
    }

    private void analyzeRoot () {
        for (function curFunc : globalDefine.functions) {
            if (curFunc.isBuiltin) continue ;
            init () ;
            analyzeFunction(curFunc);
        }
    }

    private void init () {
        dfnum = new HashMap<>() ;
        parent = new HashMap<>() ;
        vertex = new HashMap<>() ;
        semi = new HashMap<>() ;
        ancestor = new HashMap<>() ;
        idom = new HashMap<>() ;
        samedom = new HashMap<>() ;
        bucket = new HashMap<>() ;
        best = new HashMap<>() ;

        child = new HashMap<>() ;
        DF = new HashMap<>() ;
    }

    private void analyzeFunction (function curFunc) {
        curFunc.getSuccAndPred() ;
        deleteUnvisitedBlocks (curFunc) ;
        curFunc.getSuccAndPred() ;
        edgeSplitting (curFunc) ;
        curFunc.getSuccAndPred() ;
        Dominators(curFunc) ;
        getAllocaRegs (curFunc) ;
        getVarDef (curFunc) ;
        placePhiFunctions(curFunc);
        RenamePhi(curFunc);
        EliminateAlloca (curFunc) ;
    }

    private void deleteUnvisitedBlocks (function curFunc) {
        Set<block> visited = new HashSet<>(), deleteBlocks = new HashSet<>() ;
        Queue<block> queue = new LinkedList<>() ;
        queue.add(curFunc.blocks.get(0)) ;
        visited.add(curFunc.blocks.get(0)) ;
        while (!queue.isEmpty()) {
            block b = queue.poll() ;
            for (block nxt : b.succ) {
                if (!visited.contains(nxt)) {
                    queue.add(nxt); visited.add(nxt) ;
                }
            }
        }
        for (block b : curFunc.blocks)
            if (!visited.contains(b)) deleteBlocks.add(b) ;
        for (block b : deleteBlocks)
            curFunc.blocks.remove(b) ;
    }

    private void DFS (block p, block n) {
        if (dfnum.get(n).equals(0)) {
            dfnum.put(n, N); vertex.put(N, n); parent.put(n, p) ;
            N = N + 1 ;
            for (block w : n.succ)
                DFS (n, w) ;
        }
    }

    private void Link (block p, block n) {
        ancestor.put(n, p) ;
        best.put(n, n) ;
    }

    private block AncestorWithLowestSemi (block v) {
        block a = ancestor.get(v) ;
        if (ancestor.containsKey(a)) {
            block b = AncestorWithLowestSemi(a) ;
            ancestor.put(v, ancestor.get(a)) ;
            if (dfnum.get(semi.get(b)) < dfnum.get(semi.get(best.get(v)))) best.put(v, b) ;
        }
        return best.get(v) ;
    }

    private void Dominators (function curFunc) {
        N = 0 ;
        for (block curBlock : curFunc.blocks) {
            bucket.put(curBlock, new ArrayList<>()) ;
            child.put(curBlock, new HashSet<>()) ;
            dfnum.put(curBlock, 0) ;
        }
        block r = curFunc.blocks.get(0) ;
        DFS (null, r) ;
        for (int i = N - 1; i >= 1; i --) {
            block n = vertex.get(i), p = parent.get(n), s = p, ss ;
            for (block v : n.pred) {
                if (dfnum.get(v) <= dfnum.get(n)) ss = v ;
                else ss = semi.get(AncestorWithLowestSemi(v)) ;
                if (dfnum.get(ss) < dfnum.get(s)) s = ss ;
            }
            semi.put(n, s) ;
            bucket.get(s).add(n) ;
            Link (p, n) ;
            for (block v : bucket.get(p)) {
                block y = AncestorWithLowestSemi(v) ;
                if (semi.get(y) == semi.get(v)) idom.put(v, p) ;
                else samedom.put(v, y) ;
            }
            bucket.put (p, new ArrayList<>()) ;
        }
        for (int i = 1; i <= N - 1; i ++) {
            block n = vertex.get(i) ;
            if (samedom.containsKey(n)) idom.put(n, idom.get(samedom.get(n))) ;
            // System.out.println(idom.get(n).identifier + " dominates " + n.identifier);
            child.get(idom.get(n)).add(n) ;
        }
        computeDF(r) ;
    }

    private void computeDF (block n) {
        Set<block> S = new HashSet<>() ;
        for (block y : n.succ) {
            if (idom.get(y) != n) S.add(y) ;
        }
        for (block c : child.get(n)) {
            computeDF(c) ;
            for (block w : DF.get(c)) {
                boolean flag = false ;
                block cur = w ;
                while (cur != null) {
                    if (cur == n) {
                        flag = true; break ;
                    }
                    cur = idom.get(cur) ;
                }
                if (!flag || n == w) S.add(w) ;
            }
        }
        DF.put(n, S) ;
        // System.out.print("DF[" + n.identifier + "]: ");
        // for (block b : S) System.out.print (b.identifier + " ") ;
        // System.out.println();
    }

    private Set<register> getUseFromStmt (statement curStmt) {
        return curStmt.getUseVar() ;
    }

    private Set<register> getDefFromStmt (statement curStmt) {
        Set<register> S = curStmt.getDefVar() ;
        Set<register> SS = new HashSet<>() ;
        for (register a : S)
            if (allocaRegs.contains(a)) SS.add(a) ;
        return SS ;
    }

    private void getAllocaRegs (function curFunc) {
        allocaRegs = new HashSet<>() ;
        for (statement stmt : curFunc.allocaBlock.statements) {
            if (!(stmt instanceof alloca)) continue ;
            alloca curAlloca = (alloca) stmt ;
            allocaRegs.add(curAlloca.reg) ;
        }
    }

    private void getVarDef (function curFunc) {
        A_orig = new HashMap<>() ;
        for (block curBlock : curFunc.blocks) {
            Set<register> S = new HashSet<>() ;
            for (statement curStmt : curBlock.statements) {
                // S.addAll(getDefFromStmt(curStmt)) ;
                Set<register> tmp = getDefFromStmt(curStmt) ;
                for (register reg : tmp)
                    if (!reg.isGlobal && allocaRegs.contains(reg)) S.add(reg) ;
            }
            A_orig.put(curBlock, S) ;
        }
    }

    private void edgeSplitting (function curFunc) {
        ArrayList<block> addBlocks = new ArrayList<>() ;
        ArrayList<Integer> addIdx = new ArrayList<>() ;
        for (block from : curFunc.blocks) {
            if (from.succ.size() == 1) continue ;
            for (block to : from.succ) {
                if (to.pred.size() == 1) continue ;
                block mid = new block(from.identifier + "_mid") ;
                branch newBranch = new branch(new label(to.identifier)) ;
                mid.statements.add(newBranch) ;
                branch fromBranch = (branch) from.statements.get(from.statements.size() - 1) ;
                if (fromBranch.trueBranch.labelID == to.identifier) {
                    fromBranch.trueBranch = new label(mid.identifier) ;
                } else {
                    fromBranch.falseBranch = new label(mid.identifier) ;
                }
                // update phi in block to
                for (statement stmt : to.statements) {
                    if (stmt instanceof phi) {
                        phi curPhi = (phi) stmt ;
                        for (int i = 0; i < curPhi.labels.size(); i ++) {
                            if (curPhi.labels.get(i).labelID.equals(from.identifier))
                                curPhi.labels.set(i, new label(mid.identifier)) ;
                        }
                    }
                } 

                int idx = curFunc.blocks.indexOf(from) ;
                addBlocks.add(mid); addIdx.add(idx + 1) ;
                // from.succ.remove(to); from.succ.add(mid) ;
                // to.pred.remove(from); to.pred.add(mid) ;
            }
        }

        for (int i = 0; i < addBlocks.size(); i ++) {
            block b = addBlocks.get(i) ;
            int idx = addIdx.get(i) ;
            curFunc.blocks.add(idx, b) ;
        }
    }

    private void placePhiFunctions (function curFunc) {
        defsites = new HashMap<>() ;
        A_phi = new HashMap<>() ;
        phiInsertions = new HashMap<>() ;
        for (register reg : allocaRegs) defsites.put(reg, new HashSet<>()) ;
        for (block n : curFunc.blocks) {
            A_phi.put(n, new HashSet<>()) ;
            phiInsertions.put(n, new HashSet<>()) ;
            for (register a : A_orig.get(n)) {
                defsites.get(a).add(n) ;
            }
        }
        for (register a : allocaRegs) {
            // System.out.println("placing phi of var " + a.registerID);
            Queue<block> W = new LinkedList<>(defsites.get(a)) ;
            while (!W.isEmpty()) {
                block n = W.poll() ;
                // System.out.println("block n: " + n.identifier);
                for (block Y : DF.get(n)) {
                    if (!A_phi.get(Y).contains(a)) {
                        phi curPhi = new phi(a, ((IRPointerType) a.type).type) ;
                        for (block pre : Y.pred) {
                            curPhi.labels.add(new label(pre.identifier)) ;
                            curPhi.value.add(a) ;
                        }
                        phiInsertions.get(Y).add(curPhi) ;
                        Y.statements.add(0, curPhi);
                        A_phi.get(Y).add(a) ;
                        // System.out.println("in block " + Y.identifier);
                        if (!A_orig.get(Y).contains(a)) W.add(Y) ;
                    }
                }
            }
            // System.out.println();
        }
    }

    // private void RenamePhi (function curFunc) {
    //     Count = new HashMap<>() ;
    //     Stack = new HashMap<>() ;
    //     newRegisters = new HashMap<>() ;
    //     for (register a : defsites.keySet()) {
    //         Count.put(a, 0) ;
    //         Stack.put(a, new Stack<>()) ;
    //         Stack.get(a).push(0) ;
    //         newRegisters.put(a, new ArrayList<>()) ;
    //         newRegisters.get(a).add(a) ;
    //     }
    //     block root = curFunc.blocks.get(0) ;
    //     Rename (root) ;
    // }

    // private void updateUse (register reg) {
    //     int i = Stack.get(reg).peek() ;
    //     reg = newRegisters.get(reg).get(i) ;
    // }

    // private void replaceUse (statement S) {
    //     if (S instanceof binary) {
    //         binary curBinary = (binary) S ;
    //         if (curBinary.left instanceof register) updateUse((register) curBinary.left) ;
    //         if (curBinary.right instanceof register) updateUse((register) curBinary.right) ;
    //     } else if (S instanceof bitcast) {
    //         bitcast curBitcast = (bitcast) S ;
    //         updateUse(curBitcast.from) ;
    //     } else if (S instanceof functioncall) {
    //         functioncall curFuncCall = (functioncall) S ;
    //         for (entity cur : curFuncCall.parameters) {
    //             if (cur instanceof register) updateUse((register) cur) ;
    //         }
    //     } else if (S instanceof getelementptr) {
    //         getelementptr curGet = (getelementptr) S ;
    //         updateUse((register) curGet.from) ;
    //     } else if (S instanceof load) {
    //         load curLoad = (load) S ;
    //         updateUse((register) curLoad.from) ;
    //     } else if (S instanceof phi) {
    //         phi curPhi = (phi) S ;
    //         for (entity cur : curPhi.value) {
    //             if (cur instanceof register) updateUse((register) cur);
    //         }
    //     } else if (S instanceof store) {
    //         store curStore = (store) S ;
    //         if (curStore.from instanceof register) updateUse((register) curStore.from) ;
    //     } else if (S instanceof trunc) {
    //         trunc curTrunc = (trunc) S ;
    //         updateUse(curTrunc.from) ;
    //     } else if (S instanceof zext) {
    //         zext curZext = (zext) S ;
    //         updateUse(curZext.from) ;
    //     }
    // }

    // private void updateDef (register reg) {
    //     int i = Count.get(reg) + 1 ;
    //     Count.put(reg, i) ;
    //     Stack.get(reg).push(i) ;
    //     register newReg = new register(reg.registerID + "_" + i, reg.type, false) ;
    //     newRegisters.get(reg).add(newReg) ;
    //     reg = newReg ;
    // }

    // private void replaceDef (statement S) {
    //     if (S instanceof binary) {
    //         binary curBinary = (binary) S ;
    //         updateDef((register) curBinary.dest);
    //     } else if (S instanceof bitcast) {
    //         bitcast curBitcast = (bitcast) S ;
    //         updateDef(curBitcast.to);
    //     } else if (S instanceof functioncall) {
    //         functioncall curFuncCall = (functioncall) S ;
    //         if (!curFuncCall.isVoid) updateDef(curFuncCall.destReg) ;
    //     } else if (S instanceof getelementptr) {
    //         getelementptr curGet = (getelementptr) S ;
    //         updateDef(curGet.to) ;
    //     } else if (S instanceof load) {
    //         load curLoad = (load) S ;
    //         updateDef((register) curLoad.to) ;
    //     } else if (S instanceof phi) {
    //         phi curPhi = (phi) S ;
    //         updateDef(curPhi.destReg) ;
    //     } else if (S instanceof store) {
    //         store curStore = (store) S ;
    //         updateDef((register) curStore.dest) ;
    //     } else if (S instanceof trunc) {
    //         trunc curTrunc = (trunc) S ;
    //         updateDef(curTrunc.to) ;
    //     } else if (S instanceof zext) {
    //         zext curZext = (zext) S ;
    //         updateDef(curZext.to) ;
    //     }
    // }

    // private void Rename (block n) {
    //     Set<register> origDef = new HashSet<>() ;
    //     for (statement S : n.statements) {
    //         origDef.addAll(getDefFromStmt(S)) ;
    //         if (!(S instanceof phi)) {
    //             replaceUse (S) ;
    //         }
    //         replaceDef (S) ;
    //     }
    //     for (block Y : succ.get(n)) {
    //         int j = pred.get(Y).indexOf(n) ;
    //         for (statement stmt : Y.statements) {
    //             if (!(stmt instanceof phi)) continue ;
    //             phi curPhi = (phi) stmt ;
    //             entity tmp = curPhi.value.get(j) ;
    //             if (!(tmp instanceof register)) continue ;
    //             register a = (register) tmp ;
    //             int i = Stack.get(a).peek() ;
    //             a = newRegisters.get(a).get(i) ;
    //         }
    //     }
    //     for (block X : child.get(n)) Rename(X);
    //     for (register a : origDef) Stack.get(a).pop() ;
    // }

    Set<block> visited = new HashSet<>() ;
    Map<register, Integer> regID = new HashMap<>() ;
    Map<register, Set<statement> > varUseStmt = new HashMap<>() ;

    private void RenamePhi (function curFunc) {
        Map<register, entity> IncomingVals = new HashMap<>() ;
        visited = new HashSet<>() ;
        regID = new HashMap<>() ;
        varUseStmt = new HashMap<>() ;
        
        for (register reg : allocaRegs) {
            regID.put(reg, 0) ;
            IncomingVals.put(reg, new constant(0, ((IRPointerType) reg.type).type));
        }

        for (block curBlock : curFunc.blocks)
            for (statement stmt : curBlock.statements) {
                for (register reg : stmt.getUseVar()) {
                    if (!varUseStmt.containsKey(reg)) varUseStmt.put(reg, new HashSet<>()) ;
                    varUseStmt.get(reg).add(stmt) ;
                }
            }

        // Rename (curFunc, curFunc.blocks.get(0), IncomingVals) ;
        Stack<block> stack = new Stack<>() ;
        Stack<Map<register, entity> > incomingStack = new Stack<>() ;
        stack.add(curFunc.blocks.get(0)) ;
        incomingStack.add(IncomingVals) ;
        while (!stack.isEmpty()) {
            block curBlock = stack.pop() ;
            Map<register, entity> curIncomingVals = incomingStack.pop() ;
            visited.add(curBlock) ;
            Map<register, entity> newIncomingVals = Rename (curFunc, curBlock, curIncomingVals) ;
            for (block nxt : curBlock.succ) {
                if (!visited.contains(nxt)) {
                    stack.add(nxt) ;
                    incomingStack.add(newIncomingVals) ;
                }
            }
        }
    }

    private void regUpdate (block b, register from, entity to) {
        if (to instanceof register && !varUseStmt.containsKey(to)) varUseStmt.put((register) to, new HashSet<>()) ;
        if (varUseStmt.containsKey(from)) {
            for (statement stmt : varUseStmt.get(from)) {
                // System.out.println (stmt) ;
                stmt.updateUseReg(from, to);
                if (to instanceof register) varUseStmt.get(to).add(stmt) ;
            }
        }
        varUseStmt.remove(from) ;
    }

    private Map<register, entity> Rename (function curFunc, block B, Map<register, entity> IncomingVals) {
        // System.out.println(B.identifier);
        // visited.add(B) ;
        ArrayList<Integer> eraseStmts = new ArrayList<>() ;
        Map<register, entity> newIncomingVals = new HashMap<>(IncomingVals) ;
        for (int i = 0; i < B.statements.size(); i ++) {
            statement stmt = B.statements.get(i) ;
            if (stmt instanceof load) {
                load curLoad = (load) stmt ;
                if (!allocaRegs.contains((register) curLoad.from)) continue ;
                register L = (register) curLoad.from, V = (register) curLoad.to ;
                // regUpdate.put(V, newIncomingVals.get(L)) ;
                regUpdate(B, V, newIncomingVals.get(L));
                // System.out.println("reg update " + V + " " + newIncomingVals.get(L));
                eraseStmts.add(i) ;
            } else if (stmt instanceof store) {
                store curStore = (store) stmt ;
                if (!allocaRegs.contains((register) curStore.dest)) continue ;
                register L = (register) curStore.dest; entity V = curStore.from ;
                newIncomingVals.put(L, V) ;
                // System.out.println("incomingVals " + L + ": " + V) ;
                eraseStmts.add(i) ;
            } else if (stmt instanceof branch) {
                branch curBranch = (branch) stmt ;
                block toBlock = curFunc.labelToBlock.get(curBranch.trueBranch.labelID) ;
                for (phi curPhi : phiInsertions.get(toBlock)) {
                    for (int phiIdx = 0; phiIdx < curPhi.labels.size(); phiIdx ++) {
                        label fromLabel = curPhi.labels.get(phiIdx) ;
                        if (fromLabel.labelID.equals(B.identifier)) {
                            register reg = (register) curPhi.value.get(phiIdx) ;
                            curPhi.value.remove(phiIdx) ;
                            curPhi.value.add(phiIdx, newIncomingVals.get(reg));
                        }
                    }
                }
                if (curBranch.isConditioned) {
                    toBlock = curFunc.labelToBlock.get(curBranch.falseBranch.labelID) ;
                    for (phi curPhi : phiInsertions.get(toBlock)) {
                        for (int phiIdx = 0; phiIdx < curPhi.labels.size(); phiIdx ++) {
                            label fromLabel = curPhi.labels.get(phiIdx) ;
                            if (fromLabel.labelID.equals(B.identifier)) {
                                register reg = (register) curPhi.value.get(phiIdx) ;
                                curPhi.value.remove(phiIdx) ;
                                curPhi.value.add(phiIdx, newIncomingVals.get(reg));
                            }
                        }
                    }
                }
            } else if (stmt instanceof phi) {
                phi curPhi = (phi) stmt ;
                register reg = curPhi.destReg ;
                if (allocaRegs.contains(reg)) {
                    int curID = regID.get(reg) ;
                    register renameReg = new register(reg.registerID.substring(2) + "." + curID, ((IRPointerType) reg.type).type, false) ;
                    curPhi.destReg = renameReg ;
                    newIncomingVals.put(reg, renameReg) ;
                    regID.put(reg, curID + 1) ;
                }
            }
        }
        for (int i = eraseStmts.size() - 1; i >= 0; i --) {
            int idx = eraseStmts.get(i) ;
            // System.out.println(B.statements.get(idx));
            B.statements.remove(idx) ;
        }
        // for (block nxt : B.succ) {
        //     if (!visited.contains(nxt))
        //         Rename (curFunc, nxt, newIncomingVals) ;
        // }
        return newIncomingVals ;
    }

    private void EliminateAlloca(function curFunc) {
        curFunc.blocks.remove(curFunc.allocaBlock) ;
    }
}
