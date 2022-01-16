package Assembly;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import Assembly.Operand.Reg;

public class AssemblyFunction {
    public String identifier ;
    public int offset, curRegID ;
    public ArrayList<AssemblyBlock> blocks = new ArrayList<>() ;
    public Map<Reg, Integer> regOffset = new HashMap<>() ;
    public AssemblyFunction (String _identifier) {
        identifier = _identifier ;
        curRegID = offset = 0 ;
    }
}