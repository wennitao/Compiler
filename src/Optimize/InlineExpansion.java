package Optimize;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import AST.statementNode;
import MIR.* ;

public class InlineExpansion {
    private globalDefine globalDefine ;
    final int K = 3 ;
    public InlineExpansion (globalDefine _GlobalDefine) {
        globalDefine = _GlobalDefine ;
        inlineExpansion() ;
    }

    private void inlineExpansion () {
        collectFunctions() ;
        for (function curFunction : globalDefine.functions) {
            if (curFunction.isBuiltin) continue ;
            // if (curFunction.identifier.equals("main")) continue ;
            inlineExpansion(curFunction);
        }
    }

    Map<String, function> strToFunction = new HashMap<>();
    private void collectFunctions () {
        for (function curFunction : globalDefine.functions) {
            strToFunction.put(curFunction.identifier, curFunction) ;     
        }
    }

    int functioncallCount = 0 ;
    private void inlineExpansion (function curFunction) {
        Set<block> preExistBlocks = new HashSet<>() ;
        Map<String, String> finalOutBlock = new HashMap<>() ;

        for (block b : curFunction.blocks) preExistBlocks.add(b) ;

        int blockCount = curFunction.blocks.size() ;
        int curBlockIdx = 0, curStmtIdx = 0 ;
        block preExistBlock = null ;
        while (curBlockIdx < blockCount) {
            block curBlock = curFunction.blocks.get(curBlockIdx) ;
            if (preExistBlocks.contains(curBlock)) preExistBlock = curBlock ;
            statement curStatement = curBlock.statements.get(curStmtIdx) ;
            // System.out.println(curBlock.identifier);
            // System.out.println(curStatement);
            if (curStatement instanceof functioncall) {
                functioncall curFunctioncall = (functioncall) curStatement ;
                function callFunction = strToFunction.get(curFunctioncall.functionName) ;
                if (curFunctioncall.functionName.equals(curFunction.identifier) || callFunction.isBuiltin) {
                    curStmtIdx ++ ;
                    if (curStmtIdx == curBlock.statements.size()) {
                        curBlockIdx ++; curStmtIdx = 0 ;
                    }
                    continue ;
                }

                block functionCallBlock = new block(curFunction.identifier + "_call_" + callFunction.identifier + "_" + functioncallCount) ;
                block outBlock = new block(functionCallBlock.identifier + "_out") ;

                // update final out block
                finalOutBlock.put(preExistBlock.identifier, outBlock.identifier) ;

                // split block need to update phi!!!
                // -----------------caution-----------------
                
                block returnBlock = functioncallFillInBlock (curFunction, curFunctioncall, functionCallBlock, functionCallBlock.identifier) ;
            
                // jump to out block
                returnBlock.push_back(new branch(new label(outBlock.identifier)));

                // copy statements to out block
                for (int i = curStmtIdx + 1; i < curBlock.statements.size(); i ++)
                    outBlock.push_back(curBlock.statements.get(i));
                
                // delete previous statements
                for (int i = curBlock.statements.size() - 1; i >= curStmtIdx; i --)
                    curBlock.statements.remove(i) ;
                
                // jump to functioncall block
                curBlock.statements.add (new branch(new label(functionCallBlock.identifier)));
            
                // curFunction.blocks.add(functionCallBlock) ;
                // curFunction.blocks.add(outBlock) ;
                curFunction.blocks.add(curBlockIdx + 1, outBlock);
                // curFunction.blocks.add(functionCallBlock) ;
                // curFunction.blocks.add(returnBlock);
                curBlockIdx ++; curStmtIdx = -1; blockCount ++;

                functioncallCount ++ ;
            }
            curStmtIdx ++ ;
            if (curStmtIdx == curBlock.statements.size()) {
                curBlockIdx ++; curStmtIdx = 0 ;
            }
        }

        // for (block b : finalOutBlock.keySet()) System.out.println (b.identifier + " " + finalOutBlock.get(b).identifier) ;
        // update phi label
        for (block b : curFunction.blocks) {
            for (statement stmt : b.statements) {
                if (!(stmt instanceof phi)) continue ;
                phi curPhi = (phi) stmt ;
                for (int i = 0; i < curPhi.labels.size(); i ++) {
                    label curLabel = curPhi.labels.get(i) ;
                    if (finalOutBlock.containsKey(curLabel.labelID)) 
                        curPhi.labels.set (i, new label(finalOutBlock.get(curLabel.labelID))) ;
                }
            }
        }
    }

