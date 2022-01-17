package Assembly;

import java.io.PrintStream;

import Assembly.Inst.Inst;

public class AssemblyBlock {
    public Inst head = null, tail = null ;
    public String identifier ;
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
        if (inst.prev == null) head = insertInst ;
        else inst.prev.next = insertInst ;
        insertInst.prev = inst.prev; insertInst.next = inst; inst.prev = insertInst ;
    }
    public void insert_after (Inst inst, Inst insertInst) {
        if (inst.next == null) tail = insertInst ;
        else inst.next.prev = insertInst ;
        insertInst.next = inst.next; insertInst.prev = inst; inst.next = insertInst ;
    }
    
    public void print (PrintStream out) {
        out.println("." + identifier + ":") ;
        for (Inst inst = head; inst != null; inst = inst.next) {
            out.println ("\t" + inst) ;
        }
    }
}
