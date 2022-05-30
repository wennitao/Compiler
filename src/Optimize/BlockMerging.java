package Optimize;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import MIR.* ;
public class BlockMerging {
    globalDefine globalDefine ;
    public BlockMerging (globalDefine _GlobalDefine) {
        globalDefine = _GlobalDefine ;
    }
    public void blockMerging () {
        for (function curFunction : globalDefine.functions) {
            if (curFunction.isBuiltin) continue ;
            blockMerging(curFunction) ;
        }
    }
    ArrayList<block> deleteBlocks ;
    Map<String, String> updatePhi ;
    public void blockMerging (function curFunction) {
        visit = new HashMap<>() ;
        next = new HashMap<>() ;
        deg = new HashMap<>() ;
        deleteBlocks = new ArrayList<>() ;
        updatePhi = new HashMap<>() ;
        for (block b : curFunction.blocks) deg.put(b, 0) ;
        DFS (curFunction.blocks.get(0)) ;
        for (block b : curFunction.blocks) {
            if (deg.get(b) == 0) mergeBlocks (curFunction, b) ;
        }
        curFunction.blocks.removeAll(deleteBlocks) ;
        for (block b : curFunction.blocks) {
            for (statement stmt : b.statements) {
                if (!(stmt instanceof phi)) continue ;
                phi curPhi = (phi) stmt ;
                for (int i = 0; i < curPhi.labels.size(); i ++) {
                    label curLabel = curPhi.labels.get(i) ;
                    if (updatePhi.containsKey(curLabel.labelID)) curPhi.labels.set(i, new label(updatePhi.get(curLabel.labelID))) ;
                }
            }
        }

        curFunction.getSuccAndPred();
        curFunction.countInst();
    }
    Map<block, Boolean> visit ;
    Map<block, block> next ;
    Map<block, Integer> deg ;
    private void addEdge (block u, block v) {
        next.put(u, v) ;
        int tmp = deg.get(v) ;
        deg.put(v, tmp + 1) ;
    }
    private void DFS (block b) {
        visit.put(b, true) ;
        boolean flag = b.succ.size() == 1 && b.pred.size() == 1 ;
        for (block to : b.succ) {
            if (to.pred.size() == 1 && to.succ.size() == 1 && flag)
                addEdge(b, to);
            if (!visit.containsKey(to)) DFS (to) ;
        }
    }
    private void mergeBlocks (function curFunction, block b) {
        ArrayList<block> blocks = new ArrayList<>() ;
        block cur = b ;
        blocks.add(b) ;
        while (next.containsKey(cur)) {
            cur = next.get(cur) ;
            blocks.add(cur) ;
        }
        if (blocks.size() == 1) return ;
        b.statements.remove(b.statements.size() - 1) ;
        for (int i = 1; i < blocks.size(); i ++) {
            block curBlock = blocks.get(i) ;
            for (statement stmt : curBlock.statements) {
                if (stmt instanceof branch && i != blocks.size() - 1) continue ;
                b.statements.add(stmt) ;
            }
        }
        updatePhi.put (blocks.get(blocks.size() - 1).identifier, b.identifier) ;
        for (int i = 1; i < blocks.size(); i ++)
            deleteBlocks.add(blocks.get(i)) ;

        // if (blocks.get(blocks.size() - 1) == curFunction.returnBlock) curFunction.returnBlock = b ;
    }
}
