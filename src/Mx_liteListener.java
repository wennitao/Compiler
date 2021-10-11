// Generated from src/Mx_lite.g4 by ANTLR 4.9
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
}