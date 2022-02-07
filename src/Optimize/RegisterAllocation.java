package Optimize;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.Stack;

import Assembly.* ;
import Assembly.Inst.* ;
import Assembly.Inst.binaryInst.binaryInstOp;
import Assembly.Operand.Imm;
import Assembly.Operand.PhysicalReg;
import Assembly.Operand.VirtualReg;
import MIR.block;
import MIR.function;

public class RegisterAllocation {
    final int K = 17 ;
    AssemblyGlobalDefine globalDef ;
    AssemblyFunction curFunction ;
    Map<VirtualReg, Set<Inst> > moveList = new HashMap<>() ;
    // Set<Pair<VirtualReg, VirtualReg> > adjSet = new HashSet<>() ;
    Map<VirtualReg, Set<VirtualReg> > adjList = new HashMap<>() ;
    Map<VirtualReg, Integer> degree = new HashMap<>() ;
    Set<VirtualReg> initial, simplifiyWorklist, freezeWorklist, spillWorklist, spilledNodes, coalescedNodes, coloredNodes ;
    Stack<VirtualReg> selectStack = new Stack<>() ;
    Set<Inst> coalescedMoves, constrainedMoves, frozenMoves, worklistMoves, activeMoves ;
    Map<VirtualReg, VirtualReg> alias = new HashMap<>() ;
    Map<VirtualReg, Integer> color ;

