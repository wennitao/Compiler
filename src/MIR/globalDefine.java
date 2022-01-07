package MIR;

import java.util.ArrayList;

public class globalDefine {
    // public int stringConstantID ;
    public ArrayList<statement> globalDefStmt ;
    public ArrayList<function> functions ;

    public globalDefine() {
        // stringConstantID = 0 ;
        globalDefStmt = new ArrayList<>() ;
        functions = new ArrayList<>() ;
    }
}
