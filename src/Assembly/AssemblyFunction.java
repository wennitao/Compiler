package Assembly;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import Assembly.Operand.Reg;
import Assembly.Operand.VirtualReg;

public class AssemblyFunction {
    public String identifier ;
    public int offset, curRegID ;
    public ArrayList<AssemblyBlock> blocks = new ArrayList<>() ;
    public Map<Reg, Integer> regOffset = new HashMap<>() ;
    public Map<String, VirtualReg> phiRd, phiValue ;
    public AssemblyFunction (String _identifier) {
        phiRd = new HashMap<>(); phiValue = new HashMap<>() ;
        identifier = _identifier ;
        curRegID = offset = 0 ;
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