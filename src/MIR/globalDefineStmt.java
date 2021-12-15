package MIR;

public class globalDefineStmt extends statement {
    globalRegister reg ;
    constant initConstant ;
    public globalDefineStmt (globalRegister _reg) {
        reg = _reg ;
        initConstant = new constant(0, reg.type) ;
    }
    public globalDefineStmt (globalRegister _reg, constant _init) {
        reg = _reg; initConstant = _init ;
    }
    @Override
    public String toString () {
        return reg + " = global " + reg.type + " " + initConstant ;
    }
}
