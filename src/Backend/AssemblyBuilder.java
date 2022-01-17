package Backend;

import java.util.HashMap;
import java.util.Map;

import Assembly.* ;
import Assembly.Inst.* ;
import Assembly.Inst.ImmInst.immInstOp ;
import Assembly.Inst.binaryInst.binaryInstOp ;
import Assembly.Operand.* ;
import MIR.* ;
import MIR.IRType.IRVoidType;

public class AssemblyBuilder {
    globalDefine globalDef ;
    AssemblyGlobalDefine AssemblyGlobalDef ;
    AssemblyFunction curFunction ;
    AssemblyBlock curBlock ;
    PhysicalReg[] phyRegs = new PhysicalReg [32] ;
    PhysicalReg zero, ra, sp, a0, s0 ;
    PhysicalReg t0, t1, t2, t3 ;
    Map<String, VirtualReg> toRegMap = new HashMap<>() ;
    public AssemblyBuilder (globalDefine _globalDef, AssemblyGlobalDefine _AssemblyGlobalDefine) {
        globalDef = _globalDef ;
        AssemblyGlobalDef = _AssemblyGlobalDefine ;
        init_phyRegs () ;
        build_root() ;
        RegAlloc_root() ;
    }
    private void init_phyRegs () {
        zero = phyRegs[0] = new PhysicalReg("zero") ;
        ra = phyRegs[1] = new PhysicalReg("ra") ;
        sp = phyRegs[2] = new PhysicalReg("sp") ;
        for (int i = 10; i <= 17; i ++) {
            phyRegs[i] = new PhysicalReg("a" + Integer.toString(i - 10)) ;
        }
        a0 = phyRegs[10] ;
        s0 = phyRegs[8] = new PhysicalReg("s0") ;
        for (int i = 18; i <= 27; i ++) {
            phyRegs[i] = new PhysicalReg("s" + Integer.toString(i - 16)) ;
        }
        t0 = phyRegs[5] = new PhysicalReg("t0") ;
        t1 = phyRegs[6] = new PhysicalReg("t1") ;
        t2 = phyRegs[7] = new PhysicalReg("t2") ;
        t3 = phyRegs[28] = new PhysicalReg("t3") ;
    }
    private void build_root () {
        for (function curIRFunc : globalDef.functions) {
            if (curIRFunc.isBuiltin) continue ;
            build_function(curIRFunc) ;
            AssemblyGlobalDef.functions.add(curFunction) ;
        }
    }
    private void build_function (function curIRFunc) {
        curFunction = new AssemblyFunction(curIRFunc.identifier) ;
        AssemblyBlock initBlock = new AssemblyBlock(curFunction.identifier + "_assemblyInit") ;
        curFunction.blocks.add(initBlock) ;
        curFunction.offset += 4 ;
        curFunction.regOffset.put(ra, curFunction.offset) ;
        curFunction.offset += 4 ;
        curFunction.regOffset.put(s0, curFunction.offset) ;
        for (block curIRBlock : curIRFunc.blocks) {
            build_block(curIRBlock) ;
            curFunction.blocks.add(curBlock) ;
        }
    }
    private void build_block (block curIRBlock) {
        curBlock = new AssemblyBlock(curIRBlock.identifier) ;
        for (statement curStmt : curIRBlock.statements) {
            genInst(curStmt) ;    
        }
    }