    PhysicalReg s0, t3 ;
    public RegisterAllocation (AssemblyGlobalDefine _globalDef) {
        globalDef = _globalDef ;
        t3 = globalDef.phyRegs[28] ;
        s0 = globalDef.phyRegs[8] ;
        analyzeRoot () ;
    }
    private void analyzeRoot () {
        for (AssemblyFunction function : globalDef.functions) {
            curFunction = function ;
            init(function) ;
            analyzeFunction(function);
        }
    }
    private void analyzeFunction (AssemblyFunction curFunction) {
        getSuccAndPred(curFunction);
        getUseAndDef(curFunction);
        livenessAnalysis(curFunction);
        build(curFunction) ;
        makeWorklist();
        do {
            if (!simplifiyWorklist.isEmpty()) simplifiy () ;
            else if (!worklistMoves.isEmpty()) coalesce() ;
            else if (!freezeWorklist.isEmpty()) freeze() ;
            else if (!spillWorklist.isEmpty()) selectSpill();
        } while (!simplifiyWorklist.isEmpty() || !worklistMoves.isEmpty() || !freezeWorklist.isEmpty() || !spillWorklist.isEmpty()) ;
        assignColors() ;
        if (!spilledNodes.isEmpty()) {
            rewriteProgram();
            analyzeFunction(curFunction);
        }
        assignPhyReg() ;
    }
    private void init (AssemblyFunction curFunction) {
        initial = new HashSet<>(); simplifiyWorklist = new HashSet<>() ;
        freezeWorklist = new HashSet<>(); spillWorklist = new HashSet<>() ;
        spilledNodes = new HashSet<>(); coalescedNodes = new HashSet<>(); coloredNodes = new HashSet<>() ;
        coalescedMoves = new HashSet<>(); constrainedMoves = new HashSet<>() ;
        frozenMoves = new HashSet<>(); worklistMoves = new HashSet<>(); activeMoves = new HashSet<>() ;
        for (AssemblyBlock block : curFunction.blocks) {
            for (Inst inst = block.head; inst != null; inst = inst.next) {
                if (inst.rs1 != null && inst.rs1 instanceof VirtualReg) initial.add((VirtualReg) inst.rs1) ;
                if (inst.rs2 != null && inst.rs2 instanceof VirtualReg) initial.add((VirtualReg) inst.rs2) ;
                if (inst.rd != null && inst.rd instanceof VirtualReg) initial.add((VirtualReg) inst.rd) ;
            }
        }
    }
    private void addInstEdge (AssemblyFunction curFunction, Inst from, Inst to) {
        if (curFunction.succ.containsKey(from)) curFunction.succ.get(from).add(to) ;
        else {
            Set<Inst> curSet = new HashSet<>() ;
            curSet.add(to) ;
            curFunction.succ.put(from, curSet) ;
        }
        // curFunction.succ.put(from, to) ;
        if (curFunction.pred.containsKey(to)) curFunction.pred.get(to).add(from) ;
        else {
            Set<Inst> curSet = new HashSet<>() ;
            curSet.add(from) ;
            curFunction.pred.put(to, curSet) ;
        }
        // curFunction.pred.put(to, inst) ;
    }
    private void getSuccAndPred (AssemblyFunction curFunction) {
        curFunction.succ.clear(); curFunction.pred.clear() ;
        for (AssemblyBlock block : curFunction.blocks) {
            for (Inst inst = block.head; inst != null; inst = inst.next) {
                if (inst instanceof bnezInst) {
                    bnezInst bnez = (bnezInst) inst ;
                    Inst toInst = curFunction.labelToBlock.get(bnez.toLabel.labelID).head ;
                    addInstEdge(curFunction, inst, toInst);
                }
                if (inst instanceof jumpInst) {
                    jumpInst jump = (jumpInst) inst ;
                    Inst toInst = curFunction.labelToBlock.get(jump.toLabel.labelID).head ;
                    addInstEdge(curFunction, inst, toInst) ;
                } else {
                    if (inst.next != null) addInstEdge(curFunction, inst, inst.next);
                }
            }
        }
    }
    private void getUseAndDef (AssemblyFunction curFunction) {
        curFunction.use.clear(); curFunction.def.clear();
        for (AssemblyBlock block : curFunction.blocks) {
            for (Inst inst = block.head; inst != null; inst = inst.next) {
                if (inst instanceof binaryInst) {
                    Set<VirtualReg> curSet = new HashSet<>() ;
                    if (inst.rs1 instanceof VirtualReg) curSet.add((VirtualReg) inst.rs1) ;
                    if (inst.rs2 instanceof VirtualReg) curSet.add((VirtualReg) inst.rs2) ;
                    curFunction.use.put(inst, curSet) ;
                    curSet = new HashSet<>() ;
                    if (inst.rd instanceof VirtualReg) curSet.add ((VirtualReg) inst.rd) ;
                    curFunction.def.put(inst, curSet) ;
                } else if (inst instanceof bnezInst) {
                    Set<VirtualReg> curSet = new HashSet<>() ;
                    if (inst.rs1 instanceof VirtualReg) curSet.add((VirtualReg) inst.rs1) ;
                    curFunction.use.put(inst, curSet) ;
                    curFunction.def.put(inst, new HashSet<>()) ;
                } else if (inst instanceof ImmInst || inst instanceof mvInst) {
                    Set<VirtualReg> curSet = new HashSet<>() ;
                    if (inst.rs1 instanceof VirtualReg) curSet.add((VirtualReg) inst.rs1) ;
                    curFunction.use.put(inst, curSet) ;
                    curSet = new HashSet<>() ;
                    if (inst.rd instanceof VirtualReg) curSet.add ((VirtualReg) inst.rd) ;
                    curFunction.def.put(inst, new HashSet<>()) ;
                } else if (inst instanceof laInst) {
                    curFunction.use.put(inst, new HashSet<>()) ;
                    Set<VirtualReg> curSet = new HashSet<>() ;
                    if (inst.rd instanceof VirtualReg) curSet.add ((VirtualReg) inst.rd) ;
                    curFunction.def.put(inst, new HashSet<>()) ;
                } else if (inst instanceof liInst) {
                    curFunction.use.put(inst, new HashSet<>()) ;
                    Set<VirtualReg> curSet = new HashSet<>() ;
                    if (inst.rd instanceof VirtualReg) curSet.add ((VirtualReg) inst.rd) ;
                    curFunction.def.put(inst, curSet) ;
                } else if (inst instanceof loadInst) {
                    loadInst load = (loadInst) inst ;
                    Set<VirtualReg> curSet = new HashSet<>() ;
                    if (load.symbol == null) {
                        if (load.rs2 instanceof VirtualReg) curSet.add((VirtualReg) load.rs2) ;
                    }
                    curFunction.use.put(inst, curSet) ;
                    curSet = new HashSet<>() ;
                    if (load.rs1 instanceof VirtualReg) curSet.add((VirtualReg) load.rs1) ;
                    curFunction.def.put(inst, curSet) ;
                } else if (inst instanceof storeInst) {
                    Set<VirtualReg> curSet = new HashSet<>() ;
                    if (inst.rs1 instanceof VirtualReg) curSet.add ((VirtualReg) inst.rs1) ;
                    if (inst.rs2 instanceof VirtualReg) curSet.add ((VirtualReg) inst.rs2) ;
                    curFunction.use.put(inst, curSet) ;
                    curFunction.def.put(inst, new HashSet<>()) ;
                }
            }
        }
    }
    private void livenessAnalysis (AssemblyFunction curFunction) {
        for (AssemblyBlock block : curFunction.blocks) {
            for (Inst inst = block.head; inst != null; inst = inst.next) {
                curFunction.in.put(inst, new HashSet<>()) ;
                curFunction.out.put(inst, new HashSet<>()) ;
            }
        }
        while (true) {
            boolean hasUpdated = false ;
            for (AssemblyBlock block : curFunction.blocks) {
                for (Inst inst = block.head; inst != null; inst = inst.next) {
                    Set<VirtualReg> preIn = new HashSet<>(curFunction.in.get(inst)) ;
                    Set<VirtualReg> preOut = new HashSet<>(curFunction.out.get(inst)) ;
                    Set<VirtualReg> in = curFunction.in.get(inst), out = curFunction.out.get(inst) ;
                    in.clear(); in.addAll(out) ;
                    in.removeAll(curFunction.def.get(inst)) ;
                    in.addAll(curFunction.use.get(inst)) ;
                    out.clear() ;
                    for (Inst succInst : curFunction.succ.get(inst)) {
                        out.addAll(curFunction.in.get(succInst)) ;
                    }
                    if (preIn.size() != in.size() || preOut.size() != out.size()) hasUpdated = true ;
                    // if (!preIn.equals(in) || !preOut.equals(out)) hasUpdated = true ;
                }
            }
            if (!hasUpdated) break ;
        }
    }
    private void addEdge (VirtualReg reg1, VirtualReg reg2) {
        if ((!adjList.containsKey(reg1) || !adjList.get(reg1).contains(reg2)) && reg1 != reg2) {
            // adjSet.add(new Pair<VirtualReg, VirtualReg>(reg1, reg2)) ;
            // adjSet.add(new Pair<VirtualReg, VirtualReg>(reg2, reg1)) ;
            if (!adjList.containsKey(reg1)) {
                adjList.put(reg1, new HashSet<>()) ;
                degree.put(reg1, 1) ;
            }
            adjList.get(reg1).add(reg2) ;
            Integer deg = degree.get(reg1); deg ++ ;
            degree.replace(reg1, deg) ;
            if (!adjList.containsKey(reg2)) {
                adjList.put(reg2, new HashSet<>()) ;
                degree.put(reg2, 1) ;
            }
            adjList.get(reg2).add(reg1) ;
            deg = degree.get(reg2); deg ++ ;
            degree.replace(reg2, deg) ;
        }
    }
    private void build (AssemblyFunction curFunction) {
        for (AssemblyBlock block : curFunction.blocks) {
            Set<VirtualReg> live = new HashSet<>(curFunction.out.get(block.tail)) ;
            for (Inst inst = block.tail; inst != null; inst = inst.prev) {
                Set<VirtualReg> def = curFunction.def.get(inst) ;
                Set<VirtualReg> use = curFunction.use.get(inst) ;
                if (inst instanceof mvInst) {
                    live.removeAll(use) ;
                    Set<VirtualReg> defAndUse = new HashSet<>(def) ;
                    defAndUse.addAll(use) ;
                    for (VirtualReg reg : defAndUse) {
                        if (!moveList.containsKey(reg)) moveList.put(reg, new HashSet<>()) ;
                        moveList.get(reg).add(inst) ;
                    }
                    worklistMoves.add(inst) ;
                }
                live.addAll(def) ;
                for (VirtualReg d : def)
                    for (VirtualReg l : live) {
                        addEdge (l, d) ;
                    }
            }
        }
    }
    private Set<Inst> nodeMoves (VirtualReg reg) {
        Set<Inst> tmp = new HashSet<>(activeMoves) ;
        tmp.addAll(worklistMoves) ;
        tmp.retainAll(moveList.get(reg)) ;
        return tmp ;
    }
    private boolean moveRelated (VirtualReg reg) {
        return !nodeMoves(reg).isEmpty() ;
    }
    private void makeWorklist () {
        for (VirtualReg reg : initial) {
            initial.remove(reg) ;
            if (degree.get(reg) >= K) spillWorklist.add(reg) ;
            else if (moveRelated(reg)) freezeWorklist.add(reg) ;
            else simplifiyWorklist.add(reg) ;
        }
    }
    private Set<VirtualReg> adjacent (VirtualReg reg) {
        Set<VirtualReg> tmp1 = new HashSet<>(adjList.get(reg)), tmp2 = new HashSet<>(selectStack) ;
        tmp2.addAll(coalescedNodes) ;
        tmp1.removeAll(tmp2) ;
        return tmp1 ;
    }
    private void enableMoves (Set<VirtualReg> nodes) {
        for (VirtualReg nReg : nodes) {
            for (Inst inst : nodeMoves(nReg)) {
                if (activeMoves.contains(inst)) {
                    activeMoves.remove(inst) ;
                    worklistMoves.add(inst) ;
                }
            }
        }
    }
    private void decrementDegree (VirtualReg reg) {
        int deg = degree.get(reg) ;
        degree.replace(reg, deg - 1) ;
        if (deg == K) {
            Set<VirtualReg> tmp = adjacent(reg); tmp.add(reg) ;
            enableMoves(tmp);
            spillWorklist.remove(reg) ;
            if (moveRelated(reg)) freezeWorklist.add(reg) ;
            else simplifiyWorklist.add(reg) ;
        }
    }
    private void simplifiy () {
        VirtualReg reg = null ;
        for (VirtualReg tmpReg : simplifiyWorklist) {
            reg = tmpReg; break ;
        }
        if (reg == null) return ;
        simplifiyWorklist.remove(reg) ;
        selectStack.push(reg) ;
        for (VirtualReg regAdj : adjacent(reg)) decrementDegree (regAdj) ;
    }
    private void addWorkList (VirtualReg reg) {
        if (!moveRelated(reg) && degree.get(reg) < K) {
            freezeWorklist.remove(reg) ;
            simplifiyWorklist.add(reg) ;
        }
    }
    private boolean conservative (Set<VirtualReg> nodes) {
        int k = 0 ;
        for (VirtualReg reg : nodes) {
            if (degree.get(reg) >= K) k ++ ;
        }
        return k < K ;
    }
    private VirtualReg getAlias (VirtualReg n) {
        if (coalescedNodes.contains(n)) return getAlias(alias.get(n)) ;
        return n ;
    }
    private boolean OK (VirtualReg t, VirtualReg r) {
        return degree.get(t) < K || (adjList.containsKey(t) && adjList.get(t).contains(r)) ;
    }
    private void combine (VirtualReg u, VirtualReg v) {
        if (freezeWorklist.contains(v)) {
            freezeWorklist.remove(v) ;
        } else {
            spillWorklist.remove(v) ;
        }
        coalescedNodes.add(v) ;
        alias.put(v, u) ;
        moveList.get(u).addAll(moveList.get(v)) ;
        Set<VirtualReg> tmp = new HashSet<>(); tmp.add(v) ;
        enableMoves(tmp);
        for (VirtualReg t : adjacent(v)) {
            addEdge(t, u);
            decrementDegree(t);
        }
        if (degree.get(u) >= K && freezeWorklist.contains(u)) {
            freezeWorklist.remove(u) ;
            spillWorklist.add(u) ;
        }
    }
    private void coalesce () {
        mvInst mvinst = null ;
        for (Inst tmpInst : worklistMoves) {
            mvinst = (mvInst) tmpInst; break ;
        }
        if (mvinst == null) return ;
        VirtualReg u = getAlias((VirtualReg) mvinst.rs1), v = getAlias((VirtualReg) mvinst.rd) ;
        worklistMoves.remove(mvinst) ;
        if (u == v) {
            coalescedMoves.add(mvinst) ;
            addWorkList(u);
        } else if (adjList.containsKey(u) && adjList.get(u).contains(v)) {
            constrainedMoves.add(mvinst) ;
            addWorkList(u); addWorkList(v);
        } else {
            Set<VirtualReg> tmp = new HashSet<>(adjacent(u)) ;
            tmp.addAll(adjacent(v)) ;
            if (conservative(tmp)) {
                coalescedMoves.add(mvinst) ;
                combine(u, v);
                addWorkList(u); 
            } else {
                activeMoves.add(mvinst) ;
            }
        }
    }
    private void freeze () {
        VirtualReg reg = null ;
        for (VirtualReg tmpReg : freezeWorklist) {
            reg = tmpReg; break ;
        }
        if (reg == null) return ;
        freezeWorklist.remove(reg) ;
        simplifiyWorklist.add(reg) ;
        freezeMoves (reg) ;
    }
    private void freezeMoves (VirtualReg u) {
        for (Inst inst : nodeMoves(u)) {
            mvInst mvinst = (mvInst) inst ;
            VirtualReg x = (VirtualReg) mvinst.rs1, y = (VirtualReg) mvinst.rd, v = null ;
            if (getAlias(y) == getAlias(u)) v = getAlias(x) ;
            else v = getAlias(y) ;
            activeMoves.remove(mvinst) ;
            frozenMoves.add(mvinst) ;
            if (nodeMoves(v).isEmpty() && degree.get(v) < K) {
                freezeWorklist.remove(v) ;
                simplifiyWorklist.add(v) ;
            }
        }
    }
    private void selectSpill () {
        VirtualReg m = null ;
        for (VirtualReg tmp : spillWorklist) {
            m = tmp; break ;
        }
        if (m == null) return ;
        spillWorklist.remove(m) ;
        simplifiyWorklist.add(m) ;
        freezeMoves(m);
    }
    public void assignColors () {
        while (!selectStack.isEmpty()) {
            VirtualReg n = selectStack.pop() ;
            Set<Integer> okColors = new HashSet<>() ;
            for (int i = 0; i < K; i ++) okColors.add(i) ;
            for (VirtualReg w : adjList.get(n)) {
                if (coloredNodes.contains(getAlias(w)))
                    okColors.remove(color.get(getAlias(w))) ;
            }
            if (okColors.isEmpty()) spilledNodes.add(n) ;
            else {
                coloredNodes.add(n) ;
                int c = 0 ;
                for (Integer tmp : okColors) {
                    c = tmp; break ;
                }
                color.put(n, c) ;
            }
        }
        for (VirtualReg n : coalescedNodes) {
            color.put(n, color.get(getAlias(n))) ;
        }
    }
    private void rewriteProgram () {
        Set<VirtualReg> newTemps = new HashSet<>() ;
        for (VirtualReg reg : spilledNodes) {
            curFunction.offset += 4 ;
            curFunction.regOffset.put(reg, curFunction.offset) ;
        }
        for (AssemblyBlock block : curFunction.blocks) {
            for (Inst inst = block.head; inst != null; inst = inst.next) {
                if (inst.rs1 != null && inst.rs1 instanceof VirtualReg && spilledNodes.contains(inst.rs1)) {
                    VirtualReg reg = (VirtualReg) inst.rs1 ;
                    VirtualReg tmpReg = new VirtualReg(curFunction.curRegID ++, reg.size) ;
                    int imm = -curFunction.regOffset.get(reg) ;
                    block.insert_before(inst, new liInst(t3, new Imm(imm)));
                    block.insert_before(inst, new binaryInst(binaryInstOp.add, s0, t3, t3));
                    block.insert_before(inst, new loadInst(reg.size, tmpReg, new Imm(0), t3));
                    newTemps.add(tmpReg) ;
                    inst.rs1 = tmpReg ;
                }
                if (inst.rs2 != null && inst.rs2 instanceof VirtualReg && spilledNodes.contains(inst.rs2)) {
                    VirtualReg reg = (VirtualReg) inst.rs2 ;
                    VirtualReg tmpReg = new VirtualReg(curFunction.curRegID ++, reg.size) ;
                    int imm = -curFunction.regOffset.get(reg) ;
                    block.insert_before(inst, new liInst(t3, new Imm(imm)));
                    block.insert_before(inst, new binaryInst(binaryInstOp.add, s0, t3, t3));
                    block.insert_before(inst, new loadInst(reg.size, tmpReg, new Imm(0), t3));
                    newTemps.add(tmpReg) ;
                    inst.rs2 = tmpReg ;
                }

                // Set<VirtualReg> use = curFunction.use.get(inst) ;
                // for (VirtualReg reg : use) {
                //     if (spilledNodes.contains(reg)) {
                //         VirtualReg tmpReg = new VirtualReg(curFunction.curRegID ++, reg.size) ;
                //         int imm = -curFunction.regOffset.get(reg) ;
                //         block.insert_before(inst, new liInst(t3, new Imm(imm)));
                //         block.insert_before(inst, new binaryInst(binaryInstOp.add, s0, t3, t3));
                //         block.insert_before(inst, new loadInst(reg.size, tmpReg, new Imm(0), t3));
                //         newTemps.add(tmpReg) ;
                //     }
                // }
                if (inst.rd != null && inst.rd instanceof VirtualReg && spilledNodes.contains(inst.rd)) {
                    VirtualReg reg = (VirtualReg) inst.rd ;
                    VirtualReg tmpReg = new VirtualReg(curFunction.curRegID ++, reg.size) ;
                    int imm = -curFunction.regOffset.get(reg) ;
                    block.insert_after(inst, new storeInst(reg.size, tmpReg, new Imm(0), t3));
                    block.insert_after(inst, new binaryInst(binaryInstOp.add, s0, t3, t3));
                    block.insert_after(inst, new liInst(t3, new Imm(imm)));
                    newTemps.add(tmpReg) ;
                    inst.rd = tmpReg ;
                }
                // Set<VirtualReg> def = curFunction.def.get(inst) ;
                // for (VirtualReg reg : def) {
                //     if (spilledNodes.contains(reg)) {
                //         VirtualReg tmpReg = new VirtualReg(curFunction.curRegID ++, reg.size) ;
                //         int imm = -curFunction.regOffset.get(reg) ;
                //         block.insert_after(inst, new storeInst(reg.size, Preg, new Imm(0), t3));
                //         block.insert_after(inst, new binaryInst(binaryInstOp.add, s0, t3, t3));
                //         block.insert_after(inst, new liInst(t3, new Imm(imm)));
                //         newTemps.add(tmpReg) ;
                //     }
                // }
            }
        }
        spilledNodes.clear() ;
        initial = new HashSet<>(coloredNodes) ;
        initial.addAll(coalescedNodes); initial.addAll(newTemps) ;
        coloredNodes.clear(); coalescedNodes.clear(); 
    }
    private PhysicalReg colorToPhyReg (int c) {
        if (c < 10) return globalDef.phyRegs[18 + c] ;
        else if (c >= 10 && c <= 12) return globalDef.phyRegs[c - 5] ;
        else return globalDef.phyRegs[c + 15] ;
    }
    private void assignPhyReg () {
        for (AssemblyFunction function : globalDef.functions) {
            for (AssemblyBlock block : function.blocks) {
                for (Inst inst = block.head; inst != null; inst = inst.next) {
                    if (inst.rs1 != null && inst.rs1 instanceof VirtualReg) {
                        inst.rs1 = colorToPhyReg(color.get(inst.rs1)) ;
                    }
                    if (inst.rs2 != null && inst.rs2 instanceof VirtualReg) {
                        inst.rs2 = colorToPhyReg(color.get(inst.rs2)) ;
                    }
                    if (inst.rd != null && inst.rd instanceof VirtualReg) {
                        inst.rd = colorToPhyReg(color.get(inst.rd)) ;
                    }
                }
            }
        }
    }
}
