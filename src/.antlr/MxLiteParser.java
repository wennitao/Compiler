// Generated from /Users/niwentao/Desktop/SJTU/编译器/Test/src/MxLite.g4 by ANTLR 4.8
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxLiteParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.8", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		Int=1, Bool=2, String=3, Null=4, Void=5, True=6, False=7, If=8, Else=9, 
		For=10, While=11, Break=12, Continue=13, Return=14, New=15, Class=16, 
		This=17, Dot=18, LeftParen=19, RightParen=20, LeftBracket=21, RightBracket=22, 
		LeftBrace=23, RightBrace=24, Less=25, LessEqual=26, Greater=27, GreaterEqual=28, 
		LeftShift=29, RightShift=30, Plus=31, SelfPlus=32, Minus=33, SelfMinus=34, 
		Mul=35, Div=36, Mod=37, And=38, Or=39, AndAnd=40, OrOr=41, Caret=42, Not=43, 
		Tilde=44, Question=45, Colon=46, Semi=47, Comma=48, Assign=49, Equal=50, 
		NotEqual=51, DecimalInteger=52, StringObject=53, Identifier=54, Whitespace=55, 
		Newline=56, BlockComment=57, LineComment=58;
	public static final int
		RULE_program = 0, RULE_builtinType = 1, RULE_varType = 2, RULE_functionType = 3, 
		RULE_varDef = 4, RULE_varDeclaration = 5, RULE_functionDef = 6, RULE_functionParameterDef = 7, 
		RULE_classDef = 8, RULE_classConstructor = 9, RULE_suite = 10, RULE_statement = 11, 
		RULE_varDefineStmt = 12, RULE_expressionList = 13, RULE_expression = 14, 
		RULE_primary = 15, RULE_literal = 16;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "builtinType", "varType", "functionType", "varDef", "varDeclaration", 
			"functionDef", "functionParameterDef", "classDef", "classConstructor", 
			"suite", "statement", "varDefineStmt", "expressionList", "expression", 
			"primary", "literal"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'int'", "'bool'", "'string'", "'null'", "'void'", "'true'", "'false'", 
			"'if'", "'else'", "'for'", "'while'", "'break'", "'continue'", "'return'", 
			"'new'", "'class'", "'this'", "'.'", "'('", "')'", "'['", "']'", "'{'", 
			"'}'", "'<'", "'<='", "'>'", "'>='", "'<<'", "'>>'", "'+'", "'++'", "'-'", 
			"'--'", "'*'", "'/'", "'%'", "'&'", "'|'", "'&&'", "'||'", "'^'", "'!'", 
			"'~'", "'?'", "':'", "';'", "','", "'='", "'=='", "'!='"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "Int", "Bool", "String", "Null", "Void", "True", "False", "If", 
			"Else", "For", "While", "Break", "Continue", "Return", "New", "Class", 
			"This", "Dot", "LeftParen", "RightParen", "LeftBracket", "RightBracket", 
			"LeftBrace", "RightBrace", "Less", "LessEqual", "Greater", "GreaterEqual", 
			"LeftShift", "RightShift", "Plus", "SelfPlus", "Minus", "SelfMinus", 
			"Mul", "Div", "Mod", "And", "Or", "AndAnd", "OrOr", "Caret", "Not", "Tilde", 
			"Question", "Colon", "Semi", "Comma", "Assign", "Equal", "NotEqual", 
			"DecimalInteger", "StringObject", "Identifier", "Whitespace", "Newline", 
			"BlockComment", "LineComment"
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
	public String getGrammarFileName() { return "MxLite.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public MxLiteParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class ProgramContext extends ParserRuleContext {
		public List<VarDefineStmtContext> varDefineStmt() {
			return getRuleContexts(VarDefineStmtContext.class);
		}
		public VarDefineStmtContext varDefineStmt(int i) {
			return getRuleContext(VarDefineStmtContext.class,i);
		}
		public List<FunctionDefContext> functionDef() {
			return getRuleContexts(FunctionDefContext.class);
		}
		public FunctionDefContext functionDef(int i) {
			return getRuleContext(FunctionDefContext.class,i);
		}
		public List<ClassDefContext> classDef() {
			return getRuleContexts(ClassDefContext.class);
		}
		public ClassDefContext classDef(int i) {
			return getRuleContext(ClassDefContext.class,i);
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
			setState(39);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Void) | (1L << Class) | (1L << Identifier))) != 0)) {
				{
				setState(37);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,0,_ctx) ) {
				case 1:
					{
					setState(34);
					varDefineStmt();
					}
					break;
				case 2:
					{
					setState(35);
					functionDef();
					}
					break;
				case 3:
					{
					setState(36);
					classDef();
					}
					break;
				}
				}
				setState(41);
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

	public static class BuiltinTypeContext extends ParserRuleContext {
		public TerminalNode Int() { return getToken(MxLiteParser.Int, 0); }
		public TerminalNode Bool() { return getToken(MxLiteParser.Bool, 0); }
		public TerminalNode String() { return getToken(MxLiteParser.String, 0); }
		public BuiltinTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_builtinType; }
	}

	public final BuiltinTypeContext builtinType() throws RecognitionException {
		BuiltinTypeContext _localctx = new BuiltinTypeContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_builtinType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(42);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String))) != 0)) ) {
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

	public static class VarTypeContext extends ParserRuleContext {
		public BuiltinTypeContext builtinType() {
			return getRuleContext(BuiltinTypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxLiteParser.Identifier, 0); }
		public VarTypeContext varType() {
			return getRuleContext(VarTypeContext.class,0);
		}
		public TerminalNode LeftBracket() { return getToken(MxLiteParser.LeftBracket, 0); }
		public TerminalNode RightBracket() { return getToken(MxLiteParser.RightBracket, 0); }
		public VarTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varType; }
	}

	public final VarTypeContext varType() throws RecognitionException {
		return varType(0);
	}

	private VarTypeContext varType(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		VarTypeContext _localctx = new VarTypeContext(_ctx, _parentState);
		VarTypeContext _prevctx = _localctx;
		int _startState = 4;
		enterRecursionRule(_localctx, 4, RULE_varType, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(47);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Int:
			case Bool:
			case String:
				{
				setState(45);
				builtinType();
				}
				break;
			case Identifier:
				{
				setState(46);
				match(Identifier);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(54);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,3,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new VarTypeContext(_parentctx, _parentState);
					pushNewRecursionContext(_localctx, _startState, RULE_varType);
					setState(49);
					if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
					setState(50);
					match(LeftBracket);
					setState(51);
					match(RightBracket);
					}
					} 
				}
				setState(56);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,3,_ctx);
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

	public static class FunctionTypeContext extends ParserRuleContext {
		public TerminalNode Void() { return getToken(MxLiteParser.Void, 0); }
		public VarTypeContext varType() {
			return getRuleContext(VarTypeContext.class,0);
		}
		public FunctionTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionType; }
	}

	public final FunctionTypeContext functionType() throws RecognitionException {
		FunctionTypeContext _localctx = new FunctionTypeContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_functionType);
		try {
			setState(59);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Void:
				enterOuterAlt(_localctx, 1);
				{
				setState(57);
				match(Void);
				}
				break;
			case Int:
			case Bool:
			case String:
			case Identifier:
				enterOuterAlt(_localctx, 2);
				{
				setState(58);
				varType(0);
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
		public List<TerminalNode> Comma() { return getTokens(MxLiteParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(MxLiteParser.Comma, i);
		}
		public VarDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDef; }
	}

	public final VarDefContext varDef() throws RecognitionException {
		VarDefContext _localctx = new VarDefContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_varDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(61);
			varType(0);
			setState(62);
			varDeclaration();
			setState(67);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(63);
				match(Comma);
				setState(64);
				varDeclaration();
				}
				}
				setState(69);
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
		public TerminalNode Identifier() { return getToken(MxLiteParser.Identifier, 0); }
		public TerminalNode Assign() { return getToken(MxLiteParser.Assign, 0); }
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
		enterRule(_localctx, 10, RULE_varDeclaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(70);
			match(Identifier);
			setState(73);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==Assign) {
				{
				setState(71);
				match(Assign);
				setState(72);
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

	public static class FunctionDefContext extends ParserRuleContext {
		public FunctionTypeContext functionType() {
			return getRuleContext(FunctionTypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxLiteParser.Identifier, 0); }
		public TerminalNode LeftParen() { return getToken(MxLiteParser.LeftParen, 0); }
		public FunctionParameterDefContext functionParameterDef() {
			return getRuleContext(FunctionParameterDefContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(MxLiteParser.RightParen, 0); }
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
		enterRule(_localctx, 12, RULE_functionDef);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(75);
			functionType();
			setState(76);
			match(Identifier);
			setState(77);
			match(LeftParen);
			setState(78);
			functionParameterDef();
			setState(79);
			match(RightParen);
			setState(80);
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
		public List<TerminalNode> Identifier() { return getTokens(MxLiteParser.Identifier); }
		public TerminalNode Identifier(int i) {
			return getToken(MxLiteParser.Identifier, i);
		}
		public List<TerminalNode> Comma() { return getTokens(MxLiteParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(MxLiteParser.Comma, i);
		}
		public FunctionParameterDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionParameterDef; }
	}

	public final FunctionParameterDefContext functionParameterDef() throws RecognitionException {
		FunctionParameterDefContext _localctx = new FunctionParameterDefContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_functionParameterDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(93);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				setState(82);
				varType(0);
				setState(83);
				match(Identifier);
				setState(90);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==Comma) {
					{
					{
					setState(84);
					match(Comma);
					setState(85);
					varType(0);
					setState(86);
					match(Identifier);
					}
					}
					setState(92);
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

	public static class ClassDefContext extends ParserRuleContext {
		public TerminalNode Class() { return getToken(MxLiteParser.Class, 0); }
		public TerminalNode LeftBrace() { return getToken(MxLiteParser.LeftBrace, 0); }
		public TerminalNode RightBrace() { return getToken(MxLiteParser.RightBrace, 0); }
		public TerminalNode Semi() { return getToken(MxLiteParser.Semi, 0); }
		public ClassConstructorContext classConstructor() {
			return getRuleContext(ClassConstructorContext.class,0);
		}
		public List<VarDefContext> varDef() {
			return getRuleContexts(VarDefContext.class);
		}
		public VarDefContext varDef(int i) {
			return getRuleContext(VarDefContext.class,i);
		}
		public List<FunctionDefContext> functionDef() {
			return getRuleContexts(FunctionDefContext.class);
		}
		public FunctionDefContext functionDef(int i) {
			return getRuleContext(FunctionDefContext.class,i);
		}
		public ClassDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classDef; }
	}

	public final ClassDefContext classDef() throws RecognitionException {
		ClassDefContext _localctx = new ClassDefContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_classDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(95);
			match(Class);
			setState(96);
			match(LeftBrace);
			setState(98);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,9,_ctx) ) {
			case 1:
				{
				setState(97);
				classConstructor();
				}
				break;
			}
			setState(104);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Void) | (1L << Identifier))) != 0)) {
				{
				setState(102);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,10,_ctx) ) {
				case 1:
					{
					setState(100);
					varDef();
					}
					break;
				case 2:
					{
					setState(101);
					functionDef();
					}
					break;
				}
				}
				setState(106);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(107);
			match(RightBrace);
			setState(108);
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

	public static class ClassConstructorContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MxLiteParser.Identifier, 0); }
		public TerminalNode LeftParen() { return getToken(MxLiteParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxLiteParser.RightParen, 0); }
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public ClassConstructorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classConstructor; }
	}

	public final ClassConstructorContext classConstructor() throws RecognitionException {
		ClassConstructorContext _localctx = new ClassConstructorContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_classConstructor);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(110);
			match(Identifier);
			setState(111);
			match(LeftParen);
			setState(112);
			match(RightParen);
			setState(113);
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

	public static class SuiteContext extends ParserRuleContext {
		public TerminalNode LeftBrace() { return getToken(MxLiteParser.LeftBrace, 0); }
		public TerminalNode RightBrace() { return getToken(MxLiteParser.RightBrace, 0); }
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
		enterRule(_localctx, 20, RULE_suite);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(115);
			match(LeftBrace);
			setState(119);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Null) | (1L << True) | (1L << False) | (1L << If) | (1L << For) | (1L << While) | (1L << Break) | (1L << Continue) | (1L << Return) | (1L << This) | (1L << LeftParen) | (1L << LeftBrace) | (1L << SelfPlus) | (1L << SelfMinus) | (1L << Semi) | (1L << DecimalInteger) | (1L << StringObject) | (1L << Identifier))) != 0)) {
				{
				{
				setState(116);
				statement();
				}
				}
				setState(121);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(122);
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
		public VarDefineStmtContext varDefineStmt() {
			return getRuleContext(VarDefineStmtContext.class,0);
		}
		public TerminalNode If() { return getToken(MxLiteParser.If, 0); }
		public TerminalNode LeftParen() { return getToken(MxLiteParser.LeftParen, 0); }
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode RightParen() { return getToken(MxLiteParser.RightParen, 0); }
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public TerminalNode Else() { return getToken(MxLiteParser.Else, 0); }
		public TerminalNode For() { return getToken(MxLiteParser.For, 0); }
		public List<TerminalNode> Semi() { return getTokens(MxLiteParser.Semi); }
		public TerminalNode Semi(int i) {
			return getToken(MxLiteParser.Semi, i);
		}
		public VarDefContext varDef() {
			return getRuleContext(VarDefContext.class,0);
		}
		public TerminalNode While() { return getToken(MxLiteParser.While, 0); }
		public TerminalNode Return() { return getToken(MxLiteParser.Return, 0); }
		public TerminalNode Break() { return getToken(MxLiteParser.Break, 0); }
		public TerminalNode Continue() { return getToken(MxLiteParser.Continue, 0); }
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_statement);
		int _la;
		try {
			setState(168);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,18,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(124);
				suite();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(125);
				varDefineStmt();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(126);
				match(If);
				setState(127);
				match(LeftParen);
				setState(128);
				expression(0);
				setState(129);
				match(RightParen);
				setState(130);
				((StatementContext)_localctx).trueStmt = statement();
				setState(133);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,13,_ctx) ) {
				case 1:
					{
					setState(131);
					match(Else);
					setState(132);
					((StatementContext)_localctx).falseStmt = statement();
					}
					break;
				}
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(135);
				match(For);
				setState(136);
				match(LeftParen);
				setState(139);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,14,_ctx) ) {
				case 1:
					{
					setState(137);
					varDef();
					}
					break;
				case 2:
					{
					setState(138);
					expression(0);
					}
					break;
				}
				setState(141);
				match(Semi);
				setState(143);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Null) | (1L << True) | (1L << False) | (1L << This) | (1L << LeftParen) | (1L << SelfPlus) | (1L << SelfMinus) | (1L << DecimalInteger) | (1L << StringObject) | (1L << Identifier))) != 0)) {
					{
					setState(142);
					expression(0);
					}
				}

				setState(145);
				match(Semi);
				setState(147);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Null) | (1L << True) | (1L << False) | (1L << This) | (1L << LeftParen) | (1L << SelfPlus) | (1L << SelfMinus) | (1L << DecimalInteger) | (1L << StringObject) | (1L << Identifier))) != 0)) {
					{
					setState(146);
					expression(0);
					}
				}

				setState(149);
				match(RightParen);
				setState(150);
				statement();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(151);
				match(While);
				setState(152);
				match(LeftParen);
				setState(153);
				expression(0);
				setState(154);
				match(RightParen);
				setState(155);
				statement();
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(157);
				match(Return);
				setState(159);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Null) | (1L << True) | (1L << False) | (1L << This) | (1L << LeftParen) | (1L << SelfPlus) | (1L << SelfMinus) | (1L << DecimalInteger) | (1L << StringObject) | (1L << Identifier))) != 0)) {
					{
					setState(158);
					expression(0);
					}
				}

				setState(161);
				match(Semi);
				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(162);
				_la = _input.LA(1);
				if ( !(_la==Break || _la==Continue) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(163);
				match(Semi);
				}
				break;
			case 8:
				enterOuterAlt(_localctx, 8);
				{
				setState(164);
				expression(0);
				setState(165);
				match(Semi);
				}
				break;
			case 9:
				enterOuterAlt(_localctx, 9);
				{
				setState(167);
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

	public static class VarDefineStmtContext extends ParserRuleContext {
		public VarDefContext varDef() {
			return getRuleContext(VarDefContext.class,0);
		}
		public TerminalNode Semi() { return getToken(MxLiteParser.Semi, 0); }
		public VarDefineStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDefineStmt; }
	}

	public final VarDefineStmtContext varDefineStmt() throws RecognitionException {
		VarDefineStmtContext _localctx = new VarDefineStmtContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_varDefineStmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(170);
			varDef();
			setState(171);
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

	public static class ExpressionListContext extends ParserRuleContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public List<TerminalNode> Comma() { return getTokens(MxLiteParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(MxLiteParser.Comma, i);
		}
		public ExpressionListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expressionList; }
	}

	public final ExpressionListContext expressionList() throws RecognitionException {
		ExpressionListContext _localctx = new ExpressionListContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_expressionList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(173);
			expression(0);
			setState(178);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(174);
				match(Comma);
				setState(175);
				expression(0);
				}
				}
				setState(180);
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

	public static class ExpressionContext extends ParserRuleContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode SelfPlus() { return getToken(MxLiteParser.SelfPlus, 0); }
		public TerminalNode SelfMinus() { return getToken(MxLiteParser.SelfMinus, 0); }
		public PrimaryContext primary() {
			return getRuleContext(PrimaryContext.class,0);
		}
		public TerminalNode Plus() { return getToken(MxLiteParser.Plus, 0); }
		public TerminalNode Minus() { return getToken(MxLiteParser.Minus, 0); }
		public TerminalNode Mul() { return getToken(MxLiteParser.Mul, 0); }
		public TerminalNode Div() { return getToken(MxLiteParser.Div, 0); }
		public TerminalNode Mod() { return getToken(MxLiteParser.Mod, 0); }
		public TerminalNode Less() { return getToken(MxLiteParser.Less, 0); }
		public TerminalNode LessEqual() { return getToken(MxLiteParser.LessEqual, 0); }
		public TerminalNode Greater() { return getToken(MxLiteParser.Greater, 0); }
		public TerminalNode GreaterEqual() { return getToken(MxLiteParser.GreaterEqual, 0); }
		public TerminalNode Equal() { return getToken(MxLiteParser.Equal, 0); }
		public TerminalNode NotEqual() { return getToken(MxLiteParser.NotEqual, 0); }
		public TerminalNode LeftShift() { return getToken(MxLiteParser.LeftShift, 0); }
		public TerminalNode RightShift() { return getToken(MxLiteParser.RightShift, 0); }
		public TerminalNode And() { return getToken(MxLiteParser.And, 0); }
		public TerminalNode Caret() { return getToken(MxLiteParser.Caret, 0); }
		public TerminalNode Or() { return getToken(MxLiteParser.Or, 0); }
		public TerminalNode Tilde() { return getToken(MxLiteParser.Tilde, 0); }
		public TerminalNode AndAnd() { return getToken(MxLiteParser.AndAnd, 0); }
		public TerminalNode OrOr() { return getToken(MxLiteParser.OrOr, 0); }
		public TerminalNode Not() { return getToken(MxLiteParser.Not, 0); }
		public TerminalNode Assign() { return getToken(MxLiteParser.Assign, 0); }
		public TerminalNode Dot() { return getToken(MxLiteParser.Dot, 0); }
		public TerminalNode LeftBracket() { return getToken(MxLiteParser.LeftBracket, 0); }
		public TerminalNode RightBracket() { return getToken(MxLiteParser.RightBracket, 0); }
		public TerminalNode LeftParen() { return getToken(MxLiteParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxLiteParser.RightParen, 0); }
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
		int _startState = 28;
		enterRecursionRule(_localctx, 28, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(185);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case SelfPlus:
			case SelfMinus:
				{
				setState(182);
				_la = _input.LA(1);
				if ( !(_la==SelfPlus || _la==SelfMinus) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(183);
				expression(6);
				}
				break;
			case Null:
			case True:
			case False:
			case This:
			case LeftParen:
			case DecimalInteger:
			case StringObject:
			case Identifier:
				{
				setState(184);
				primary();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(244);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,23,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(242);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,22,_ctx) ) {
					case 1:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(187);
						if (!(precpred(_ctx, 19))) throw new FailedPredicateException(this, "precpred(_ctx, 19)");
						setState(188);
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
						setState(189);
						expression(20);
						}
						break;
					case 2:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(190);
						if (!(precpred(_ctx, 18))) throw new FailedPredicateException(this, "precpred(_ctx, 18)");
						setState(191);
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
						setState(192);
						expression(19);
						}
						break;
					case 3:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(193);
						if (!(precpred(_ctx, 17))) throw new FailedPredicateException(this, "precpred(_ctx, 17)");
						setState(194);
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
						setState(195);
						expression(18);
						}
						break;
					case 4:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(196);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(197);
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
						setState(198);
						expression(17);
						}
						break;
					case 5:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(199);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(200);
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
						setState(201);
						expression(16);
						}
						break;
					case 6:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(202);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(203);
						((ExpressionContext)_localctx).op = match(And);
						setState(204);
						expression(15);
						}
						break;
					case 7:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(205);
						if (!(precpred(_ctx, 13))) throw new FailedPredicateException(this, "precpred(_ctx, 13)");
						setState(206);
						((ExpressionContext)_localctx).op = match(Caret);
						setState(207);
						expression(14);
						}
						break;
					case 8:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(208);
						if (!(precpred(_ctx, 12))) throw new FailedPredicateException(this, "precpred(_ctx, 12)");
						setState(209);
						((ExpressionContext)_localctx).op = match(Or);
						setState(210);
						expression(13);
						}
						break;
					case 9:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(211);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(212);
						((ExpressionContext)_localctx).op = match(Tilde);
						setState(213);
						expression(12);
						}
						break;
					case 10:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(214);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(215);
						((ExpressionContext)_localctx).op = match(AndAnd);
						setState(216);
						expression(11);
						}
						break;
					case 11:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(217);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(218);
						((ExpressionContext)_localctx).op = match(OrOr);
						setState(219);
						expression(10);
						}
						break;
					case 12:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(220);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(221);
						((ExpressionContext)_localctx).op = match(Not);
						setState(222);
						expression(9);
						}
						break;
					case 13:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(223);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(224);
						match(Assign);
						setState(225);
						expression(7);
						}
						break;
					case 14:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(226);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(227);
						match(Dot);
						setState(228);
						expression(5);
						}
						break;
					case 15:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(229);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(230);
						_la = _input.LA(1);
						if ( !(_la==SelfPlus || _la==SelfMinus) ) {
						_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						}
						break;
					case 16:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(231);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(232);
						match(LeftBracket);
						setState(233);
						expression(0);
						setState(234);
						match(RightBracket);
						}
						break;
					case 17:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(236);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(237);
						match(LeftParen);
						setState(239);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Null) | (1L << True) | (1L << False) | (1L << This) | (1L << LeftParen) | (1L << SelfPlus) | (1L << SelfMinus) | (1L << DecimalInteger) | (1L << StringObject) | (1L << Identifier))) != 0)) {
							{
							setState(238);
							expressionList();
							}
						}

						setState(241);
						match(RightParen);
						}
						break;
					}
					} 
				}
				setState(246);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,23,_ctx);
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

	public static class PrimaryContext extends ParserRuleContext {
		public TerminalNode LeftParen() { return getToken(MxLiteParser.LeftParen, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(MxLiteParser.RightParen, 0); }
		public TerminalNode Identifier() { return getToken(MxLiteParser.Identifier, 0); }
		public LiteralContext literal() {
			return getRuleContext(LiteralContext.class,0);
		}
		public TerminalNode This() { return getToken(MxLiteParser.This, 0); }
		public TerminalNode Null() { return getToken(MxLiteParser.Null, 0); }
		public PrimaryContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_primary; }
	}

	public final PrimaryContext primary() throws RecognitionException {
		PrimaryContext _localctx = new PrimaryContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_primary);
		try {
			setState(255);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case LeftParen:
				enterOuterAlt(_localctx, 1);
				{
				setState(247);
				match(LeftParen);
				setState(248);
				expression(0);
				setState(249);
				match(RightParen);
				}
				break;
			case Identifier:
				enterOuterAlt(_localctx, 2);
				{
				setState(251);
				match(Identifier);
				}
				break;
			case True:
			case False:
			case DecimalInteger:
			case StringObject:
				enterOuterAlt(_localctx, 3);
				{
				setState(252);
				literal();
				}
				break;
			case This:
				enterOuterAlt(_localctx, 4);
				{
				setState(253);
				match(This);
				}
				break;
			case Null:
				enterOuterAlt(_localctx, 5);
				{
				setState(254);
				match(Null);
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

	public static class LiteralContext extends ParserRuleContext {
		public TerminalNode DecimalInteger() { return getToken(MxLiteParser.DecimalInteger, 0); }
		public TerminalNode StringObject() { return getToken(MxLiteParser.StringObject, 0); }
		public TerminalNode True() { return getToken(MxLiteParser.True, 0); }
		public TerminalNode False() { return getToken(MxLiteParser.False, 0); }
		public LiteralContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_literal; }
	}

	public final LiteralContext literal() throws RecognitionException {
		LiteralContext _localctx = new LiteralContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_literal);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(257);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << True) | (1L << False) | (1L << DecimalInteger) | (1L << StringObject))) != 0)) ) {
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

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 2:
			return varType_sempred((VarTypeContext)_localctx, predIndex);
		case 14:
			return expression_sempred((ExpressionContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean varType_sempred(VarTypeContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 1);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 1:
			return precpred(_ctx, 19);
		case 2:
			return precpred(_ctx, 18);
		case 3:
			return precpred(_ctx, 17);
		case 4:
			return precpred(_ctx, 16);
		case 5:
			return precpred(_ctx, 15);
		case 6:
			return precpred(_ctx, 14);
		case 7:
			return precpred(_ctx, 13);
		case 8:
			return precpred(_ctx, 12);
		case 9:
			return precpred(_ctx, 11);
		case 10:
			return precpred(_ctx, 10);
		case 11:
			return precpred(_ctx, 9);
		case 12:
			return precpred(_ctx, 8);
		case 13:
			return precpred(_ctx, 7);
		case 14:
			return precpred(_ctx, 4);
		case 15:
			return precpred(_ctx, 5);
		case 16:
			return precpred(_ctx, 3);
		case 17:
			return precpred(_ctx, 2);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3<\u0106\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\3\2\3\2\3\2\7\2(\n\2\f\2\16\2+\13\2\3\3\3\3\3\4\3\4\3\4\5\4\62\n\4\3"+
		"\4\3\4\3\4\7\4\67\n\4\f\4\16\4:\13\4\3\5\3\5\5\5>\n\5\3\6\3\6\3\6\3\6"+
		"\7\6D\n\6\f\6\16\6G\13\6\3\7\3\7\3\7\5\7L\n\7\3\b\3\b\3\b\3\b\3\b\3\b"+
		"\3\b\3\t\3\t\3\t\3\t\3\t\3\t\7\t[\n\t\f\t\16\t^\13\t\5\t`\n\t\3\n\3\n"+
		"\3\n\5\ne\n\n\3\n\3\n\7\ni\n\n\f\n\16\nl\13\n\3\n\3\n\3\n\3\13\3\13\3"+
		"\13\3\13\3\13\3\f\3\f\7\fx\n\f\f\f\16\f{\13\f\3\f\3\f\3\r\3\r\3\r\3\r"+
		"\3\r\3\r\3\r\3\r\3\r\5\r\u0088\n\r\3\r\3\r\3\r\3\r\5\r\u008e\n\r\3\r\3"+
		"\r\5\r\u0092\n\r\3\r\3\r\5\r\u0096\n\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r"+
		"\3\r\3\r\5\r\u00a2\n\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\5\r\u00ab\n\r\3\16"+
		"\3\16\3\16\3\17\3\17\3\17\7\17\u00b3\n\17\f\17\16\17\u00b6\13\17\3\20"+
		"\3\20\3\20\3\20\5\20\u00bc\n\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20"+
		"\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20"+
		"\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20"+
		"\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20"+
		"\3\20\3\20\5\20\u00f2\n\20\3\20\7\20\u00f5\n\20\f\20\16\20\u00f8\13\20"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\5\21\u0102\n\21\3\22\3\22\3\22"+
		"\2\4\6\36\23\2\4\6\b\n\f\16\20\22\24\26\30\32\34\36 \"\2\13\3\2\3\5\3"+
		"\2\16\17\4\2\"\"$$\4\2!!##\3\2%\'\3\2\33\36\3\2\64\65\3\2\37 \4\2\b\t"+
		"\66\67\2\u0128\2)\3\2\2\2\4,\3\2\2\2\6\61\3\2\2\2\b=\3\2\2\2\n?\3\2\2"+
		"\2\fH\3\2\2\2\16M\3\2\2\2\20_\3\2\2\2\22a\3\2\2\2\24p\3\2\2\2\26u\3\2"+
		"\2\2\30\u00aa\3\2\2\2\32\u00ac\3\2\2\2\34\u00af\3\2\2\2\36\u00bb\3\2\2"+
		"\2 \u0101\3\2\2\2\"\u0103\3\2\2\2$(\5\32\16\2%(\5\16\b\2&(\5\22\n\2\'"+
		"$\3\2\2\2\'%\3\2\2\2\'&\3\2\2\2(+\3\2\2\2)\'\3\2\2\2)*\3\2\2\2*\3\3\2"+
		"\2\2+)\3\2\2\2,-\t\2\2\2-\5\3\2\2\2./\b\4\1\2/\62\5\4\3\2\60\62\78\2\2"+
		"\61.\3\2\2\2\61\60\3\2\2\2\628\3\2\2\2\63\64\f\3\2\2\64\65\7\27\2\2\65"+
		"\67\7\30\2\2\66\63\3\2\2\2\67:\3\2\2\28\66\3\2\2\289\3\2\2\29\7\3\2\2"+
		"\2:8\3\2\2\2;>\7\7\2\2<>\5\6\4\2=;\3\2\2\2=<\3\2\2\2>\t\3\2\2\2?@\5\6"+
		"\4\2@E\5\f\7\2AB\7\62\2\2BD\5\f\7\2CA\3\2\2\2DG\3\2\2\2EC\3\2\2\2EF\3"+
		"\2\2\2F\13\3\2\2\2GE\3\2\2\2HK\78\2\2IJ\7\63\2\2JL\5\36\20\2KI\3\2\2\2"+
		"KL\3\2\2\2L\r\3\2\2\2MN\5\b\5\2NO\78\2\2OP\7\25\2\2PQ\5\20\t\2QR\7\26"+
		"\2\2RS\5\26\f\2S\17\3\2\2\2TU\5\6\4\2U\\\78\2\2VW\7\62\2\2WX\5\6\4\2X"+
		"Y\78\2\2Y[\3\2\2\2ZV\3\2\2\2[^\3\2\2\2\\Z\3\2\2\2\\]\3\2\2\2]`\3\2\2\2"+
		"^\\\3\2\2\2_T\3\2\2\2_`\3\2\2\2`\21\3\2\2\2ab\7\22\2\2bd\7\31\2\2ce\5"+
		"\24\13\2dc\3\2\2\2de\3\2\2\2ej\3\2\2\2fi\5\n\6\2gi\5\16\b\2hf\3\2\2\2"+
		"hg\3\2\2\2il\3\2\2\2jh\3\2\2\2jk\3\2\2\2km\3\2\2\2lj\3\2\2\2mn\7\32\2"+
		"\2no\7\61\2\2o\23\3\2\2\2pq\78\2\2qr\7\25\2\2rs\7\26\2\2st\5\26\f\2t\25"+
		"\3\2\2\2uy\7\31\2\2vx\5\30\r\2wv\3\2\2\2x{\3\2\2\2yw\3\2\2\2yz\3\2\2\2"+
		"z|\3\2\2\2{y\3\2\2\2|}\7\32\2\2}\27\3\2\2\2~\u00ab\5\26\f\2\177\u00ab"+
		"\5\32\16\2\u0080\u0081\7\n\2\2\u0081\u0082\7\25\2\2\u0082\u0083\5\36\20"+
		"\2\u0083\u0084\7\26\2\2\u0084\u0087\5\30\r\2\u0085\u0086\7\13\2\2\u0086"+
		"\u0088\5\30\r\2\u0087\u0085\3\2\2\2\u0087\u0088\3\2\2\2\u0088\u00ab\3"+
		"\2\2\2\u0089\u008a\7\f\2\2\u008a\u008d\7\25\2\2\u008b\u008e\5\n\6\2\u008c"+
		"\u008e\5\36\20\2\u008d\u008b\3\2\2\2\u008d\u008c\3\2\2\2\u008d\u008e\3"+
		"\2\2\2\u008e\u008f\3\2\2\2\u008f\u0091\7\61\2\2\u0090\u0092\5\36\20\2"+
		"\u0091\u0090\3\2\2\2\u0091\u0092\3\2\2\2\u0092\u0093\3\2\2\2\u0093\u0095"+
		"\7\61\2\2\u0094\u0096\5\36\20\2\u0095\u0094\3\2\2\2\u0095\u0096\3\2\2"+
		"\2\u0096\u0097\3\2\2\2\u0097\u0098\7\26\2\2\u0098\u00ab\5\30\r\2\u0099"+
		"\u009a\7\r\2\2\u009a\u009b\7\25\2\2\u009b\u009c\5\36\20\2\u009c\u009d"+
		"\7\26\2\2\u009d\u009e\5\30\r\2\u009e\u00ab\3\2\2\2\u009f\u00a1\7\20\2"+
		"\2\u00a0\u00a2\5\36\20\2\u00a1\u00a0\3\2\2\2\u00a1\u00a2\3\2\2\2\u00a2"+
		"\u00a3\3\2\2\2\u00a3\u00ab\7\61\2\2\u00a4\u00a5\t\3\2\2\u00a5\u00ab\7"+
		"\61\2\2\u00a6\u00a7\5\36\20\2\u00a7\u00a8\7\61\2\2\u00a8\u00ab\3\2\2\2"+
		"\u00a9\u00ab\7\61\2\2\u00aa~\3\2\2\2\u00aa\177\3\2\2\2\u00aa\u0080\3\2"+
		"\2\2\u00aa\u0089\3\2\2\2\u00aa\u0099\3\2\2\2\u00aa\u009f\3\2\2\2\u00aa"+
		"\u00a4\3\2\2\2\u00aa\u00a6\3\2\2\2\u00aa\u00a9\3\2\2\2\u00ab\31\3\2\2"+
		"\2\u00ac\u00ad\5\n\6\2\u00ad\u00ae\7\61\2\2\u00ae\33\3\2\2\2\u00af\u00b4"+
		"\5\36\20\2\u00b0\u00b1\7\62\2\2\u00b1\u00b3\5\36\20\2\u00b2\u00b0\3\2"+
		"\2\2\u00b3\u00b6\3\2\2\2\u00b4\u00b2\3\2\2\2\u00b4\u00b5\3\2\2\2\u00b5"+
		"\35\3\2\2\2\u00b6\u00b4\3\2\2\2\u00b7\u00b8\b\20\1\2\u00b8\u00b9\t\4\2"+
		"\2\u00b9\u00bc\5\36\20\b\u00ba\u00bc\5 \21\2\u00bb\u00b7\3\2\2\2\u00bb"+
		"\u00ba\3\2\2\2\u00bc\u00f6\3\2\2\2\u00bd\u00be\f\25\2\2\u00be\u00bf\t"+
		"\5\2\2\u00bf\u00f5\5\36\20\26\u00c0\u00c1\f\24\2\2\u00c1\u00c2\t\6\2\2"+
		"\u00c2\u00f5\5\36\20\25\u00c3\u00c4\f\23\2\2\u00c4\u00c5\t\7\2\2\u00c5"+
		"\u00f5\5\36\20\24\u00c6\u00c7\f\22\2\2\u00c7\u00c8\t\b\2\2\u00c8\u00f5"+
		"\5\36\20\23\u00c9\u00ca\f\21\2\2\u00ca\u00cb\t\t\2\2\u00cb\u00f5\5\36"+
		"\20\22\u00cc\u00cd\f\20\2\2\u00cd\u00ce\7(\2\2\u00ce\u00f5\5\36\20\21"+
		"\u00cf\u00d0\f\17\2\2\u00d0\u00d1\7,\2\2\u00d1\u00f5\5\36\20\20\u00d2"+
		"\u00d3\f\16\2\2\u00d3\u00d4\7)\2\2\u00d4\u00f5\5\36\20\17\u00d5\u00d6"+
		"\f\r\2\2\u00d6\u00d7\7.\2\2\u00d7\u00f5\5\36\20\16\u00d8\u00d9\f\f\2\2"+
		"\u00d9\u00da\7*\2\2\u00da\u00f5\5\36\20\r\u00db\u00dc\f\13\2\2\u00dc\u00dd"+
		"\7+\2\2\u00dd\u00f5\5\36\20\f\u00de\u00df\f\n\2\2\u00df\u00e0\7-\2\2\u00e0"+
		"\u00f5\5\36\20\13\u00e1\u00e2\f\t\2\2\u00e2\u00e3\7\63\2\2\u00e3\u00f5"+
		"\5\36\20\t\u00e4\u00e5\f\6\2\2\u00e5\u00e6\7\24\2\2\u00e6\u00f5\5\36\20"+
		"\7\u00e7\u00e8\f\7\2\2\u00e8\u00f5\t\4\2\2\u00e9\u00ea\f\5\2\2\u00ea\u00eb"+
		"\7\27\2\2\u00eb\u00ec\5\36\20\2\u00ec\u00ed\7\30\2\2\u00ed\u00f5\3\2\2"+
		"\2\u00ee\u00ef\f\4\2\2\u00ef\u00f1\7\25\2\2\u00f0\u00f2\5\34\17\2\u00f1"+
		"\u00f0\3\2\2\2\u00f1\u00f2\3\2\2\2\u00f2\u00f3\3\2\2\2\u00f3\u00f5\7\26"+
		"\2\2\u00f4\u00bd\3\2\2\2\u00f4\u00c0\3\2\2\2\u00f4\u00c3\3\2\2\2\u00f4"+
		"\u00c6\3\2\2\2\u00f4\u00c9\3\2\2\2\u00f4\u00cc\3\2\2\2\u00f4\u00cf\3\2"+
		"\2\2\u00f4\u00d2\3\2\2\2\u00f4\u00d5\3\2\2\2\u00f4\u00d8\3\2\2\2\u00f4"+
		"\u00db\3\2\2\2\u00f4\u00de\3\2\2\2\u00f4\u00e1\3\2\2\2\u00f4\u00e4\3\2"+
		"\2\2\u00f4\u00e7\3\2\2\2\u00f4\u00e9\3\2\2\2\u00f4\u00ee\3\2\2\2\u00f5"+
		"\u00f8\3\2\2\2\u00f6\u00f4\3\2\2\2\u00f6\u00f7\3\2\2\2\u00f7\37\3\2\2"+
		"\2\u00f8\u00f6\3\2\2\2\u00f9\u00fa\7\25\2\2\u00fa\u00fb\5\36\20\2\u00fb"+
		"\u00fc\7\26\2\2\u00fc\u0102\3\2\2\2\u00fd\u0102\78\2\2\u00fe\u0102\5\""+
		"\22\2\u00ff\u0102\7\23\2\2\u0100\u0102\7\6\2\2\u0101\u00f9\3\2\2\2\u0101"+
		"\u00fd\3\2\2\2\u0101\u00fe\3\2\2\2\u0101\u00ff\3\2\2\2\u0101\u0100\3\2"+
		"\2\2\u0102!\3\2\2\2\u0103\u0104\t\n\2\2\u0104#\3\2\2\2\33\')\618=EK\\"+
		"_dhjy\u0087\u008d\u0091\u0095\u00a1\u00aa\u00b4\u00bb\u00f1\u00f4\u00f6"+
		"\u0101";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}