// Generated from Parser/MxLite.g4 by ANTLR 4.9.1
package Parser;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MxLiteParser}.
 */
public interface MxLiteListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#beginDef}.
	 * @param ctx the parse tree
	 */
	void enterBeginDef(MxLiteParser.BeginDefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#beginDef}.
	 * @param ctx the parse tree
	 */
	void exitBeginDef(MxLiteParser.BeginDefContext ctx);
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
	 * Enter a parse tree produced by {@link MxLiteParser#newVar}.
	 * @param ctx the parse tree
	 */
	void enterNewVar(MxLiteParser.NewVarContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#newVar}.
	 * @param ctx the parse tree
	 */
	void exitNewVar(MxLiteParser.NewVarContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#newSize}.
	 * @param ctx the parse tree
	 */
	void enterNewSize(MxLiteParser.NewSizeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#newSize}.
	 * @param ctx the parse tree
	 */
	void exitNewSize(MxLiteParser.NewSizeContext ctx);
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
	 * Enter a parse tree produced by {@link MxLiteParser#parameter}.
	 * @param ctx the parse tree
	 */
	void enterParameter(MxLiteParser.ParameterContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#parameter}.
	 * @param ctx the parse tree
	 */
	void exitParameter(MxLiteParser.ParameterContext ctx);
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
	 * Enter a parse tree produced by {@link MxLiteParser#forInit}.
	 * @param ctx the parse tree
	 */
	void enterForInit(MxLiteParser.ForInitContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#forInit}.
	 * @param ctx the parse tree
	 */
	void exitForInit(MxLiteParser.ForInitContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#forCondition}.
	 * @param ctx the parse tree
	 */
	void enterForCondition(MxLiteParser.ForConditionContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#forCondition}.
	 * @param ctx the parse tree
	 */
	void exitForCondition(MxLiteParser.ForConditionContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#forIncr}.
	 * @param ctx the parse tree
	 */
	void enterForIncr(MxLiteParser.ForIncrContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#forIncr}.
	 * @param ctx the parse tree
	 */
	void exitForIncr(MxLiteParser.ForIncrContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#ifStmt}.
	 * @param ctx the parse tree
	 */
	void enterIfStmt(MxLiteParser.IfStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#ifStmt}.
	 * @param ctx the parse tree
	 */
	void exitIfStmt(MxLiteParser.IfStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#forStmt}.
	 * @param ctx the parse tree
	 */
	void enterForStmt(MxLiteParser.ForStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#forStmt}.
	 * @param ctx the parse tree
	 */
	void exitForStmt(MxLiteParser.ForStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#whileStmt}.
	 * @param ctx the parse tree
	 */
	void enterWhileStmt(MxLiteParser.WhileStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#whileStmt}.
	 * @param ctx the parse tree
	 */
	void exitWhileStmt(MxLiteParser.WhileStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#loopStmt}.
	 * @param ctx the parse tree
	 */
	void enterLoopStmt(MxLiteParser.LoopStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#loopStmt}.
	 * @param ctx the parse tree
	 */
	void exitLoopStmt(MxLiteParser.LoopStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#breakStmt}.
	 * @param ctx the parse tree
	 */
	void enterBreakStmt(MxLiteParser.BreakStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#breakStmt}.
	 * @param ctx the parse tree
	 */
	void exitBreakStmt(MxLiteParser.BreakStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#continueStmt}.
	 * @param ctx the parse tree
	 */
	void enterContinueStmt(MxLiteParser.ContinueStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#continueStmt}.
	 * @param ctx the parse tree
	 */
	void exitContinueStmt(MxLiteParser.ContinueStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#returnStmt}.
	 * @param ctx the parse tree
	 */
	void enterReturnStmt(MxLiteParser.ReturnStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#returnStmt}.
	 * @param ctx the parse tree
	 */
	void exitReturnStmt(MxLiteParser.ReturnStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#controlStmt}.
	 * @param ctx the parse tree
	 */
	void enterControlStmt(MxLiteParser.ControlStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#controlStmt}.
	 * @param ctx the parse tree
	 */
	void exitControlStmt(MxLiteParser.ControlStmtContext ctx);
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
	 * Enter a parse tree produced by {@link MxLiteParser#globalVarDefStmt}.
	 * @param ctx the parse tree
	 */
	void enterGlobalVarDefStmt(MxLiteParser.GlobalVarDefStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#globalVarDefStmt}.
	 * @param ctx the parse tree
	 */
	void exitGlobalVarDefStmt(MxLiteParser.GlobalVarDefStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxLiteParser#varDefStmt}.
	 * @param ctx the parse tree
	 */
	void enterVarDefStmt(MxLiteParser.VarDefStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxLiteParser#varDefStmt}.
	 * @param ctx the parse tree
	 */
	void exitVarDefStmt(MxLiteParser.VarDefStmtContext ctx);
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
	 * Enter a parse tree produced by the {@code newExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterNewExpr(MxLiteParser.NewExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code newExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitNewExpr(MxLiteParser.NewExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code preIncExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterPreIncExpr(MxLiteParser.PreIncExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code preIncExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitPreIncExpr(MxLiteParser.PreIncExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code unaryExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterUnaryExpr(MxLiteParser.UnaryExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code unaryExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitUnaryExpr(MxLiteParser.UnaryExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code arrayExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterArrayExpr(MxLiteParser.ArrayExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code arrayExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitArrayExpr(MxLiteParser.ArrayExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code lambdaExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterLambdaExpr(MxLiteParser.LambdaExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code lambdaExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitLambdaExpr(MxLiteParser.LambdaExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code bracketExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterBracketExpr(MxLiteParser.BracketExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code bracketExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitBracketExpr(MxLiteParser.BracketExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code functionCallExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterFunctionCallExpr(MxLiteParser.FunctionCallExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code functionCallExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitFunctionCallExpr(MxLiteParser.FunctionCallExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code atomExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAtomExpr(MxLiteParser.AtomExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code atomExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAtomExpr(MxLiteParser.AtomExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code binaryExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterBinaryExpr(MxLiteParser.BinaryExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code binaryExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitBinaryExpr(MxLiteParser.BinaryExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code postIncExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterPostIncExpr(MxLiteParser.PostIncExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code postIncExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitPostIncExpr(MxLiteParser.PostIncExprContext ctx);
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
}