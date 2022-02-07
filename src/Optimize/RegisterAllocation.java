package Optimize;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.Stack;

import org.antlr.v4.runtime.misc.Pair;

import Assembly.* ;
import Assembly.Inst.* ;
import Assembly.Inst.binaryInst.binaryInstOp;
import Assembly.Operand.Imm;
import Assembly.Operand.PhysicalReg;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;

public class RegisterAllocation {
    final int K = 17 ;
    AssemblyGlobalDefine globalDef ;
    PhysicalReg phyRegs[] ;
    PhysicalReg zero, ra, sp, a0, s0 ;
    PhysicalReg t0, t1, t2, t3 ;
    // AssemblyFunction curFunction ;
    Map<Reg, Set<Inst> > moveList = new HashMap<>() ;
    Set<Pair<Reg, Reg> > adjSet = new HashSet<>() ;
    Map<Reg, Set<Reg> > adjList = new HashMap<>() ;
    Map<Reg, Integer> degree = new HashMap<>() ;
    Set<Reg> precolored = new HashSet<>() ;
    Set<Reg> initial, simplifiyWorklist, freezeWorklist, spillWorklist, spilledNodes, coalescedNodes, coloredNodes ;
    Stack<Reg> selectStack = new Stack<>() ;
    Set<Inst> coalescedMoves, constrainedMoves, frozenMoves, worklistMoves, activeMoves ;
    Map<Reg, Reg> alias = new HashMap<>() ;
    Set<Reg> newRegs = new HashSet<>() ;
    Map<Reg, Integer> color = new HashMap<>() ;

