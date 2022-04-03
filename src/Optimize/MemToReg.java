package Optimize;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import MIR.block;
import MIR.branch;
import MIR.function;
import MIR.globalDefine;
import MIR.statement;

public class MemToReg {
    private globalDefine globalDefine ;
    private Map<String, block> labelToBlock ;
    private Map<block, Set<block> > succ, pred, bucket ;
    private Map<block, Integer> dfnum ;
    private Map<block, block> parent, semi, ancestor, idom, samedom, best ;
    private Map<Integer, block> vertex ;
    private int N = 0 ;

    private Map<block, Set<block> > child, DF ; // Dominator Tree
    
    public MemToReg (globalDefine _globalDefine) {
        globalDefine = _globalDefine ;
        analyzeRoot () ;
    }

    private void analyzeRoot () {
        for (function curFunc : globalDefine.functions) {
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
    }

    private void addBlockEdge (block from, block to) {
        succ.get(from).add(to) ;
        pred.get(to).add(from) ;
    }

    private void getSuccAndPred (function curFunc) {
        for (block curBlock : curFunc.blocks) {
            labelToBlock.put(curBlock.identifier, curBlock) ;
            succ.put(curBlock, new HashSet<>()) ;
            pred.put(curBlock, new HashSet<>()) ;
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
            bucket.put(curBlock, new HashSet<>()) ;
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
        }
        for (int i = 1; i <= N - 1; i ++) {
            block n = vertex.get(i) ;
            if (samedom.containsKey(n)) idom.put(n, idom.get(samedom.get(n))) ;
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
                if (idom.get(w) != n) S.add(w) ;
            }
        }
        DF.put(n, S) ;
    }
}
