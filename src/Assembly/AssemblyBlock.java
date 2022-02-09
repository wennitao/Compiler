package Assembly;

import java.io.PrintStream;
import java.util.HashSet;
import java.util.Set;

import Assembly.Inst.Inst;
import Assembly.Inst.mvInst;

public class AssemblyBlock {
    public Inst head = null, tail = null ;
    public String identifier ;
    public Set<AssemblyBlock> succ = new HashSet<>() ;
    public AssemblyBlock (String _identifier) {
        identifier = _identifier ;
    }
    public void push_back (Inst inst) {
        if (head == null) head = tail = inst ;
        else {
            tail.next = inst ;
            inst.prev = tail ;
            tail = inst ;
        }
    }
    public void insert_before (Inst inst, Inst insertInst) {
        if (head == null && tail == null) {
            this.push_back(insertInst); return ;
        }
        if (inst.prev == null) head = insertInst ;
        else inst.prev.next = insertInst ;
        insertInst.prev = inst.prev; insertInst.next = inst; inst.prev = insertInst ;
    }
    public void insert_after (Inst inst, Inst insertInst) {
        if (head == null && tail == null) {
            this.push_back(insertInst); return ;
        }
        if (inst.next == null) tail = insertInst ;
        else inst.next.prev = insertInst ;
        insertInst.next = inst.next; insertInst.prev = inst; inst.next = insertInst ;
    }
    
    public void print (PrintStream out) {
        out.println("." + identifier + ":") ;
        for (Inst inst = head; inst != null; inst = inst.next) {
            if (inst instanceof mvInst && inst.rs1 == inst.rd) continue ;
            out.println ("\t" + inst) ;
        }
    }
}
