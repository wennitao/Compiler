// Generated from MxLite.g4 by ANTLR 4.9
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MxLiteParser}.
 */
public interface MxLiteListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(MxLiteParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(MxLiteParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#builtinType}.
	 * @param ctx the parse tree
	 */
	void enterBuiltinType(MxLiteParser.BuiltinTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#builtinType}.
	 * @param ctx the parse tree
	 */
	void exitBuiltinType(MxLiteParser.BuiltinTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#varType}.
	 * @param ctx the parse tree
	 */
	void enterVarType(MxLiteParser.VarTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#varType}.
	 * @param ctx the parse tree
	 */
	void exitVarType(MxLiteParser.VarTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#newVarType}.
	 * @param ctx the parse tree
	 */
	void enterNewVarType(MxLiteParser.NewVarTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#newVarType}.
	 * @param ctx the parse tree
	 */
	void exitNewVarType(MxLiteParser.NewVarTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#functionType}.
	 * @param ctx the parse tree
	 */
	void enterFunctionType(MxLiteParser.FunctionTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#functionType}.
	 * @param ctx the parse tree
	 */
	void exitFunctionType(MxLiteParser.FunctionTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#varDef}.
	 * @param ctx the parse tree
	 */
	void enterVarDef(MxLiteParser.VarDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#varDef}.
	 * @param ctx the parse tree
	 */
	void exitVarDef(MxLiteParser.VarDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#varDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterVarDeclaration(MxLiteParser.VarDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#varDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitVarDeclaration(MxLiteParser.VarDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#functionDef}.
	 * @param ctx the parse tree
	 */
	void enterFunctionDef(MxLiteParser.FunctionDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#functionDef}.
	 * @param ctx the parse tree
	 */
	void exitFunctionDef(MxLiteParser.FunctionDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#functionParameterDef}.
	 * @param ctx the parse tree
	 */
	void enterFunctionParameterDef(MxLiteParser.FunctionParameterDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#functionParameterDef}.
	 * @param ctx the parse tree
	 */
	void exitFunctionParameterDef(MxLiteParser.FunctionParameterDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#classDef}.
	 * @param ctx the parse tree
	 */
	void enterClassDef(MxLiteParser.ClassDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#classDef}.
	 * @param ctx the parse tree
	 */
	void exitClassDef(MxLiteParser.ClassDefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#classConstructor}.
	 * @param ctx the parse tree
	 */
	void enterClassConstructor(MxLiteParser.ClassConstructorContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#classConstructor}.
	 * @param ctx the parse tree
	 */
	void exitClassConstructor(MxLiteParser.ClassConstructorContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#suite}.
	 * @param ctx the parse tree
	 */
	void enterSuite(MxLiteParser.SuiteContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#suite}.
	 * @param ctx the parse tree
	 */
	void exitSuite(MxLiteParser.SuiteContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatement(MxLiteParser.StatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatement(MxLiteParser.StatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#varDefineStmt}.
	 * @param ctx the parse tree
	 */
	void enterVarDefineStmt(MxLiteParser.VarDefineStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#varDefineStmt}.
	 * @param ctx the parse tree
	 */
	void exitVarDefineStmt(MxLiteParser.VarDefineStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#lambdaStmt}.
	 * @param ctx the parse tree
	 */
	void enterLambdaStmt(MxLiteParser.LambdaStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#lambdaStmt}.
	 * @param ctx the parse tree
	 */
	void exitLambdaStmt(MxLiteParser.LambdaStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#expressionList}.
	 * @param ctx the parse tree
	 */
	void enterExpressionList(MxLiteParser.ExpressionListContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#expressionList}.
	 * @param ctx the parse tree
	 */
	void exitExpressionList(MxLiteParser.ExpressionListContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpression(MxLiteParser.ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpression(MxLiteParser.ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#primary}.
	 * @param ctx the parse tree
	 */
	void enterPrimary(MxLiteParser.PrimaryContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#primary}.
	 * @param ctx the parse tree
	 */
	void exitPrimary(MxLiteParser.PrimaryContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#literal}.
	 * @param ctx the parse tree
	 */
	void enterLiteral(MxLiteParser.LiteralContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#literal}.
	 * @param ctx the parse tree
	 */
	void exitLiteral(MxLiteParser.LiteralContext ctx);
}