    private VirtualReg entityToReg (entity x) {
        VirtualReg rs = null ;
        if (x instanceof constant) {
            rs = new VirtualReg(curFunction.curRegID ++, 4) ;
            constant c = (constant) x ;
            int value = ((constant) c).value ;
            int absvalue = Math.abs (value) ;
            if (absvalue < 2048) {
                curBlock.push_back(new ImmInst(immInstOp.addi, rs, new Imm(value), rs));
            } else {
                curBlock.push_back(new ImmInst(immInstOp.addi, rs, new Imm(absvalue >> 22), rs)) ;
                absvalue %= (1 << 22) ;
                curBlock.push_back(new ImmInst(immInstOp.slli, rs, new Imm(11), rs));
                curBlock.push_back(new ImmInst(immInstOp.addi, rs, new Imm(absvalue >> 11), rs)) ;
                absvalue %= (1 << 11) ;
                curBlock.push_back(new ImmInst(immInstOp.slli, rs, new Imm(11), rs)) ;
                curBlock.push_back(new ImmInst(immInstOp.addi, rs, new Imm(absvalue), rs)) ;
                if (value < 0) curBlock.push_back(new binaryInst(binaryInstOp.sub, zero, rs, rs));
            }
        } else {
            register reg = (register) x ;
            if (reg.isGlobal) {
                rs = new VirtualReg(curFunction.curRegID ++, reg.type.size) ;
                curBlock.push_back(new laInst(rs, reg.registerID)) ;
            } else {
                rs = toRegMap.get(reg.registerID) ;
            }
        }
        return rs ;
    }

