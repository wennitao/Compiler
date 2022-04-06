package Optimize;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.Stack;

import MIR.* ;

public class MemToReg {
    private globalDefine globalDefine ;
    private Map<String, block> labelToBlock ;
    private Map<block, ArrayList<block> > succ, pred, bucket ;
    private Map<block, Integer> dfnum ;
    private Map<block, block> parent, semi, ancestor, idom, samedom, best ;
    private Map<Integer, block> vertex ;
    private int N = 0 ;

    private Map<block, Set<block> > child, DF ; // Dominator Tree

    private Map<block, Set<register> > A_orig, A_phi ; // variables defined in block
    private Map<register, Set<block> > defsites ;
    private Map<register, Integer> Count ;
    private Map<register, Stack<Integer> > Stack ;
    private Map<register, ArrayList<register> > newRegisters ;
    
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
        succ = new HashMap<>() ;
        pred = new HashMap<>() ;
        labelToBlock = new HashMap<>() ;
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
        getSuccAndPred (curFunc) ;
        Dominators(curFunc) ;
        getVarDef (curFunc) ;
        placePhiFunctions(curFunc);
        RenamePhi(curFunc);
    }

    private void addBlockEdge (block from, block to) {
        // System.out.println(from.identifier + " " + to.identifier);
        succ.get(from).add(to) ;
        pred.get(to).add(from) ;
    }

    private void getSuccAndPred (function curFunc) {
        for (block curBlock : curFunc.blocks) {
            labelToBlock.put(curBlock.identifier, curBlock) ;
            succ.put(curBlock, new ArrayList<>()) ;
            pred.put(curBlock, new ArrayList<>()) ;
            dfnum.put(curBlock, 0) ;
        }
        for (block curBlock : curFunc.blocks) {
            for (statement curStmt : curBlock.statements) {
                if (curStmt instanceof branch) {
                    branch curBranch = (branch) curStmt ;
                    block toBlock = labelToBlock.get(curBranch.trueBranch.labelID) ;
                    addBlockEdge(curBlock, toBlock);
                    if (curBranch.isConditioned) {
                        toBlock = labelToBlock.get(curBranch.falseBranch.labelID) ;
                        addBlockEdge(curBlock, toBlock);
                    }
                }
            }
        }
    }

    private void DFS (block p, block n) {
        if (dfnum.get(n).equals(0)) {
            dfnum.put(n, N); vertex.put(N, n); parent.put(n, p) ;
            N = N + 1 ;
            for (block w : succ.get(n))
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
        }
        block r = curFunc.blocks.get(0) ;
        DFS (null, r) ;
        for (int i = N - 1; i >= 1; i --) {
            block n = vertex.get(i), p = parent.get(n), s = p, ss ;
            for (block v : pred.get(n)) {
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
            System.out.println(idom.get(n).identifier + " dominates " + n.identifier);
            child.get(idom.get(n)).add(n) ;
        }
        computeDF(r) ;
    }

    private void computeDF (block n) {
        Set<block> S = new HashSet<>() ;
        for (block y : succ.get(n)) {
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
        System.out.print("DF[" + n.identifier + "]: ");
        for (block b : S) System.out.print (b.identifier + " ") ;
        System.out.println();
    }

    private Set<register> getUseFromStmt (statement curStmt) {
        Set<register> S = new HashSet<>() ;
        if (curStmt instanceof binary) {
            binary curBinary = (binary) curStmt ;
            if (curBinary.left instanceof register) S.add((register) curBinary.left) ;
            if (curBinary.right instanceof register) S.add((register) curBinary.right) ;
        } else if (curStmt instanceof bitcast) {
            bitcast curBitcast = (bitcast) curStmt ;
            S.add(curBitcast.from) ;
        } else if (curStmt instanceof functioncall) {
            functioncall curFuncCall = (functioncall) curStmt ;
            for (entity cur : curFuncCall.parameters) {
                if (cur instanceof register) S.add((register) cur) ;
            }
        } else if (curStmt instanceof getelementptr) {
            getelementptr curGet = (getelementptr) curStmt ;
            S.add(curGet.from) ;
        } else if (curStmt instanceof load) {
            load curLoad = (load) curStmt ;
            S.add((register) curLoad.from) ;
        } else if (curStmt instanceof phi) {
            phi curPhi = (phi) curStmt ;
            for (entity cur : curPhi.value) {
                if (cur instanceof register) S.add ((register) cur) ;
            }
        } else if (curStmt instanceof store) {
            store curStore = (store) curStmt ;
            S.add((register) curStore.from) ;
        } else if (curStmt instanceof trunc) {
            trunc curTrunc = (trunc) curStmt ;
            S.add(curTrunc.from) ;
        } else if (curStmt instanceof zext) {
            zext curZext = (zext) curStmt ;
            S.add(curZext.from) ;
        }
        return S ;
    }

    private Set<register> getDefFromStmt (statement curStmt) {
        Set<register> S = new HashSet<>() ;
        if (curStmt instanceof binary) {
            binary curBinary = (binary) curStmt ;
            S.add((register) curBinary.dest) ;
        } else if (curStmt instanceof bitcast) {
            bitcast curBitcast = (bitcast) curStmt ;
            S.add(curBitcast.to) ;
        } else if (curStmt instanceof functioncall) {
            functioncall curFuncCall = (functioncall) curStmt ;
            if (!curFuncCall.isVoid) S.add(curFuncCall.destReg) ;
        } else if (curStmt instanceof getelementptr) {
            getelementptr curGet = (getelementptr) curStmt ;
            S.add(curGet.to) ;
        } else if (curStmt instanceof load) {
            load curLoad = (load) curStmt ;
            S.add((register) curLoad.to) ;
        } else if (curStmt instanceof phi) {
            phi curPhi = (phi) curStmt ;
            S.add(curPhi.destReg) ;
        } else if (curStmt instanceof store) {
            store curStore = (store) curStmt ;
            S.add((register) curStore.dest) ;
        } else if (curStmt instanceof trunc) {
            trunc curTrunc = (trunc) curStmt ;
            S.add(curTrunc.to) ;
        } else if (curStmt instanceof zext) {
            zext curZext = (zext) curStmt ;
            S.add(curZext.to) ;
        }
        return S ;
    }

    private void getVarDef (function curFunc) {
        A_orig = new HashMap<>() ;
        for (block curBlock : curFunc.blocks) {
            Set<register> S = new HashSet<>() ;
            for (statement curStmt : curBlock.statements) {
                // S.addAll(getDefFromStmt(curStmt)) ;
                Set<register> tmp = getDefFromStmt(curStmt) ;
                for (register reg : tmp)
                    if (!reg.isGlobal) S.add(reg) ;
            }
            A_orig.put(curBlock, S) ;
        }
    }

    private void placePhiFunctions (function curFunc) {
        defsites = new HashMap<>() ;
        A_phi = new HashMap<>() ;
        for (block n : curFunc.blocks) {
            A_phi.put(n, new HashSet<>()) ;
            for (register a : A_orig.get(n)) {
                if (!defsites.containsKey(a)) defsites.put(a, new HashSet<>()) ;
                defsites.get(a).add(n) ;
            }
        }
        for (register a : defsites.keySet()) {
            Set<block> W = new HashSet<>(defsites.get(a)) ;
            while (!W.isEmpty()) {
                block n = null ;
                for (block tmp : W) {
                    n = tmp; break ;
                }
                W.remove(n) ;
                for (block Y : DF.get(n)) {
                    if (!A_phi.get(Y).contains(a)) {
                        phi curPhi = new phi(a, a.type) ;
                        for (block pre : pred.get(Y)) {
                            curPhi.labels.add(new label(pre.identifier)) ;
                            curPhi.value.add(a) ;
                        }
                        Y.statements.add(0, curPhi);
                        A_phi.get(Y).add(a) ;
                        if (!A_orig.get(n).contains(a)) W.add(Y) ;
                    }
                }
            }
        }
    }

    private void RenamePhi (function curFunc) {
        Count = new HashMap<>() ;
        Stack = new HashMap<>() ;
        newRegisters = new HashMap<>() ;
        for (register a : defsites.keySet()) {
            Count.put(a, 0) ;
            Stack.put(a, new Stack<>()) ;
            Stack.get(a).push(0) ;
            newRegisters.put(a, new ArrayList<>()) ;
            newRegisters.get(a).add(a) ;
        }
        block root = curFunc.blocks.get(0) ;
        Rename (root) ;
    }

    private void updateUse (register reg) {
        int i = Stack.get(reg).peek() ;
        reg = newRegisters.get(reg).get(i) ;
    }

    private void replaceUse (statement S) {
        if (S instanceof binary) {
            binary curBinary = (binary) S ;
            if (curBinary.left instanceof register) updateUse((register) curBinary.left) ;
            if (curBinary.right instanceof register) updateUse((register) curBinary.right) ;
        } else if (S instanceof bitcast) {
            bitcast curBitcast = (bitcast) S ;
            updateUse(curBitcast.from) ;
        } else if (S instanceof functioncall) {
            functioncall curFuncCall = (functioncall) S ;
            for (entity cur : curFuncCall.parameters) {
                if (cur instanceof register) updateUse((register) cur) ;
            }
        } else if (S instanceof getelementptr) {
            getelementptr curGet = (getelementptr) S ;
            updateUse((register) curGet.from) ;
        } else if (S instanceof load) {
            load curLoad = (load) S ;
            updateUse((register) curLoad.from) ;
        } else if (S instanceof phi) {
            phi curPhi = (phi) S ;
            for (entity cur : curPhi.value) {
                if (cur instanceof register) updateUse((register) cur);
            }
        } else if (S instanceof store) {
            store curStore = (store) S ;
            if (curStore.from instanceof register) updateUse((register) curStore.from) ;
        } else if (S instanceof trunc) {
            trunc curTrunc = (trunc) S ;
            updateUse(curTrunc.from) ;
        } else if (S instanceof zext) {
            zext curZext = (zext) S ;
            updateUse(curZext.from) ;
        }
    }

    private void updateDef (register reg) {
        int i = Count.get(reg) + 1 ;
        Count.put(reg, i) ;
        Stack.get(reg).push(i) ;
        register newReg = new register(reg.registerID + "_" + i, reg.type, false) ;
        newRegisters.get(reg).add(newReg) ;
        reg = newReg ;
    }

    private void replaceDef (statement S) {
        if (S instanceof binary) {
            binary curBinary = (binary) S ;
            updateDef((register) curBinary.dest);
        } else if (S instanceof bitcast) {
            bitcast curBitcast = (bitcast) S ;
            updateDef(curBitcast.to);
        } else if (S instanceof functioncall) {
            functioncall curFuncCall = (functioncall) S ;
            if (!curFuncCall.isVoid) updateDef(curFuncCall.destReg) ;
        } else if (S instanceof getelementptr) {
            getelementptr curGet = (getelementptr) S ;
            updateDef(curGet.to) ;
        } else if (S instanceof load) {
            load curLoad = (load) S ;
            updateDef((register) curLoad.to) ;
        } else if (S instanceof phi) {
            phi curPhi = (phi) S ;
            updateDef(curPhi.destReg) ;
        } else if (S instanceof store) {
            store curStore = (store) S ;
            updateDef((register) curStore.dest) ;
        } else if (S instanceof trunc) {
            trunc curTrunc = (trunc) S ;
            updateDef(curTrunc.to) ;
        } else if (S instanceof zext) {
            zext curZext = (zext) S ;
            updateDef(curZext.to) ;
        }
    }

    private void Rename (block n) {
        Set<register> origDef = new HashSet<>() ;
        for (statement S : n.statements) {
            origDef.addAll(getDefFromStmt(S)) ;
            if (!(S instanceof phi)) {
                replaceUse (S) ;
            }
            replaceDef (S) ;
        }
        for (block Y : succ.get(n)) {
            int j = pred.get(Y).indexOf(n) ;
            for (statement stmt : Y.statements) {
                if (!(stmt instanceof phi)) continue ;
                phi curPhi = (phi) stmt ;
                entity tmp = curPhi.value.get(j) ;
                if (!(tmp instanceof register)) continue ;
                register a = (register) tmp ;
                int i = Stack.get(a).peek() ;
                a = newRegisters.get(a).get(i) ;
            }
        }
        for (block X : child.get(n)) Rename(X);
        for (register a : origDef) Stack.get(a).pop() ;
    }
}
