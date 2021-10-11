// Generated from Mx_lite.g4 by ANTLR 4.9
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link Mx_liteParser}.
 */
public interface Mx_liteListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(Mx_liteParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(Mx_liteParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#functionDef}.
	 * @param ctx the parse tree
	 */
	void enterFunctionDef(Mx_liteParser.FunctionDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#functionDef}.
	 * @param ctx the parse tree
	 */
	void exitFunctionDef(Mx_liteParser.FunctionDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#functionParameterDef}.
	 * @param ctx the parse tree
	 */
	void enterFunctionParameterDef(Mx_liteParser.FunctionParameterDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#functionParameterDef}.
	 * @param ctx the parse tree
	 */
	void exitFunctionParameterDef(Mx_liteParser.FunctionParameterDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#expressionList}.
	 * @param ctx the parse tree
	 */
	void enterExpressionList(Mx_liteParser.ExpressionListContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#expressionList}.
	 * @param ctx the parse tree
	 */
	void exitExpressionList(Mx_liteParser.ExpressionListContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#suite}.
	 * @param ctx the parse tree
	 */
	void enterSuite(Mx_liteParser.SuiteContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#suite}.
	 * @param ctx the parse tree
	 */
	void exitSuite(Mx_liteParser.SuiteContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatement(Mx_liteParser.StatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatement(Mx_liteParser.StatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#declarationStmt}.
	 * @param ctx the parse tree
	 */
	void enterDeclarationStmt(Mx_liteParser.DeclarationStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#declarationStmt}.
	 * @param ctx the parse tree
	 */
	void exitDeclarationStmt(Mx_liteParser.DeclarationStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpression(Mx_liteParser.ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpression(Mx_liteParser.ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#varDef}.
	 * @param ctx the parse tree
	 */
	void enterVarDef(Mx_liteParser.VarDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#varDef}.
	 * @param ctx the parse tree
	 */
	void exitVarDef(Mx_liteParser.VarDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#varDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterVarDeclaration(Mx_liteParser.VarDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#varDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitVarDeclaration(Mx_liteParser.VarDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#returnType}.
	 * @param ctx the parse tree
	 */
	void enterReturnType(Mx_liteParser.ReturnTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#returnType}.
	 * @param ctx the parse tree
	 */
	void exitReturnType(Mx_liteParser.ReturnTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#varType}.
	 * @param ctx the parse tree
	 */
	void enterVarType(Mx_liteParser.VarTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#varType}.
	 * @param ctx the parse tree
	 */
	void exitVarType(Mx_liteParser.VarTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#builtinType}.
	 * @param ctx the parse tree
	 */
	void enterBuiltinType(Mx_liteParser.BuiltinTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#builtinType}.
	 * @param ctx the parse tree
	 */
	void exitBuiltinType(Mx_liteParser.BuiltinTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#primary}.
	 * @param ctx the parse tree
	 */
	void enterPrimary(Mx_liteParser.PrimaryContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#primary}.
	 * @param ctx the parse tree
	 */
	void exitPrimary(Mx_liteParser.PrimaryContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#literal}.
	 * @param ctx the parse tree
	 */
	void enterLiteral(Mx_liteParser.LiteralContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#literal}.
	 * @param ctx the parse tree
	 */
	void exitLiteral(Mx_liteParser.LiteralContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#builtinFunctionName}.
	 * @param ctx the parse tree
	 */
	void enterBuiltinFunctionName(Mx_liteParser.BuiltinFunctionNameContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#builtinFunctionName}.
	 * @param ctx the parse tree
	 */
	void exitBuiltinFunctionName(Mx_liteParser.BuiltinFunctionNameContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#builtin_print}.
	 * @param ctx the parse tree
	 */
	void enterBuiltin_print(Mx_liteParser.Builtin_printContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#builtin_print}.
	 * @param ctx the parse tree
	 */
	void exitBuiltin_print(Mx_liteParser.Builtin_printContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#builtin_println}.
	 * @param ctx the parse tree
	 */
	void enterBuiltin_println(Mx_liteParser.Builtin_printlnContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#builtin_println}.
	 * @param ctx the parse tree
	 */
	void exitBuiltin_println(Mx_liteParser.Builtin_printlnContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#builtin_printInt}.
	 * @param ctx the parse tree
	 */
	void enterBuiltin_printInt(Mx_liteParser.Builtin_printIntContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#builtin_printInt}.
	 * @param ctx the parse tree
	 */
	void exitBuiltin_printInt(Mx_liteParser.Builtin_printIntContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#builtin_printlnInt}.
	 * @param ctx the parse tree
	 */
	void enterBuiltin_printlnInt(Mx_liteParser.Builtin_printlnIntContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#builtin_printlnInt}.
	 * @param ctx the parse tree
	 */
	void exitBuiltin_printlnInt(Mx_liteParser.Builtin_printlnIntContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#builtin_getString}.
	 * @param ctx the parse tree
	 */
	void enterBuiltin_getString(Mx_liteParser.Builtin_getStringContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#builtin_getString}.
	 * @param ctx the parse tree
	 */
	void exitBuiltin_getString(Mx_liteParser.Builtin_getStringContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#builtin_getInt}.
	 * @param ctx the parse tree
	 */
	void enterBuiltin_getInt(Mx_liteParser.Builtin_getIntContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#builtin_getInt}.
	 * @param ctx the parse tree
	 */
	void exitBuiltin_getInt(Mx_liteParser.Builtin_getIntContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#builtin_toString}.
	 * @param ctx the parse tree
	 */
	void enterBuiltin_toString(Mx_liteParser.Builtin_toStringContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#builtin_toString}.
	 * @param ctx the parse tree
	 */
	void exitBuiltin_toString(Mx_liteParser.Builtin_toStringContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#functionParameter}.
	 * @param ctx the parse tree
	 */
	void enterFunctionParameter(Mx_liteParser.FunctionParameterContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#functionParameter}.
	 * @param ctx the parse tree
	 */
	void exitFunctionParameter(Mx_liteParser.FunctionParameterContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#functionCall}.
	 * @param ctx the parse tree
	 */
	void enterFunctionCall(Mx_liteParser.FunctionCallContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#functionCall}.
	 * @param ctx the parse tree
	 */
	void exitFunctionCall(Mx_liteParser.FunctionCallContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#anyString}.
	 * @param ctx the parse tree
	 */
	void enterAnyString(Mx_liteParser.AnyStringContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#anyString}.
	 * @param ctx the parse tree
	 */
	void exitAnyString(Mx_liteParser.AnyStringContext ctx);
	/**
	 * Enter a parse tree produced by {@link Mx_liteParser#string}.
	 * @param ctx the parse tree
	 */
	void enterString(Mx_liteParser.StringContext ctx);
	/**
	 * Exit a parse tree produced by {@link Mx_liteParser#string}.
	 * @param ctx the parse tree
	 */
	void exitString(Mx_liteParser.StringContext ctx);
}