    private void genInst (statement curIRStmt) {
        if (curIRStmt instanceof alloca) {
            alloca curIRInst = (alloca) curIRStmt ;
            VirtualReg cur = new VirtualReg(curFunction.curRegID ++, curIRInst.type.size) ;
            toRegMap.put(curIRInst.reg.registerID, cur) ;
            curFunction.offset += 4 ;
            curFunction.regOffset.put(cur, curFunction.offset) ;
        } else if (curIRStmt instanceof binary) {
            binary curIRInst = (binary) curIRStmt ;
            entity left = curIRInst.left, right = curIRInst.right, dest = curIRInst.dest ;
            VirtualReg rs1, rs2, rd ;
            rs1 = entityToReg(left); rs2 = entityToReg(right) ;
            rd = new VirtualReg(((register) dest).registerID, dest.type.size) ;
            switch (curIRInst.op) {
                case add:
                    curBlock.push_back(new binaryInst(binaryInstOp.add, rs1, rs2, rd)) ;
                    break;
                case sub:
                    curBlock.push_back(new binaryInst(binaryInstOp.sub, rs1, rs2, rd));
                    break ;
                case mul:
                    curBlock.push_back(new binaryInst(binaryInstOp.mul, rs1, rs2, rd));
                    break ;
                case sdiv:
                    curBlock.push_back(new binaryInst(binaryInstOp.mul, rs1, rs2, rd));
                    break ;
                case srem:
                    curBlock.push_back(new binaryInst(binaryInstOp.rem, rs1, rs2, rd));
                    break ;
                case slt:
                    curBlock.push_back(new binaryInst(binaryInstOp.slt, rs1, rs2, rd));    
                case sle:
                    curBlock.push_back(new binaryInst(binaryInstOp.slt, rs2, rs1, rd));
                    curBlock.push_back(new ImmInst(immInstOp.xori, rd, new Imm(1), rd));
                case sgt:
                    curBlock.push_back(new binaryInst(binaryInstOp.slt, rs2, rs1, rd));
                case sge:
                    curBlock.push_back(new binaryInst(binaryInstOp.slt, rs1, rs2, rd));
                    curBlock.push_back(new ImmInst(immInstOp.xori, rd, new Imm(1), rd));    
                case eq:
                    curBlock.push_back(new binaryInst(binaryInstOp.xor, rs1, rs2, rd));
                    curBlock.push_back(new ImmInst(immInstOp.sltiu, rd, new Imm(1), rd));
                case ne:
                    curBlock.push_back(new binaryInst(binaryInstOp.xor, rs1, rs2, rd));
                    curBlock.push_back(new ImmInst(immInstOp.sltiu, rd, new Imm(1), rd));
                    curBlock.push_back(new ImmInst(immInstOp.xori, rd, new Imm(1), rd));
                case shl:
                    curBlock.push_back(new binaryInst(binaryInstOp.sll, rs1, rs2, rd));    
                case ashr:
                    curBlock.push_back(new binaryInst(binaryInstOp.sra, rs1, rs2, rd));
                case and:
                    curBlock.push_back(new binaryInst(binaryInstOp.and, rs1, rs2, rd));
                case xor:
                    curBlock.push_back(new binaryInst(binaryInstOp.xor, rs1, rs2, rd));
                case or:
                    curBlock.push_back(new binaryInst(binaryInstOp.or, rs1, rs2, rd));    
                default:
                    break;
            }
            toRegMap.put(((register) dest).registerID, rd) ;
        } else if (curIRStmt instanceof load) {
            load curLoad = (load) curIRStmt ;
            entity from = curLoad.from, to = curLoad.to ;
            VirtualReg rd = new VirtualReg(curFunction.curRegID ++, to.type.size) ;
            VirtualReg rs = entityToReg(from) ;
            if (curFunction.regOffset.containsKey(rs)) {
                int imm = -curFunction.regOffset.get(rs) ;
                curBlock.push_back(new loadInst(to.type.size, rd, new Imm (imm), s0));
            } else {
                curBlock.push_back(new loadInst(to.type.size, rd, new Imm (0), rs));
            }
            toRegMap.put (((register) to).registerID, rd) ;
        } else if (curIRStmt instanceof store) {
            store curStore = (store) curIRStmt ;
            entity from = curStore.from, to = curStore.dest ;
            VirtualReg rs = entityToReg(from), rd = entityToReg(to) ;
            if (curFunction.regOffset.containsKey(rd)) {
                int imm = -curFunction.regOffset.get(rd) ;
                curBlock.push_back(new storeInst(from.type.size, rs, new Imm (imm), s0)) ;
            } else {
                curBlock.push_back(new storeInst(from.type.size, rs, new Imm (0), rd));
            }
        } else if (curIRStmt instanceof returnStmt) {
            returnStmt curRet = (returnStmt) curIRStmt ;
            entity reg = curRet.returnReg ;
            if (!(reg.type instanceof IRVoidType)) {
                VirtualReg rs = entityToReg(reg) ;
                curBlock.push_back(new mvInst(rs, a0)) ;
            }
            // curBlock.push_back(new retInst()) ;
        } else if (curIRStmt instanceof functioncall) {
            functioncall curFuncCall = (functioncall) curIRStmt ;
            for (int i = 0; i < Math.min (8, curFuncCall.parameters.size()); i ++) {
                entity curEntity = curFuncCall.parameters.get(i) ;
                VirtualReg rs = entityToReg(curEntity) ;
                curBlock.push_back(new mvInst(rs, phyRegs[10 + i])) ;
            }
            for (int i = 8; i < curFuncCall.parameters.size(); i ++) {
                entity curEntity = curFuncCall.parameters.get(i) ;
                VirtualReg rs = entityToReg(curEntity) ;
                curBlock.push_back(new storeInst(curEntity.type.size, rs, new Imm((i - 8) * 4), sp));
            }
            curBlock.push_back(new callInst(curFuncCall.functionName)) ;
            if (!curFuncCall.isVoid) {
                VirtualReg rd = new VirtualReg(curFunction.curRegID ++, curFuncCall.destReg.type.size) ;
                curBlock.push_back(new mvInst(a0, rd)) ;
                toRegMap.put(curFuncCall.destReg.registerID, rd) ;
            }
        } else if (curIRStmt instanceof branch) {
            branch curIRBranch = (branch) curIRStmt ;
            if (curIRBranch.isConditioned) {
                curBlock.push_back(new bnezInst(entityToReg(curIRBranch.condition), curIRBranch.trueBranch));
                curBlock.push_back(new jumpInst(curIRBranch.falseBranch));
            } else {
                curBlock.push_back(new jumpInst(curIRBranch.trueBranch));
            }
        }
    }
    
