package MIR;

import java.util.ArrayList;

public class function {
    public String identifier ;
    public block rootBlock ;
    public ArrayList<block> blocks ;
    public int curRegisterID ;
    public function (String _identifier) {
        identifier = _identifier ;
        rootBlock = new block(identifier) ;
        blocks = new ArrayList<>() ;
        blocks.add(rootBlock) ;
        curRegisterID = 1 ;
    }
    public void print() {
        // System.out.println(identifier + ": ");
        blocks.forEach(x -> {
            x.print() ;
            System.out.println();
        });
    }
}
