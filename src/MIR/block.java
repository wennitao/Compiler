package MIR;

import java.io.PrintStream;
import java.util.ArrayList;

public class block {
    public String identifier ;
    public ArrayList<statement> statements = new ArrayList<>();
    public boolean hasJumped = false ;
    public ArrayList<block> succ = new ArrayList<>(), pred = new ArrayList<>() ;
    public block (String _identifier) {
        identifier = _identifier ;
    }
    public void push_back (statement stmt) {
        if (!hasJumped) statements.add(stmt) ;
        if (stmt instanceof branch) hasJumped = true ;
    }
    public void print(PrintStream out) {
        out.println(identifier + ": ");
        statements.forEach(x -> {
            out.print ("  ") ;
            out.println(x) ;
        });
        // System.out.println() ;
    }
}
