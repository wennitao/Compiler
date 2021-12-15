package MIR;

import java.io.PrintStream;
import java.util.ArrayList;

import MIR.IRType.IRType;

public class function {
    public String identifier ;
    public block rootBlock ;
    public ArrayList<block> blocks ;
    public int curRegisterID, functionIDNumber ;
    public IRType returnType ;
    public ArrayList<register> parameters ;
    public ArrayList<String> parameterId ;
    public function (String _identifier) {
        identifier = _identifier ;
        rootBlock = new block(identifier) ;
        blocks = new ArrayList<>() ;
        // blocks.add(rootBlock) ;
        curRegisterID = 0 ;
        parameters = new ArrayList<>() ;
        parameterId = new ArrayList<>() ;
    }
    public void print(PrintStream out) {
        out.print ("define " + returnType + " @" + identifier + '(') ;
        for (int i = 0; i < parameters.size() - 1; i ++) {
            register curParameter = parameters.get (i) ;
            out.print (curParameter.type + " " + curParameter + ", ") ;
        }
        if (!parameters.isEmpty()) {
            register curParameter = parameters.get(parameters.size() - 1) ;
            out.print (curParameter.type + " " + curParameter) ;
        }
        out.println (") #" + functionIDNumber + " {") ;
        rootBlock.print(out, false) ;
        blocks.forEach(x -> {
            x.print(out, true) ;
            out.println();
        });
        out.println ("}") ;
    }
}
