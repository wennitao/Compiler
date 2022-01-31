package Optimize;

import java.util.HashSet;
import java.util.Set;

import Assembly.AssemblyBlock;
import Assembly.AssemblyFunction;
import Assembly.AssemblyGlobalDefine;
import Assembly.Inst.ImmInst;
import Assembly.Inst.Inst;
import Assembly.Inst.binaryInst;
import Assembly.Inst.bnezInst;
import Assembly.Inst.jumpInst;
import Assembly.Inst.laInst;
import Assembly.Inst.liInst;
import Assembly.Inst.loadInst;
import Assembly.Inst.mvInst;
import Assembly.Inst.storeInst;
import Assembly.Operand.VirtualReg;
import MIR.binary;

public class RegisterAllocation {
    AssemblyGlobalDefine globalDef ;
    public RegisterAllocation (AssemblyGlobalDefine _globalDef) {
        globalDef = _globalDef ;
        analyzeRoot () ;
    }
    private void analyzeRoot () {
        for (AssemblyFunction function : globalDef.functions) {
            analyzeFunction(function);
        }
    }
    private void analyzeFunction (AssemblyFunction curFunction) {
        getSuccAndPred(curFunction);
        getUseAndDef(curFunction);
        livenessAnalysis(curFunction);
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
                    if (!preIn.equals(in) || preOut.equals(out)) hasUpdated = true ;
                }
            }
            if (!hasUpdated) break ;
        }
    }
}