    public RegisterAllocation (AssemblyGlobalDefine _globalDef) {
        globalDef = _globalDef ;
        init_phyRegs();
        analyzeRoot () ;
    }
    private void init_phyRegs () {
        phyRegs = globalDef.phyRegs ;
        zero = phyRegs[0] ;
        ra = phyRegs[1] ;
        sp = phyRegs[2] ;
        a0 = phyRegs[10] ;
        s0 = phyRegs[8] ;
        t0 = phyRegs[5] ;
        t1 = phyRegs[6] ;
        t2 = phyRegs[7] ;
        t3 = phyRegs[28] ;
        for (int i = 0; i < 32; i ++) {
            precolored.add(phyRegs[i]) ;
            color.put(phyRegs[i], i) ;
        }
    }
    private void analyzeRoot () {
        for (AssemblyFunction function : globalDef.functions) {
            // curFunction = function ;
            init(function) ;
            analyzeFunction(function);
        }
        assignPhyReg() ;
        functionStackInst () ;
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
            rewriteProgram(curFunction);
            analyzeFunction(curFunction);
        }
    }
    private void init (AssemblyFunction curFunction) {
        initial = new HashSet<>(); simplifiyWorklist = new HashSet<>() ;
        freezeWorklist = new HashSet<>(); spillWorklist = new HashSet<>() ;
        spilledNodes = new HashSet<>(); coalescedNodes = new HashSet<>(); coloredNodes = new HashSet<>() ;
        coalescedMoves = new HashSet<>(); constrainedMoves = new HashSet<>() ;
        frozenMoves = new HashSet<>(); worklistMoves = new HashSet<>(); activeMoves = new HashSet<>() ;
        for (AssemblyBlock block : curFunction.blocks) {
            for (Inst inst = block.head; inst != null; inst = inst.next) {
                if (inst.rs1 != null) {
                    if (inst.rs1 instanceof VirtualReg) initial.add(inst.rs1) ;
                    degree.put(inst.rs1, 0) ;
                }
                if (inst.rs2 != null) {
                    if (inst.rs2 instanceof VirtualReg) initial.add(inst.rs2) ;
                    degree.put(inst.rs2, 0) ;
                }
                if (inst.rd != null) {
                    if (inst.rd instanceof VirtualReg) initial.add(inst.rd) ;
                    degree.put(inst.rd, 0) ;
                }
            }
        }
    }
    private void addInstEdge (AssemblyFunction curFunction, Inst from, Inst to) {
        // if (curFunction.succ.containsKey(from)) curFunction.succ.get(from).add(to) ;
        // else {
        //     Set<Inst> curSet = new HashSet<>() ;
        //     curSet.add(to) ;
        //     curFunction.succ.put(from, curSet) ;
        // }
        curFunction.succ.get(from).add(to) ;
        // if (curFunction.pred.containsKey(to)) curFunction.pred.get(to).add(from) ;
        // else {
        //     Set<Inst> curSet = new HashSet<>() ;
        //     curSet.add(from) ;
        //     curFunction.pred.put(to, curSet) ;
        // }
        curFunction.pred.get(to).add(from) ;
    }
    private void getSuccAndPred (AssemblyFunction curFunction) {
        curFunction.succ.clear(); curFunction.pred.clear() ;
        for (AssemblyBlock block : curFunction.blocks) {
            for (Inst inst = block.head; inst != null; inst = inst.next) {
                curFunction.succ.put(inst, new HashSet<>()) ;
                curFunction.pred.put(inst, new HashSet<>()) ;
            }
        }
        for (AssemblyBlock block : curFunction.blocks) {
            for (Inst inst = block.head; inst != null; inst = inst.next) {
                if (inst instanceof bnezInst) {
                    bnezInst bnez = (bnezInst) inst ;
                    Inst toInst = curFunction.labelToBlock.get(bnez.toLabel.labelID).head ;
                    if (toInst != null) addInstEdge(curFunction, inst, toInst);
                }
                if (inst instanceof jumpInst) {
                    jumpInst jump = (jumpInst) inst ;
                    Inst toInst = curFunction.labelToBlock.get(jump.toLabel.labelID).head ;
                    if (toInst != null) addInstEdge(curFunction, inst, toInst) ;
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
                    Set<Reg> curSet = new HashSet<>() ;
                    curSet.add(inst.rs1); curSet.add(inst.rs2) ;
                    // if (inst.rs1 instanceof VirtualReg) curSet.add((VirtualReg) inst.rs1) ;
                    // if (inst.rs2 instanceof VirtualReg) curSet.add((VirtualReg) inst.rs2) ;
                    curFunction.use.put(inst, curSet) ;
                    curSet = new HashSet<>() ;
                    curSet.add (inst.rd) ;
                    // if (inst.rd instanceof VirtualReg) curSet.add ((VirtualReg) inst.rd) ;
                    curFunction.def.put(inst, curSet) ;
                } else if (inst instanceof bnezInst) {
                    Set<Reg> curSet = new HashSet<>() ;
                    curSet.add(inst.rs1) ;
                    // if (inst.rs1 instanceof VirtualReg) curSet.add((VirtualReg) inst.rs1) ;
                    curFunction.use.put(inst, curSet) ;
                    curFunction.def.put(inst, new HashSet<>()) ;
                } else if (inst instanceof ImmInst || inst instanceof mvInst) {
                    Set<Reg> curSet = new HashSet<>() ;
                    curSet.add(inst.rs1) ;
                    // if (inst.rs1 instanceof VirtualReg) curSet.add((VirtualReg) inst.rs1) ;
                    curFunction.use.put(inst, curSet) ;
                    curSet = new HashSet<>() ;
                    curSet.add(inst.rd) ;
                    // if (inst.rd instanceof VirtualReg) curSet.add ((VirtualReg) inst.rd) ;
                    curFunction.def.put(inst, new HashSet<>()) ;
                } else if (inst instanceof laInst) {
                    curFunction.use.put(inst, new HashSet<>()) ;
                    Set<Reg> curSet = new HashSet<>() ;
                    curSet.add(inst.rd) ;
                    // if (inst.rd instanceof VirtualReg) curSet.add ((VirtualReg) inst.rd) ;
                    curFunction.def.put(inst, new HashSet<>()) ;
                } else if (inst instanceof liInst) {
                    curFunction.use.put(inst, new HashSet<>()) ;
                    Set<Reg> curSet = new HashSet<>() ;
                    curSet.add(inst.rd) ;
                    // if (inst.rd instanceof VirtualReg) curSet.add ((VirtualReg) inst.rd) ;
                    curFunction.def.put(inst, curSet) ;
                } else if (inst instanceof loadInst) {
                    loadInst load = (loadInst) inst ;
                    Set<Reg> curSet = new HashSet<>() ;
                    if (load.symbol == null) {
                        curSet.add(load.rs2) ;
                        // if (load.rs2 instanceof VirtualReg) curSet.add((VirtualReg) load.rs2) ;
                    }
                    curFunction.use.put(inst, curSet) ;
                    curSet = new HashSet<>() ;
                    curSet.add(load.rs1) ;
                    // if (load.rs1 instanceof VirtualReg) curSet.add((VirtualReg) load.rs1) ;
                    curFunction.def.put(inst, curSet) ;
                } else if (inst instanceof storeInst) {
                    Set<Reg> curSet = new HashSet<>() ;
                    curSet.add(inst.rs1); curSet.add (inst.rs2) ;
                    // if (inst.rs1 instanceof VirtualReg) curSet.add ((VirtualReg) inst.rs1) ;
                    // if (inst.rs2 instanceof VirtualReg) curSet.add ((VirtualReg) inst.rs2) ;
                    curFunction.use.put(inst, curSet) ;
                    curFunction.def.put(inst, new HashSet<>()) ;
                } else {
                    curFunction.use.put(inst, new HashSet<>()) ;
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
                for (Inst inst = block.tail; inst != null; inst = inst.prev) {
                    Set<Reg> preIn = new HashSet<>(curFunction.in.get(inst)) ;
                    Set<Reg> preOut = new HashSet<>(curFunction.out.get(inst)) ;
                    Set<Reg> in = curFunction.in.get(inst), out = curFunction.out.get(inst) ;
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
    private void addEdge (Reg reg1, Reg reg2) {
        if (!adjSet.contains(new Pair<Reg, Reg>(reg1, reg2)) && reg1 != reg2) {
            adjSet.add(new Pair<Reg, Reg>(reg1, reg2)) ;
            adjSet.add(new Pair<Reg, Reg>(reg2, reg1)) ;
            
            if (reg1 instanceof VirtualReg) {
                if (!adjList.containsKey(reg1)) {
                    adjList.put(reg1, new HashSet<>()) ;
                    degree.put(reg1, 1) ;
                }
                adjList.get(reg1).add(reg2) ;
                Integer deg = degree.get(reg1); deg ++ ;
                degree.replace(reg1, deg) ;
            }

            if (reg2 instanceof VirtualReg) {
                if (!adjList.containsKey(reg2)) {
                    adjList.put(reg2, new HashSet<>()) ;
                    degree.put(reg2, 1) ;
                }
                adjList.get(reg2).add(reg1) ;
                Integer deg = degree.get(reg2); deg ++ ;
                degree.replace(reg2, deg) ;
            }
        }
    }
    private void build (AssemblyFunction curFunction) {
        for (AssemblyBlock block : curFunction.blocks) {
            if (block.head == null && block.tail == null) continue ;
            Set<Reg> live = new HashSet<>(curFunction.out.get(block.tail)) ;
            for (Inst inst = block.tail; inst != null; inst = inst.prev) {
                Set<Reg> def = curFunction.def.get(inst) ;
                Set<Reg> use = curFunction.use.get(inst) ;
                if (inst instanceof mvInst) {
                    live.removeAll(use) ;
                    Set<Reg> defAndUse = new HashSet<>(def) ;
                    defAndUse.addAll(use) ;
                    for (Reg reg : defAndUse) {
                        if (!moveList.containsKey(reg)) moveList.put(reg, new HashSet<>()) ;
                        moveList.get(reg).add(inst) ;
                    }
                    worklistMoves.add(inst) ;
                }
                live.addAll(def) ;
                for (Reg d : def)
                    for (Reg l : live) {
                        addEdge (l, d) ;
                    }
            }
        }
    }
    private Set<Inst> nodeMoves (Reg reg) {
        Set<Inst> tmp = new HashSet<>(activeMoves) ;
        tmp.addAll(worklistMoves) ;
        if (!moveList.containsKey(reg)) return new HashSet<>() ;
        tmp.retainAll(moveList.get(reg)) ;
        return tmp ;
    }
    private boolean moveRelated (Reg reg) {
        return !nodeMoves(reg).isEmpty() ;
    }
    private void makeWorklist () {
        for (Reg reg : initial) {
            // initial.remove(reg) ;
            if (degree.get(reg) >= K) spillWorklist.add(reg) ;
            else if (moveRelated(reg)) freezeWorklist.add(reg) ;
            else simplifiyWorklist.add(reg) ;
        }
        initial.clear() ;
    }
    private Set<Reg> adjacent (Reg reg) {
        if (!adjList.containsKey(reg)) return new HashSet<>() ;
        Set<Reg> tmp1 = new HashSet<>(adjList.get(reg)), tmp2 = new HashSet<>(selectStack) ;
        tmp2.addAll(coalescedNodes) ;
        tmp1.removeAll(tmp2) ;
        return tmp1 ;
    }
    private void enableMoves (Set<Reg> nodes) {
        for (Reg nReg : nodes) {
            for (Inst inst : nodeMoves(nReg)) {
                if (activeMoves.contains(inst)) {
                    activeMoves.remove(inst) ;
                    worklistMoves.add(inst) ;
                }
            }
        }
    }
    private void decrementDegree (Reg reg) {
        int deg = degree.get(reg) ;
        degree.replace(reg, deg - 1) ;
        if (deg == K) {
            Set<Reg> tmp = adjacent(reg); tmp.add(reg) ;
            enableMoves(tmp);
            spillWorklist.remove(reg) ;
            if (moveRelated(reg)) freezeWorklist.add(reg) ;
            else simplifiyWorklist.add(reg) ;
        }
    }
    private void simplifiy () {
        Reg reg = null ;
        for (Reg tmpReg : simplifiyWorklist) {
            reg = tmpReg; break ;
        }
        if (reg == null) return ;
        simplifiyWorklist.remove(reg) ;
        selectStack.push(reg) ;
        for (Reg regAdj : adjacent(reg)) decrementDegree (regAdj) ;
    }
    private void addWorkList (Reg reg) {
        if (reg instanceof VirtualReg && !moveRelated(reg) && degree.get(reg) < K) {
            freezeWorklist.remove(reg) ;
            simplifiyWorklist.add(reg) ;
        }
    }
    private boolean conservative (Set<Reg> nodes) {
        int k = 0 ;
        for (Reg reg : nodes) {
            if (degree.get(reg) >= K) k ++ ;
        }
        return k < K ;
    }
    private Reg getAlias (Reg n) {
        if (coalescedNodes.contains(n)) return getAlias(alias.get(n)) ;
        return n ;
    }
    private boolean OK (Reg t, Reg r) {
        return degree.get(t) < K || t instanceof PhysicalReg || adjSet.contains(new Pair<Reg, Reg>(t, r)) ;
    }
    private void combine (Reg u, Reg v) {
        if (freezeWorklist.contains(v)) {
            freezeWorklist.remove(v) ;
        } else {
            spillWorklist.remove(v) ;
        }
        coalescedNodes.add(v) ;
        alias.put(v, u) ;
        Set<Inst> tmp = new HashSet<>() ;
        if (moveList.containsKey(v)) tmp.addAll(moveList.get(v)) ;
        if (moveList.containsKey(u)) moveList.get(u).addAll(tmp) ;
        else moveList.put (u, tmp) ;
        // moveList.get(u).addAll(moveList.get(v)) ;
        Set<Reg> tmp2 = new HashSet<>(); tmp2.add(v) ;
        enableMoves(tmp2);
        for (Reg t : adjacent(v)) {
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
        Reg x = getAlias(mvinst.rs1), y = getAlias(mvinst.rd), u, v ;
        if (y instanceof PhysicalReg) {
            u = y; v = x ;
        } else {
            u = x; v = y ;
        }
        worklistMoves.remove(mvinst) ;
        if (u == v) {
            coalescedMoves.add(mvinst) ;
            addWorkList(u);
        } else if (v instanceof PhysicalReg || adjSet.contains(new Pair<Reg, Reg>(u, v))) {
            constrainedMoves.add(mvinst) ;
            addWorkList(u); addWorkList(v);
        } else {
            boolean flag = true ;
            for (Reg t : adjacent(v)) {
                if (!OK(t, u)) {
                    flag = false; break ;
                }
            }
            Set<Reg> tmp = new HashSet<>(adjacent(u)) ;
            tmp.addAll(adjacent(v)) ;
            if ((u instanceof PhysicalReg && flag) || (u instanceof VirtualReg && conservative(tmp))) {
                coalescedMoves.add(mvinst) ;
                combine(u, v);
                addWorkList(u); 
            } else {
                activeMoves.add(mvinst) ;
            }
        }
    }
    private void freeze () {
        Reg reg = null ;
        for (Reg tmpReg : freezeWorklist) {
            reg = tmpReg; break ;
        }
        if (reg == null) return ;
        freezeWorklist.remove(reg) ;
        simplifiyWorklist.add(reg) ;
        freezeMoves (reg) ;
    }
    private void freezeMoves (Reg u) {
        for (Inst inst : nodeMoves(u)) {
            mvInst mvinst = (mvInst) inst ;
            Reg x = (Reg) mvinst.rs1, y = (Reg) mvinst.rd, v = null ;
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
        Reg m = null ;
        for (Reg tmp : spillWorklist) {
            if (newRegs.contains(tmp)) continue ;
            m = tmp; break ;
        }
        if (m == null) {
            for (Reg tmp : spillWorklist) {
                m = tmp; break ;
            }
        }
        if (m == null) return ;
        spillWorklist.remove(m) ;
        simplifiyWorklist.add(m) ;
        freezeMoves(m);
    }
    public void assignColors () {
        while (!selectStack.isEmpty()) {
            Reg n = selectStack.pop() ;
            Set<Integer> okColors = new HashSet<>() ;
            for (int i = 0; i < K; i ++) okColors.add(i) ;
            if (adjList.containsKey(n)) {
                Set<Reg> tmp = new HashSet<>(coloredNodes) ;
                tmp.addAll(precolored) ;
                for (Reg w : adjList.get(n)) {
                    if (tmp.contains(getAlias(w)))
                        okColors.remove(color.get(getAlias(w))) ;
                }
            }
            if (okColors.isEmpty()) spilledNodes.add(n) ;
            else {
                coloredNodes.add(n) ;
                int c = 0 ;
                for (Integer tmp : okColors) {
                    c = tmp; break ;
                }
                System.out.print(n); System.out.print(" "); System.out.println (c) ;
                color.put(n, c) ;
            }
        }
        for (Reg n : coalescedNodes) {
            color.put(n, color.get(getAlias(n))) ;
        }
    }
    private void rewriteProgram (AssemblyFunction curFunction) {
        Set<Reg> newTemps = new HashSet<>() ;
        for (Reg reg : spilledNodes) {
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
                    newTemps.add(tmpReg); newRegs.add(tmpReg) ;
                    inst.rs1 = tmpReg ;
                }
                if (inst.rs2 != null && inst.rs2 instanceof VirtualReg && spilledNodes.contains(inst.rs2)) {
                    VirtualReg reg = (VirtualReg) inst.rs2 ;
                    VirtualReg tmpReg = new VirtualReg(curFunction.curRegID ++, reg.size) ;
                    int imm = -curFunction.regOffset.get(reg) ;
                    block.insert_before(inst, new liInst(t3, new Imm(imm)));
                    block.insert_before(inst, new binaryInst(binaryInstOp.add, s0, t3, t3));
                    block.insert_before(inst, new loadInst(reg.size, tmpReg, new Imm(0), t3));
                    newTemps.add(tmpReg); newRegs.add(tmpReg) ;
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
                    newTemps.add(tmpReg); newRegs.add(tmpReg) ;
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
                    // System.out.println(inst) ;
                    // System.out.print(inst.rs1 + " " + inst.rs2 + " " + inst.rd + " ") ;
                    // System.out.println(color.get(inst.rs1) + " " + color.get(inst.rs2) + " " + color.get(inst.rd)) ;
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
    private void functionStackInst() {
        for (AssemblyFunction function : globalDef.functions) {
            int offset = function.offset + function.functionCallOffset ;
            if (offset % 16 != 0) offset = (offset / 16 + 1) * 16 ;
            AssemblyBlock headBlock = function.blocks.get(0) ;
            if (headBlock.head == null) headBlock.push_back(new mvInst(t1, s0)) ;
            else headBlock.insert_before(headBlock.head, new mvInst(t1, s0));
            headBlock.insert_before(headBlock.head, new storeInst(4, s0, new Imm(-8), t1));
            headBlock.insert_before(headBlock.head, new storeInst(4, ra, new Imm(-4), t1));
            headBlock.insert_before(headBlock.head, new binaryInst(binaryInstOp.add, sp, t0, t1));
            headBlock.insert_before(headBlock.head, new binaryInst(binaryInstOp.sub, sp, t0, sp));
            headBlock.insert_before(headBlock.head, new liInst(t0, new Imm(offset)));
            AssemblyBlock tailBlock = function.blocks.get(function.blocks.size() - 1) ;
            tailBlock.push_back(new liInst(t0, new Imm(offset)));
            tailBlock.push_back(new binaryInst(binaryInstOp.add, sp, t0, t1));
            tailBlock.push_back(new loadInst(4, ra, new Imm(-4), t1));
            tailBlock.push_back(new loadInst(4, s0, new Imm(-8), t1));
            tailBlock.push_back(new binaryInst(binaryInstOp.add, sp, t0, sp)) ;
            tailBlock.push_back(new retInst());
        }
    }
}
