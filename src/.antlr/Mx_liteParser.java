// Generated from /Users/niwentao/Desktop/SJTU/编译器/Test/src/Mx_lite.g4 by ANTLR 4.8
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class Mx_liteParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.8", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, Int=9, 
		Bool=10, Void=11, True=12, False=13, If=14, Else=15, Return=16, Dot=17, 
		LeftParen=18, RightParen=19, LeftBracket=20, RightBracket=21, LeftBrace=22, 
		RightBrace=23, Less=24, LessEqual=25, Greater=26, GreaterEqual=27, LeftShift=28, 
		RightShift=29, Plus=30, SelfPlus=31, Minus=32, SelfMinus=33, Mul=34, Div=35, 
		Mod=36, And=37, Or=38, AndAnd=39, OrOr=40, Caret=41, Not=42, Tilde=43, 
		Question=44, Colon=45, Semi=46, Comma=47, Assign=48, Equal=49, NotEqual=50, 
		BackSlash=51, DbQuotation=52, Identifier=53, DecimalInteger=54, Whitespace=55, 
		Newline=56, BlockComment=57, LineComment=58;
	public static final int
		RULE_program = 0, RULE_functionDef = 1, RULE_functionParameterDef = 2, 
		RULE_expressionList = 3, RULE_suite = 4, RULE_statement = 5, RULE_declarationStmt = 6, 
		RULE_expression = 7, RULE_varDef = 8, RULE_varDeclaration = 9, RULE_returnType = 10, 
		RULE_varType = 11, RULE_builtinType = 12, RULE_primary = 13, RULE_literal = 14, 
		RULE_builtinFunctionName = 15, RULE_builtin_print = 16, RULE_builtin_println = 17, 
		RULE_builtin_printInt = 18, RULE_builtin_printlnInt = 19, RULE_builtin_getString = 20, 
		RULE_builtin_getInt = 21, RULE_builtin_toString = 22, RULE_functionParameter = 23, 
		RULE_functionCall = 24, RULE_anyString = 25, RULE_string = 26;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "functionDef", "functionParameterDef", "expressionList", "suite", 
			"statement", "declarationStmt", "expression", "varDef", "varDeclaration", 
			"returnType", "varType", "builtinType", "primary", "literal", "builtinFunctionName", 
			"builtin_print", "builtin_println", "builtin_printInt", "builtin_printlnInt", 
			"builtin_getString", "builtin_getInt", "builtin_toString", "functionParameter", 
			"functionCall", "anyString", "string"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'print'", "'println'", "'printInt'", "'printlnInt'", "'getString'", 
			"'getInt'", "'toString'", "'\"'", "'int'", "'bool'", "'void'", "'true'", 
			"'false'", "'if'", "'else'", "'return'", "'.'", "'('", "')'", "'['", 
			"']'", "'{'", "'}'", "'<'", "'<='", "'>'", "'>='", "'<<'", "'>>'", "'+'", 
			"'++'", "'-'", "'--'", "'*'", "'/'", "'%'", "'&'", "'|'", "'&&'", "'||'", 
			"'^'", "'!'", "'~'", "'?'", "':'", "';'", "','", "'='", "'=='", "'!='", 
			"'\\\\'", "'\\\"'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, "Int", "Bool", 
			"Void", "True", "False", "If", "Else", "Return", "Dot", "LeftParen", 
			"RightParen", "LeftBracket", "RightBracket", "LeftBrace", "RightBrace", 
			"Less", "LessEqual", "Greater", "GreaterEqual", "LeftShift", "RightShift", 
			"Plus", "SelfPlus", "Minus", "SelfMinus", "Mul", "Div", "Mod", "And", 
			"Or", "AndAnd", "OrOr", "Caret", "Not", "Tilde", "Question", "Colon", 
			"Semi", "Comma", "Assign", "Equal", "NotEqual", "BackSlash", "DbQuotation", 
			"Identifier", "DecimalInteger", "Whitespace", "Newline", "BlockComment", 
			"LineComment"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Mx_lite.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public Mx_liteParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class ProgramContext extends ParserRuleContext {
		public List<DeclarationStmtContext> declarationStmt() {
			return getRuleContexts(DeclarationStmtContext.class);
		}
		public DeclarationStmtContext declarationStmt(int i) {
			return getRuleContext(DeclarationStmtContext.class,i);
		}
		public List<FunctionDefContext> functionDef() {
			return getRuleContexts(FunctionDefContext.class);
		}
		public FunctionDefContext functionDef(int i) {
			return getRuleContext(FunctionDefContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(58);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << Void) | (1L << Identifier))) != 0)) {
				{
				setState(56);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,0,_ctx) ) {
				case 1:
					{
					setState(54);
					declarationStmt();
					}
					break;
				case 2:
					{
					setState(55);
					functionDef();
					}
					break;
				}
				}
				setState(60);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionDefContext extends ParserRuleContext {
		public ReturnTypeContext returnType() {
			return getRuleContext(ReturnTypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(Mx_liteParser.Identifier, 0); }
		public TerminalNode LeftParen() { return getToken(Mx_liteParser.LeftParen, 0); }
		public FunctionParameterDefContext functionParameterDef() {
			return getRuleContext(FunctionParameterDefContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(Mx_liteParser.RightParen, 0); }
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public FunctionDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionDef; }
	}

	public final FunctionDefContext functionDef() throws RecognitionException {
		FunctionDefContext _localctx = new FunctionDefContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_functionDef);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(61);
			returnType();
			setState(62);
			match(Identifier);
			setState(63);
			match(LeftParen);
			setState(64);
			functionParameterDef();
			setState(65);
			match(RightParen);
			setState(66);
			suite();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionParameterDefContext extends ParserRuleContext {
		public List<VarTypeContext> varType() {
			return getRuleContexts(VarTypeContext.class);
		}
		public VarTypeContext varType(int i) {
			return getRuleContext(VarTypeContext.class,i);
		}
		public List<TerminalNode> Identifier() { return getTokens(Mx_liteParser.Identifier); }
		public TerminalNode Identifier(int i) {
			return getToken(Mx_liteParser.Identifier, i);
		}
		public List<TerminalNode> Comma() { return getTokens(Mx_liteParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(Mx_liteParser.Comma, i);
		}
		public FunctionParameterDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionParameterDef; }
	}

	public final FunctionParameterDefContext functionParameterDef() throws RecognitionException {
		FunctionParameterDefContext _localctx = new FunctionParameterDefContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_functionParameterDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(79);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << Identifier))) != 0)) {
				{
				setState(68);
				varType();
				setState(69);
				match(Identifier);
				setState(76);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==Comma) {
					{
					{
					setState(70);
					match(Comma);
					setState(71);
					varType();
					setState(72);
					match(Identifier);
					}
					}
					setState(78);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionListContext extends ParserRuleContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public List<TerminalNode> Comma() { return getTokens(Mx_liteParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(Mx_liteParser.Comma, i);
		}
		public ExpressionListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expressionList; }
	}

	public final ExpressionListContext expressionList() throws RecognitionException {
		ExpressionListContext _localctx = new ExpressionListContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_expressionList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(81);
			expression(0);
			setState(86);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(82);
				match(Comma);
				setState(83);
				expression(0);
				}
				}
				setState(88);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SuiteContext extends ParserRuleContext {
		public TerminalNode LeftBrace() { return getToken(Mx_liteParser.LeftBrace, 0); }
		public TerminalNode RightBrace() { return getToken(Mx_liteParser.RightBrace, 0); }
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public SuiteContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_suite; }
	}

	public final SuiteContext suite() throws RecognitionException {
		SuiteContext _localctx = new SuiteContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_suite);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(89);
			match(LeftBrace);
			setState(93);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__1) | (1L << T__2) | (1L << T__3) | (1L << T__4) | (1L << T__5) | (1L << T__6) | (1L << T__7) | (1L << Int) | (1L << Bool) | (1L << True) | (1L << False) | (1L << If) | (1L << Return) | (1L << LeftParen) | (1L << LeftBrace) | (1L << Semi) | (1L << Identifier) | (1L << DecimalInteger))) != 0)) {
				{
				{
				setState(90);
				statement();
				}
				}
				setState(95);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(96);
			match(RightBrace);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatementContext extends ParserRuleContext {
		public StatementContext trueStmt;
		public StatementContext falseStmt;
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public DeclarationStmtContext declarationStmt() {
			return getRuleContext(DeclarationStmtContext.class,0);
		}
		public TerminalNode If() { return getToken(Mx_liteParser.If, 0); }
		public TerminalNode LeftParen() { return getToken(Mx_liteParser.LeftParen, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(Mx_liteParser.RightParen, 0); }
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public TerminalNode Else() { return getToken(Mx_liteParser.Else, 0); }
		public TerminalNode Return() { return getToken(Mx_liteParser.Return, 0); }
		public TerminalNode Semi() { return getToken(Mx_liteParser.Semi, 0); }
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_statement);
		int _la;
		try {
			setState(118);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,8,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(98);
				suite();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(99);
				declarationStmt();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(100);
				match(If);
				setState(101);
				match(LeftParen);
				setState(102);
				expression(0);
				setState(103);
				match(RightParen);
				setState(104);
				((StatementContext)_localctx).trueStmt = statement();
				setState(107);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,6,_ctx) ) {
				case 1:
					{
					setState(105);
					match(Else);
					setState(106);
					((StatementContext)_localctx).falseStmt = statement();
					}
					break;
				}
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(109);
				match(Return);
				setState(111);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__1) | (1L << T__2) | (1L << T__3) | (1L << T__4) | (1L << T__5) | (1L << T__6) | (1L << T__7) | (1L << True) | (1L << False) | (1L << LeftParen) | (1L << Identifier) | (1L << DecimalInteger))) != 0)) {
					{
					setState(110);
					expression(0);
					}
				}

				setState(113);
				match(Semi);
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(114);
				expression(0);
				setState(115);
				match(Semi);
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(117);
				match(Semi);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DeclarationStmtContext extends ParserRuleContext {
		public VarDefContext varDef() {
			return getRuleContext(VarDefContext.class,0);
		}
		public TerminalNode Semi() { return getToken(Mx_liteParser.Semi, 0); }
		public DeclarationStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_declarationStmt; }
	}

	public final DeclarationStmtContext declarationStmt() throws RecognitionException {
		DeclarationStmtContext _localctx = new DeclarationStmtContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_declarationStmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(120);
			varDef();
			setState(121);
			match(Semi);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionContext extends ParserRuleContext {
		public Token op;
		public PrimaryContext primary() {
			return getRuleContext(PrimaryContext.class,0);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode Mul() { return getToken(Mx_liteParser.Mul, 0); }
		public TerminalNode Div() { return getToken(Mx_liteParser.Div, 0); }
		public TerminalNode Mod() { return getToken(Mx_liteParser.Mod, 0); }
		public TerminalNode Plus() { return getToken(Mx_liteParser.Plus, 0); }
		public TerminalNode Minus() { return getToken(Mx_liteParser.Minus, 0); }
		public TerminalNode LeftShift() { return getToken(Mx_liteParser.LeftShift, 0); }
		public TerminalNode RightShift() { return getToken(Mx_liteParser.RightShift, 0); }
		public TerminalNode Less() { return getToken(Mx_liteParser.Less, 0); }
		public TerminalNode LessEqual() { return getToken(Mx_liteParser.LessEqual, 0); }
		public TerminalNode Greater() { return getToken(Mx_liteParser.Greater, 0); }
		public TerminalNode GreaterEqual() { return getToken(Mx_liteParser.GreaterEqual, 0); }
		public TerminalNode Equal() { return getToken(Mx_liteParser.Equal, 0); }
		public TerminalNode NotEqual() { return getToken(Mx_liteParser.NotEqual, 0); }
		public TerminalNode And() { return getToken(Mx_liteParser.And, 0); }
		public TerminalNode Caret() { return getToken(Mx_liteParser.Caret, 0); }
		public TerminalNode Or() { return getToken(Mx_liteParser.Or, 0); }
		public TerminalNode AndAnd() { return getToken(Mx_liteParser.AndAnd, 0); }
		public TerminalNode OrOr() { return getToken(Mx_liteParser.OrOr, 0); }
		public TerminalNode Assign() { return getToken(Mx_liteParser.Assign, 0); }
		public TerminalNode LeftBracket() { return getToken(Mx_liteParser.LeftBracket, 0); }
		public TerminalNode RightBracket() { return getToken(Mx_liteParser.RightBracket, 0); }
		public TerminalNode LeftParen() { return getToken(Mx_liteParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(Mx_liteParser.RightParen, 0); }
		public ExpressionListContext expressionList() {
			return getRuleContext(ExpressionListContext.class,0);
		}
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	}

	public final ExpressionContext expression() throws RecognitionException {
		return expression(0);
	}

	private ExpressionContext expression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExpressionContext _localctx = new ExpressionContext(_ctx, _parentState);
		ExpressionContext _prevctx = _localctx;
		int _startState = 14;
		enterRecursionRule(_localctx, 14, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			{
			setState(124);
			primary();
			}
			_ctx.stop = _input.LT(-1);
			setState(172);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,11,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(170);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,10,_ctx) ) {
					case 1:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(126);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(127);
						((ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Mul) | (1L << Div) | (1L << Mod))) != 0)) ) {
							((ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(128);
						expression(12);
						}
						break;
					case 2:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(129);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(130);
						((ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==Plus || _la==Minus) ) {
							((ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(131);
						expression(11);
						}
						break;
					case 3:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(132);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(133);
						((ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==LeftShift || _la==RightShift) ) {
							((ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(134);
						expression(10);
						}
						break;
					case 4:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(135);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(136);
						((ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Less) | (1L << LessEqual) | (1L << Greater) | (1L << GreaterEqual))) != 0)) ) {
							((ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(137);
						expression(9);
						}
						break;
					case 5:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(138);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(139);
						((ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==Equal || _la==NotEqual) ) {
							((ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(140);
						expression(8);
						}
						break;
					case 6:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(141);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(142);
						((ExpressionContext)_localctx).op = match(And);
						setState(143);
						expression(7);
						}
						break;
					case 7:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(144);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(145);
						((ExpressionContext)_localctx).op = match(Caret);
						setState(146);
						expression(6);
						}
						break;
					case 8:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(147);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(148);
						((ExpressionContext)_localctx).op = match(Or);
						setState(149);
						expression(5);
						}
						break;
					case 9:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(150);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(151);
						((ExpressionContext)_localctx).op = match(AndAnd);
						setState(152);
						expression(4);
						}
						break;
					case 10:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(153);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(154);
						((ExpressionContext)_localctx).op = match(OrOr);
						setState(155);
						expression(3);
						}
						break;
					case 11:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(156);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(157);
						match(Assign);
						setState(158);
						expression(1);
						}
						break;
					case 12:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(159);
						if (!(precpred(_ctx, 13))) throw new FailedPredicateException(this, "precpred(_ctx, 13)");
						setState(160);
						match(LeftBracket);
						setState(161);
						expression(0);
						setState(162);
						match(RightBracket);
						}
						break;
					case 13:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(164);
						if (!(precpred(_ctx, 12))) throw new FailedPredicateException(this, "precpred(_ctx, 12)");
						setState(165);
						match(LeftParen);
						setState(167);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__1) | (1L << T__2) | (1L << T__3) | (1L << T__4) | (1L << T__5) | (1L << T__6) | (1L << T__7) | (1L << True) | (1L << False) | (1L << LeftParen) | (1L << Identifier) | (1L << DecimalInteger))) != 0)) {
							{
							setState(166);
							expressionList();
							}
						}

						setState(169);
						match(RightParen);
						}
						break;
					}
					} 
				}
				setState(174);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,11,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class VarDefContext extends ParserRuleContext {
		public VarTypeContext varType() {
			return getRuleContext(VarTypeContext.class,0);
		}
		public List<VarDeclarationContext> varDeclaration() {
			return getRuleContexts(VarDeclarationContext.class);
		}
		public VarDeclarationContext varDeclaration(int i) {
			return getRuleContext(VarDeclarationContext.class,i);
		}
		public List<TerminalNode> Comma() { return getTokens(Mx_liteParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(Mx_liteParser.Comma, i);
		}
		public VarDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDef; }
	}

	public final VarDefContext varDef() throws RecognitionException {
		VarDefContext _localctx = new VarDefContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_varDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(175);
			varType();
			setState(176);
			varDeclaration();
			setState(181);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(177);
				match(Comma);
				setState(178);
				varDeclaration();
				}
				}
				setState(183);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VarDeclarationContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(Mx_liteParser.Identifier, 0); }
		public TerminalNode Assign() { return getToken(Mx_liteParser.Assign, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public VarDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDeclaration; }
	}

	public final VarDeclarationContext varDeclaration() throws RecognitionException {
		VarDeclarationContext _localctx = new VarDeclarationContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_varDeclaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(184);
			match(Identifier);
			setState(187);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==Assign) {
				{
				setState(185);
				match(Assign);
				setState(186);
				expression(0);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ReturnTypeContext extends ParserRuleContext {
		public TerminalNode Void() { return getToken(Mx_liteParser.Void, 0); }
		public VarTypeContext varType() {
			return getRuleContext(VarTypeContext.class,0);
		}
		public ReturnTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_returnType; }
	}

	public final ReturnTypeContext returnType() throws RecognitionException {
		ReturnTypeContext _localctx = new ReturnTypeContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_returnType);
		try {
			setState(191);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Void:
				enterOuterAlt(_localctx, 1);
				{
				setState(189);
				match(Void);
				}
				break;
			case Int:
			case Bool:
			case Identifier:
				enterOuterAlt(_localctx, 2);
				{
				setState(190);
				varType();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VarTypeContext extends ParserRuleContext {
		public BuiltinTypeContext builtinType() {
			return getRuleContext(BuiltinTypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(Mx_liteParser.Identifier, 0); }
		public VarTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varType; }
	}

	public final VarTypeContext varType() throws RecognitionException {
		VarTypeContext _localctx = new VarTypeContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_varType);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(195);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Int:
			case Bool:
				{
				setState(193);
				builtinType();
				}
				break;
			case Identifier:
				{
				setState(194);
				match(Identifier);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BuiltinTypeContext extends ParserRuleContext {
		public TerminalNode Int() { return getToken(Mx_liteParser.Int, 0); }
		public TerminalNode Bool() { return getToken(Mx_liteParser.Bool, 0); }
		public BuiltinTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_builtinType; }
	}

	public final BuiltinTypeContext builtinType() throws RecognitionException {
		BuiltinTypeContext _localctx = new BuiltinTypeContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_builtinType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(197);
			_la = _input.LA(1);
			if ( !(_la==Int || _la==Bool) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PrimaryContext extends ParserRuleContext {
		public TerminalNode LeftParen() { return getToken(Mx_liteParser.LeftParen, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(Mx_liteParser.RightParen, 0); }
		public TerminalNode Identifier() { return getToken(Mx_liteParser.Identifier, 0); }
		public LiteralContext literal() {
			return getRuleContext(LiteralContext.class,0);
		}
		public FunctionCallContext functionCall() {
			return getRuleContext(FunctionCallContext.class,0);
		}
		public StringContext string() {
			return getRuleContext(StringContext.class,0);
		}
		public PrimaryContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_primary; }
	}

	public final PrimaryContext primary() throws RecognitionException {
		PrimaryContext _localctx = new PrimaryContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_primary);
		try {
			setState(207);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(199);
				match(LeftParen);
				setState(200);
				expression(0);
				setState(201);
				match(RightParen);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(203);
				match(Identifier);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(204);
				literal();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(205);
				functionCall();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(206);
				string();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LiteralContext extends ParserRuleContext {
		public TerminalNode DecimalInteger() { return getToken(Mx_liteParser.DecimalInteger, 0); }
		public TerminalNode True() { return getToken(Mx_liteParser.True, 0); }
		public TerminalNode False() { return getToken(Mx_liteParser.False, 0); }
		public LiteralContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_literal; }
	}

	public final LiteralContext literal() throws RecognitionException {
		LiteralContext _localctx = new LiteralContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_literal);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(209);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << True) | (1L << False) | (1L << DecimalInteger))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BuiltinFunctionNameContext extends ParserRuleContext {
		public Builtin_printContext builtin_print() {
			return getRuleContext(Builtin_printContext.class,0);
		}
		public Builtin_printlnContext builtin_println() {
			return getRuleContext(Builtin_printlnContext.class,0);
		}
		public Builtin_printIntContext builtin_printInt() {
			return getRuleContext(Builtin_printIntContext.class,0);
		}
		public Builtin_printlnIntContext builtin_printlnInt() {
			return getRuleContext(Builtin_printlnIntContext.class,0);
		}
		public Builtin_getStringContext builtin_getString() {
			return getRuleContext(Builtin_getStringContext.class,0);
		}
		public Builtin_getIntContext builtin_getInt() {
			return getRuleContext(Builtin_getIntContext.class,0);
		}
		public Builtin_toStringContext builtin_toString() {
			return getRuleContext(Builtin_toStringContext.class,0);
		}
		public BuiltinFunctionNameContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_builtinFunctionName; }
	}

	public final BuiltinFunctionNameContext builtinFunctionName() throws RecognitionException {
		BuiltinFunctionNameContext _localctx = new BuiltinFunctionNameContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_builtinFunctionName);
		try {
			setState(218);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__0:
				enterOuterAlt(_localctx, 1);
				{
				setState(211);
				builtin_print();
				}
				break;
			case T__1:
				enterOuterAlt(_localctx, 2);
				{
				setState(212);
				builtin_println();
				}
				break;
			case T__2:
				enterOuterAlt(_localctx, 3);
				{
				setState(213);
				builtin_printInt();
				}
				break;
			case T__3:
				enterOuterAlt(_localctx, 4);
				{
				setState(214);
				builtin_printlnInt();
				}
				break;
			case T__4:
				enterOuterAlt(_localctx, 5);
				{
				setState(215);
				builtin_getString();
				}
				break;
			case T__5:
				enterOuterAlt(_localctx, 6);
				{
				setState(216);
				builtin_getInt();
				}
				break;
			case T__6:
				enterOuterAlt(_localctx, 7);
				{
				setState(217);
				builtin_toString();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Builtin_printContext extends ParserRuleContext {
		public Builtin_printContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_builtin_print; }
	}

	public final Builtin_printContext builtin_print() throws RecognitionException {
		Builtin_printContext _localctx = new Builtin_printContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_builtin_print);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(220);
			match(T__0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Builtin_printlnContext extends ParserRuleContext {
		public Builtin_printlnContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_builtin_println; }
	}

	public final Builtin_printlnContext builtin_println() throws RecognitionException {
		Builtin_printlnContext _localctx = new Builtin_printlnContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_builtin_println);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(222);
			match(T__1);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Builtin_printIntContext extends ParserRuleContext {
		public Builtin_printIntContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_builtin_printInt; }
	}

	public final Builtin_printIntContext builtin_printInt() throws RecognitionException {
		Builtin_printIntContext _localctx = new Builtin_printIntContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_builtin_printInt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(224);
			match(T__2);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Builtin_printlnIntContext extends ParserRuleContext {
		public Builtin_printlnIntContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_builtin_printlnInt; }
	}

	public final Builtin_printlnIntContext builtin_printlnInt() throws RecognitionException {
		Builtin_printlnIntContext _localctx = new Builtin_printlnIntContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_builtin_printlnInt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(226);
			match(T__3);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Builtin_getStringContext extends ParserRuleContext {
		public Builtin_getStringContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_builtin_getString; }
	}

	public final Builtin_getStringContext builtin_getString() throws RecognitionException {
		Builtin_getStringContext _localctx = new Builtin_getStringContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_builtin_getString);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(228);
			match(T__4);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Builtin_getIntContext extends ParserRuleContext {
		public Builtin_getIntContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_builtin_getInt; }
	}

	public final Builtin_getIntContext builtin_getInt() throws RecognitionException {
		Builtin_getIntContext _localctx = new Builtin_getIntContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_builtin_getInt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(230);
			match(T__5);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Builtin_toStringContext extends ParserRuleContext {
		public Builtin_toStringContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_builtin_toString; }
	}

	public final Builtin_toStringContext builtin_toString() throws RecognitionException {
		Builtin_toStringContext _localctx = new Builtin_toStringContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_builtin_toString);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(232);
			match(T__6);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionParameterContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public FunctionParameterContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionParameter; }
	}

	public final FunctionParameterContext functionParameter() throws RecognitionException {
		FunctionParameterContext _localctx = new FunctionParameterContext(_ctx, getState());
		enterRule(_localctx, 46, RULE_functionParameter);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(234);
			expression(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionCallContext extends ParserRuleContext {
		public TerminalNode LeftParen() { return getToken(Mx_liteParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(Mx_liteParser.RightParen, 0); }
		public BuiltinFunctionNameContext builtinFunctionName() {
			return getRuleContext(BuiltinFunctionNameContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(Mx_liteParser.Identifier, 0); }
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public List<TerminalNode> Comma() { return getTokens(Mx_liteParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(Mx_liteParser.Comma, i);
		}
		public FunctionCallContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionCall; }
	}

	public final FunctionCallContext functionCall() throws RecognitionException {
		FunctionCallContext _localctx = new FunctionCallContext(_ctx, getState());
		enterRule(_localctx, 48, RULE_functionCall);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(238);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__0:
			case T__1:
			case T__2:
			case T__3:
			case T__4:
			case T__5:
			case T__6:
				{
				setState(236);
				builtinFunctionName();
				}
				break;
			case Identifier:
				{
				setState(237);
				match(Identifier);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(240);
			match(LeftParen);
			setState(249);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__1) | (1L << T__2) | (1L << T__3) | (1L << T__4) | (1L << T__5) | (1L << T__6) | (1L << T__7) | (1L << True) | (1L << False) | (1L << LeftParen) | (1L << Identifier) | (1L << DecimalInteger))) != 0)) {
				{
				setState(241);
				expression(0);
				setState(246);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==Comma) {
					{
					{
					setState(242);
					match(Comma);
					setState(243);
					expression(0);
					}
					}
					setState(248);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(251);
			match(RightParen);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AnyStringContext extends ParserRuleContext {
		public AnyStringContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_anyString; }
	}

	public final AnyStringContext anyString() throws RecognitionException {
		AnyStringContext _localctx = new AnyStringContext(_ctx, getState());
		enterRule(_localctx, 50, RULE_anyString);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(256);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,21,_ctx);
			while ( _alt!=1 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1+1 ) {
					{
					{
					setState(253);
					matchWildcard();
					}
					} 
				}
				setState(258);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,21,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StringContext extends ParserRuleContext {
		public AnyStringContext anyString() {
			return getRuleContext(AnyStringContext.class,0);
		}
		public StringContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_string; }
	}

	public final StringContext string() throws RecognitionException {
		StringContext _localctx = new StringContext(_ctx, getState());
		enterRule(_localctx, 52, RULE_string);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(259);
			match(T__7);
			setState(260);
			anyString();
			setState(261);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 7:
			return expression_sempred((ExpressionContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 11);
		case 1:
			return precpred(_ctx, 10);
		case 2:
			return precpred(_ctx, 9);
		case 3:
			return precpred(_ctx, 8);
		case 4:
			return precpred(_ctx, 7);
		case 5:
			return precpred(_ctx, 6);
		case 6:
			return precpred(_ctx, 5);
		case 7:
			return precpred(_ctx, 4);
		case 8:
			return precpred(_ctx, 3);
		case 9:
			return precpred(_ctx, 2);
		case 10:
			return precpred(_ctx, 1);
		case 11:
			return precpred(_ctx, 13);
		case 12:
			return precpred(_ctx, 12);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3<\u010a\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\3\2\3\2\7\2;\n\2\f\2\16\2>\13\2\3\3\3\3"+
		"\3\3\3\3\3\3\3\3\3\3\3\4\3\4\3\4\3\4\3\4\3\4\7\4M\n\4\f\4\16\4P\13\4\5"+
		"\4R\n\4\3\5\3\5\3\5\7\5W\n\5\f\5\16\5Z\13\5\3\6\3\6\7\6^\n\6\f\6\16\6"+
		"a\13\6\3\6\3\6\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\5\7n\n\7\3\7\3\7\5"+
		"\7r\n\7\3\7\3\7\3\7\3\7\3\7\5\7y\n\7\3\b\3\b\3\b\3\t\3\t\3\t\3\t\3\t\3"+
		"\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t"+
		"\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3"+
		"\t\3\t\3\t\3\t\5\t\u00aa\n\t\3\t\7\t\u00ad\n\t\f\t\16\t\u00b0\13\t\3\n"+
		"\3\n\3\n\3\n\7\n\u00b6\n\n\f\n\16\n\u00b9\13\n\3\13\3\13\3\13\5\13\u00be"+
		"\n\13\3\f\3\f\5\f\u00c2\n\f\3\r\3\r\5\r\u00c6\n\r\3\16\3\16\3\17\3\17"+
		"\3\17\3\17\3\17\3\17\3\17\3\17\5\17\u00d2\n\17\3\20\3\20\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\5\21\u00dd\n\21\3\22\3\22\3\23\3\23\3\24\3\24\3\25"+
		"\3\25\3\26\3\26\3\27\3\27\3\30\3\30\3\31\3\31\3\32\3\32\5\32\u00f1\n\32"+
		"\3\32\3\32\3\32\3\32\7\32\u00f7\n\32\f\32\16\32\u00fa\13\32\5\32\u00fc"+
		"\n\32\3\32\3\32\3\33\7\33\u0101\n\33\f\33\16\33\u0104\13\33\3\34\3\34"+
		"\3\34\3\34\3\34\3\u0102\3\20\35\2\4\6\b\n\f\16\20\22\24\26\30\32\34\36"+
		" \"$&(*,.\60\62\64\66\2\t\3\2$&\4\2  \"\"\3\2\36\37\3\2\32\35\3\2\63\64"+
		"\3\2\13\f\4\2\16\1788\2\u011b\2<\3\2\2\2\4?\3\2\2\2\6Q\3\2\2\2\bS\3\2"+
		"\2\2\n[\3\2\2\2\fx\3\2\2\2\16z\3\2\2\2\20}\3\2\2\2\22\u00b1\3\2\2\2\24"+
		"\u00ba\3\2\2\2\26\u00c1\3\2\2\2\30\u00c5\3\2\2\2\32\u00c7\3\2\2\2\34\u00d1"+
		"\3\2\2\2\36\u00d3\3\2\2\2 \u00dc\3\2\2\2\"\u00de\3\2\2\2$\u00e0\3\2\2"+
		"\2&\u00e2\3\2\2\2(\u00e4\3\2\2\2*\u00e6\3\2\2\2,\u00e8\3\2\2\2.\u00ea"+
		"\3\2\2\2\60\u00ec\3\2\2\2\62\u00f0\3\2\2\2\64\u0102\3\2\2\2\66\u0105\3"+
		"\2\2\28;\5\16\b\29;\5\4\3\2:8\3\2\2\2:9\3\2\2\2;>\3\2\2\2<:\3\2\2\2<="+
		"\3\2\2\2=\3\3\2\2\2><\3\2\2\2?@\5\26\f\2@A\7\67\2\2AB\7\24\2\2BC\5\6\4"+
		"\2CD\7\25\2\2DE\5\n\6\2E\5\3\2\2\2FG\5\30\r\2GN\7\67\2\2HI\7\61\2\2IJ"+
		"\5\30\r\2JK\7\67\2\2KM\3\2\2\2LH\3\2\2\2MP\3\2\2\2NL\3\2\2\2NO\3\2\2\2"+
		"OR\3\2\2\2PN\3\2\2\2QF\3\2\2\2QR\3\2\2\2R\7\3\2\2\2SX\5\20\t\2TU\7\61"+
		"\2\2UW\5\20\t\2VT\3\2\2\2WZ\3\2\2\2XV\3\2\2\2XY\3\2\2\2Y\t\3\2\2\2ZX\3"+
		"\2\2\2[_\7\30\2\2\\^\5\f\7\2]\\\3\2\2\2^a\3\2\2\2_]\3\2\2\2_`\3\2\2\2"+
		"`b\3\2\2\2a_\3\2\2\2bc\7\31\2\2c\13\3\2\2\2dy\5\n\6\2ey\5\16\b\2fg\7\20"+
		"\2\2gh\7\24\2\2hi\5\20\t\2ij\7\25\2\2jm\5\f\7\2kl\7\21\2\2ln\5\f\7\2m"+
		"k\3\2\2\2mn\3\2\2\2ny\3\2\2\2oq\7\22\2\2pr\5\20\t\2qp\3\2\2\2qr\3\2\2"+
		"\2rs\3\2\2\2sy\7\60\2\2tu\5\20\t\2uv\7\60\2\2vy\3\2\2\2wy\7\60\2\2xd\3"+
		"\2\2\2xe\3\2\2\2xf\3\2\2\2xo\3\2\2\2xt\3\2\2\2xw\3\2\2\2y\r\3\2\2\2z{"+
		"\5\22\n\2{|\7\60\2\2|\17\3\2\2\2}~\b\t\1\2~\177\5\34\17\2\177\u00ae\3"+
		"\2\2\2\u0080\u0081\f\r\2\2\u0081\u0082\t\2\2\2\u0082\u00ad\5\20\t\16\u0083"+
		"\u0084\f\f\2\2\u0084\u0085\t\3\2\2\u0085\u00ad\5\20\t\r\u0086\u0087\f"+
		"\13\2\2\u0087\u0088\t\4\2\2\u0088\u00ad\5\20\t\f\u0089\u008a\f\n\2\2\u008a"+
		"\u008b\t\5\2\2\u008b\u00ad\5\20\t\13\u008c\u008d\f\t\2\2\u008d\u008e\t"+
		"\6\2\2\u008e\u00ad\5\20\t\n\u008f\u0090\f\b\2\2\u0090\u0091\7\'\2\2\u0091"+
		"\u00ad\5\20\t\t\u0092\u0093\f\7\2\2\u0093\u0094\7+\2\2\u0094\u00ad\5\20"+
		"\t\b\u0095\u0096\f\6\2\2\u0096\u0097\7(\2\2\u0097\u00ad\5\20\t\7\u0098"+
		"\u0099\f\5\2\2\u0099\u009a\7)\2\2\u009a\u00ad\5\20\t\6\u009b\u009c\f\4"+
		"\2\2\u009c\u009d\7*\2\2\u009d\u00ad\5\20\t\5\u009e\u009f\f\3\2\2\u009f"+
		"\u00a0\7\62\2\2\u00a0\u00ad\5\20\t\3\u00a1\u00a2\f\17\2\2\u00a2\u00a3"+
		"\7\26\2\2\u00a3\u00a4\5\20\t\2\u00a4\u00a5\7\27\2\2\u00a5\u00ad\3\2\2"+
		"\2\u00a6\u00a7\f\16\2\2\u00a7\u00a9\7\24\2\2\u00a8\u00aa\5\b\5\2\u00a9"+
		"\u00a8\3\2\2\2\u00a9\u00aa\3\2\2\2\u00aa\u00ab\3\2\2\2\u00ab\u00ad\7\25"+
		"\2\2\u00ac\u0080\3\2\2\2\u00ac\u0083\3\2\2\2\u00ac\u0086\3\2\2\2\u00ac"+
		"\u0089\3\2\2\2\u00ac\u008c\3\2\2\2\u00ac\u008f\3\2\2\2\u00ac\u0092\3\2"+
		"\2\2\u00ac\u0095\3\2\2\2\u00ac\u0098\3\2\2\2\u00ac\u009b\3\2\2\2\u00ac"+
		"\u009e\3\2\2\2\u00ac\u00a1\3\2\2\2\u00ac\u00a6\3\2\2\2\u00ad\u00b0\3\2"+
		"\2\2\u00ae\u00ac\3\2\2\2\u00ae\u00af\3\2\2\2\u00af\21\3\2\2\2\u00b0\u00ae"+
		"\3\2\2\2\u00b1\u00b2\5\30\r\2\u00b2\u00b7\5\24\13\2\u00b3\u00b4\7\61\2"+
		"\2\u00b4\u00b6\5\24\13\2\u00b5\u00b3\3\2\2\2\u00b6\u00b9\3\2\2\2\u00b7"+
		"\u00b5\3\2\2\2\u00b7\u00b8\3\2\2\2\u00b8\23\3\2\2\2\u00b9\u00b7\3\2\2"+
		"\2\u00ba\u00bd\7\67\2\2\u00bb\u00bc\7\62\2\2\u00bc\u00be\5\20\t\2\u00bd"+
		"\u00bb\3\2\2\2\u00bd\u00be\3\2\2\2\u00be\25\3\2\2\2\u00bf\u00c2\7\r\2"+
		"\2\u00c0\u00c2\5\30\r\2\u00c1\u00bf\3\2\2\2\u00c1\u00c0\3\2\2\2\u00c2"+
		"\27\3\2\2\2\u00c3\u00c6\5\32\16\2\u00c4\u00c6\7\67\2\2\u00c5\u00c3\3\2"+
		"\2\2\u00c5\u00c4\3\2\2\2\u00c6\31\3\2\2\2\u00c7\u00c8\t\7\2\2\u00c8\33"+
		"\3\2\2\2\u00c9\u00ca\7\24\2\2\u00ca\u00cb\5\20\t\2\u00cb\u00cc\7\25\2"+
		"\2\u00cc\u00d2\3\2\2\2\u00cd\u00d2\7\67\2\2\u00ce\u00d2\5\36\20\2\u00cf"+
		"\u00d2\5\62\32\2\u00d0\u00d2\5\66\34\2\u00d1\u00c9\3\2\2\2\u00d1\u00cd"+
		"\3\2\2\2\u00d1\u00ce\3\2\2\2\u00d1\u00cf\3\2\2\2\u00d1\u00d0\3\2\2\2\u00d2"+
		"\35\3\2\2\2\u00d3\u00d4\t\b\2\2\u00d4\37\3\2\2\2\u00d5\u00dd\5\"\22\2"+
		"\u00d6\u00dd\5$\23\2\u00d7\u00dd\5&\24\2\u00d8\u00dd\5(\25\2\u00d9\u00dd"+
		"\5*\26\2\u00da\u00dd\5,\27\2\u00db\u00dd\5.\30\2\u00dc\u00d5\3\2\2\2\u00dc"+
		"\u00d6\3\2\2\2\u00dc\u00d7\3\2\2\2\u00dc\u00d8\3\2\2\2\u00dc\u00d9\3\2"+
		"\2\2\u00dc\u00da\3\2\2\2\u00dc\u00db\3\2\2\2\u00dd!\3\2\2\2\u00de\u00df"+
		"\7\3\2\2\u00df#\3\2\2\2\u00e0\u00e1\7\4\2\2\u00e1%\3\2\2\2\u00e2\u00e3"+
		"\7\5\2\2\u00e3\'\3\2\2\2\u00e4\u00e5\7\6\2\2\u00e5)\3\2\2\2\u00e6\u00e7"+
		"\7\7\2\2\u00e7+\3\2\2\2\u00e8\u00e9\7\b\2\2\u00e9-\3\2\2\2\u00ea\u00eb"+
		"\7\t\2\2\u00eb/\3\2\2\2\u00ec\u00ed\5\20\t\2\u00ed\61\3\2\2\2\u00ee\u00f1"+
		"\5 \21\2\u00ef\u00f1\7\67\2\2\u00f0\u00ee\3\2\2\2\u00f0\u00ef\3\2\2\2"+
		"\u00f1\u00f2\3\2\2\2\u00f2\u00fb\7\24\2\2\u00f3\u00f8\5\20\t\2\u00f4\u00f5"+
		"\7\61\2\2\u00f5\u00f7\5\20\t\2\u00f6\u00f4\3\2\2\2\u00f7\u00fa\3\2\2\2"+
		"\u00f8\u00f6\3\2\2\2\u00f8\u00f9\3\2\2\2\u00f9\u00fc\3\2\2\2\u00fa\u00f8"+
		"\3\2\2\2\u00fb\u00f3\3\2\2\2\u00fb\u00fc\3\2\2\2\u00fc\u00fd\3\2\2\2\u00fd"+
		"\u00fe\7\25\2\2\u00fe\63\3\2\2\2\u00ff\u0101\13\2\2\2\u0100\u00ff\3\2"+
		"\2\2\u0101\u0104\3\2\2\2\u0102\u0103\3\2\2\2\u0102\u0100\3\2\2\2\u0103"+
		"\65\3\2\2\2\u0104\u0102\3\2\2\2\u0105\u0106\7\n\2\2\u0106\u0107\5\64\33"+
		"\2\u0107\u0108\7\n\2\2\u0108\67\3\2\2\2\30:<NQX_mqx\u00a9\u00ac\u00ae"+
		"\u00b7\u00bd\u00c1\u00c5\u00d1\u00dc\u00f0\u00f8\u00fb\u0102";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}