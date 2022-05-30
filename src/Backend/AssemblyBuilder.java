package Backend;

import java.io.PrintStream;
import java.util.ArrayList;
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
import MIR.IRType.IRClassType;
import MIR.IRType.IRIntType;
import MIR.IRType.IRNullType;
import MIR.IRType.IRPointerType;
import MIR.IRType.IRType;
import MIR.IRType.IRVoidType;
// import Optimize.RegisterAllocation;
import MIR.binary.IROperator;

public class AssemblyBuilder {
    globalDefine globalDef ;
    AssemblyGlobalDefine AssemblyGlobalDef ;
    AssemblyFunction curFunction ;
    AssemblyBlock curBlock ;
    PhysicalReg[] phyRegs ;
    PhysicalReg zero, ra, sp, a0, s0 ;
    PhysicalReg t0, t1, t2, t3 ;
    // Map<String, VirtualReg> toRegMap = new HashMap<>() ;
    Map<String, ArrayList<Integer> > classOffset = new HashMap<>() ;
    public AssemblyBuilder (globalDefine _globalDef, AssemblyGlobalDefine _AssemblyGlobalDefine) {
        globalDef = _globalDef ;
        AssemblyGlobalDef = _AssemblyGlobalDefine ;
        init_phyRegs () ;
        build_globalDef () ;
        build_root() ;
        phi_storeValue() ;
        // addRetInst () ;
        try {
            new AssemblyPrinter(new PrintStream("debug.s"), AssemblyGlobalDef) ;
        } catch (Exception ex) {}
        // RegAlloc_root() ;
    }
    private void init_phyRegs () {
        phyRegs = AssemblyGlobalDef.phyRegs ;
        zero = phyRegs[0] ;
        ra = phyRegs[1] ;
        sp = phyRegs[2] ;
        a0 = phyRegs[10] ;
        s0 = phyRegs[8] ;
        t0 = phyRegs[5] ;
        t1 = phyRegs[6] ;
        t2 = phyRegs[7] ;
        t3 = phyRegs[28] ;
    }
    private void build_globalDef () {
        for (statement stmt : globalDef.globalDefStmt) {
            if (stmt instanceof globalDefineStmt) {
                globalDefineStmt globalReg = (globalDefineStmt) stmt ;
                AssemblyGlobalDef.globalDefine.add(new globalReg(globalReg.reg.registerID, globalReg.initConstant.value, globalReg.reg.type.size)) ;            
            } else if (stmt instanceof globalStringConstantStmt) {
                globalStringConstantStmt globalStr = (globalStringConstantStmt) stmt ;
                AssemblyGlobalDef.globalDefine.add(new globalStringConstant(globalStr.reg.registerID, globalStr.stringConstant)) ;
            } else if (stmt instanceof structDefine) {
                structDefine classDefine = (structDefine) stmt ;
                IRClassType classType = classDefine.classType ;
                String className = classDefine.classType.className ;
                ArrayList<Integer> offset = new ArrayList<>() ;
                offset.add(0) ;
                for (int i = 0; i < classType.classTypes.size(); i ++) {
                    IRType curType = classType.classTypes.get(i) ;
                    int size = 0 ;
                    if (curType instanceof IRPointerType) size = 8 ;
                    else size = ((IRIntType) curType).width / 8 ;
                    // offset.add(offset.get(offset.size() - 1) + curType.size) ;
                    offset.add(offset.get(offset.size() - 1) + size) ;
                }
                classOffset.put(className, offset) ;
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
            curFunction.toRegMap.put(curParameter.registerID, parameterReg) ;
        }
        for (int i = 8; i < curIRFunc.parameters.size(); i ++) {
            register curParameter = curIRFunc.parameters.get(i) ;
            VirtualReg parameterReg = new VirtualReg(curFunction.curRegID ++, curParameter.type.size) ;
            initBlock.push_back(new loadInst(curParameter.type.size, parameterReg, new Imm((i - 8) * 4), s0));
            curFunction.toRegMap.put(curParameter.registerID, parameterReg) ;
        }

        // callee registers
        VirtualReg calleeRegs[] = new VirtualReg [32] ;
        // calleeRegs[2] = new VirtualReg(curFunction.curRegID ++, 4) ;
        // initBlock.push_back(new mvInst(phyRegs[2], calleeRegs[2]));
        calleeRegs[8] = new VirtualReg(curFunction.curRegID ++, 4) ;
        initBlock.push_back(new mvInst(phyRegs[8], calleeRegs[8]));
        calleeRegs[9] = new VirtualReg(curFunction.curRegID ++, 4) ;
        initBlock.push_back(new mvInst(phyRegs[9], calleeRegs[9]));
        for (int i = 18; i <= 27; i ++) {
            calleeRegs[i] = new VirtualReg(curFunction.curRegID ++, 4) ;
            initBlock.push_back(new mvInst(phyRegs[i], calleeRegs[i]));
        }
        initBlock.push_back(new jumpInst(new label(curIRFunc.blocks.get(0).identifier)));

        for (block curIRBlock : curIRFunc.blocks) {
            build_block(curIRBlock) ;
            curFunction.blocks.add(curBlock) ;
        }

        // callee registers 
        AssemblyBlock tailBlock = curFunction.blocks.get(curFunction.blocks.size() - 1) ;
        // tailBlock.push_back(new mvInst(calleeRegs[2], phyRegs[2]));
        // tailBlock.push_back(new mvInst(calleeRegs[8], phyRegs[8]));
        tailBlock.push_back(new mvInst(calleeRegs[9], phyRegs[9]));
        for (int i = 18; i <= 27; i ++) {
            tailBlock.push_back(new mvInst(calleeRegs[i], phyRegs[i]));
        }
    }
    private void build_block (block curIRBlock) {
        curBlock = new AssemblyBlock(curIRBlock.identifier) ;
        curFunction.labelToBlock.put(curBlock.identifier, curBlock) ;
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
            if (x.type instanceof IRNullType) {
                rs = new VirtualReg(curFunction.curRegID ++, 4) ;
                curBlock.push_back(new liInst(rs, new Imm(0)));
                return rs ;
            }
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
            if (x.type instanceof IRNullType) {
                rs = new VirtualReg(curFunction.curRegID ++, 4) ;
                curBlock.push_back(new liInst(rs, new Imm(0)));
                return rs ;
            }
            if (reg.isGlobal) {
                // System.out.println (reg) ;
                rs = new VirtualReg(curFunction.curRegID ++, reg.type.size) ;
                curBlock.push_back(new laInst(rs, reg.registerID)) ;
            } else {
                if (!curFunction.toRegMap.containsKey(reg.registerID)) {
                    rs = new VirtualReg(curFunction.curRegID ++, x.type.size) ;
                    curFunction.toRegMap.put(reg.registerID, rs) ;
                    // fake alloca
                    // curFunction.offset += 4 ;
                    // curFunction.regOffset.put(rs, curFunction.offset) ;
                } else {
                    rs = curFunction.toRegMap.get(reg.registerID) ;
                }
            }
        }
        return rs ;
    }
    private VirtualReg entityToReg (entity x, Inst inst) {
        VirtualReg rs = null ;
        if (x instanceof constant) {
            rs = new VirtualReg(curFunction.curRegID ++, 4) ;
            constant c = (constant) x ;
            int value = ((constant) c).value ;
            curBlock.insert_before(inst, new liInst(rs, new Imm(value)));
        } else {
            register reg = (register) x ;
            if (reg.isGlobal) {
                // System.out.println (reg) ;
                rs = new VirtualReg(curFunction.curRegID ++, reg.type.size) ;
                curBlock.insert_before(inst, new laInst(rs, reg.registerID)) ;
            } else {
                if (!curFunction.toRegMap.containsKey(reg.registerID)) {
                    rs = new VirtualReg(curFunction.curRegID ++, x.type.size) ;
                    curFunction.toRegMap.put(reg.registerID, rs) ;
                    // fake alloca
                    // curFunction.offset += 4 ;
                    // curFunction.regOffset.put(rs, curFunction.offset) ;
                } else {
                    rs = curFunction.toRegMap.get(reg.registerID) ;
                }
            }
        }
        return rs ;
    }
    private void genInst (statement curIRStmt) {
        if (curIRStmt instanceof alloca) {
            // real alloca
            // alloca curIRInst = (alloca) curIRStmt ;
            // if (curFunction.toRegMap.containsKey(curIRInst.reg.registerID)) return ;
            // VirtualReg cur = new VirtualReg(curFunction.curRegID ++, curIRInst.type.size) ;
            // curFunction.toRegMap.put(curIRInst.reg.registerID, cur) ;
            // // System.out.println("alloc " + curIRInst.reg.registerID + " " + cur);
            // curFunction.offset += 4 ;
            // curFunction.regOffset.put(cur, curFunction.offset) ;

            // fake alloca
            // System.out.println(curIRStmt) ;
            alloca curIRInst = (alloca) curIRStmt ;
            if (curFunction.toRegMap.containsKey(curIRInst.reg.registerID)) return ;
            VirtualReg cur = new VirtualReg(curFunction.curRegID ++, curIRInst.type.size) ;
            curFunction.toRegMap.put(curIRInst.reg.registerID, cur) ;
            curFunction.allocaRegs.add(curIRInst.reg.registerID) ;
        } else if (curIRStmt instanceof binary) {
            binary curIRInst = (binary) curIRStmt ;
            entity left = curIRInst.left, right = curIRInst.right, dest = curIRInst.dest ;
            VirtualReg rd = entityToReg(dest) ;
            if (curIRInst.op == IROperator.add && ((left instanceof constant && immInRange(((constant) left).value)) || (right instanceof constant && immInRange(((constant) right).value)))) {
                VirtualReg rs; Imm imm ;
                if (left instanceof constant) {
                    imm = new Imm(((constant) left).value) ;
                    rs = entityToReg(right) ;
                } else {
                    imm = new Imm(((constant) right).value) ;
                    rs = entityToReg(left) ;
                }
                curBlock.push_back(new ImmInst(immInstOp.addi, rs, imm, rd));
            } else {
                VirtualReg rs1, rs2 ;
                rs1 = entityToReg(left); rs2 = entityToReg(right) ;
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
            }
            curFunction.toRegMap.put(((register) dest).registerID, rd) ;
        } else if (curIRStmt instanceof load) {
            load curLoad = (load) curIRStmt ;
            entity from = curLoad.from, to = curLoad.to ;
            // VirtualReg rd = new VirtualReg(curFunction.curRegID ++, to.type.size) ;
            VirtualReg rd = entityToReg(to) ;
            if (from instanceof register && ((register) from).isGlobal) {
                register fromGlobal = (register) from ;
                curBlock.push_back(new loadInst(fromGlobal.type.size, fromGlobal.registerID, rd));
                // curBlock.push_back(new laInst(rd, fromGlobal.registerID)) ;
            } else {
                VirtualReg rs = entityToReg(from) ;
                
                if (!curFunction.allocaRegs.contains(((register) from).registerID)) {
                    // real load
                    if (curFunction.regOffset.containsKey(rs)) {
                        int imm = -curFunction.regOffset.get(rs) ;
                        // if (immInRange(imm)) curBlock.push_back(new loadInst(to.type.size, rd, new Imm(imm), s0));
                        // else {
                            VirtualReg t = new VirtualReg(curFunction.curRegID ++, 4) ;
                            curBlock.push_back(new liInst(t, new Imm(imm)));
                            curBlock.push_back(new binaryInst(binaryInstOp.add, s0, t, t));
                            curBlock.push_back(new loadInst(to.type.size, rd, new Imm(0), t));
                        // }
                        // loadFromImm(to.type.size, rd, imm, s0) ;
                        // curBlock.push_back(new loadInst(to.type.size, rd, new Imm (imm), s0));
                    } else {
                        curBlock.push_back(new loadInst(to.type.size, rd, new Imm (0), rs));
                    }
                } else {
                    // fake load
                    curBlock.push_back(new mvInst(rs, rd));
                }
            }
            curFunction.toRegMap.put (((register) to).registerID, rd) ;
        } else if (curIRStmt instanceof store) {
            store curStore = (store) curIRStmt ;
            entity from = curStore.from, to = curStore.dest ;
            if (from == null || to == null) return ;
            if (to instanceof register && ((register) to).isGlobal) {
                register toGlobal = (register) to ;
                VirtualReg rs = entityToReg(from), t = new VirtualReg(curFunction.curRegID ++, 4) ;
                // curBlock.push_back(new liInst(t, new Imm(0)));
                // curBlock.push_back(new storeInst(toGlobal.type.size, toGlobal.registerID, rs, t)); 
                curBlock.push_back(new laInst(t, toGlobal.registerID));
                curBlock.push_back(new storeInst(toGlobal.type.size, rs, new Imm(0), t));
            } else {
                VirtualReg rs = entityToReg(from), rd = entityToReg(to) ;
                // System.out.println(rs + " " + rd);
                // System.out.println(rd + " " + curFunction.regOffset.containsKey(rd)) ;

                // real store
                if (!curFunction.allocaRegs.contains(((register) to).registerID)) {
                    if (curFunction.regOffset.containsKey(rd)) {
                        int imm = -curFunction.regOffset.get(rd) ;
                        // System.out.println(rd + " imm:" + imm);
                        // if (immInRange(imm)) curBlock.push_back(new storeInst(from.type.size, rs, new Imm(imm), s0));
                        // else {
                            VirtualReg t = new VirtualReg(curFunction.curRegID ++, 4) ;
                            curBlock.push_back(new liInst(t, new Imm(imm)));
                            curBlock.push_back(new binaryInst(binaryInstOp.add, s0, t, t));
                            curBlock.push_back(new storeInst(from.type.size, rs, new Imm(0), t));
                        // }
                        // loadFromImm(from.type.size, rs, imm, s0);
                        // curBlock.push_back(new storeInst(from.type.size, rs, new Imm (imm), s0)) ;
                    } else {
                        // System.out.println(rs + " " + rd);
                        curBlock.push_back(new storeInst(from.type.size, rs, new Imm (0), rd));
                    }
                } else {
                    // fake store
                    curBlock.push_back(new mvInst(rs, rd));
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
            int size = 0 ;
            for (int i = 8; i < curFuncCall.parameters.size(); i ++)
                size += curFuncCall.parameters.get(i).type.size ;
            curFunction.functionCallOffset = Math.max(curFunction.functionCallOffset, size) ; 
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
                // VirtualReg rd = new VirtualReg(curFunction.curRegID ++, curFuncCall.destReg.type.size) ;
                VirtualReg rd = entityToReg(curFuncCall.destReg) ;
                curBlock.push_back(new mvInst(a0, rd)) ;
                curFunction.toRegMap.put(curFuncCall.destReg.registerID, rd) ;
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
            VirtualReg rs = entityToReg(curIRBitcast.from), rd = entityToReg(curIRBitcast.to) ;
            // curFunction.toRegMap.put (curIRBitcast.to.registerID, entityToReg(curIRBitcast.from)) ;
            curBlock.push_back(new mvInst(rs, rd));
        } else if (curIRStmt instanceof trunc) {
            trunc curIRTrunc = (trunc) curIRStmt ;
            VirtualReg rs = entityToReg(curIRTrunc.from), rd = entityToReg(curIRTrunc.to) ;
            // curFunction.toRegMap.put(((register)curIRTrunc.to).registerID, entityToReg(curIRTrunc.from)) ;
            // System.out.println(curIRTrunc.to.registerID + " " + entityToReg(curIRTrunc.from)) ;
            curBlock.push_back(new mvInst(rs, rd));
        } else if (curIRStmt instanceof zext) {
            zext curIRZext = (zext) curIRStmt ;
            VirtualReg rs = entityToReg(curIRZext.from), rd = entityToReg(curIRZext.to) ;
            // curFunction.toRegMap.put(((register) curIRZext.to).registerID, entityToReg(curIRZext.from)) ;
            curBlock.push_back(new mvInst(rs, rd));
        } else if (curIRStmt instanceof getelementptr) {
            getelementptr curIRGetelementptr = (getelementptr) curIRStmt ;
            register from = curIRGetelementptr.from, to = curIRGetelementptr.to ;
            int size = ((IRPointerType) from.type).type.size ;
            VirtualReg rs = entityToReg(from) ;
            // VirtualReg rd = new VirtualReg(curFunction.curRegID ++, to.type.size) ;
            VirtualReg rd = entityToReg(to) ;
            // entity value = curIRGetelementptr.value.get(0) ;
            entity value ;
            if (curIRGetelementptr.value.size() == 1) {
                value = curIRGetelementptr.value.get(0) ;
                VirtualReg mulRes = new VirtualReg(curFunction.curRegID ++, value.type.size) ;
                curBlock.push_back(new binaryInst(binaryInstOp.mul, entityToReg(value), entityToReg(new constant(size, value.type)), mulRes));
                curBlock.push_back(new binaryInst(binaryInstOp.add, rs, mulRes, rd)) ;
            }
            else {
                value = curIRGetelementptr.value.get(1) ;
                constant c = (constant) value ;
                int idx = c.value ;
                String className = ((IRClassType)((IRPointerType) from.type).type).className ;
                // String className = ((IRClassType) from.type).className ;
                int offset = classOffset.get(className).get(idx) ;
                curBlock.push_back(new ImmInst(immInstOp.addi, rs, new Imm(offset), rd)) ;
                // System.out.println("idx:" + idx + " offset:" + offset) ;
            }
            curFunction.toRegMap.put(to.registerID, rd) ;
        } else if (curIRStmt instanceof phi) {
            phi curIRPhi = (phi) curIRStmt ;
            register dest = curIRPhi.destReg ;
            // VirtualReg rd = new VirtualReg(curFunction.curRegID ++, dest.type.size) ;
            VirtualReg rd = entityToReg(dest) ;
            curFunction.toRegMap.put (dest.registerID, rd) ;
            for (int i = 0; i < curIRPhi.labels.size(); i ++) {
                label curLabel = curIRPhi.labels.get(i) ;
                entity value = curIRPhi.value.get(i) ;
                if (!curFunction.phiRd.containsKey(curLabel.labelID)) {
                    curFunction.phiRd.put(curLabel.labelID, new ArrayList<>()) ;
                    curFunction.phiValue.put(curLabel.labelID, new ArrayList<>()) ;
                    curFunction.phiAtBlock.put(curLabel.labelID, new ArrayList<>()) ;
                }
                curFunction.phiRd.get(curLabel.labelID).add(rd) ;
                curFunction.phiValue.get(curLabel.labelID).add(value) ;
                curFunction.phiAtBlock.get(curLabel.labelID).add(curBlock.identifier) ;
            }
        }
    }
    private void phi_storeValue () {
        for (AssemblyFunction curFunc : AssemblyGlobalDef.functions) {
            if (curFunc.phiRd.isEmpty()) continue ;
            curFunction = curFunc ;
            for (AssemblyBlock block : curFunc.blocks) {
                if (!curFunc.phiRd.containsKey(block.identifier)) continue ;
                curBlock = block ;
                for (int i = 0; i < curFunc.phiValue.get(block.identifier).size(); i ++) {
                    // entity value = curFunc.phiValue.get(block.identifier).get(i);
                    // Inst markInst = null ;
                    // for (Inst inst = block.head; inst != null; inst = inst.next) {
                    //     if (inst instanceof bnezInst || inst instanceof jumpInst) {
                    //         if (markInst == null) {
                    //             markInst = inst; break ;
                    //         }
                    //     }
                    // }
                    // VirtualReg rs = entityToReg(value, markInst) ;
                    // // System.out.println(value + " " + rs);
                    // // VirtualReg rs = entityToReg(value) ;
                    // VirtualReg rd = curFunc.phiRd.get(block.identifier).get(i) ;
                    // for (Inst inst = block.head; inst != null; inst = inst.next) {
                    //     if (inst instanceof bnezInst || inst instanceof jumpInst) {
                    //         // System.out.println("mv\t" + rd + ", " + rs);
                    //         block.insert_before(inst, new mvInst(rs, rd)) ;
                    //     }
                    // }
                    entity value = curFunc.phiValue.get(block.identifier).get(i) ;
                    VirtualReg rd = curFunc.phiRd.get(block.identifier).get(i) ;
                    String phiAtBlockStr = curFunc.phiAtBlock.get(block.identifier).get(i) ;
                    for (Inst inst = block.head; inst != null; inst = inst.next) {
                        if (inst instanceof bnezInst) {
                            bnezInst curBnez = (bnezInst) inst ;
                            if (curBnez.toLabel.labelID.equals(phiAtBlockStr)) {
                                VirtualReg rs = entityToReg(value, inst) ;
                                block.insert_before(inst, new mvInst(rs, rd));
                            }
                        } else if (inst instanceof jumpInst) {
                            jumpInst curJump = (jumpInst) inst ;
                            if (curJump.toLabel.labelID.equals(phiAtBlockStr)) {
                                VirtualReg rs = entityToReg(value, inst) ;
                                block.insert_before(inst, new mvInst(rs, rd));
                            }
                        }
                    }
                }
            }
        }
    }
    private void addRetInst () {
        for (AssemblyFunction function : AssemblyGlobalDef.functions) {
            AssemblyBlock tailBlock = function.blocks.get(function.blocks.size() - 1) ;
            tailBlock.push_back(new retInst());
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
            // if (immInRange(imm)) curBlock.insert_before(inst, new loadInst(Vreg.size, Preg, new Imm(imm), s0));
            // else {
                curBlock.insert_before(inst, new liInst(t3, new Imm(imm)));
                curBlock.insert_before(inst, new binaryInst(binaryInstOp.add, s0, t3, t3));
                curBlock.insert_before(inst, new loadInst(Vreg.size, Preg, new Imm(0), t3));
            // }
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
            // if (immInRange(imm)) curBlock.insert_after(inst, new storeInst(Vreg.size, Preg, new Imm (imm), s0));
            // else {
                curBlock.insert_after(inst, new storeInst(Vreg.size, Preg, new Imm(0), t3));
                curBlock.insert_after(inst, new binaryInst(binaryInstOp.add, s0, t3, t3));
                curBlock.insert_after(inst, new liInst(t3, new Imm(imm)));
            // }
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
        int offset = function.offset + function.functionCallOffset ;
        if (offset % 16 != 0) offset = (offset / 16 + 1) * 16 ;
        // if (immInRange(offset)) {
        //     AssemblyBlock headBlock = function.blocks.get(0) ;
        //     if (headBlock.head == null) headBlock.push_back(new ImmInst(immInstOp.addi, sp, new Imm(offset), s0));
        //     else headBlock.insert_before(headBlock.head, new ImmInst(immInstOp.addi, sp, new Imm(offset), s0));
        //     headBlock.insert_before(headBlock.head, new storeInst(4, s0, new Imm(offset - 8), sp));
        //     headBlock.insert_before(headBlock.head, new storeInst(4, ra, new Imm(offset - 4), sp));
        //     headBlock.insert_before(headBlock.head, new ImmInst(immInstOp.addi, sp, new Imm(-offset), sp));
        //     AssemblyBlock tailBlock = function.blocks.get(function.blocks.size() - 1) ;
        //     tailBlock.push_back(new loadInst(4, ra, new Imm (offset - 4), sp));
        //     tailBlock.push_back(new loadInst(4, s0, new Imm (offset - 8), sp));
        //     tailBlock.push_back(new ImmInst(immInstOp.addi, sp, new Imm(offset), sp));
        //     tailBlock.push_back(new retInst());
        // } else {
            AssemblyBlock headBlock = function.blocks.get(0) ;
            if (headBlock.head == null) headBlock.push_back(new mvInst(t1, s0)) ;
            else headBlock.insert_before(headBlock.head, new mvInst(t1, s0));
            headBlock.insert_before(headBlock.head, new storeInst(4, s0, new Imm(-8), t1));
            headBlock.insert_before(headBlock.head, new storeInst(4, ra, new Imm(-4), t1));
            headBlock.insert_before(headBlock.head, new binaryInst(binaryInstOp.add, sp, t0, t1));
            headBlock.insert_before(headBlock.head, new binaryInst(binaryInstOp.sub, sp, t0, sp));
            headBlock.insert_before(headBlock.head, new liInst(t0, new Imm(offset)));
            AssemblyBlock tailBlock = function.blocks.get(function.blocks.size() - 1) ;
            tailBlock.push_back(new liInst(t0, new Imm(offset)));
            tailBlock.push_back(new binaryInst(binaryInstOp.add, sp, t0, t1));
            tailBlock.push_back(new loadInst(4, ra, new Imm(-4), t1));
            tailBlock.push_back(new loadInst(4, s0, new Imm(-8), t1));
            tailBlock.push_back(new binaryInst(binaryInstOp.add, sp, t0, sp)) ;
            tailBlock.push_back(new retInst());
        // }
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
                curInst.rd = storeVirtualReg(inst, curInst.rd, t1) ; // rd
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
