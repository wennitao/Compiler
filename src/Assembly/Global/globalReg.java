package Assembly.Global;

import java.io.PrintStream;

public class globalReg extends Global {
    int size, initValue ;
    String identifier ;
    public globalReg (String _identifier, int _initValue, int _size) {
        identifier = _identifier; initValue = _initValue; size = _size ;
    }
    public void print(PrintStream out) {
        out.println("\t.section\t.sbss");
        out.println("\t.type\t" + identifier + ",@object");
        out.println ("\t.globl\t" + identifier) ;
        out.println("\t.p2align\t2");
        out.println(identifier + ":");
        out.println("\t.word\t" + initValue) ;
        out.println("\t.size\t" + identifier + ", " + size) ;
    }
}