    private block functioncallFillInBlock (function curFunction, functioncall curFunctioncall, block toBlock, String blockName) {
        function callFunction = strToFunction.get(curFunctioncall.functionName) ;
        Map<register, entity> functionParameters = new HashMap<>() ;
        register returnReg = null ;
        for (int i = 0; i < curFunctioncall.parameters.size(); i ++) {
            functionParameters.put(callFunction.parameters.get(i), curFunctioncall.parameters.get(i)) ;
        }
        for (statement stmt : callFunction.returnBlock.statements) {
            if (stmt instanceof returnStmt) {
                returnStmt returnStmt = (returnStmt) stmt ;
                if (returnStmt.returnReg instanceof register) returnReg = (register) returnStmt.returnReg ;
            }
        }
        boolean isFirstBlock = true ;
        block returnBlock = null ;
        for (block b : callFunction.blocks) {
            block newBlock = null ;
            if (isFirstBlock) {
                newBlock = toBlock; isFirstBlock = false ;
            } else {
                newBlock = new block(blockName + "_" + b.identifier) ;
            }
            if (b == callFunction.returnBlock) {
                returnBlock = newBlock ;
            }
            
            for (statement stmt : b.statements) {
                if (stmt instanceof returnStmt) continue ;
                statement newStmt = (statement) stmt.clone() ;
                ArrayList<register> replaceByParameterRegs = new ArrayList<>() ;
                ArrayList<register> renameRegs = new ArrayList<>() ;
                for (register reg : stmt.getUseVar()) {
                    if (functionParameters.containsKey(reg)) replaceByParameterRegs.add(reg) ;
                    else if (!reg.isGlobal) renameRegs.add(reg) ;
                }
                // update use reg
                for (register reg : replaceByParameterRegs) newStmt.updateUseReg(reg, functionParameters.get(reg));
                for (register reg : renameRegs) {
                    register newReg = new register(blockName + "_" + reg.registerID, reg.type, false) ;
                    newStmt.updateUseReg(reg, newReg) ;
                }
                
                // update def reg
                register curDefReg = newStmt.getDefVar().isEmpty() ? null : (register) newStmt.getDefVar().toArray()[0] ;
                if (returnReg != null && curDefReg == returnReg) {
                    newStmt.updateDefReg(returnReg, curFunctioncall.destReg);
                } else if (!newStmt.getDefVar().isEmpty()) {
                    register newDestReg = new register(blockName + "_" + curDefReg.registerID, curDefReg.type, false) ;
                    newStmt.updateDefReg(curDefReg, newDestReg);
                }

                // update label name
                if (newStmt instanceof branch) {
                    branch newBranch = (branch) newStmt ;
                    label preLabel = newBranch.trueBranch ;
                    newBranch.trueBranch = new label(blockName + "_" + preLabel.labelID) ;
                    if (newBranch.isConditioned) {
                        preLabel = newBranch.falseBranch ;
                        newBranch.falseBranch = new label(blockName + "_" + preLabel.labelID) ;
                    }
                } else if (newStmt instanceof phi) {
                    phi curPhi = (phi) newStmt ;
                    for (int i = 0; i < curPhi.labels.size(); i ++) {
                        label preLabel = curPhi.labels.get(i) ;
                        label newLabel = new label(blockName + "_" + preLabel.labelID) ;
                        curPhi.labels.set(i, newLabel) ;
                    }
                }
                newBlock.push_back(newStmt);
            }
            curFunction.blocks.add(curFunction.blocks.size() - 1, newBlock) ;
        }
        return returnBlock ;
    }
}
