// Generated from Parser/MxLite.g4 by ANTLR 4.9.1
package Parser;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link MxLiteParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface MxLiteVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#beginDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBeginDef(MxLiteParser.BeginDefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(MxLiteParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#builtinType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBuiltinType(MxLiteParser.BuiltinTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#varType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarType(MxLiteParser.VarTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#newVar}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewVar(MxLiteParser.NewVarContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#newSize}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewSize(MxLiteParser.NewSizeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#functionType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionType(MxLiteParser.FunctionTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#varDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDef(MxLiteParser.VarDefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#varDeclaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDeclaration(MxLiteParser.VarDeclarationContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#functionDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionDef(MxLiteParser.FunctionDefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#functionParameterDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionParameterDef(MxLiteParser.FunctionParameterDefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#parameter}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParameter(MxLiteParser.ParameterContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#classDef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassDef(MxLiteParser.ClassDefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#classConstructor}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassConstructor(MxLiteParser.ClassConstructorContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#suite}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSuite(MxLiteParser.SuiteContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#forInit}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForInit(MxLiteParser.ForInitContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#forCondition}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForCondition(MxLiteParser.ForConditionContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#forIncr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForIncr(MxLiteParser.ForIncrContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#ifStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfStmt(MxLiteParser.IfStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#forStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForStmt(MxLiteParser.ForStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#whileStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhileStmt(MxLiteParser.WhileStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#loopStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLoopStmt(MxLiteParser.LoopStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#breakStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBreakStmt(MxLiteParser.BreakStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#continueStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitContinueStmt(MxLiteParser.ContinueStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#returnStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReturnStmt(MxLiteParser.ReturnStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#controlStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitControlStmt(MxLiteParser.ControlStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatement(MxLiteParser.StatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#globalVarDefStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitGlobalVarDefStmt(MxLiteParser.GlobalVarDefStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#varDefStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDefStmt(MxLiteParser.VarDefStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#lambdaStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLambdaStmt(MxLiteParser.LambdaStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#expressionList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpressionList(MxLiteParser.ExpressionListContext ctx);
	/**
	 * Visit a parse tree produced by the {@code newExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewExpr(MxLiteParser.NewExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code preIncExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPreIncExpr(MxLiteParser.PreIncExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code unaryExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnaryExpr(MxLiteParser.UnaryExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code arrayExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArrayExpr(MxLiteParser.ArrayExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code lambdaExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLambdaExpr(MxLiteParser.LambdaExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code bracketExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBracketExpr(MxLiteParser.BracketExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code functionCallExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionCallExpr(MxLiteParser.FunctionCallExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code atomExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAtomExpr(MxLiteParser.AtomExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code binaryExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBinaryExpr(MxLiteParser.BinaryExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code postIncExpr}
	 * labeled alternative in {@link MxLiteParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPostIncExpr(MxLiteParser.PostIncExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxLiteParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrimary(MxLiteParser.PrimaryContext ctx);
}