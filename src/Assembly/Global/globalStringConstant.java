package Assembly.Global;

import java.io.PrintStream;

public class globalStringConstant extends Global {
    String identifier, initStr ;
    int size ;
    public globalStringConstant (String _identifier, String _initStr, int _size) {
        identifier = new String (_identifier); initStr = _initStr; size = _size ;
    }
    public void print(PrintStream out) {
        out.println("\t.section\t.rodata");
        out.println("\t.type\t" + identifier + ",@object");
        out.println(identifier + ":");
        out.println("\t.asciz\t\"" + initStr + "\"") ;
        out.println("\t.size\t" + identifier + ", " + size) ;
    }
}
