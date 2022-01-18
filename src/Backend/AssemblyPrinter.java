package Backend;

import java.io.PrintStream;

import Assembly.AssemblyFunction;
import Assembly.AssemblyGlobalDefine;
import Assembly.Global.Global;

public class AssemblyPrinter {
    public AssemblyPrinter (PrintStream out, AssemblyGlobalDefine globalDef) {
        out.println("\t.text\n");
        for (AssemblyFunction function : globalDef.functions) {
            function.print(out) ;
            out.println();
        }
        for (Global global : globalDef.globalDefine) {
            global.print(out) ;
            out.println();
        }
    }
}
