package MIR;

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
    public void print() {
        System.out.println(identifier + ": ");
        statements.forEach(x -> {
            System.out.println(x) ;
        });
        System.out.println() ;
    }
}
