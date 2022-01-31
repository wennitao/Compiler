package Assembly;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import Assembly.Inst.Inst;
import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;
import MIR.entity;
import MIR.label;

public class AssemblyFunction {
    public String identifier ;
    public int offset, functionCallOffset, curRegID ;
    public ArrayList<AssemblyBlock> blocks = new ArrayList<>() ;
    public Map<String, AssemblyBlock> labelToBlock = new HashMap<>() ;
    public Map<String, VirtualReg> toRegMap = new HashMap<>() ;
    public Map<Reg, Integer> regOffset = new HashMap<>() ;
    public Map<String, VirtualReg> phiRd = new HashMap<>() ;
    public Map<String, entity> phiValue = new HashMap<>() ;
    // register allocation
    public Map<Inst, Set<Inst> > succ, pred ;
    public Map<Inst, Set<VirtualReg> > use, def, in, out ;
    public AssemblyFunction (String _identifier) {
        identifier = _identifier ;
        curRegID = functionCallOffset = offset = 0 ;
        succ = new HashMap<>(); pred = new HashMap<>() ;
        use = new HashMap<>(); def = new HashMap<>() ;
        in = new HashMap<>(); out = new HashMap<>() ;
    }
    public void print(PrintStream out) {
        out.println("\t.globl\t" + identifier);
        out.println("\t.p2align\t2");
        out.println("\t.type\t" + identifier + ",@function") ;
        out.println(identifier + ":") ;
        for (AssemblyBlock block : blocks) {
            block.print (out) ;
        }
    }
}