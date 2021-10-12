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
		T__0=1, T__1=2, Int=3, Bool=4, String=5, Null=6, Void=7, True=8, False=9, 
		If=10, Else=11, For=12, While=13, Break=14, Continue=15, Return=16, New=17, 
		Class=18, This=19, Dot=20, LeftParen=21, RightParen=22, LeftBracket=23, 
		RightBracket=24, LeftBrace=25, RightBrace=26, Less=27, LessEqual=28, Greater=29, 
		GreaterEqual=30, LeftShift=31, RightShift=32, Plus=33, SelfPlus=34, Minus=35, 
		SelfMinus=36, Mul=37, Div=38, Mod=39, And=40, Or=41, AndAnd=42, OrOr=43, 
		Caret=44, Not=45, Tilde=46, Question=47, Colon=48, Semi=49, Comma=50, 
		Assign=51, Equal=52, NotEqual=53, DecimalInteger=54, StringObject=55, 
		Identifier=56, Whitespace=57, Newline=58, BlockComment=59, LineComment=60;
	public static final int
		RULE_program = 0, RULE_builtinType = 1, RULE_varType = 2, RULE_newVarType = 3, 
		RULE_functionType = 4, RULE_varDef = 5, RULE_varDeclaration = 6, RULE_functionDef = 7, 
		RULE_functionParameterDef = 8, RULE_classDef = 9, RULE_classConstructor = 10, 
		RULE_suite = 11, RULE_statement = 12, RULE_varDefineStmt = 13, RULE_lambdaStmt = 14, 
		RULE_expressionList = 15, RULE_expression = 16, RULE_primary = 17, RULE_literal = 18;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "builtinType", "varType", "newVarType", "functionType", "varDef", 
			"varDeclaration", "functionDef", "functionParameterDef", "classDef", 
			"classConstructor", "suite", "statement", "varDefineStmt", "lambdaStmt", 
			"expressionList", "expression", "primary", "literal"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'[&]'", "'->'", "'int'", "'bool'", "'string'", "'null'", "'void'", 
			"'true'", "'false'", "'if'", "'else'", "'for'", "'while'", "'break'", 
			"'continue'", "'return'", "'new'", "'class'", "'this'", "'.'", "'('", 
			"')'", "'['", "']'", "'{'", "'}'", "'<'", "'<='", "'>'", "'>='", "'<<'", 
			"'>>'", "'+'", "'++'", "'-'", "'--'", "'*'", "'/'", "'%'", "'&'", "'|'", 
			"'&&'", "'||'", "'^'", "'!'", "'~'", "'?'", "':'", "';'", "','", "'='", 
			"'=='", "'!='"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, "Int", "Bool", "String", "Null", "Void", "True", "False", 
			"If", "Else", "For", "While", "Break", "Continue", "Return", "New", "Class", 
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
			setState(43);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Void) | (1L << Class) | (1L << Identifier))) != 0)) {
				{
				setState(41);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,0,_ctx) ) {
				case 1:
					{
					setState(38);
					varDefineStmt();
					}
					break;
				case 2:
					{
					setState(39);
					functionDef();
					}
					break;
				case 3:
					{
					setState(40);
					classDef();
					}
					break;
				}
				}
				setState(45);
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
			setState(46);
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
			setState(51);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Int:
			case Bool:
			case String:
				{
				setState(49);
				builtinType();
				}
				break;
			case Identifier:
				{
				setState(50);
				match(Identifier);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(58);
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
					setState(53);
					if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
					setState(54);
					match(LeftBracket);
					setState(55);
					match(RightBracket);
					}
					} 
				}
				setState(60);
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

	public static class NewVarTypeContext extends ParserRuleContext {
		public BuiltinTypeContext builtinType() {
			return getRuleContext(BuiltinTypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxLiteParser.Identifier, 0); }
		public NewVarTypeContext newVarType() {
			return getRuleContext(NewVarTypeContext.class,0);
		}
		public TerminalNode LeftBracket() { return getToken(MxLiteParser.LeftBracket, 0); }
		public TerminalNode RightBracket() { return getToken(MxLiteParser.RightBracket, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public NewVarTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_newVarType; }
	}

	public final NewVarTypeContext newVarType() throws RecognitionException {
		return newVarType(0);
	}

	private NewVarTypeContext newVarType(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		NewVarTypeContext _localctx = new NewVarTypeContext(_ctx, _parentState);
		NewVarTypeContext _prevctx = _localctx;
		int _startState = 6;
		enterRecursionRule(_localctx, 6, RULE_newVarType, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(64);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Int:
			case Bool:
			case String:
				{
				setState(62);
				builtinType();
				}
				break;
			case Identifier:
				{
				setState(63);
				match(Identifier);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(74);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,6,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new NewVarTypeContext(_parentctx, _parentState);
					pushNewRecursionContext(_localctx, _startState, RULE_newVarType);
					setState(66);
					if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
					setState(67);
					match(LeftBracket);
					setState(69);
					_errHandler.sync(this);
					_la = _input.LA(1);
					if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << Null) | (1L << True) | (1L << False) | (1L << New) | (1L << This) | (1L << LeftParen) | (1L << Plus) | (1L << SelfPlus) | (1L << Minus) | (1L << SelfMinus) | (1L << Not) | (1L << Tilde) | (1L << DecimalInteger) | (1L << StringObject) | (1L << Identifier))) != 0)) {
						{
						setState(68);
						expression(0);
						}
					}

					setState(71);
					match(RightBracket);
					}
					} 
				}
				setState(76);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,6,_ctx);
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
		enterRule(_localctx, 8, RULE_functionType);
		try {
			setState(79);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Void:
				enterOuterAlt(_localctx, 1);
				{
				setState(77);
				match(Void);
				}
				break;
			case Int:
			case Bool:
			case String:
			case Identifier:
				enterOuterAlt(_localctx, 2);
				{
				setState(78);
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
		enterRule(_localctx, 10, RULE_varDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(81);
			varType(0);
			setState(82);
			varDeclaration();
			setState(87);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(83);
				match(Comma);
				setState(84);
				varDeclaration();
				}
				}
				setState(89);
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
		enterRule(_localctx, 12, RULE_varDeclaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(90);
			match(Identifier);
			setState(93);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==Assign) {
				{
				setState(91);
				match(Assign);
				setState(92);
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
		enterRule(_localctx, 14, RULE_functionDef);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(95);
			functionType();
			setState(96);
			match(Identifier);
			setState(97);
			match(LeftParen);
			setState(98);
			functionParameterDef();
			setState(99);
			match(RightParen);
			setState(100);
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
		enterRule(_localctx, 16, RULE_functionParameterDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(113);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				setState(102);
				varType(0);
				setState(103);
				match(Identifier);
				setState(110);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==Comma) {
					{
					{
					setState(104);
					match(Comma);
					setState(105);
					varType(0);
					setState(106);
					match(Identifier);
					}
					}
					setState(112);
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
		public TerminalNode Identifier() { return getToken(MxLiteParser.Identifier, 0); }
		public TerminalNode LeftBrace() { return getToken(MxLiteParser.LeftBrace, 0); }
		public TerminalNode RightBrace() { return getToken(MxLiteParser.RightBrace, 0); }
		public TerminalNode Semi() { return getToken(MxLiteParser.Semi, 0); }
		public ClassConstructorContext classConstructor() {
			return getRuleContext(ClassConstructorContext.class,0);
		}
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
		public ClassDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classDef; }
	}

	public final ClassDefContext classDef() throws RecognitionException {
		ClassDefContext _localctx = new ClassDefContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_classDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(115);
			match(Class);
			setState(116);
			match(Identifier);
			setState(117);
			match(LeftBrace);
			setState(119);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,12,_ctx) ) {
			case 1:
				{
				setState(118);
				classConstructor();
				}
				break;
			}
			setState(125);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Void) | (1L << Identifier))) != 0)) {
				{
				setState(123);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,13,_ctx) ) {
				case 1:
					{
					setState(121);
					varDefineStmt();
					}
					break;
				case 2:
					{
					setState(122);
					functionDef();
					}
					break;
				}
				}
				setState(127);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(128);
			match(RightBrace);
			setState(129);
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
		enterRule(_localctx, 20, RULE_classConstructor);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(131);
			match(Identifier);
			setState(132);
			match(LeftParen);
			setState(133);
			match(RightParen);
			setState(134);
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
		enterRule(_localctx, 22, RULE_suite);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(136);
			match(LeftBrace);
			setState(140);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << Null) | (1L << True) | (1L << False) | (1L << If) | (1L << For) | (1L << While) | (1L << Break) | (1L << Continue) | (1L << Return) | (1L << New) | (1L << This) | (1L << LeftParen) | (1L << LeftBrace) | (1L << Plus) | (1L << SelfPlus) | (1L << Minus) | (1L << SelfMinus) | (1L << Not) | (1L << Tilde) | (1L << Semi) | (1L << DecimalInteger) | (1L << StringObject) | (1L << Identifier))) != 0)) {
				{
				{
				setState(137);
				statement();
				}
				}
				setState(142);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(143);
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
		enterRule(_localctx, 24, RULE_statement);
		int _la;
		try {
			setState(189);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,21,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(145);
				suite();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(146);
				varDefineStmt();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(147);
				match(If);
				setState(148);
				match(LeftParen);
				setState(149);
				expression(0);
				setState(150);
				match(RightParen);
				setState(151);
				((StatementContext)_localctx).trueStmt = statement();
				setState(154);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
				case 1:
					{
					setState(152);
					match(Else);
					setState(153);
					((StatementContext)_localctx).falseStmt = statement();
					}
					break;
				}
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(156);
				match(For);
				setState(157);
				match(LeftParen);
				setState(160);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,17,_ctx) ) {
				case 1:
					{
					setState(158);
					varDef();
					}
					break;
				case 2:
					{
					setState(159);
					expression(0);
					}
					break;
				}
				setState(162);
				match(Semi);
				setState(164);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << Null) | (1L << True) | (1L << False) | (1L << New) | (1L << This) | (1L << LeftParen) | (1L << Plus) | (1L << SelfPlus) | (1L << Minus) | (1L << SelfMinus) | (1L << Not) | (1L << Tilde) | (1L << DecimalInteger) | (1L << StringObject) | (1L << Identifier))) != 0)) {
					{
					setState(163);
					expression(0);
					}
				}

				setState(166);
				match(Semi);
				setState(168);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << Null) | (1L << True) | (1L << False) | (1L << New) | (1L << This) | (1L << LeftParen) | (1L << Plus) | (1L << SelfPlus) | (1L << Minus) | (1L << SelfMinus) | (1L << Not) | (1L << Tilde) | (1L << DecimalInteger) | (1L << StringObject) | (1L << Identifier))) != 0)) {
					{
					setState(167);
					expression(0);
					}
				}

				setState(170);
				match(RightParen);
				setState(171);
				statement();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(172);
				match(While);
				setState(173);
				match(LeftParen);
				setState(174);
				expression(0);
				setState(175);
				match(RightParen);
				setState(176);
				statement();
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(178);
				match(Return);
				setState(180);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << Null) | (1L << True) | (1L << False) | (1L << New) | (1L << This) | (1L << LeftParen) | (1L << Plus) | (1L << SelfPlus) | (1L << Minus) | (1L << SelfMinus) | (1L << Not) | (1L << Tilde) | (1L << DecimalInteger) | (1L << StringObject) | (1L << Identifier))) != 0)) {
					{
					setState(179);
					expression(0);
					}
				}

				setState(182);
				match(Semi);
				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(183);
				_la = _input.LA(1);
				if ( !(_la==Break || _la==Continue) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(184);
				match(Semi);
				}
				break;
			case 8:
				enterOuterAlt(_localctx, 8);
				{
				setState(185);
				expression(0);
				setState(186);
				match(Semi);
				}
				break;
			case 9:
				enterOuterAlt(_localctx, 9);
				{
				setState(188);
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
		enterRule(_localctx, 26, RULE_varDefineStmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(191);
			varDef();
			setState(192);
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

	public static class LambdaStmtContext extends ParserRuleContext {
		public List<TerminalNode> LeftParen() { return getTokens(MxLiteParser.LeftParen); }
		public TerminalNode LeftParen(int i) {
			return getToken(MxLiteParser.LeftParen, i);
		}
		public FunctionParameterDefContext functionParameterDef() {
			return getRuleContext(FunctionParameterDefContext.class,0);
		}
		public List<TerminalNode> RightParen() { return getTokens(MxLiteParser.RightParen); }
		public TerminalNode RightParen(int i) {
			return getToken(MxLiteParser.RightParen, i);
		}
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public ExpressionListContext expressionList() {
			return getRuleContext(ExpressionListContext.class,0);
		}
		public LambdaStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lambdaStmt; }
	}

	public final LambdaStmtContext lambdaStmt() throws RecognitionException {
		LambdaStmtContext _localctx = new LambdaStmtContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_lambdaStmt);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(194);
			match(T__0);
			setState(195);
			match(LeftParen);
			setState(196);
			functionParameterDef();
			setState(197);
			match(RightParen);
			setState(198);
			match(T__1);
			setState(199);
			suite();
			setState(200);
			match(LeftParen);
			setState(202);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << Null) | (1L << True) | (1L << False) | (1L << New) | (1L << This) | (1L << LeftParen) | (1L << Plus) | (1L << SelfPlus) | (1L << Minus) | (1L << SelfMinus) | (1L << Not) | (1L << Tilde) | (1L << DecimalInteger) | (1L << StringObject) | (1L << Identifier))) != 0)) {
				{
				setState(201);
				expressionList();
				}
			}

			setState(204);
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
		enterRule(_localctx, 30, RULE_expressionList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(206);
			expression(0);
			setState(211);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(207);
				match(Comma);
				setState(208);
				expression(0);
				}
				}
				setState(213);
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
		public TerminalNode Plus() { return getToken(MxLiteParser.Plus, 0); }
		public TerminalNode Minus() { return getToken(MxLiteParser.Minus, 0); }
		public TerminalNode Tilde() { return getToken(MxLiteParser.Tilde, 0); }
		public TerminalNode Not() { return getToken(MxLiteParser.Not, 0); }
		public TerminalNode SelfPlus() { return getToken(MxLiteParser.SelfPlus, 0); }
		public TerminalNode SelfMinus() { return getToken(MxLiteParser.SelfMinus, 0); }
		public TerminalNode New() { return getToken(MxLiteParser.New, 0); }
		public NewVarTypeContext newVarType() {
			return getRuleContext(NewVarTypeContext.class,0);
		}
		public PrimaryContext primary() {
			return getRuleContext(PrimaryContext.class,0);
		}
		public LambdaStmtContext lambdaStmt() {
			return getRuleContext(LambdaStmtContext.class,0);
		}
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
		public TerminalNode AndAnd() { return getToken(MxLiteParser.AndAnd, 0); }
		public TerminalNode OrOr() { return getToken(MxLiteParser.OrOr, 0); }
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
		int _startState = 32;
		enterRecursionRule(_localctx, 32, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(227);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Plus:
			case Minus:
				{
				setState(215);
				_la = _input.LA(1);
				if ( !(_la==Plus || _la==Minus) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(216);
				expression(12);
				}
				break;
			case Tilde:
				{
				setState(217);
				match(Tilde);
				setState(218);
				expression(11);
				}
				break;
			case Not:
				{
				setState(219);
				match(Not);
				setState(220);
				expression(10);
				}
				break;
			case SelfPlus:
			case SelfMinus:
				{
				setState(221);
				_la = _input.LA(1);
				if ( !(_la==SelfPlus || _la==SelfMinus) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(222);
				expression(8);
				}
				break;
			case New:
				{
				setState(223);
				match(New);
				setState(224);
				newVarType(0);
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
				setState(225);
				primary();
				}
				break;
			case T__0:
				{
				setState(226);
				lambdaStmt();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(280);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,27,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(278);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,26,_ctx) ) {
					case 1:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(229);
						if (!(precpred(_ctx, 22))) throw new FailedPredicateException(this, "precpred(_ctx, 22)");
						setState(230);
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
						setState(231);
						expression(23);
						}
						break;
					case 2:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(232);
						if (!(precpred(_ctx, 21))) throw new FailedPredicateException(this, "precpred(_ctx, 21)");
						setState(233);
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
						setState(234);
						expression(22);
						}
						break;
					case 3:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(235);
						if (!(precpred(_ctx, 20))) throw new FailedPredicateException(this, "precpred(_ctx, 20)");
						setState(236);
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
						setState(237);
						expression(21);
						}
						break;
					case 4:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(238);
						if (!(precpred(_ctx, 19))) throw new FailedPredicateException(this, "precpred(_ctx, 19)");
						setState(239);
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
						setState(240);
						expression(20);
						}
						break;
					case 5:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(241);
						if (!(precpred(_ctx, 18))) throw new FailedPredicateException(this, "precpred(_ctx, 18)");
						setState(242);
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
						setState(243);
						expression(19);
						}
						break;
					case 6:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(244);
						if (!(precpred(_ctx, 17))) throw new FailedPredicateException(this, "precpred(_ctx, 17)");
						setState(245);
						((ExpressionContext)_localctx).op = match(And);
						setState(246);
						expression(18);
						}
						break;
					case 7:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(247);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(248);
						((ExpressionContext)_localctx).op = match(Caret);
						setState(249);
						expression(17);
						}
						break;
					case 8:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(250);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(251);
						((ExpressionContext)_localctx).op = match(Or);
						setState(252);
						expression(16);
						}
						break;
					case 9:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(253);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(254);
						((ExpressionContext)_localctx).op = match(AndAnd);
						setState(255);
						expression(15);
						}
						break;
					case 10:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(256);
						if (!(precpred(_ctx, 13))) throw new FailedPredicateException(this, "precpred(_ctx, 13)");
						setState(257);
						((ExpressionContext)_localctx).op = match(OrOr);
						setState(258);
						expression(14);
						}
						break;
					case 11:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(259);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(260);
						match(Assign);
						setState(261);
						expression(9);
						}
						break;
					case 12:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(262);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(263);
						match(Dot);
						setState(264);
						expression(6);
						}
						break;
					case 13:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(265);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(266);
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
					case 14:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(267);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(268);
						match(LeftBracket);
						setState(269);
						expression(0);
						setState(270);
						match(RightBracket);
						}
						break;
					case 15:
						{
						_localctx = new ExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(272);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(273);
						match(LeftParen);
						setState(275);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << Null) | (1L << True) | (1L << False) | (1L << New) | (1L << This) | (1L << LeftParen) | (1L << Plus) | (1L << SelfPlus) | (1L << Minus) | (1L << SelfMinus) | (1L << Not) | (1L << Tilde) | (1L << DecimalInteger) | (1L << StringObject) | (1L << Identifier))) != 0)) {
							{
							setState(274);
							expressionList();
							}
						}

						setState(277);
						match(RightParen);
						}
						break;
					}
					} 
				}
				setState(282);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,27,_ctx);
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
		enterRule(_localctx, 34, RULE_primary);
		try {
			setState(291);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case LeftParen:
				enterOuterAlt(_localctx, 1);
				{
				setState(283);
				match(LeftParen);
				setState(284);
				expression(0);
				setState(285);
				match(RightParen);
				}
				break;
			case Identifier:
				enterOuterAlt(_localctx, 2);
				{
				setState(287);
				match(Identifier);
				}
				break;
			case True:
			case False:
			case DecimalInteger:
			case StringObject:
				enterOuterAlt(_localctx, 3);
				{
				setState(288);
				literal();
				}
				break;
			case This:
				enterOuterAlt(_localctx, 4);
				{
				setState(289);
				match(This);
				}
				break;
			case Null:
				enterOuterAlt(_localctx, 5);
				{
				setState(290);
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
		enterRule(_localctx, 36, RULE_literal);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(293);
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
		case 3:
			return newVarType_sempred((NewVarTypeContext)_localctx, predIndex);
		case 16:
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
	private boolean newVarType_sempred(NewVarTypeContext _localctx, int predIndex) {
		switch (predIndex) {
		case 1:
			return precpred(_ctx, 1);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 2:
			return precpred(_ctx, 22);
		case 3:
			return precpred(_ctx, 21);
		case 4:
			return precpred(_ctx, 20);
		case 5:
			return precpred(_ctx, 19);
		case 6:
			return precpred(_ctx, 18);
		case 7:
			return precpred(_ctx, 17);
		case 8:
			return precpred(_ctx, 16);
		case 9:
			return precpred(_ctx, 15);
		case 10:
			return precpred(_ctx, 14);
		case 11:
			return precpred(_ctx, 13);
		case 12:
			return precpred(_ctx, 9);
		case 13:
			return precpred(_ctx, 5);
		case 14:
			return precpred(_ctx, 6);
		case 15:
			return precpred(_ctx, 4);
		case 16:
			return precpred(_ctx, 3);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3>\u012a\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\3\2\3\2\3\2\7\2,\n\2\f\2\16\2/\13\2\3\3\3\3\3\4\3"+
		"\4\3\4\5\4\66\n\4\3\4\3\4\3\4\7\4;\n\4\f\4\16\4>\13\4\3\5\3\5\3\5\5\5"+
		"C\n\5\3\5\3\5\3\5\5\5H\n\5\3\5\7\5K\n\5\f\5\16\5N\13\5\3\6\3\6\5\6R\n"+
		"\6\3\7\3\7\3\7\3\7\7\7X\n\7\f\7\16\7[\13\7\3\b\3\b\3\b\5\b`\n\b\3\t\3"+
		"\t\3\t\3\t\3\t\3\t\3\t\3\n\3\n\3\n\3\n\3\n\3\n\7\no\n\n\f\n\16\nr\13\n"+
		"\5\nt\n\n\3\13\3\13\3\13\3\13\5\13z\n\13\3\13\3\13\7\13~\n\13\f\13\16"+
		"\13\u0081\13\13\3\13\3\13\3\13\3\f\3\f\3\f\3\f\3\f\3\r\3\r\7\r\u008d\n"+
		"\r\f\r\16\r\u0090\13\r\3\r\3\r\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16"+
		"\3\16\5\16\u009d\n\16\3\16\3\16\3\16\3\16\5\16\u00a3\n\16\3\16\3\16\5"+
		"\16\u00a7\n\16\3\16\3\16\5\16\u00ab\n\16\3\16\3\16\3\16\3\16\3\16\3\16"+
		"\3\16\3\16\3\16\3\16\5\16\u00b7\n\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16"+
		"\5\16\u00c0\n\16\3\17\3\17\3\17\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20"+
		"\5\20\u00cd\n\20\3\20\3\20\3\21\3\21\3\21\7\21\u00d4\n\21\f\21\16\21\u00d7"+
		"\13\21\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22"+
		"\5\22\u00e6\n\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22"+
		"\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22"+
		"\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22"+
		"\3\22\3\22\3\22\3\22\3\22\3\22\3\22\5\22\u0116\n\22\3\22\7\22\u0119\n"+
		"\22\f\22\16\22\u011c\13\22\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\5\23"+
		"\u0126\n\23\3\24\3\24\3\24\2\5\6\b\"\25\2\4\6\b\n\f\16\20\22\24\26\30"+
		"\32\34\36 \"$&\2\13\3\2\5\7\3\2\20\21\4\2##%%\4\2$$&&\3\2\')\3\2\35 \3"+
		"\2\66\67\3\2!\"\4\2\n\1389\2\u0151\2-\3\2\2\2\4\60\3\2\2\2\6\65\3\2\2"+
		"\2\bB\3\2\2\2\nQ\3\2\2\2\fS\3\2\2\2\16\\\3\2\2\2\20a\3\2\2\2\22s\3\2\2"+
		"\2\24u\3\2\2\2\26\u0085\3\2\2\2\30\u008a\3\2\2\2\32\u00bf\3\2\2\2\34\u00c1"+
		"\3\2\2\2\36\u00c4\3\2\2\2 \u00d0\3\2\2\2\"\u00e5\3\2\2\2$\u0125\3\2\2"+
		"\2&\u0127\3\2\2\2(,\5\34\17\2),\5\20\t\2*,\5\24\13\2+(\3\2\2\2+)\3\2\2"+
		"\2+*\3\2\2\2,/\3\2\2\2-+\3\2\2\2-.\3\2\2\2.\3\3\2\2\2/-\3\2\2\2\60\61"+
		"\t\2\2\2\61\5\3\2\2\2\62\63\b\4\1\2\63\66\5\4\3\2\64\66\7:\2\2\65\62\3"+
		"\2\2\2\65\64\3\2\2\2\66<\3\2\2\2\678\f\3\2\289\7\31\2\29;\7\32\2\2:\67"+
		"\3\2\2\2;>\3\2\2\2<:\3\2\2\2<=\3\2\2\2=\7\3\2\2\2><\3\2\2\2?@\b\5\1\2"+
		"@C\5\4\3\2AC\7:\2\2B?\3\2\2\2BA\3\2\2\2CL\3\2\2\2DE\f\3\2\2EG\7\31\2\2"+
		"FH\5\"\22\2GF\3\2\2\2GH\3\2\2\2HI\3\2\2\2IK\7\32\2\2JD\3\2\2\2KN\3\2\2"+
		"\2LJ\3\2\2\2LM\3\2\2\2M\t\3\2\2\2NL\3\2\2\2OR\7\t\2\2PR\5\6\4\2QO\3\2"+
		"\2\2QP\3\2\2\2R\13\3\2\2\2ST\5\6\4\2TY\5\16\b\2UV\7\64\2\2VX\5\16\b\2"+
		"WU\3\2\2\2X[\3\2\2\2YW\3\2\2\2YZ\3\2\2\2Z\r\3\2\2\2[Y\3\2\2\2\\_\7:\2"+
		"\2]^\7\65\2\2^`\5\"\22\2_]\3\2\2\2_`\3\2\2\2`\17\3\2\2\2ab\5\n\6\2bc\7"+
		":\2\2cd\7\27\2\2de\5\22\n\2ef\7\30\2\2fg\5\30\r\2g\21\3\2\2\2hi\5\6\4"+
		"\2ip\7:\2\2jk\7\64\2\2kl\5\6\4\2lm\7:\2\2mo\3\2\2\2nj\3\2\2\2or\3\2\2"+
		"\2pn\3\2\2\2pq\3\2\2\2qt\3\2\2\2rp\3\2\2\2sh\3\2\2\2st\3\2\2\2t\23\3\2"+
		"\2\2uv\7\24\2\2vw\7:\2\2wy\7\33\2\2xz\5\26\f\2yx\3\2\2\2yz\3\2\2\2z\177"+
		"\3\2\2\2{~\5\34\17\2|~\5\20\t\2}{\3\2\2\2}|\3\2\2\2~\u0081\3\2\2\2\177"+
		"}\3\2\2\2\177\u0080\3\2\2\2\u0080\u0082\3\2\2\2\u0081\177\3\2\2\2\u0082"+
		"\u0083\7\34\2\2\u0083\u0084\7\63\2\2\u0084\25\3\2\2\2\u0085\u0086\7:\2"+
		"\2\u0086\u0087\7\27\2\2\u0087\u0088\7\30\2\2\u0088\u0089\5\30\r\2\u0089"+
		"\27\3\2\2\2\u008a\u008e\7\33\2\2\u008b\u008d\5\32\16\2\u008c\u008b\3\2"+
		"\2\2\u008d\u0090\3\2\2\2\u008e\u008c\3\2\2\2\u008e\u008f\3\2\2\2\u008f"+
		"\u0091\3\2\2\2\u0090\u008e\3\2\2\2\u0091\u0092\7\34\2\2\u0092\31\3\2\2"+
		"\2\u0093\u00c0\5\30\r\2\u0094\u00c0\5\34\17\2\u0095\u0096\7\f\2\2\u0096"+
		"\u0097\7\27\2\2\u0097\u0098\5\"\22\2\u0098\u0099\7\30\2\2\u0099\u009c"+
		"\5\32\16\2\u009a\u009b\7\r\2\2\u009b\u009d\5\32\16\2\u009c\u009a\3\2\2"+
		"\2\u009c\u009d\3\2\2\2\u009d\u00c0\3\2\2\2\u009e\u009f\7\16\2\2\u009f"+
		"\u00a2\7\27\2\2\u00a0\u00a3\5\f\7\2\u00a1\u00a3\5\"\22\2\u00a2\u00a0\3"+
		"\2\2\2\u00a2\u00a1\3\2\2\2\u00a2\u00a3\3\2\2\2\u00a3\u00a4\3\2\2\2\u00a4"+
		"\u00a6\7\63\2\2\u00a5\u00a7\5\"\22\2\u00a6\u00a5\3\2\2\2\u00a6\u00a7\3"+
		"\2\2\2\u00a7\u00a8\3\2\2\2\u00a8\u00aa\7\63\2\2\u00a9\u00ab\5\"\22\2\u00aa"+
		"\u00a9\3\2\2\2\u00aa\u00ab\3\2\2\2\u00ab\u00ac\3\2\2\2\u00ac\u00ad\7\30"+
		"\2\2\u00ad\u00c0\5\32\16\2\u00ae\u00af\7\17\2\2\u00af\u00b0\7\27\2\2\u00b0"+
		"\u00b1\5\"\22\2\u00b1\u00b2\7\30\2\2\u00b2\u00b3\5\32\16\2\u00b3\u00c0"+
		"\3\2\2\2\u00b4\u00b6\7\22\2\2\u00b5\u00b7\5\"\22\2\u00b6\u00b5\3\2\2\2"+
		"\u00b6\u00b7\3\2\2\2\u00b7\u00b8\3\2\2\2\u00b8\u00c0\7\63\2\2\u00b9\u00ba"+
		"\t\3\2\2\u00ba\u00c0\7\63\2\2\u00bb\u00bc\5\"\22\2\u00bc\u00bd\7\63\2"+
		"\2\u00bd\u00c0\3\2\2\2\u00be\u00c0\7\63\2\2\u00bf\u0093\3\2\2\2\u00bf"+
		"\u0094\3\2\2\2\u00bf\u0095\3\2\2\2\u00bf\u009e\3\2\2\2\u00bf\u00ae\3\2"+
		"\2\2\u00bf\u00b4\3\2\2\2\u00bf\u00b9\3\2\2\2\u00bf\u00bb\3\2\2\2\u00bf"+
		"\u00be\3\2\2\2\u00c0\33\3\2\2\2\u00c1\u00c2\5\f\7\2\u00c2\u00c3\7\63\2"+
		"\2\u00c3\35\3\2\2\2\u00c4\u00c5\7\3\2\2\u00c5\u00c6\7\27\2\2\u00c6\u00c7"+
		"\5\22\n\2\u00c7\u00c8\7\30\2\2\u00c8\u00c9\7\4\2\2\u00c9\u00ca\5\30\r"+
		"\2\u00ca\u00cc\7\27\2\2\u00cb\u00cd\5 \21\2\u00cc\u00cb\3\2\2\2\u00cc"+
		"\u00cd\3\2\2\2\u00cd\u00ce\3\2\2\2\u00ce\u00cf\7\30\2\2\u00cf\37\3\2\2"+
		"\2\u00d0\u00d5\5\"\22\2\u00d1\u00d2\7\64\2\2\u00d2\u00d4\5\"\22\2\u00d3"+
		"\u00d1\3\2\2\2\u00d4\u00d7\3\2\2\2\u00d5\u00d3\3\2\2\2\u00d5\u00d6\3\2"+
		"\2\2\u00d6!\3\2\2\2\u00d7\u00d5\3\2\2\2\u00d8\u00d9\b\22\1\2\u00d9\u00da"+
		"\t\4\2\2\u00da\u00e6\5\"\22\16\u00db\u00dc\7\60\2\2\u00dc\u00e6\5\"\22"+
		"\r\u00dd\u00de\7/\2\2\u00de\u00e6\5\"\22\f\u00df\u00e0\t\5\2\2\u00e0\u00e6"+
		"\5\"\22\n\u00e1\u00e2\7\23\2\2\u00e2\u00e6\5\b\5\2\u00e3\u00e6\5$\23\2"+
		"\u00e4\u00e6\5\36\20\2\u00e5\u00d8\3\2\2\2\u00e5\u00db\3\2\2\2\u00e5\u00dd"+
		"\3\2\2\2\u00e5\u00df\3\2\2\2\u00e5\u00e1\3\2\2\2\u00e5\u00e3\3\2\2\2\u00e5"+
		"\u00e4\3\2\2\2\u00e6\u011a\3\2\2\2\u00e7\u00e8\f\30\2\2\u00e8\u00e9\t"+
		"\4\2\2\u00e9\u0119\5\"\22\31\u00ea\u00eb\f\27\2\2\u00eb\u00ec\t\6\2\2"+
		"\u00ec\u0119\5\"\22\30\u00ed\u00ee\f\26\2\2\u00ee\u00ef\t\7\2\2\u00ef"+
		"\u0119\5\"\22\27\u00f0\u00f1\f\25\2\2\u00f1\u00f2\t\b\2\2\u00f2\u0119"+
		"\5\"\22\26\u00f3\u00f4\f\24\2\2\u00f4\u00f5\t\t\2\2\u00f5\u0119\5\"\22"+
		"\25\u00f6\u00f7\f\23\2\2\u00f7\u00f8\7*\2\2\u00f8\u0119\5\"\22\24\u00f9"+
		"\u00fa\f\22\2\2\u00fa\u00fb\7.\2\2\u00fb\u0119\5\"\22\23\u00fc\u00fd\f"+
		"\21\2\2\u00fd\u00fe\7+\2\2\u00fe\u0119\5\"\22\22\u00ff\u0100\f\20\2\2"+
		"\u0100\u0101\7,\2\2\u0101\u0119\5\"\22\21\u0102\u0103\f\17\2\2\u0103\u0104"+
		"\7-\2\2\u0104\u0119\5\"\22\20\u0105\u0106\f\13\2\2\u0106\u0107\7\65\2"+
		"\2\u0107\u0119\5\"\22\13\u0108\u0109\f\7\2\2\u0109\u010a\7\26\2\2\u010a"+
		"\u0119\5\"\22\b\u010b\u010c\f\b\2\2\u010c\u0119\t\5\2\2\u010d\u010e\f"+
		"\6\2\2\u010e\u010f\7\31\2\2\u010f\u0110\5\"\22\2\u0110\u0111\7\32\2\2"+
		"\u0111\u0119\3\2\2\2\u0112\u0113\f\5\2\2\u0113\u0115\7\27\2\2\u0114\u0116"+
		"\5 \21\2\u0115\u0114\3\2\2\2\u0115\u0116\3\2\2\2\u0116\u0117\3\2\2\2\u0117"+
		"\u0119\7\30\2\2\u0118\u00e7\3\2\2\2\u0118\u00ea\3\2\2\2\u0118\u00ed\3"+
		"\2\2\2\u0118\u00f0\3\2\2\2\u0118\u00f3\3\2\2\2\u0118\u00f6\3\2\2\2\u0118"+
		"\u00f9\3\2\2\2\u0118\u00fc\3\2\2\2\u0118\u00ff\3\2\2\2\u0118\u0102\3\2"+
		"\2\2\u0118\u0105\3\2\2\2\u0118\u0108\3\2\2\2\u0118\u010b\3\2\2\2\u0118"+
		"\u010d\3\2\2\2\u0118\u0112\3\2\2\2\u0119\u011c\3\2\2\2\u011a\u0118\3\2"+
		"\2\2\u011a\u011b\3\2\2\2\u011b#\3\2\2\2\u011c\u011a\3\2\2\2\u011d\u011e"+
		"\7\27\2\2\u011e\u011f\5\"\22\2\u011f\u0120\7\30\2\2\u0120\u0126\3\2\2"+
		"\2\u0121\u0126\7:\2\2\u0122\u0126\5&\24\2\u0123\u0126\7\25\2\2\u0124\u0126"+
		"\7\b\2\2\u0125\u011d\3\2\2\2\u0125\u0121\3\2\2\2\u0125\u0122\3\2\2\2\u0125"+
		"\u0123\3\2\2\2\u0125\u0124\3\2\2\2\u0126%\3\2\2\2\u0127\u0128\t\n\2\2"+
		"\u0128\'\3\2\2\2\37+-\65<BGLQY_psy}\177\u008e\u009c\u00a2\u00a6\u00aa"+
		"\u00b6\u00bf\u00cc\u00d5\u00e5\u0115\u0118\u011a\u0125";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}