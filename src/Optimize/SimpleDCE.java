package Optimize;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

import MIR.block;
import MIR.function;
import MIR.globalDefine;
import MIR.register;
import MIR.statement;

public class SimpleDCE {
    private globalDefine globalDefine ;
    public SimpleDCE (globalDefine _globalDefine) {
        globalDefine = _globalDefine ;
        DCE () ;
    }
    private void DCE () {
        for (function curFunc : globalDefine.functions) {
            DCE (curFunc) ;
        }
    }
    private void DCE (function curFunc) {
        Map<register, Set<statement> > varUseStmt = new HashMap<>() ;
        Map<register, Set<statement> > varDefStmt = new HashMap<>() ;
        Set<register> regs = new HashSet<>() ;
        Map<statement, block> atBlock = new HashMap<>() ;
        for (block curBlock : curFunc.blocks)
            for (statement curStmt : curBlock.statements) {
                atBlock.put(curStmt, curBlock) ;
                Set<register> useVars = curStmt.getUseVar() ;
                Set<register> defVars = curStmt.getDefVar() ;
                regs.addAll(useVars); regs.addAll(defVars) ;
            }
        for (register reg : regs) {
            varUseStmt.put(reg, new HashSet<>()) ;
            varDefStmt.put(reg, new HashSet<>()) ;
        }
        for (block curBlock : curFunc.blocks)
            for (statement curStmt : curBlock.statements) {
                atBlock.put(curStmt, curBlock) ;
                Set<register> useVars = curStmt.getUseVar() ;
                Set<register> defVars = curStmt.getDefVar() ;
                for (register reg : useVars) varUseStmt.get(reg).add(curStmt) ;
                for (register reg : defVars) varDefStmt.get(reg).add(curStmt) ;
            }
        
        Queue<register> W = new LinkedList<>(regs) ;
        while (!W.isEmpty()) {
            register v = W.poll() ;
            if (varUseStmt.get(v).isEmpty()) {
                for (statement defStmt : varDefStmt.get(v)) {
                    block b = atBlock.get(defStmt) ;
                    b.statements.remove(defStmt) ;
                    for (register reg : defStmt.getUseVar()) {
                        varUseStmt.get(reg).remove(defStmt) ;
                        W.add(reg) ;
                    }
                }
            }
        }
    }
}