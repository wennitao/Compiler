package Backend;

import java.io.PrintStream;

import Assembly.AssemblyFunction;
import Assembly.AssemblyGlobalDefine;

public class AssemblyPrinter {
    public AssemblyPrinter (PrintStream out, AssemblyGlobalDefine globalDef) {
        out.println("\t.text");
        for (AssemblyFunction function : globalDef.functions) {
            function.print(out) ;
            out.print("\n") ;
        }
    }
}
