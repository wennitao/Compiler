package Optimize;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

import MIR.* ;

public class AggressiveDCE {
    private globalDefine globalDefine ;
    
    public AggressiveDCE (globalDefine _globalDefine) {
        globalDefine = _globalDefine ;
        DCE () ;
    }

    private void DCE () {
        for (function curFunction : globalDefine.functions) {
            buildControlDependenceGraph(curFunction);
            markLiveStatement(curFunction) ;
            deleteUnmarkedStatement (curFunction) ;
            deleteEmptyBlock (curFunction) ;
            curFunction.blocks.remove(0) ;
        }
    }

    Map<block, ArrayList<block> > succ, pred ; // G'
    Map<block, ArrayList<block> > CDG_succ, CDG_pred ;

    private void CDGAddEdge (block u, block v) {
        CDG_succ.get(u).add(v) ;
        CDG_pred.get(v).add(u) ;
    }

    private void buildControlDependenceGraph (function curFunction) {
        buildReverseGraph(curFunction);
        dominatorTreeInit() ;
        Dominators(curFunction) ;
        
        for (block y : curFunction.blocks) {
            DF.get(y).forEach(x -> CDGAddEdge(x, y));
        }
    }

    private void addEdge (block u, block v) {
        succ.get(v).add(u) ;
        pred.get(u).add(v) ;
    }

    private void buildReverseGraph (function curFunction) {
        succ = new HashMap<>(); pred = new HashMap<>() ;

        block entryBlock = new block("controlGraphEntryBlock") ;
        curFunction.blocks.add(0, entryBlock);
        for (block b : curFunction.blocks) {
            succ.put(b, new ArrayList<>()) ;
            pred.put(b, new ArrayList<>()) ;
        }
        
        addEdge (entryBlock, curFunction.blocks.get(1)) ;
        addEdge (entryBlock, curFunction.returnBlock) ;
        for (block b : curFunction.blocks)
            b.succ.forEach(to -> addEdge (b, to));
    }

    private Map<block, ArrayList<block> > bucket ;
    private Map<block, Integer> dfnum ;
    private Map<block, block> parent, semi, ancestor, idom, samedom, best ;
    private Map<Integer, block> vertex ;
    private int N = 0 ;

    private Map<block, Set<block> > child, DF ; // Dominator Tree

    private void dominatorTreeInit() {
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
            dfnum.put(curBlock, 0) ;
        }
        block r = curFunc.returnBlock ;
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
            // System.out.println(idom.get(n).identifier + " dominates " + n.identifier);
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
        // System.out.print("DF[" + n.identifier + "]: ");
        // for (block b : S) System.out.print (b.identifier + " ") ;
        // System.out.println();
    }

    Map<register, ArrayList<statement> > regDefStmt ;
    Queue<statement> worklist ; 
    Map<statement, Boolean> statementIsLive ;
    Map<statement, block> belongsToBlock ;

    private void markLiveStatement(function curFunction) {
        regDefStmt = new HashMap<>() ;
        for (block b : curFunction.blocks)
            for (statement stmt : b.statements) {
                stmt.getDefVar().forEach(reg -> {
                    if (!regDefStmt.containsKey(reg)) regDefStmt.put(reg, new ArrayList<>()) ; 
                });
                stmt.getDefVar().forEach(reg -> regDefStmt.get(reg).add(stmt));
            }
        
        belongsToBlock = new HashMap<>() ;
        for (block b : curFunction.blocks) {
            for (statement stmt : b.statements) {
                belongsToBlock.put(stmt, b) ;
            }
        }
            
        worklist = new LinkedList<>() ;
        for (block b : curFunction.blocks) {
            for (statement stmt : b.statements) {
                if (stmt instanceof functioncall || stmt instanceof returnStmt || stmt instanceof store) {
                    worklist.add(stmt) ;
                    statementIsLive.put(stmt, true) ;
                }
            }
        }
        
        statementIsLive = new HashMap<>() ;
        while (!worklist.isEmpty()) {
            statement curStmt = worklist.poll() ;
            for (register reg : curStmt.getUseVar()) {
                if (!regDefStmt.containsKey(reg)) continue ;
                for (statement stmt : regDefStmt.get(reg)) {
                    if (statementIsLive.containsKey(stmt)) continue ;
                    statementIsLive.put(stmt, true) ;
                    worklist.add(stmt) ;
                }
            }
            block curBlock = belongsToBlock.get(curStmt) ;
            for (block preBlock : curBlock.pred) {
                statement condBranch = null ;
                for (statement stmt : preBlock.statements) {
                    if (stmt instanceof branch && ((branch) stmt).isConditioned == true) {
                        condBranch = stmt; break ;
                    }
                }
                if (statementIsLive.containsKey(condBranch)) continue ;
                statementIsLive.put(condBranch, true) ;
                worklist.add(condBranch) ;
            }
        }
    }

    private void deleteUnmarkedStatement (function curFunction) {
        for (block b : curFunction.blocks) {
            ArrayList<statement> delStatements = new ArrayList<>() ;
            for (statement stmt : b.statements) {
                if (!statementIsLive.containsKey(stmt)) delStatements.add(stmt) ;
            }
            b.statements.removeAll(delStatements) ;
        }
    }

    private void deleteEmptyBlock (function curFunction) {
        ArrayList<block> delBlocks = new ArrayList<>() ;
        for (block b : curFunction.blocks) {
            if (b.statements.isEmpty()) delBlocks.add(b) ;
        }   
        curFunction.blocks.removeAll(delBlocks) ;
        curFunction.getSuccAndPred();
    }
}
