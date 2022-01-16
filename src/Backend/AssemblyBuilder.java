package Backend;

import java.util.HashMap;
import java.util.Map;

import AST.binaryExprNode.binaryOperator;
import Assembly.* ;
import Assembly.Inst.* ;
import Assembly.Inst.ImmInst.immInstOp ;
import Assembly.Inst.binaryInst.binaryInstOp ;
import Assembly.Operand.* ;
import MIR.* ;

public class AssemblyBuilder {
    globalDefine globalDef ;
    AssemblyGlobalDefine AssemblyGlobalDef ;
    AssemblyFunction curFunction ;
    AssemblyBlock curBlock ;
    PhysicalReg[] phyRegs = new PhysicalReg [32] ;
    PhysicalReg zero, ra, sp, a0, s0 ;
    Map<entity, Reg> toRegMap = new HashMap<>() ;
    public AssemblyBuilder (globalDefine _globalDef, AssemblyGlobalDefine _AssemblyGlobalDefine) {
        globalDef = _globalDef ;
        AssemblyGlobalDef = _AssemblyGlobalDefine ;
        init_phyRegs () ;
        build_root() ;
    }
    private void init_phyRegs () {
        zero = phyRegs[0] = new PhysicalReg("zero") ;
        ra = phyRegs[1] = new PhysicalReg("ra") ;
        sp = phyRegs[2] = new PhysicalReg("sp") ;
        for (int i = 10; i <= 17; i ++) {
            phyRegs[i] = new PhysicalReg("a" + Integer.toString(i - 10)) ;
        }
        for (int i = 18; i <= 27; i ++) {
            phyRegs[i] = new PhysicalReg("s" + Integer.toString(i - 16)) ;
        }
    }
    private void build_root () {
        for (function curIRFunc : globalDef.functions) {
            build_function(curIRFunc) ;
            AssemblyGlobalDef.functions.add(curFunction) ;
        }
    }
    private void build_function (function curIRFunc) {
        curFunction = new AssemblyFunction(curIRFunc.identifier) ;
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

    private Reg entityToReg (entity x) {
        Reg rs = null ;
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
                rs = toRegMap.get(x) ;
            }
        }
        return rs ;
    }

    private void genInst (statement curIRStmt) {
        if (curIRStmt instanceof alloca) {
            alloca curIRInst = (alloca) curIRStmt ;
            Reg cur = new VirtualReg(curFunction.curRegID ++, curIRInst.type.size) ;
            toRegMap.put(curIRInst.reg, cur) ;
            curFunction.offset += 4 ;
            curFunction.regOffset.put(cur, curFunction.offset) ;
        } else if (curIRStmt instanceof binary) {
            binary curIRInst = (binary) curIRStmt ;
            entity left = curIRInst.left, right = curIRInst.right, dest = curIRInst.dest ;
            Reg rs1, rs2, rd ;
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
            toRegMap.put(dest, rd) ;
        } else if (curIRStmt instanceof load) {
            load curLoad = (load) curIRStmt ;
            register from = (register) curLoad.from, to = (register) curLoad.to ;
            Reg rd = new VirtualReg(curFunction.curRegID ++, to.type.size) ;
            Reg rs = entityToReg(from) ;
            if (curFunction.regOffset.containsKey(rs)) {
                int imm = -curFunction.regOffset.get(rs) ;
                curBlock.push_back(new loadInst(to.type.size, s0, rd, new Imm(imm)));
            } else {
                curBlock.push_back(new loadInst(to.type.size, rs, rd, new Imm(0)));
            }
            toRegMap.put (to, rd) ;
        } else if (curIRStmt instanceof store) {
            store curStore = (store) curIRStmt ;
            register from = (register) curStore.from, to = (register) curStore.dest ;
            Reg rs = entityToReg(from), rd = entityToReg(to) ;
            if (curFunction.regOffset.containsKey(rd)) {
                int imm = -curFunction.regOffset.get(rd) ;
                curBlock.push_back(new storeInst(from.type.size, s0, rd, new Imm(imm))) ;
            } else {
                curBlock.push_back(new storeInst(from.type.size, rs, rd, new Imm (0)));
            }
        } else if (curIRStmt instanceof returnStmt) {
            returnStmt curRet = (returnStmt) curIRStmt ;
            register reg = (register) curRet.returnReg ;
            Reg rs = entityToReg(reg) ;
            curBlock.push_back(new mvInst(rs, a0)) ;
        } else if (curIRStmt instanceof functioncall) {
            functioncall curFuncCall = (functioncall) curIRStmt ;
            for (int i = 0; i < Math.min (8, curFuncCall.parameters.size()); i ++) {
                entity curEntity = curFuncCall.parameters.get(i) ;
                Reg rs = entityToReg(curEntity) ;
                curBlock.push_back(new mvInst(rs, phyRegs[10 + i])) ;
            }
            for (int i = 8; i < curFuncCall.parameters.size(); i ++) {
                entity curEntity = curFuncCall.parameters.get(i) ;
                Reg rs = entityToReg(curEntity) ;
                curBlock.push_back(new storeInst(curEntity.type.size, rs, sp, new Imm((i - 8) * 4)));
            }
            curBlock.push_back(new callInst(curFuncCall.functionName)) ;
            if (curFuncCall.destReg != null) {
                Reg rd = new VirtualReg(curFunction.curRegID ++, curFuncCall.destReg.type.size) ;
                curBlock.push_back(new mvInst(a0, rd)) ;
                toRegMap.put(curFuncCall.destReg, rd) ;
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
}
