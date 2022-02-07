package Assembly;

import java.util.ArrayList;

import Assembly.Global.Global;
import Assembly.Operand.PhysicalReg;

public class AssemblyGlobalDefine {
    public PhysicalReg[] phyRegs = new PhysicalReg [32] ;
    public ArrayList<AssemblyFunction> functions = new ArrayList<>() ;
    public ArrayList<Global> globalDefine = new ArrayList<>() ;

    private void init_phyRegs () {
        phyRegs[0] = new PhysicalReg("zero") ;
        phyRegs[1] = new PhysicalReg("ra") ;
        phyRegs[2] = new PhysicalReg("sp") ;
        for (int i = 10; i <= 17; i ++) {
            phyRegs[i] = new PhysicalReg("a" + Integer.toString(i - 10)) ;
        }
        phyRegs[8] = new PhysicalReg("s0") ;
        for (int i = 18; i <= 27; i ++) {
            phyRegs[i] = new PhysicalReg("s" + Integer.toString(i - 16)) ;
        }
        phyRegs[5] = new PhysicalReg("t0") ;
        phyRegs[6] = new PhysicalReg("t1") ;
        phyRegs[7] = new PhysicalReg("t2") ;
        phyRegs[28] = new PhysicalReg("t3") ;
    }
    public AssemblyGlobalDefine () {
        init_phyRegs() ;
    }
}
