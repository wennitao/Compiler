package MIR;

import java.io.PrintStream;
import java.util.ArrayList;

public class block {
    public String identifier ;
    private ArrayList<statement> statements = new ArrayList<>();
    public block (String _identifier) {
        identifier = _identifier ;
    }
    public void push_back (statement stmt) {
        statements.add(stmt) ;
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