    private Reg loadVirtualReg (Inst inst, Reg reg, PhysicalReg Preg) {
        if (reg instanceof VirtualReg) {
            VirtualReg Vreg = (VirtualReg) reg ;
            if (!curFunction.regOffset.containsKey(Vreg)) {
                curFunction.offset += 4 ;
                curFunction.regOffset.put(Vreg, curFunction.offset) ;
            }
            int imm = -curFunction.regOffset.get(Vreg) ;
            curBlock.insert_before(inst, new loadInst(Vreg.size, Preg, new Imm(imm), s0));
            return Preg ;
        } else {
            return reg ;
        }
    }
    private Reg storeVirtualReg (Inst inst, Reg reg, PhysicalReg Preg) {
        if (reg instanceof VirtualReg) {
            VirtualReg Vreg = (VirtualReg) reg ;
            if (!curFunction.regOffset.containsKey(Vreg)) {
                curFunction.offset += 4 ;
                curFunction.regOffset.put(Vreg, curFunction.offset) ;
            }
            int imm = -curFunction.regOffset.get(Vreg) ;
            curBlock.insert_after(inst, new storeInst(Vreg.size, Preg, new Imm (imm), s0));
            return Preg ;
        } else {
            return reg ;
        }
    }

    private void RegAlloc_root() {
        for (AssemblyFunction function : AssemblyGlobalDef.functions) {
            RegAlloc_function(function) ;
        }
    }
    private void RegAlloc_function (AssemblyFunction function) {
        for (AssemblyBlock block : function.blocks) {
            RegAlloc_block(block) ;
        }
        // int offset = function.offset ;
        AssemblyBlock headBlock = function.blocks.get(0) ;
        if (headBlock.head == null) headBlock.push_back(new ImmInst(immInstOp.addi, sp, new Imm(-function.offset), sp));
        else headBlock.insert_before(headBlock.head, new ImmInst(immInstOp.addi, sp, new Imm(-function.offset), sp));
        headBlock.insert_after(headBlock.head, new ImmInst(immInstOp.addi, sp, new Imm(function.offset), s0));
        headBlock.push_back(new storeInst(4, ra, new Imm(-4), s0));
        headBlock.push_back(new storeInst(4, s0, new Imm(-8), s0));
        AssemblyBlock tailBlock = function.blocks.get(function.blocks.size() - 1) ;
        tailBlock.push_back(new loadInst(4, ra, new Imm (function.offset - 4), sp));
        tailBlock.push_back(new loadInst(4, s0, new Imm (function.offset - 8), sp));
        tailBlock.push_back(new ImmInst(immInstOp.addi, sp, new Imm(function.offset), sp));
        tailBlock.push_back(new retInst());
    }
    private void RegAlloc_block (AssemblyBlock block) {
        for (Inst inst = block.head; inst != null; inst = inst.next) {
            if (inst instanceof ImmInst) {
                ImmInst curInst = (ImmInst) inst ;
                curInst.rs1 = loadVirtualReg(inst, curInst.rs1, t0) ;
                curInst.rd = storeVirtualReg(inst, curInst.rd, t1) ;
            } else if (inst instanceof binaryInst) {
                binaryInst curInst = (binaryInst) inst ;
                curInst.rs1 = loadVirtualReg(inst, curInst.rs1, t0) ;
                curInst.rs2 = loadVirtualReg(inst, curInst.rs2, t1) ;
                curInst.rd = storeVirtualReg(inst, curInst.rd, t2) ;
            } else if (inst instanceof bnezInst) {
                bnezInst curInst = (bnezInst) inst ;
                curInst.rs1 = loadVirtualReg(inst, curInst.rs1, t0) ;
            } else if (inst instanceof laInst) {
                laInst curInst = (laInst) inst ;
                curInst.rd = storeVirtualReg(inst, curInst.rd, t0) ;
            } else if (inst instanceof loadInst) {
                loadInst curInst = (loadInst) inst ;
                curInst.rs1 = loadVirtualReg(inst, curInst.rs1, t0) ;
                curInst.rs2 = loadVirtualReg(inst, curInst.rs2, t1) ;
            } else if (inst instanceof mvInst) {
                mvInst curInst = (mvInst) inst ;
                curInst.rs1 = loadVirtualReg(inst, curInst.rs1, t0) ;
                curInst.rd = storeVirtualReg(inst, curInst.rd, t1) ;
            } else if (inst instanceof storeInst) {
                storeInst curInst = (storeInst) inst ;
                curInst.rs1 = loadVirtualReg(inst, curInst.rs1, t0) ;
                curInst.rs2 = loadVirtualReg(inst, curInst.rs2, t1) ;
            }
        }
    }
}