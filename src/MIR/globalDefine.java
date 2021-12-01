package MIR;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class globalDefine {
    public ArrayList<statement> globalDefStmt ;
    public Set<function> functions ;

    public globalDefine() {
        globalDefStmt = new ArrayList<>() ;
        functions = new HashSet<>() ;
    }
}
