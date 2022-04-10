package MIR;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import MIR.IRType.IRType;

public class function {
    public String identifier ;
    public block allocaBlock, rootBlock, returnBlock ;
    public ArrayList<block> blocks ;
    public int curRegisterID ;
    public IRType returnType ;
    public register returnReg ;
    public ArrayList<register> parameters ;
    public ArrayList<String> parameterId ;
    public boolean isBuiltin, isEmpty = true ;
    public ArrayList<alloca> allocaInst = new ArrayList<>() ;
    public Map<String, block> labelToBlock = new HashMap<>() ;
    public function (String _identifier) {
        identifier = _identifier ;
        // label rootBlockLabel = new label(identifier + "_entry") ;
        // rootBlock = new block(rootBlockLabel.labelID, rootBlockLabel) ;
        // label returnBlockLabel = new label (identifier + "_return") ;
        // returnBlock = new block (returnBlockLabel.labelID, returnBlockLabel) ;
        allocaBlock = new block (identifier + "_alloca") ;
        rootBlock = new block(identifier + "_entry") ;
        returnBlock = new block(identifier + "_return") ;
        blocks = new ArrayList<>() ;
        blocks.add (allocaBlock); blocks.add(rootBlock) ;
        curRegisterID = 0 ;
        parameters = new ArrayList<>() ;
        parameterId = new ArrayList<>() ;
    }
    public void print(PrintStream out) {
        if (isBuiltin) out.print ("declare " + returnType + " @" + identifier + '(') ;
        else out.print ("define " + returnType + " @" + identifier + '(') ;
        for (int i = 0; i < parameters.size() - 1; i ++) {
            register curParameter = parameters.get (i) ;
            out.print (curParameter.type + " " + curParameter + ", ") ;
        }
        if (!parameters.isEmpty()) {
            register curParameter = parameters.get(parameters.size() - 1) ;
            out.print (curParameter.type + " " + curParameter) ;
        }
        if (isBuiltin) out.println  (")") ;
        else {
            out.println (")" + " {") ;
            for (int i = 0; i < blocks.size() - 1; i ++) {
                blocks.get(i).print(out) ;
                out.println () ;
            }
            if (!blocks.isEmpty()) blocks.get(blocks.size() - 1).print(out) ;
            // blocks.forEach(x -> {
            //     x.print(out) ;
            //     out.println();
            // });
            out.println ("}") ;
        }
    }
}
