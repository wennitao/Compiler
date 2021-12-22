package Frontend;

import java.util.ArrayList;

import AST.*;
import Util.Scope;
import Util.Type;
import Util.globalScope;
import Util.Type.basicType;
import Util.error.semanticError;

public class SymbolCollector implements ASTVisitor {
    private globalScope gScope ;
    private Scope curScope ;
    private Type type ;
    private ArrayList<Type> parameters ;

    public SymbolCollector (Scope scope) {
        gScope = (globalScope) scope ;
        curScope = scope ;
    }

    @Override
    public void visit (RootNode it) {
        it.statements.forEach(x -> {
            if (x instanceof classDefNode) {
                globalScope newGlobalScope = new globalScope(curScope, ((classDefNode) x).name) ;
                ((globalScope)curScope).defineClass(it.pos, ((classDefNode) x).name, newGlobalScope) ;
            }
        });
        it.statements.forEach(x -> {
            if (x instanceof classDefNode) {
                x.accept(this) ;
            }
        });
        it.statements.forEach(x -> {
            if (x instanceof functionDefNode) {
                x.accept(this) ;
            }
        });
        
        // array
        globalScope newGlobalScope = new globalScope(curScope, "__Array") ;
        ((globalScope) curScope).defineClass(it.pos, "__Array", newGlobalScope) ;
        // int array.size()
        newGlobalScope.defineFunction(it.pos, "size", new Scope(), new Type (basicType.Int, 0, true), new ArrayList<>());

        // string
        newGlobalScope = new globalScope(curScope, "string") ;
        ((globalScope) curScope).defineClass(it.pos, "string", newGlobalScope);
        
        // int string.length()
        newGlobalScope.defineFunction(it.pos, "length", new Scope(), new Type (basicType.Int, 0, true), new ArrayList<>());
        
        // string string.substring (int left, int right)
        ArrayList<Type> functionParameters = new ArrayList<>();
        functionParameters.add (new Type (basicType.Int, 0, true)) ;
        functionParameters.add (new Type (basicType.Int, 0, true)) ;
        newGlobalScope.defineFunction(it.pos, "substring", new Scope(), new Type (basicType.String, 0, true), functionParameters);
        
        // int string.parseInt()
        newGlobalScope.defineFunction(it.pos, "parseInt", new Scope(), new Type (basicType.Int, 0, true), new ArrayList<>());
        
        // int string.ord(int)
        functionParameters = new ArrayList<>() ;
        functionParameters.add (new Type (basicType.Int, 0, true)) ;
        newGlobalScope.defineFunction(it.pos, "ord", new Scope(), new Type (basicType.Int, 0, true), functionParameters);
        
        // builtin functions

        // void print (string str)
        functionParameters = new ArrayList<>() ;
        functionParameters.add(new Type (basicType.String, 0, true)) ;
        gScope.defineFunction(it.pos, "print", new Scope(), new Type (basicType.Void, 0, false), functionParameters);
        
        // void println (string str)
        gScope.defineFunction(it.pos, "println", new Scope(), new Type (basicType.Void, 0, false), functionParameters);
        
        // void printInt (int n)
        functionParameters = new ArrayList<>() ;
        functionParameters.add (new Type (basicType.Int, 0, true)) ;
        gScope.defineFunction(it.pos, "printInt", new Scope(), new Type (basicType.Void, 0, false), functionParameters);
        
        // void printlnInt (int n)
        gScope.defineFunction(it.pos, "printlnInt", new Scope(), new Type (basicType.Void, 0, false), functionParameters);
    
        // string getString()
        gScope.defineFunction(it.pos, "getString", new Scope(), new Type (basicType.String, 0, true), new ArrayList<>());
        
        // int getInt()
        gScope.defineFunction(it.pos, "getInt", new Scope(), new Type (basicType.Int, 0, true), new ArrayList<>());
        
        // string toString (int i)
        gScope.defineFunction(it.pos, "toString", new Scope(), new Type (basicType.String, 0, true), functionParameters);
    }

    @Override
    public void visit (classDefNode it) {
        curScope = ((globalScope) curScope).getScopeFromClassName(it.pos, it.name) ;
        gScope = (globalScope) curScope ;
        it.varDef.forEach(x -> x.accept(this));
        it.functionDef.forEach(x -> x.accept(this));
        curScope = curScope.parentScope() ;
        gScope = (globalScope) gScope.parentScope() ;
    }

    @Override
    public void visit (functionDefNode it) {
        Type returnType ;
        if (it.functionType.isVoid) returnType = new Type(basicType.Void, 0, false) ;
        else {
            it.functionType.type.accept(this) ;
            returnType = type ;
        }
        Scope functionScope = new Scope(curScope) ;
        curScope = functionScope ;
        it.parameters.accept(this);
        curScope = curScope.parentScope() ;
        ((globalScope) curScope).defineFunction(it.pos, it.name, functionScope, returnType, parameters);
    }

    @Override
    public void visit (varDefNode it) {
        it.typeNode.accept(this) ;
        Type varType = type ;
        it.varDeclarations.forEach(x -> {
            if (gScope.findClass(x.name, true)) throw new semanticError("variable has the same name with a class", x.pos) ;
            curScope.defineVariable(x.name, varType, x.pos) ;
        });
        it.type = varType ;
    }

    @Override
    public void visit (varTypeNode it) {
        if (it.classID != null) {
            if (!gScope.findClass(it.classID, true)) throw new semanticError("class not found", it.pos) ;
            type = new Type(it.classID, it.dim, true) ;
        } else {
            type = new Type(it.builtinType.bType, it.dim, true) ;
        }
        it.type = type ;
    }

    @Override
    public void visit (parameterNode it) {
        it.type.accept(this) ;
        curScope.defineVariable(it.name, type, it.pos);
        parameters.add (type) ;
    }

    @Override
    public void visit (functionParameterDefNode it) {
        parameters = new ArrayList<>() ;
        it.parameters.forEach(x -> x.accept(this)) ;
    }

    @Override public void visit (arrayExprNode it) {}
    @Override public void visit (binaryExprNode it) {}
    @Override public void visit (bracketExprNode it) {}
    @Override public void visit (breakStmtNode it) {}
    @Override public void visit (builtinTypeNode it) {}
    @Override public void visit (classConstructorNode it) {}
    @Override public void visit (continueStmtNode it) {}
    @Override public void visit (expressionListNode it) {}
    @Override public void visit (forConditionNode it) {}
    @Override public void visit (forIncrNode it) {}
    @Override public void visit (forInitNode it) {}
    @Override public void visit (forStmtNode it) {}
    @Override public void visit (functionCallExprNode it) {}
    @Override public void visit (functionTypeNode it) {}
    @Override public void visit (globalVarDefNode it) {}
    @Override public void visit (ifStmtNode it) {}
    @Override public void visit (lambdaStmtNode it) {}
    @Override public void visit (newSizeNode it) {}
    @Override public void visit (newVarNode it) {}
    @Override public void visit (postIncExprNode it) {}
    @Override public void visit (preIncExprNode it) {}
    @Override public void visit (primaryNode it) {}
    @Override public void visit (returnStmtNode it) {}
    @Override public void visit (statementNode it) {}
    @Override public void visit (suiteNode it) {}
    @Override public void visit (unaryExprNode it) {}
    @Override public void visit (varDeclarationNode it) {}
    @Override public void visit (whileStmtNode it) {}
}