package Backend;

import java.io.PrintStream;
import java.util.HashMap;
import java.util.Map;

import Assembly.* ;
import Assembly.Global.globalReg;
import Assembly.Global.globalStringConstant;
import Assembly.Inst.* ;
import Assembly.Inst.ImmInst.immInstOp ;
import Assembly.Inst.binaryInst.binaryInstOp ;
import Assembly.Operand.* ;
import MIR.* ;
import MIR.IRType.IRPointerType;
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
        build_globalDef () ;
        build_root() ;
        phi_storeValue() ;
        try {
            new AssemblyPrinter(new PrintStream("debug.s"), AssemblyGlobalDef) ;
        } catch (Exception ex) {}
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
    private void build_globalDef () {
        for (statement stmt : globalDef.globalDefStmt) {
            if (stmt instanceof globalDefineStmt) {
                globalDefineStmt globalReg = (globalDefineStmt) stmt ;
                AssemblyGlobalDef.globalDefine.add(new globalReg(globalReg.reg.registerID, globalReg.initConstant.value, globalReg.reg.type.size)) ;            
            } else if (stmt instanceof globalStringConstantStmt) {
                globalStringConstantStmt globalStr = (globalStringConstantStmt) stmt ;
                AssemblyGlobalDef.globalDefine.add(new globalStringConstant(globalStr.reg.registerID, globalStr.stringConstant)) ;
            }
        }
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
        for (int i = 0; i < Integer.min(8, curIRFunc.parameters.size()); i ++) {
            register curParameter = curIRFunc.parameters.get(i) ;
            VirtualReg parameterReg = new VirtualReg(curFunction.curRegID ++, curParameter.type.size) ;
            initBlock.push_back(new mvInst(phyRegs[10 + i], parameterReg));
            toRegMap.put(curParameter.registerID, parameterReg) ;
        }
        for (int i = 8; i < curIRFunc.parameters.size(); i ++) {
            register curParameter = curIRFunc.parameters.get(i) ;
            VirtualReg parameterReg = new VirtualReg(curFunction.curRegID ++, curParameter.type.size) ;
            initBlock.push_back(new loadInst(curParameter.type.size, parameterReg, new Imm((i - 8) * 4), s0));
            toRegMap.put(curParameter.registerID, parameterReg) ;
        }
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
    
    private boolean immInRange (int val) {
        return val >= -2048 && val < 2048 ;
    }
    private VirtualReg entityToReg (entity x) {
        VirtualReg rs = null ;
        if (x instanceof constant) {
            rs = new VirtualReg(curFunction.curRegID ++, 4) ;
            constant c = (constant) x ;
            int value = ((constant) c).value ;
            // int absvalue = Math.abs (value) ;
            curBlock.push_back(new liInst(rs, new Imm(value)));
            // if (absvalue < 2048) {
            //     curBlock.push_back(new ImmInst(immInstOp.addi, zero, new Imm(value), rs));
            // } else {
            //     curBlock.push_back(new ImmInst(immInstOp.addi, zero, new Imm(absvalue >> 22), rs)) ;
            //     absvalue %= (1 << 22) ;
            //     curBlock.push_back(new ImmInst(immInstOp.slli, rs, new Imm(11), rs));
            //     curBlock.push_back(new ImmInst(immInstOp.addi, rs, new Imm(absvalue >> 11), rs)) ;
            //     absvalue %= (1 << 11) ;
            //     curBlock.push_back(new ImmInst(immInstOp.slli, rs, new Imm(11), rs)) ;
            //     curBlock.push_back(new ImmInst(immInstOp.addi, rs, new Imm(absvalue), rs)) ;
            //     if (value < 0) curBlock.push_back(new binaryInst(binaryInstOp.sub, zero, rs, rs));
            // }
        } else {
            register reg = (register) x ;
            if (reg.isGlobal) {
                rs = new VirtualReg(curFunction.curRegID ++, reg.type.size) ;
                curBlock.push_back(new laInst(rs, reg.registerID)) ;
            } else {
                if (!toRegMap.containsKey(reg.registerID)) {
                    rs = new VirtualReg(curFunction.curRegID ++, x.type.size) ;
                    toRegMap.put(reg.registerID, rs) ;
                    curFunction.offset += 4 ;
                    curFunction.regOffset.put(rs, curFunction.offset) ;
                } else {
                    rs = toRegMap.get(reg.registerID) ;
                }
            }
        }
        return rs ;
    }
    private void genInst (statement curIRStmt) {
        if (curIRStmt instanceof alloca) {
            alloca curIRInst = (alloca) curIRStmt ;
            if (toRegMap.containsKey(curIRInst.reg.registerID)) return ;
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
                    curBlock.push_back(new binaryInst(binaryInstOp.div, rs1, rs2, rd));
                    break ;
                case srem:
                    curBlock.push_back(new binaryInst(binaryInstOp.rem, rs1, rs2, rd));
                    break ;
                case slt:
                    curBlock.push_back(new binaryInst(binaryInstOp.slt, rs1, rs2, rd)); 
                    break ;   
                case sle:
                    curBlock.push_back(new binaryInst(binaryInstOp.slt, rs2, rs1, rd));
                    curBlock.push_back(new ImmInst(immInstOp.xori, rd, new Imm(1), rd));
                    break ;
                case sgt:
                    curBlock.push_back(new binaryInst(binaryInstOp.slt, rs2, rs1, rd));
                    break ;
                case sge:
                    curBlock.push_back(new binaryInst(binaryInstOp.slt, rs1, rs2, rd));
                    curBlock.push_back(new ImmInst(immInstOp.xori, rd, new Imm(1), rd)); 
                    break ;   
                case eq:
                    curBlock.push_back(new binaryInst(binaryInstOp.xor, rs1, rs2, rd));
                    curBlock.push_back(new ImmInst(immInstOp.sltiu, rd, new Imm(1), rd));
                    break ;
                case ne:
                    curBlock.push_back(new binaryInst(binaryInstOp.xor, rs1, rs2, rd));
                    curBlock.push_back(new ImmInst(immInstOp.sltiu, rd, new Imm(1), rd));
                    curBlock.push_back(new ImmInst(immInstOp.xori, rd, new Imm(1), rd));
                    break ;
                case shl:
                    curBlock.push_back(new binaryInst(binaryInstOp.sll, rs1, rs2, rd));    
                    break ;
                case ashr:
                    curBlock.push_back(new binaryInst(binaryInstOp.sra, rs1, rs2, rd));
                    break ;
                case and:
                    curBlock.push_back(new binaryInst(binaryInstOp.and, rs1, rs2, rd));
                    break ;
                case xor:
                    curBlock.push_back(new binaryInst(binaryInstOp.xor, rs1, rs2, rd));
                    break ;
                case or:
                    curBlock.push_back(new binaryInst(binaryInstOp.or, rs1, rs2, rd));
                    break ;    
                default:
                    break;
            }
            toRegMap.put(((register) dest).registerID, rd) ;
        } else if (curIRStmt instanceof load) {
            load curLoad = (load) curIRStmt ;
            entity from = curLoad.from, to = curLoad.to ;
            VirtualReg rd = new VirtualReg(curFunction.curRegID ++, to.type.size) ;
            if (from instanceof register && ((register) from).isGlobal) {
                register fromGlobal = (register) from ;
                curBlock.push_back(new loadInst(fromGlobal.type.size, fromGlobal.registerID, rd));
            } else {
                VirtualReg rs = entityToReg(from) ;
                if (curFunction.regOffset.containsKey(rs)) {
                    int imm = -curFunction.regOffset.get(rs) ;
                    if (immInRange(imm)) curBlock.push_back(new loadInst(to.type.size, rd, new Imm(imm), s0));
                    else {
                        VirtualReg t = new VirtualReg(curFunction.curRegID ++, 4) ;
                        curBlock.push_back(new liInst(t, new Imm(imm)));
                        curBlock.push_back(new binaryInst(binaryInstOp.add, s0, t, t));
                        curBlock.push_back(new loadInst(to.type.size, rd, new Imm(0), t));
                    }
                    // loadFromImm(to.type.size, rd, imm, s0) ;
                    // curBlock.push_back(new loadInst(to.type.size, rd, new Imm (imm), s0));
                } else {
                    curBlock.push_back(new loadInst(to.type.size, rd, new Imm (0), rs));
                }
            }
            toRegMap.put (((register) to).registerID, rd) ;
        } else if (curIRStmt instanceof store) {
            store curStore = (store) curIRStmt ;
            entity from = curStore.from, to = curStore.dest ;
            if (from == null || to == null) return ;
            if (to instanceof register && ((register) to).isGlobal) {
                register toGlobal = (register) to ;
                VirtualReg rs = entityToReg(from), t = new VirtualReg(curFunction.curRegID ++, 4) ;
                curBlock.push_back(new storeInst(toGlobal.type.size, toGlobal.registerID, rs, t)); 
            } else {
                VirtualReg rs = entityToReg(from), rd = entityToReg(to) ;
                if (curFunction.regOffset.containsKey(rd)) {
                    int imm = -curFunction.regOffset.get(rd) ;
                    if (immInRange(imm)) curBlock.push_back(new storeInst(from.type.size, rs, new Imm(imm), s0));
                    else {
                        VirtualReg t = new VirtualReg(curFunction.curRegID ++, 4) ;
                        curBlock.push_back(new liInst(t, new Imm(imm)));
                        curBlock.push_back(new binaryInst(binaryInstOp.add, s0, t, t));
                        curBlock.push_back(new storeInst(from.type.size, rs, new Imm(0), t));
                    }
                    // loadFromImm(from.type.size, rs, imm, s0);
                    // curBlock.push_back(new storeInst(from.type.size, rs, new Imm (imm), s0)) ;
                } else {
                    curBlock.push_back(new storeInst(from.type.size, rs, new Imm (0), rd));
                }
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
        } else if (curIRStmt instanceof bitcast) {
            bitcast curIRBitcast = (bitcast) curIRStmt ;
            toRegMap.put (curIRBitcast.to.registerID, entityToReg(curIRBitcast.from)) ;
        } else if (curIRStmt instanceof trunc) {
            trunc curIRTrunc = (trunc) curIRStmt ;
            toRegMap.put(curIRTrunc.to.registerID, entityToReg(curIRTrunc.from)) ;
        } else if (curIRStmt instanceof zext) {
            zext curIRZext = (zext) curIRStmt ;
            toRegMap.put(curIRZext.to.registerID, entityToReg(curIRZext.from)) ;
        } else if (curIRStmt instanceof getelementptr) {
            getelementptr curIRGetelementptr = (getelementptr) curIRStmt ;
            register from = curIRGetelementptr.from, to = curIRGetelementptr.to ;
            int size = ((IRPointerType) from.type).type.size ;
            VirtualReg rs = entityToReg(from) ;
            VirtualReg rd = new VirtualReg(curFunction.curRegID ++, to.type.size) ;
            // entity value = curIRGetelementptr.value.get(0) ;
            entity value ;
            if (curIRGetelementptr.value.size() == 1) value = curIRGetelementptr.value.get(0) ;
            else value = curIRGetelementptr.value.get(1) ;
            // if (value instanceof constant) {
            //     constant c = (constant) value ;
            //     if (c.value == 0) curBlock.push_back(new mvInst(rs, rd));
            //     else curBlock.push_back(new ImmInst(immInstOp.addi, rs, new Imm(c.value * size), rd));
            // } else {
                VirtualReg mulRes = new VirtualReg(curFunction.curRegID ++, value.type.size) ;
                curBlock.push_back(new binaryInst(binaryInstOp.mul, entityToReg(value), entityToReg(new constant(size, value.type)), mulRes));
                curBlock.push_back(new binaryInst(binaryInstOp.add, rs, mulRes, rd)) ;
            // }
            toRegMap.put(to.registerID, rd) ;
        } else if (curIRStmt instanceof phi) {
            phi curIRPhi = (phi) curIRStmt ;
            register dest = curIRPhi.destReg ;
            VirtualReg rd = new VirtualReg(curFunction.curRegID ++, dest.type.size) ;
            toRegMap.put (dest.registerID, rd) ;
            for (int i = 0; i < curIRPhi.labels.size(); i ++) {
                label curLabel = curIRPhi.labels.get(i) ;
                entity value = curIRPhi.value.get(i) ;
                curFunction.phiRd.put(curLabel.labelID, rd) ;
                curFunction.phiValue.put(curLabel.labelID, entityToReg(value)) ;
            }
        }
    }
    private void phi_storeValue () {
        for (AssemblyFunction curFunc : AssemblyGlobalDef.functions) {
            if (curFunc.phiRd.isEmpty()) continue ;
            for (AssemblyBlock curBlock : curFunc.blocks) {
                boolean flag = curFunc.phiRd.containsKey(curBlock.identifier) ;
                if (!flag) continue ;
                VirtualReg value = curFunc.phiValue.get(curBlock.identifier) ;
                VirtualReg rd = curFunc.phiRd.get(curBlock.identifier) ;
                for (Inst inst = curBlock.head; inst != null; inst = inst.next) {
                    if (inst instanceof bnezInst || inst instanceof jumpInst) {
                        curBlock.insert_before(inst, new mvInst(value, rd)) ;
                    }
                }
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
            curFunction = function ;
            RegAlloc_function(function) ;
        }
    }
    private void RegAlloc_function (AssemblyFunction function) {
        for (AssemblyBlock block : function.blocks) {
            curBlock = block ;
            RegAlloc_block(block) ;
        }
        int offset = function.offset ;
        if (offset % 16 != 0) offset = (offset / 16 + 1) * 16 ;
        AssemblyBlock headBlock = function.blocks.get(0) ;
        if (headBlock.head == null) headBlock.push_back(new ImmInst(immInstOp.addi, sp, new Imm(offset), s0));
        else headBlock.insert_before(headBlock.head, new ImmInst(immInstOp.addi, sp, new Imm(offset), s0));
        headBlock.insert_before(headBlock.head, new storeInst(4, s0, new Imm(offset - 8), sp));
        headBlock.insert_before(headBlock.head, new storeInst(4, ra, new Imm(offset - 4), sp));
        headBlock.insert_before(headBlock.head, new ImmInst(immInstOp.addi, sp, new Imm(-offset), sp));
        AssemblyBlock tailBlock = function.blocks.get(function.blocks.size() - 1) ;
        tailBlock.push_back(new loadInst(4, ra, new Imm (offset - 4), sp));
        tailBlock.push_back(new loadInst(4, s0, new Imm (offset - 8), sp));
        tailBlock.push_back(new ImmInst(immInstOp.addi, sp, new Imm(offset), sp));
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
                curInst.rs2 = loadVirtualReg(inst, curInst.rs2, t0) ;
                curInst.rs1 = storeVirtualReg(inst, curInst.rs1, t1) ; // rd
            } else if (inst instanceof mvInst) {
                mvInst curInst = (mvInst) inst ;
                curInst.rs1 = loadVirtualReg(inst, curInst.rs1, t0) ;
                curInst.rd = storeVirtualReg(inst, curInst.rd, t1) ;
            } else if (inst instanceof storeInst) {
                storeInst curInst = (storeInst) inst ;
                curInst.rs1 = loadVirtualReg(inst, curInst.rs1, t0) ;
                curInst.rs2 = loadVirtualReg(inst, curInst.rs2, t1) ;
            } else if (inst instanceof liInst) {
                liInst curInst = (liInst) inst ;
                curInst.rd = storeVirtualReg(inst, curInst.rd, t0) ;
            }
        }
    }
}
