package MIR;

import java.util.ArrayList;

import MIR.IRType.IRPointerType;

public class getelementptr extends statement {
    public register from, to ;
    public ArrayList<entity> value ;
    public getelementptr (register _from, register _to) {
        from = _from; to = _to ;
        value = new ArrayList<>() ;
    }
    @Override
    public String toString() {
        String res = to + " = getelementptr inbounds " + ((IRPointerType)from.type).type + ", " + from.type + " " + from + ", " ;
        for (int i = 0; i < value.size() - 1; i ++)
            res = res + value.get(i).type + " " + value.get(i) + ", " ;
        res = res + value.get(value.size() - 1).type + " " + value.get (value.size() - 1) ;
        return res ;
        // return to + " = getelementptr inbounds " + ((IRPointerType)from.type).type + ", " + from.type + " " + from + ", " + value1.type + " " + value1 + ", " + value2.type + " " + value2 ;
    }
}
