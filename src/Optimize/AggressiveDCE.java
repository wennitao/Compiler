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
    }

    public void DCE () {
        ArrayList<function> delFunctions = new ArrayList<>() ;
        for (function curFunction : globalDefine.functions) {
            if (curFunction.isBuiltin) continue ;
            DCE (curFunction) ;
            if (curFunction.blocks.isEmpty()) delFunctions.add(curFunction) ;
        }
        globalDefine.functions.removeAll(delFunctions) ;
    }

    public void DCE (function curFunction) {
        buildControlDependenceGraph(curFunction);
        markLiveStatement(curFunction) ;
        deleteUnmarkedStatement (curFunction) ;
        udpateBlockLabel(curFunction);
        deleteEmptyBlock (curFunction) ;
    }

    Map<block, ArrayList<block> > succ, pred ; // G'
    Map<block, ArrayList<block> > CDG_succ, CDG_pred ;

    private void CDGAddEdge (block u, block v) {
        // System.out.println(u.identifier + " " + v.identifier) ;
        CDG_succ.get(u).add(v) ;
        CDG_pred.get(v).add(u) ;
    }

    private void buildControlDependenceGraph (function curFunction) {
        buildReverseGraph(curFunction);
        dominatorTreeInit() ;
        Dominators(curFunction) ;

        CDG_succ = new HashMap<>(); CDG_pred = new HashMap<>() ;
        for (block b : curFunction.blocks) {
            CDG_succ.put(b, new ArrayList<>()) ;
            CDG_pred.put(b, new ArrayList<>()) ;
        }
        
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
        block exitBlock = new block ("controlGraphExitBlock") ;
        curFunction.blocks.add(curFunction.blocks.size(), exitBlock) ;
        for (block b : curFunction.blocks) {
            succ.put(b, new ArrayList<>()) ;
            pred.put(b, new ArrayList<>()) ;
        }
        
        addEdge (entryBlock, curFunction.blocks.get(1)) ;
        addEdge (entryBlock, exitBlock) ;
        addEdge (curFunction.returnBlock, exitBlock) ;
        // addEdge (entryBlock, curFunction.returnBlock) ;
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
        block r = curFunc.blocks.get(curFunc.blocks.size() - 1) ;
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
    Map<block, Boolean> blockIsLive ;
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
        statementIsLive = new HashMap<>() ;
        blockIsLive = new HashMap<>() ;
        for (block b : curFunction.blocks) {
            for (statement stmt : b.statements) {
                if (stmt instanceof functioncall || stmt instanceof returnStmt || stmt instanceof store) {
                    worklist.add(stmt) ;
                    statementIsLive.put(stmt, true) ;
                }
            }
        }

        block entryBlock = curFunction.blocks.get(1) ;
        statement entryBranch = entryBlock.statements.get(entryBlock.statements.size() - 1) ;
        worklist.add(entryBranch) ;
        statementIsLive.put(entryBranch, true) ;

        while (!worklist.isEmpty()) {
            statement curStmt = worklist.poll() ;
            // System.out.println(curStmt) ;
            // mark use vars' define
            for (register reg : curStmt.getUseVar()) {
                if (!regDefStmt.containsKey(reg)) continue ;
                for (statement stmt : regDefStmt.get(reg)) {
                    if (statementIsLive.containsKey(stmt)) continue ;
                    statementIsLive.put(stmt, true) ;
                    worklist.add(stmt) ;
                }
            }

            // if phi mark previous blocks
            if (curStmt instanceof phi) {
                phi curPhi = (phi) curStmt ;
                for (label curLabel : curPhi.labels) {
                    block fromBlock = curFunction.labelToBlock.get(curLabel.labelID) ;
                    statement fromBranch = fromBlock.statements.get(fromBlock.statements.size() - 1) ;
                    if (statementIsLive.containsKey(fromBranch)) continue ;
                    statementIsLive.put(fromBranch, true) ;
                    worklist.add(fromBranch) ;
                }
            }

            block curBlock = belongsToBlock.get(curStmt) ;
            blockIsLive.put(curBlock, true) ;
            for (block preBlock : CDG_pred.get(curBlock)) {
                statement condBranch = null ;
                for (statement stmt : preBlock.statements) {
                    if (stmt instanceof branch) {
                        if (((branch) stmt).isConditioned == true) condBranch = stmt;
                        // else statementIsLive.put(stmt, true) ;
                    }
                }
                if (condBranch == null || statementIsLive.containsKey(condBranch)) continue ;
                statementIsLive.put(condBranch, true) ;
                worklist.add(condBranch) ;
            }
        }

        Map<block, Boolean> blockIsLive = new HashMap<>() ;
        for (statement stmt : statementIsLive.keySet()) {
            blockIsLive.put(belongsToBlock.get(stmt), true) ;
        }
        for (block b : curFunction.blocks) {
            if (!blockIsLive.containsKey(b)) continue ;
            for (statement stmt : b.statements) {
                if (stmt instanceof branch) {
                    branch curBranch = (branch) stmt ;
                    block toBlock = curFunction.labelToBlock.get(curBranch.trueBranch.labelID) ;
                    if (blockIsLive.containsKey(toBlock)) statementIsLive.put(curBranch, true) ;
                }
            }
        }
    }

    private void deleteUnmarkedStatement (function curFunction) {
        for (block b : curFunction.blocks) {
            ArrayList<statement> delStatements = new ArrayList<>() ;
            for (statement stmt : b.statements) {
                if (blockIsLive.containsKey(b) && stmt instanceof branch) continue ;
                if (!statementIsLive.containsKey(stmt)) delStatements.add(stmt) ;
            }
            b.statements.removeAll(delStatements) ;
        }
    }

    Map<String, String> nextActivateBlock, preActivateBlock ;
    Map<block, Boolean> blockVisited ;
    private void blockDFS (block curBlock, block preActBlock) {
        blockVisited.put(curBlock, true) ;
        for (block toBlock : curBlock.succ) {
            if (blockVisited.containsKey(toBlock)) continue ;
            if (blockIsLive.containsKey(toBlock)) blockDFS(toBlock, toBlock);
            else blockDFS(toBlock, preActBlock);
        }
        if (!blockIsLive.containsKey(curBlock)) {
            for (block nextBlock : curBlock.succ) {
                if (blockIsLive.containsKey(nextBlock)) {
                    nextActivateBlock.put(curBlock.identifier, nextBlock.identifier) ;
                    break ;
                } else if (nextActivateBlock.containsKey(nextBlock.identifier)) {
                    nextActivateBlock.put(curBlock.identifier, nextActivateBlock.get(nextBlock.identifier)) ;
                    break ;
                }
            }
            preActivateBlock.put(curBlock.identifier, preActBlock.identifier) ;
        }
    }

    private void udpateBlockLabel (function curFunction) {
        nextActivateBlock = new HashMap<>() ;
        preActivateBlock = new HashMap<>() ;
        blockVisited = new HashMap<>() ;
        block entryBlock = curFunction.blocks.get(1) ;
        blockDFS(entryBlock, entryBlock);
        // for (String s : nextActivateBlock.keySet()) System.out.println (s + " " + nextActivateBlock.get(s) + " " + preActivateBlock.get(s)) ;
        for (block curBlock : curFunction.blocks) {
            if (!blockIsLive.containsKey(curBlock)) continue ;
            for (statement stmt : curBlock.statements) {
                if (stmt instanceof branch) {
                    branch curBranch = (branch) stmt ;
                    block toBlock = curFunction.labelToBlock.get(curBranch.trueBranch.labelID) ;
                    if (!blockIsLive.containsKey(toBlock)) {
                        curBranch.trueBranch = new label(nextActivateBlock.get(toBlock.identifier)) ;
                    }
                    if (curBranch.isConditioned) {
                        toBlock = curFunction.labelToBlock.get(curBranch.falseBranch.labelID) ;
                        if (!blockIsLive.containsKey(toBlock)) {
                            curBranch.falseBranch = new label(nextActivateBlock.get(toBlock.identifier)) ;
                        }
                    }
                } else if (stmt instanceof phi) {
                    phi curPhi = (phi) stmt ;
                    for (int i = 0; i < curPhi.labels.size(); i ++) {
                        label curLabel = curPhi.labels.get(i) ;
                        block fromBlock = curFunction.labelToBlock.get(curLabel.labelID) ;
                        if (!blockIsLive.containsKey(fromBlock)) {
                            label newLabel = new label(preActivateBlock.get(fromBlock.identifier)) ;
                            curPhi.labels.set(i, newLabel) ;
                        }
                    }
                }
            }
        }
    }

    private void deleteEmptyBlock (function curFunction) {
        ArrayList<block> delBlocks = new ArrayList<>() ;
        for (block b : curFunction.blocks) {
            if (b.statements.isEmpty()) delBlocks.add(b) ;
        }   
        curFunction.blocks.removeAll(delBlocks) ;
        
        curFunction.getSuccAndPred();
        curFunction.countInst();
    }
}
