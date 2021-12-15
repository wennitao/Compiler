package MIR;

import java.util.ArrayList;

import MIR.IRType.IRType;
import MIR.IRType.IRVoidType;

public class function {
    public String identifier ;
    public block rootBlock ;
    public ArrayList<block> blocks ;
    public int curRegisterID, functionIDNumber ;
    public IRType returnType ;
    public ArrayList<register> parameters ;
    public function (String _identifier) {
        identifier = _identifier ;
        rootBlock = new block(identifier) ;
        blocks = new ArrayList<>() ;
        // blocks.add(rootBlock) ;
        curRegisterID = 0 ;
        parameters = new ArrayList<>() ;
    }
    public void print() {
        System.out.print ("define " + returnType + " @" + identifier + '(') ;
        for (int i = 0; i < parameters.size() - 1; i ++) {
            register curParameter = parameters.get (i) ;
            System.out.print (curParameter.type + " " + curParameter + ", ") ;
        }
        if (!parameters.isEmpty()) {
            register curParameter = parameters.get(parameters.size() - 1) ;
            System.out.print (curParameter.type + " " + curParameter) ;
        }
        System.out.println (") #" + functionIDNumber + " {") ;
        rootBlock.print(false) ;
        blocks.forEach(x -> {
            x.print(true) ;
            System.out.println();
        });
        if (returnType instanceof IRVoidType) System.out.println ("  ret void") ;
        System.out.println ("}") ;
    }
}
