// Generated from Parser/MxLite.g4 by ANTLR 4.9.1
package Parser;
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
	static { RuntimeMetaData.checkVersion("4.9.1", RuntimeMetaData.VERSION); }

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
		Assign=51, Equal=52, NotEqual=53, DecimalInteger=54, BoolLiteral=55, StringObject=56, 
		Identifier=57, Whitespace=58, Newline=59, BlockComment=60, LineComment=61;
	public static final int
		RULE_beginDef = 0, RULE_program = 1, RULE_builtinType = 2, RULE_varType = 3, 
		RULE_newVar = 4, RULE_newSize = 5, RULE_functionType = 6, RULE_varDef = 7, 
		RULE_varDeclaration = 8, RULE_functionDef = 9, RULE_functionParameterDef = 10, 
		RULE_parameter = 11, RULE_classDef = 12, RULE_classConstructor = 13, RULE_suite = 14, 
		RULE_forInit = 15, RULE_forCondition = 16, RULE_forIncr = 17, RULE_ifStmt = 18, 
		RULE_forStmt = 19, RULE_whileStmt = 20, RULE_loopStmt = 21, RULE_breakStmt = 22, 
		RULE_continueStmt = 23, RULE_returnStmt = 24, RULE_controlStmt = 25, RULE_statement = 26, 
		RULE_globalVarDefStmt = 27, RULE_varDefStmt = 28, RULE_lambdaStmt = 29, 
		RULE_expressionList = 30, RULE_expression = 31, RULE_primary = 32;
	private static String[] makeRuleNames() {
		return new String[] {
			"beginDef", "program", "builtinType", "varType", "newVar", "newSize", 
			"functionType", "varDef", "varDeclaration", "functionDef", "functionParameterDef", 
			"parameter", "classDef", "classConstructor", "suite", "forInit", "forCondition", 
			"forIncr", "ifStmt", "forStmt", "whileStmt", "loopStmt", "breakStmt", 
			"continueStmt", "returnStmt", "controlStmt", "statement", "globalVarDefStmt", 
			"varDefStmt", "lambdaStmt", "expressionList", "expression", "primary"
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
			"DecimalInteger", "BoolLiteral", "StringObject", "Identifier", "Whitespace", 
			"Newline", "BlockComment", "LineComment"
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

	public static class BeginDefContext extends ParserRuleContext {
		public GlobalVarDefStmtContext globalVarDefStmt() {
			return getRuleContext(GlobalVarDefStmtContext.class,0);
		}
		public FunctionDefContext functionDef() {
			return getRuleContext(FunctionDefContext.class,0);
		}
		public ClassDefContext classDef() {
			return getRuleContext(ClassDefContext.class,0);
		}
		public BeginDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_beginDef; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterBeginDef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitBeginDef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitBeginDef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final BeginDefContext beginDef() throws RecognitionException {
		BeginDefContext _localctx = new BeginDefContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_beginDef);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(69);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,0,_ctx) ) {
			case 1:
				{
				setState(66);
				globalVarDefStmt();
				}
				break;
			case 2:
				{
				setState(67);
				functionDef();
				}
				break;
			case 3:
				{
				setState(68);
				classDef();
				}
				break;
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

	public static class ProgramContext extends ParserRuleContext {
		public List<BeginDefContext> beginDef() {
			return getRuleContexts(BeginDefContext.class);
		}
		public BeginDefContext beginDef(int i) {
			return getRuleContext(BeginDefContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitProgram(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitProgram(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(74);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Void) | (1L << Class) | (1L << Identifier))) != 0)) {
				{
				{
				setState(71);
				beginDef();
				}
				}
				setState(76);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterBuiltinType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitBuiltinType(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitBuiltinType(this);
			else return visitor.visitChildren(this);
		}
	}

	public final BuiltinTypeContext builtinType() throws RecognitionException {
		BuiltinTypeContext _localctx = new BuiltinTypeContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_builtinType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(77);
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
		public List<TerminalNode> LeftBracket() { return getTokens(MxLiteParser.LeftBracket); }
		public TerminalNode LeftBracket(int i) {
			return getToken(MxLiteParser.LeftBracket, i);
		}
		public List<TerminalNode> RightBracket() { return getTokens(MxLiteParser.RightBracket); }
		public TerminalNode RightBracket(int i) {
			return getToken(MxLiteParser.RightBracket, i);
		}
		public VarTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varType; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterVarType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitVarType(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitVarType(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VarTypeContext varType() throws RecognitionException {
		VarTypeContext _localctx = new VarTypeContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_varType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(81);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Int:
			case Bool:
			case String:
				{
				setState(79);
				builtinType();
				}
				break;
			case Identifier:
				{
				setState(80);
				match(Identifier);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(87);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==LeftBracket) {
				{
				{
				setState(83);
				match(LeftBracket);
				setState(84);
				match(RightBracket);
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

	public static class NewVarContext extends ParserRuleContext {
		public BuiltinTypeContext builtinType() {
			return getRuleContext(BuiltinTypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxLiteParser.Identifier, 0); }
		public List<NewSizeContext> newSize() {
			return getRuleContexts(NewSizeContext.class);
		}
		public NewSizeContext newSize(int i) {
			return getRuleContext(NewSizeContext.class,i);
		}
		public NewVarContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_newVar; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterNewVar(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitNewVar(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitNewVar(this);
			else return visitor.visitChildren(this);
		}
	}

	public final NewVarContext newVar() throws RecognitionException {
		NewVarContext _localctx = new NewVarContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_newVar);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(92);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Int:
			case Bool:
			case String:
				{
				setState(90);
				builtinType();
				}
				break;
			case Identifier:
				{
				setState(91);
				match(Identifier);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			{
			setState(97);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,5,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(94);
					newSize();
					}
					} 
				}
				setState(99);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,5,_ctx);
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

	public static class NewSizeContext extends ParserRuleContext {
		public TerminalNode LeftBracket() { return getToken(MxLiteParser.LeftBracket, 0); }
		public TerminalNode RightBracket() { return getToken(MxLiteParser.RightBracket, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public NewSizeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_newSize; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterNewSize(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitNewSize(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitNewSize(this);
			else return visitor.visitChildren(this);
		}
	}

	public final NewSizeContext newSize() throws RecognitionException {
		NewSizeContext _localctx = new NewSizeContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_newSize);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(100);
			match(LeftBracket);
			setState(102);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << Null) | (1L << New) | (1L << This) | (1L << LeftParen) | (1L << Plus) | (1L << SelfPlus) | (1L << Minus) | (1L << SelfMinus) | (1L << Not) | (1L << Tilde) | (1L << DecimalInteger) | (1L << BoolLiteral) | (1L << StringObject) | (1L << Identifier))) != 0)) {
				{
				setState(101);
				expression(0);
				}
			}

			setState(104);
			match(RightBracket);
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

	public static class FunctionTypeContext extends ParserRuleContext {
		public TerminalNode Void() { return getToken(MxLiteParser.Void, 0); }
		public VarTypeContext varType() {
			return getRuleContext(VarTypeContext.class,0);
		}
		public FunctionTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionType; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterFunctionType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitFunctionType(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitFunctionType(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FunctionTypeContext functionType() throws RecognitionException {
		FunctionTypeContext _localctx = new FunctionTypeContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_functionType);
		try {
			setState(108);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Void:
				enterOuterAlt(_localctx, 1);
				{
				setState(106);
				match(Void);
				}
				break;
			case Int:
			case Bool:
			case String:
			case Identifier:
				enterOuterAlt(_localctx, 2);
				{
				setState(107);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterVarDef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitVarDef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitVarDef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VarDefContext varDef() throws RecognitionException {
		VarDefContext _localctx = new VarDefContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_varDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(110);
			varType();
			setState(111);
			varDeclaration();
			setState(116);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(112);
				match(Comma);
				setState(113);
				varDeclaration();
				}
				}
				setState(118);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterVarDeclaration(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitVarDeclaration(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitVarDeclaration(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VarDeclarationContext varDeclaration() throws RecognitionException {
		VarDeclarationContext _localctx = new VarDeclarationContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_varDeclaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(119);
			match(Identifier);
			setState(122);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==Assign) {
				{
				setState(120);
				match(Assign);
				setState(121);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterFunctionDef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitFunctionDef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitFunctionDef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FunctionDefContext functionDef() throws RecognitionException {
		FunctionDefContext _localctx = new FunctionDefContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_functionDef);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(124);
			functionType();
			setState(125);
			match(Identifier);
			setState(126);
			match(LeftParen);
			setState(127);
			functionParameterDef();
			setState(128);
			match(RightParen);
			setState(129);
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
		public List<ParameterContext> parameter() {
			return getRuleContexts(ParameterContext.class);
		}
		public ParameterContext parameter(int i) {
			return getRuleContext(ParameterContext.class,i);
		}
		public List<TerminalNode> Comma() { return getTokens(MxLiteParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(MxLiteParser.Comma, i);
		}
		public FunctionParameterDefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionParameterDef; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterFunctionParameterDef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitFunctionParameterDef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitFunctionParameterDef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FunctionParameterDefContext functionParameterDef() throws RecognitionException {
		FunctionParameterDefContext _localctx = new FunctionParameterDefContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_functionParameterDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(139);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				setState(131);
				parameter();
				setState(136);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==Comma) {
					{
					{
					setState(132);
					match(Comma);
					setState(133);
					parameter();
					}
					}
					setState(138);
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

	public static class ParameterContext extends ParserRuleContext {
		public VarTypeContext varType() {
			return getRuleContext(VarTypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxLiteParser.Identifier, 0); }
		public ParameterContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_parameter; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterParameter(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitParameter(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitParameter(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ParameterContext parameter() throws RecognitionException {
		ParameterContext _localctx = new ParameterContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_parameter);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(141);
			varType();
			setState(142);
			match(Identifier);
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
		public List<VarDefStmtContext> varDefStmt() {
			return getRuleContexts(VarDefStmtContext.class);
		}
		public VarDefStmtContext varDefStmt(int i) {
			return getRuleContext(VarDefStmtContext.class,i);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterClassDef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitClassDef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitClassDef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ClassDefContext classDef() throws RecognitionException {
		ClassDefContext _localctx = new ClassDefContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_classDef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(144);
			match(Class);
			setState(145);
			match(Identifier);
			setState(146);
			match(LeftBrace);
			setState(148);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,12,_ctx) ) {
			case 1:
				{
				setState(147);
				classConstructor();
				}
				break;
			}
			setState(154);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Void) | (1L << Identifier))) != 0)) {
				{
				setState(152);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,13,_ctx) ) {
				case 1:
					{
					setState(150);
					varDefStmt();
					}
					break;
				case 2:
					{
					setState(151);
					functionDef();
					}
					break;
				}
				}
				setState(156);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(157);
			match(RightBrace);
			setState(158);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterClassConstructor(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitClassConstructor(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitClassConstructor(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ClassConstructorContext classConstructor() throws RecognitionException {
		ClassConstructorContext _localctx = new ClassConstructorContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_classConstructor);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(160);
			match(Identifier);
			setState(161);
			match(LeftParen);
			setState(162);
			match(RightParen);
			setState(163);
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterSuite(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitSuite(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitSuite(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SuiteContext suite() throws RecognitionException {
		SuiteContext _localctx = new SuiteContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_suite);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(165);
			match(LeftBrace);
			setState(169);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << Null) | (1L << If) | (1L << For) | (1L << While) | (1L << Break) | (1L << Continue) | (1L << Return) | (1L << New) | (1L << This) | (1L << LeftParen) | (1L << LeftBrace) | (1L << Plus) | (1L << SelfPlus) | (1L << Minus) | (1L << SelfMinus) | (1L << Not) | (1L << Tilde) | (1L << Semi) | (1L << DecimalInteger) | (1L << BoolLiteral) | (1L << StringObject) | (1L << Identifier))) != 0)) {
				{
				{
				setState(166);
				statement();
				}
				}
				setState(171);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(172);
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

	public static class ForInitContext extends ParserRuleContext {
		public VarDefContext varDef() {
			return getRuleContext(VarDefContext.class,0);
		}
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ForInitContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forInit; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterForInit(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitForInit(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitForInit(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ForInitContext forInit() throws RecognitionException {
		ForInitContext _localctx = new ForInitContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_forInit);
		try {
			setState(176);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(174);
				varDef();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(175);
				expression(0);
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

	public static class ForConditionContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ForConditionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forCondition; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterForCondition(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitForCondition(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitForCondition(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ForConditionContext forCondition() throws RecognitionException {
		ForConditionContext _localctx = new ForConditionContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_forCondition);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(178);
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

	public static class ForIncrContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ForIncrContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forIncr; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterForIncr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitForIncr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitForIncr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ForIncrContext forIncr() throws RecognitionException {
		ForIncrContext _localctx = new ForIncrContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_forIncr);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(180);
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

	public static class IfStmtContext extends ParserRuleContext {
		public StatementContext trueStmt;
		public StatementContext falseStmt;
		public TerminalNode If() { return getToken(MxLiteParser.If, 0); }
		public TerminalNode LeftParen() { return getToken(MxLiteParser.LeftParen, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(MxLiteParser.RightParen, 0); }
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public TerminalNode Else() { return getToken(MxLiteParser.Else, 0); }
		public IfStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ifStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterIfStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitIfStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitIfStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final IfStmtContext ifStmt() throws RecognitionException {
		IfStmtContext _localctx = new IfStmtContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_ifStmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(182);
			match(If);
			setState(183);
			match(LeftParen);
			setState(184);
			expression(0);
			setState(185);
			match(RightParen);
			setState(186);
			((IfStmtContext)_localctx).trueStmt = statement();
			setState(189);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,17,_ctx) ) {
			case 1:
				{
				setState(187);
				match(Else);
				setState(188);
				((IfStmtContext)_localctx).falseStmt = statement();
				}
				break;
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

	public static class ForStmtContext extends ParserRuleContext {
		public TerminalNode For() { return getToken(MxLiteParser.For, 0); }
		public TerminalNode LeftParen() { return getToken(MxLiteParser.LeftParen, 0); }
		public List<TerminalNode> Semi() { return getTokens(MxLiteParser.Semi); }
		public TerminalNode Semi(int i) {
			return getToken(MxLiteParser.Semi, i);
		}
		public TerminalNode RightParen() { return getToken(MxLiteParser.RightParen, 0); }
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public ForInitContext forInit() {
			return getRuleContext(ForInitContext.class,0);
		}
		public ForConditionContext forCondition() {
			return getRuleContext(ForConditionContext.class,0);
		}
		public ForIncrContext forIncr() {
			return getRuleContext(ForIncrContext.class,0);
		}
		public ForStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterForStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitForStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitForStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ForStmtContext forStmt() throws RecognitionException {
		ForStmtContext _localctx = new ForStmtContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_forStmt);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(191);
			match(For);
			setState(192);
			match(LeftParen);
			setState(194);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << Null) | (1L << New) | (1L << This) | (1L << LeftParen) | (1L << Plus) | (1L << SelfPlus) | (1L << Minus) | (1L << SelfMinus) | (1L << Not) | (1L << Tilde) | (1L << DecimalInteger) | (1L << BoolLiteral) | (1L << StringObject) | (1L << Identifier))) != 0)) {
				{
				setState(193);
				forInit();
				}
			}

			setState(196);
			match(Semi);
			setState(198);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << Null) | (1L << New) | (1L << This) | (1L << LeftParen) | (1L << Plus) | (1L << SelfPlus) | (1L << Minus) | (1L << SelfMinus) | (1L << Not) | (1L << Tilde) | (1L << DecimalInteger) | (1L << BoolLiteral) | (1L << StringObject) | (1L << Identifier))) != 0)) {
				{
				setState(197);
				forCondition();
				}
			}

			setState(200);
			match(Semi);
			setState(202);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << Null) | (1L << New) | (1L << This) | (1L << LeftParen) | (1L << Plus) | (1L << SelfPlus) | (1L << Minus) | (1L << SelfMinus) | (1L << Not) | (1L << Tilde) | (1L << DecimalInteger) | (1L << BoolLiteral) | (1L << StringObject) | (1L << Identifier))) != 0)) {
				{
				setState(201);
				forIncr();
				}
			}

			setState(204);
			match(RightParen);
			setState(205);
			statement();
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

	public static class WhileStmtContext extends ParserRuleContext {
		public TerminalNode While() { return getToken(MxLiteParser.While, 0); }
		public TerminalNode LeftParen() { return getToken(MxLiteParser.LeftParen, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(MxLiteParser.RightParen, 0); }
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public WhileStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_whileStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterWhileStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitWhileStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitWhileStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final WhileStmtContext whileStmt() throws RecognitionException {
		WhileStmtContext _localctx = new WhileStmtContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_whileStmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(207);
			match(While);
			setState(208);
			match(LeftParen);
			setState(209);
			expression(0);
			setState(210);
			match(RightParen);
			setState(211);
			statement();
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

	public static class LoopStmtContext extends ParserRuleContext {
		public ForStmtContext forStmt() {
			return getRuleContext(ForStmtContext.class,0);
		}
		public WhileStmtContext whileStmt() {
			return getRuleContext(WhileStmtContext.class,0);
		}
		public LoopStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_loopStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterLoopStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitLoopStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitLoopStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LoopStmtContext loopStmt() throws RecognitionException {
		LoopStmtContext _localctx = new LoopStmtContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_loopStmt);
		try {
			setState(215);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case For:
				enterOuterAlt(_localctx, 1);
				{
				setState(213);
				forStmt();
				}
				break;
			case While:
				enterOuterAlt(_localctx, 2);
				{
				setState(214);
				whileStmt();
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

	public static class BreakStmtContext extends ParserRuleContext {
		public TerminalNode Break() { return getToken(MxLiteParser.Break, 0); }
		public TerminalNode Semi() { return getToken(MxLiteParser.Semi, 0); }
		public BreakStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_breakStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterBreakStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitBreakStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitBreakStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final BreakStmtContext breakStmt() throws RecognitionException {
		BreakStmtContext _localctx = new BreakStmtContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_breakStmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(217);
			match(Break);
			setState(218);
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

	public static class ContinueStmtContext extends ParserRuleContext {
		public TerminalNode Continue() { return getToken(MxLiteParser.Continue, 0); }
		public TerminalNode Semi() { return getToken(MxLiteParser.Semi, 0); }
		public ContinueStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_continueStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterContinueStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitContinueStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitContinueStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ContinueStmtContext continueStmt() throws RecognitionException {
		ContinueStmtContext _localctx = new ContinueStmtContext(_ctx, getState());
		enterRule(_localctx, 46, RULE_continueStmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(220);
			match(Continue);
			setState(221);
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

	public static class ReturnStmtContext extends ParserRuleContext {
		public TerminalNode Return() { return getToken(MxLiteParser.Return, 0); }
		public TerminalNode Semi() { return getToken(MxLiteParser.Semi, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ReturnStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_returnStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterReturnStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitReturnStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitReturnStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ReturnStmtContext returnStmt() throws RecognitionException {
		ReturnStmtContext _localctx = new ReturnStmtContext(_ctx, getState());
		enterRule(_localctx, 48, RULE_returnStmt);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(223);
			match(Return);
			setState(225);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << Null) | (1L << New) | (1L << This) | (1L << LeftParen) | (1L << Plus) | (1L << SelfPlus) | (1L << Minus) | (1L << SelfMinus) | (1L << Not) | (1L << Tilde) | (1L << DecimalInteger) | (1L << BoolLiteral) | (1L << StringObject) | (1L << Identifier))) != 0)) {
				{
				setState(224);
				expression(0);
				}
			}

			setState(227);
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

	public static class ControlStmtContext extends ParserRuleContext {
		public BreakStmtContext breakStmt() {
			return getRuleContext(BreakStmtContext.class,0);
		}
		public ContinueStmtContext continueStmt() {
			return getRuleContext(ContinueStmtContext.class,0);
		}
		public ReturnStmtContext returnStmt() {
			return getRuleContext(ReturnStmtContext.class,0);
		}
		public ControlStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_controlStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterControlStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitControlStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitControlStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ControlStmtContext controlStmt() throws RecognitionException {
		ControlStmtContext _localctx = new ControlStmtContext(_ctx, getState());
		enterRule(_localctx, 50, RULE_controlStmt);
		try {
			setState(232);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Break:
				enterOuterAlt(_localctx, 1);
				{
				setState(229);
				breakStmt();
				}
				break;
			case Continue:
				enterOuterAlt(_localctx, 2);
				{
				setState(230);
				continueStmt();
				}
				break;
			case Return:
				enterOuterAlt(_localctx, 3);
				{
				setState(231);
				returnStmt();
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

	public static class StatementContext extends ParserRuleContext {
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public VarDefStmtContext varDefStmt() {
			return getRuleContext(VarDefStmtContext.class,0);
		}
		public IfStmtContext ifStmt() {
			return getRuleContext(IfStmtContext.class,0);
		}
		public LoopStmtContext loopStmt() {
			return getRuleContext(LoopStmtContext.class,0);
		}
		public ControlStmtContext controlStmt() {
			return getRuleContext(ControlStmtContext.class,0);
		}
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode Semi() { return getToken(MxLiteParser.Semi, 0); }
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 52, RULE_statement);
		try {
			setState(243);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,24,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(234);
				suite();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(235);
				varDefStmt();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(236);
				ifStmt();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(237);
				loopStmt();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(238);
				controlStmt();
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(239);
				expression(0);
				setState(240);
				match(Semi);
				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(242);
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

	public static class GlobalVarDefStmtContext extends ParserRuleContext {
		public VarDefContext varDef() {
			return getRuleContext(VarDefContext.class,0);
		}
		public TerminalNode Semi() { return getToken(MxLiteParser.Semi, 0); }
		public GlobalVarDefStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_globalVarDefStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterGlobalVarDefStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitGlobalVarDefStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitGlobalVarDefStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final GlobalVarDefStmtContext globalVarDefStmt() throws RecognitionException {
		GlobalVarDefStmtContext _localctx = new GlobalVarDefStmtContext(_ctx, getState());
		enterRule(_localctx, 54, RULE_globalVarDefStmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(245);
			varDef();
			setState(246);
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

	public static class VarDefStmtContext extends ParserRuleContext {
		public VarDefContext varDef() {
			return getRuleContext(VarDefContext.class,0);
		}
		public TerminalNode Semi() { return getToken(MxLiteParser.Semi, 0); }
		public VarDefStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDefStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterVarDefStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitVarDefStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitVarDefStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VarDefStmtContext varDefStmt() throws RecognitionException {
		VarDefStmtContext _localctx = new VarDefStmtContext(_ctx, getState());
		enterRule(_localctx, 56, RULE_varDefStmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(248);
			varDef();
			setState(249);
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
		public TerminalNode LeftParen() { return getToken(MxLiteParser.LeftParen, 0); }
		public FunctionParameterDefContext functionParameterDef() {
			return getRuleContext(FunctionParameterDefContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(MxLiteParser.RightParen, 0); }
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterLambdaStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitLambdaStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitLambdaStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LambdaStmtContext lambdaStmt() throws RecognitionException {
		LambdaStmtContext _localctx = new LambdaStmtContext(_ctx, getState());
		enterRule(_localctx, 58, RULE_lambdaStmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(251);
			match(T__0);
			setState(252);
			match(LeftParen);
			setState(253);
			functionParameterDef();
			setState(254);
			match(RightParen);
			setState(255);
			match(T__1);
			setState(256);
			suite();
			setState(257);
			expressionList();
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
		public TerminalNode LeftParen() { return getToken(MxLiteParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxLiteParser.RightParen, 0); }
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
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterExpressionList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitExpressionList(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitExpressionList(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpressionListContext expressionList() throws RecognitionException {
		ExpressionListContext _localctx = new ExpressionListContext(_ctx, getState());
		enterRule(_localctx, 60, RULE_expressionList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(259);
			match(LeftParen);
			setState(268);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << Null) | (1L << New) | (1L << This) | (1L << LeftParen) | (1L << Plus) | (1L << SelfPlus) | (1L << Minus) | (1L << SelfMinus) | (1L << Not) | (1L << Tilde) | (1L << DecimalInteger) | (1L << BoolLiteral) | (1L << StringObject) | (1L << Identifier))) != 0)) {
				{
				setState(260);
				expression(0);
				setState(265);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==Comma) {
					{
					{
					setState(261);
					match(Comma);
					setState(262);
					expression(0);
					}
					}
					setState(267);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(270);
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

	public static class ExpressionContext extends ParserRuleContext {
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	 
		public ExpressionContext() { }
		public void copyFrom(ExpressionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class NewExprContext extends ExpressionContext {
		public TerminalNode New() { return getToken(MxLiteParser.New, 0); }
		public NewVarContext newVar() {
			return getRuleContext(NewVarContext.class,0);
		}
		public NewExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterNewExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitNewExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitNewExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class PreIncExprContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode SelfPlus() { return getToken(MxLiteParser.SelfPlus, 0); }
		public TerminalNode SelfMinus() { return getToken(MxLiteParser.SelfMinus, 0); }
		public PreIncExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterPreIncExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitPreIncExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitPreIncExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class UnaryExprContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode Plus() { return getToken(MxLiteParser.Plus, 0); }
		public TerminalNode Minus() { return getToken(MxLiteParser.Minus, 0); }
		public TerminalNode Tilde() { return getToken(MxLiteParser.Tilde, 0); }
		public TerminalNode Not() { return getToken(MxLiteParser.Not, 0); }
		public UnaryExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterUnaryExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitUnaryExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitUnaryExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ArrayExprContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode LeftBracket() { return getToken(MxLiteParser.LeftBracket, 0); }
		public TerminalNode RightBracket() { return getToken(MxLiteParser.RightBracket, 0); }
		public ArrayExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterArrayExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitArrayExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitArrayExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class LambdaExprContext extends ExpressionContext {
		public LambdaStmtContext lambdaStmt() {
			return getRuleContext(LambdaStmtContext.class,0);
		}
		public LambdaExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterLambdaExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitLambdaExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitLambdaExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BracketExprContext extends ExpressionContext {
		public TerminalNode LeftParen() { return getToken(MxLiteParser.LeftParen, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(MxLiteParser.RightParen, 0); }
		public BracketExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterBracketExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitBracketExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitBracketExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class FunctionCallExprContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ExpressionListContext expressionList() {
			return getRuleContext(ExpressionListContext.class,0);
		}
		public FunctionCallExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterFunctionCallExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitFunctionCallExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitFunctionCallExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class AtomExprContext extends ExpressionContext {
		public PrimaryContext primary() {
			return getRuleContext(PrimaryContext.class,0);
		}
		public AtomExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterAtomExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitAtomExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitAtomExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BinaryExprContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode Dot() { return getToken(MxLiteParser.Dot, 0); }
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
		public TerminalNode AndAnd() { return getToken(MxLiteParser.AndAnd, 0); }
		public TerminalNode OrOr() { return getToken(MxLiteParser.OrOr, 0); }
		public TerminalNode Assign() { return getToken(MxLiteParser.Assign, 0); }
		public BinaryExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterBinaryExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitBinaryExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitBinaryExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class PostIncExprContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode SelfPlus() { return getToken(MxLiteParser.SelfPlus, 0); }
		public TerminalNode SelfMinus() { return getToken(MxLiteParser.SelfMinus, 0); }
		public PostIncExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterPostIncExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitPostIncExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitPostIncExpr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpressionContext expression() throws RecognitionException {
		return expression(0);
	}

	private ExpressionContext expression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExpressionContext _localctx = new ExpressionContext(_ctx, _parentState);
		ExpressionContext _prevctx = _localctx;
		int _startState = 62;
		enterRecursionRule(_localctx, 62, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(289);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__0:
				{
				_localctx = new LambdaExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(273);
				lambdaStmt();
				}
				break;
			case Plus:
			case Minus:
				{
				_localctx = new UnaryExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(274);
				_la = _input.LA(1);
				if ( !(_la==Plus || _la==Minus) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(275);
				expression(9);
				}
				break;
			case Tilde:
				{
				_localctx = new UnaryExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(276);
				match(Tilde);
				setState(277);
				expression(8);
				}
				break;
			case Not:
				{
				_localctx = new UnaryExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(278);
				match(Not);
				setState(279);
				expression(7);
				}
				break;
			case SelfPlus:
			case SelfMinus:
				{
				_localctx = new PreIncExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(280);
				_la = _input.LA(1);
				if ( !(_la==SelfPlus || _la==SelfMinus) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(281);
				expression(5);
				}
				break;
			case New:
				{
				_localctx = new NewExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(282);
				match(New);
				setState(283);
				newVar();
				}
				break;
			case LeftParen:
				{
				_localctx = new BracketExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(284);
				match(LeftParen);
				setState(285);
				expression(0);
				setState(286);
				match(RightParen);
				}
				break;
			case Null:
			case This:
			case DecimalInteger:
			case BoolLiteral:
			case StringObject:
			case Identifier:
				{
				_localctx = new AtomExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(288);
				primary();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(338);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,29,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(336);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,28,_ctx) ) {
					case 1:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(291);
						if (!(precpred(_ctx, 23))) throw new FailedPredicateException(this, "precpred(_ctx, 23)");
						setState(292);
						match(Dot);
						setState(293);
						expression(24);
						}
						break;
					case 2:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(294);
						if (!(precpred(_ctx, 19))) throw new FailedPredicateException(this, "precpred(_ctx, 19)");
						setState(295);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==Plus || _la==Minus) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(296);
						expression(20);
						}
						break;
					case 3:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(297);
						if (!(precpred(_ctx, 18))) throw new FailedPredicateException(this, "precpred(_ctx, 18)");
						setState(298);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Mul) | (1L << Div) | (1L << Mod))) != 0)) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(299);
						expression(19);
						}
						break;
					case 4:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(300);
						if (!(precpred(_ctx, 17))) throw new FailedPredicateException(this, "precpred(_ctx, 17)");
						setState(301);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Less) | (1L << LessEqual) | (1L << Greater) | (1L << GreaterEqual))) != 0)) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(302);
						expression(18);
						}
						break;
					case 5:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(303);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(304);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==Equal || _la==NotEqual) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(305);
						expression(17);
						}
						break;
					case 6:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(306);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(307);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==LeftShift || _la==RightShift) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(308);
						expression(16);
						}
						break;
					case 7:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(309);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(310);
						((BinaryExprContext)_localctx).op = match(And);
						setState(311);
						expression(15);
						}
						break;
					case 8:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(312);
						if (!(precpred(_ctx, 13))) throw new FailedPredicateException(this, "precpred(_ctx, 13)");
						setState(313);
						((BinaryExprContext)_localctx).op = match(Caret);
						setState(314);
						expression(14);
						}
						break;
					case 9:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(315);
						if (!(precpred(_ctx, 12))) throw new FailedPredicateException(this, "precpred(_ctx, 12)");
						setState(316);
						((BinaryExprContext)_localctx).op = match(Or);
						setState(317);
						expression(13);
						}
						break;
					case 10:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(318);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(319);
						((BinaryExprContext)_localctx).op = match(AndAnd);
						setState(320);
						expression(12);
						}
						break;
					case 11:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(321);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(322);
						((BinaryExprContext)_localctx).op = match(OrOr);
						setState(323);
						expression(11);
						}
						break;
					case 12:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(324);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(325);
						match(Assign);
						setState(326);
						expression(6);
						}
						break;
					case 13:
						{
						_localctx = new FunctionCallExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(327);
						if (!(precpred(_ctx, 22))) throw new FailedPredicateException(this, "precpred(_ctx, 22)");
						setState(328);
						expressionList();
						}
						break;
					case 14:
						{
						_localctx = new ArrayExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(329);
						if (!(precpred(_ctx, 20))) throw new FailedPredicateException(this, "precpred(_ctx, 20)");
						setState(330);
						match(LeftBracket);
						setState(331);
						expression(0);
						setState(332);
						match(RightBracket);
						}
						break;
					case 15:
						{
						_localctx = new PostIncExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(334);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(335);
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
					}
					} 
				}
				setState(340);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,29,_ctx);
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
		public TerminalNode This() { return getToken(MxLiteParser.This, 0); }
		public TerminalNode Null() { return getToken(MxLiteParser.Null, 0); }
		public TerminalNode DecimalInteger() { return getToken(MxLiteParser.DecimalInteger, 0); }
		public TerminalNode BoolLiteral() { return getToken(MxLiteParser.BoolLiteral, 0); }
		public TerminalNode StringObject() { return getToken(MxLiteParser.StringObject, 0); }
		public TerminalNode Identifier() { return getToken(MxLiteParser.Identifier, 0); }
		public PrimaryContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_primary; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).enterPrimary(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxLiteListener ) ((MxLiteListener)listener).exitPrimary(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxLiteVisitor ) return ((MxLiteVisitor<? extends T>)visitor).visitPrimary(this);
			else return visitor.visitChildren(this);
		}
	}

	public final PrimaryContext primary() throws RecognitionException {
		PrimaryContext _localctx = new PrimaryContext(_ctx, getState());
		enterRule(_localctx, 64, RULE_primary);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(341);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Null) | (1L << This) | (1L << DecimalInteger) | (1L << BoolLiteral) | (1L << StringObject) | (1L << Identifier))) != 0)) ) {
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
		case 31:
			return expression_sempred((ExpressionContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 23);
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
			return precpred(_ctx, 6);
		case 12:
			return precpred(_ctx, 22);
		case 13:
			return precpred(_ctx, 20);
		case 14:
			return precpred(_ctx, 3);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3?\u015a\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\3\2\3\2\3\2\5\2H\n\2\3\3\7\3K\n\3\f\3\16\3N\13\3\3\4\3\4\3"+
		"\5\3\5\5\5T\n\5\3\5\3\5\7\5X\n\5\f\5\16\5[\13\5\3\6\3\6\5\6_\n\6\3\6\7"+
		"\6b\n\6\f\6\16\6e\13\6\3\7\3\7\5\7i\n\7\3\7\3\7\3\b\3\b\5\bo\n\b\3\t\3"+
		"\t\3\t\3\t\7\tu\n\t\f\t\16\tx\13\t\3\n\3\n\3\n\5\n}\n\n\3\13\3\13\3\13"+
		"\3\13\3\13\3\13\3\13\3\f\3\f\3\f\7\f\u0089\n\f\f\f\16\f\u008c\13\f\5\f"+
		"\u008e\n\f\3\r\3\r\3\r\3\16\3\16\3\16\3\16\5\16\u0097\n\16\3\16\3\16\7"+
		"\16\u009b\n\16\f\16\16\16\u009e\13\16\3\16\3\16\3\16\3\17\3\17\3\17\3"+
		"\17\3\17\3\20\3\20\7\20\u00aa\n\20\f\20\16\20\u00ad\13\20\3\20\3\20\3"+
		"\21\3\21\5\21\u00b3\n\21\3\22\3\22\3\23\3\23\3\24\3\24\3\24\3\24\3\24"+
		"\3\24\3\24\5\24\u00c0\n\24\3\25\3\25\3\25\5\25\u00c5\n\25\3\25\3\25\5"+
		"\25\u00c9\n\25\3\25\3\25\5\25\u00cd\n\25\3\25\3\25\3\25\3\26\3\26\3\26"+
		"\3\26\3\26\3\26\3\27\3\27\5\27\u00da\n\27\3\30\3\30\3\30\3\31\3\31\3\31"+
		"\3\32\3\32\5\32\u00e4\n\32\3\32\3\32\3\33\3\33\3\33\5\33\u00eb\n\33\3"+
		"\34\3\34\3\34\3\34\3\34\3\34\3\34\3\34\3\34\5\34\u00f6\n\34\3\35\3\35"+
		"\3\35\3\36\3\36\3\36\3\37\3\37\3\37\3\37\3\37\3\37\3\37\3\37\3 \3 \3 "+
		"\3 \7 \u010a\n \f \16 \u010d\13 \5 \u010f\n \3 \3 \3!\3!\3!\3!\3!\3!\3"+
		"!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\5!\u0124\n!\3!\3!\3!\3!\3!\3!\3!\3!\3"+
		"!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3"+
		"!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\7!\u0153\n!\f!\16!\u0156\13!"+
		"\3\"\3\"\3\"\2\3@#\2\4\6\b\n\f\16\20\22\24\26\30\32\34\36 \"$&(*,.\60"+
		"\62\64\668:<>@B\2\n\3\2\5\7\4\2##%%\4\2$$&&\3\2\')\3\2\35 \3\2\66\67\3"+
		"\2!\"\5\2\b\b\25\258;\2\u0170\2G\3\2\2\2\4L\3\2\2\2\6O\3\2\2\2\bS\3\2"+
		"\2\2\n^\3\2\2\2\ff\3\2\2\2\16n\3\2\2\2\20p\3\2\2\2\22y\3\2\2\2\24~\3\2"+
		"\2\2\26\u008d\3\2\2\2\30\u008f\3\2\2\2\32\u0092\3\2\2\2\34\u00a2\3\2\2"+
		"\2\36\u00a7\3\2\2\2 \u00b2\3\2\2\2\"\u00b4\3\2\2\2$\u00b6\3\2\2\2&\u00b8"+
		"\3\2\2\2(\u00c1\3\2\2\2*\u00d1\3\2\2\2,\u00d9\3\2\2\2.\u00db\3\2\2\2\60"+
		"\u00de\3\2\2\2\62\u00e1\3\2\2\2\64\u00ea\3\2\2\2\66\u00f5\3\2\2\28\u00f7"+
		"\3\2\2\2:\u00fa\3\2\2\2<\u00fd\3\2\2\2>\u0105\3\2\2\2@\u0123\3\2\2\2B"+
		"\u0157\3\2\2\2DH\58\35\2EH\5\24\13\2FH\5\32\16\2GD\3\2\2\2GE\3\2\2\2G"+
		"F\3\2\2\2H\3\3\2\2\2IK\5\2\2\2JI\3\2\2\2KN\3\2\2\2LJ\3\2\2\2LM\3\2\2\2"+
		"M\5\3\2\2\2NL\3\2\2\2OP\t\2\2\2P\7\3\2\2\2QT\5\6\4\2RT\7;\2\2SQ\3\2\2"+
		"\2SR\3\2\2\2TY\3\2\2\2UV\7\31\2\2VX\7\32\2\2WU\3\2\2\2X[\3\2\2\2YW\3\2"+
		"\2\2YZ\3\2\2\2Z\t\3\2\2\2[Y\3\2\2\2\\_\5\6\4\2]_\7;\2\2^\\\3\2\2\2^]\3"+
		"\2\2\2_c\3\2\2\2`b\5\f\7\2a`\3\2\2\2be\3\2\2\2ca\3\2\2\2cd\3\2\2\2d\13"+
		"\3\2\2\2ec\3\2\2\2fh\7\31\2\2gi\5@!\2hg\3\2\2\2hi\3\2\2\2ij\3\2\2\2jk"+
		"\7\32\2\2k\r\3\2\2\2lo\7\t\2\2mo\5\b\5\2nl\3\2\2\2nm\3\2\2\2o\17\3\2\2"+
		"\2pq\5\b\5\2qv\5\22\n\2rs\7\64\2\2su\5\22\n\2tr\3\2\2\2ux\3\2\2\2vt\3"+
		"\2\2\2vw\3\2\2\2w\21\3\2\2\2xv\3\2\2\2y|\7;\2\2z{\7\65\2\2{}\5@!\2|z\3"+
		"\2\2\2|}\3\2\2\2}\23\3\2\2\2~\177\5\16\b\2\177\u0080\7;\2\2\u0080\u0081"+
		"\7\27\2\2\u0081\u0082\5\26\f\2\u0082\u0083\7\30\2\2\u0083\u0084\5\36\20"+
		"\2\u0084\25\3\2\2\2\u0085\u008a\5\30\r\2\u0086\u0087\7\64\2\2\u0087\u0089"+
		"\5\30\r\2\u0088\u0086\3\2\2\2\u0089\u008c\3\2\2\2\u008a\u0088\3\2\2\2"+
		"\u008a\u008b\3\2\2\2\u008b\u008e\3\2\2\2\u008c\u008a\3\2\2\2\u008d\u0085"+
		"\3\2\2\2\u008d\u008e\3\2\2\2\u008e\27\3\2\2\2\u008f\u0090\5\b\5\2\u0090"+
		"\u0091\7;\2\2\u0091\31\3\2\2\2\u0092\u0093\7\24\2\2\u0093\u0094\7;\2\2"+
		"\u0094\u0096\7\33\2\2\u0095\u0097\5\34\17\2\u0096\u0095\3\2\2\2\u0096"+
		"\u0097\3\2\2\2\u0097\u009c\3\2\2\2\u0098\u009b\5:\36\2\u0099\u009b\5\24"+
		"\13\2\u009a\u0098\3\2\2\2\u009a\u0099\3\2\2\2\u009b\u009e\3\2\2\2\u009c"+
		"\u009a\3\2\2\2\u009c\u009d\3\2\2\2\u009d\u009f\3\2\2\2\u009e\u009c\3\2"+
		"\2\2\u009f\u00a0\7\34\2\2\u00a0\u00a1\7\63\2\2\u00a1\33\3\2\2\2\u00a2"+
		"\u00a3\7;\2\2\u00a3\u00a4\7\27\2\2\u00a4\u00a5\7\30\2\2\u00a5\u00a6\5"+
		"\36\20\2\u00a6\35\3\2\2\2\u00a7\u00ab\7\33\2\2\u00a8\u00aa\5\66\34\2\u00a9"+
		"\u00a8\3\2\2\2\u00aa\u00ad\3\2\2\2\u00ab\u00a9\3\2\2\2\u00ab\u00ac\3\2"+
		"\2\2\u00ac\u00ae\3\2\2\2\u00ad\u00ab\3\2\2\2\u00ae\u00af\7\34\2\2\u00af"+
		"\37\3\2\2\2\u00b0\u00b3\5\20\t\2\u00b1\u00b3\5@!\2\u00b2\u00b0\3\2\2\2"+
		"\u00b2\u00b1\3\2\2\2\u00b3!\3\2\2\2\u00b4\u00b5\5@!\2\u00b5#\3\2\2\2\u00b6"+
		"\u00b7\5@!\2\u00b7%\3\2\2\2\u00b8\u00b9\7\f\2\2\u00b9\u00ba\7\27\2\2\u00ba"+
		"\u00bb\5@!\2\u00bb\u00bc\7\30\2\2\u00bc\u00bf\5\66\34\2\u00bd\u00be\7"+
		"\r\2\2\u00be\u00c0\5\66\34\2\u00bf\u00bd\3\2\2\2\u00bf\u00c0\3\2\2\2\u00c0"+
		"\'\3\2\2\2\u00c1\u00c2\7\16\2\2\u00c2\u00c4\7\27\2\2\u00c3\u00c5\5 \21"+
		"\2\u00c4\u00c3\3\2\2\2\u00c4\u00c5\3\2\2\2\u00c5\u00c6\3\2\2\2\u00c6\u00c8"+
		"\7\63\2\2\u00c7\u00c9\5\"\22\2\u00c8\u00c7\3\2\2\2\u00c8\u00c9\3\2\2\2"+
		"\u00c9\u00ca\3\2\2\2\u00ca\u00cc\7\63\2\2\u00cb\u00cd\5$\23\2\u00cc\u00cb"+
		"\3\2\2\2\u00cc\u00cd\3\2\2\2\u00cd\u00ce\3\2\2\2\u00ce\u00cf\7\30\2\2"+
		"\u00cf\u00d0\5\66\34\2\u00d0)\3\2\2\2\u00d1\u00d2\7\17\2\2\u00d2\u00d3"+
		"\7\27\2\2\u00d3\u00d4\5@!\2\u00d4\u00d5\7\30\2\2\u00d5\u00d6\5\66\34\2"+
		"\u00d6+\3\2\2\2\u00d7\u00da\5(\25\2\u00d8\u00da\5*\26\2\u00d9\u00d7\3"+
		"\2\2\2\u00d9\u00d8\3\2\2\2\u00da-\3\2\2\2\u00db\u00dc\7\20\2\2\u00dc\u00dd"+
		"\7\63\2\2\u00dd/\3\2\2\2\u00de\u00df\7\21\2\2\u00df\u00e0\7\63\2\2\u00e0"+
		"\61\3\2\2\2\u00e1\u00e3\7\22\2\2\u00e2\u00e4\5@!\2\u00e3\u00e2\3\2\2\2"+
		"\u00e3\u00e4\3\2\2\2\u00e4\u00e5\3\2\2\2\u00e5\u00e6\7\63\2\2\u00e6\63"+
		"\3\2\2\2\u00e7\u00eb\5.\30\2\u00e8\u00eb\5\60\31\2\u00e9\u00eb\5\62\32"+
		"\2\u00ea\u00e7\3\2\2\2\u00ea\u00e8\3\2\2\2\u00ea\u00e9\3\2\2\2\u00eb\65"+
		"\3\2\2\2\u00ec\u00f6\5\36\20\2\u00ed\u00f6\5:\36\2\u00ee\u00f6\5&\24\2"+
		"\u00ef\u00f6\5,\27\2\u00f0\u00f6\5\64\33\2\u00f1\u00f2\5@!\2\u00f2\u00f3"+
		"\7\63\2\2\u00f3\u00f6\3\2\2\2\u00f4\u00f6\7\63\2\2\u00f5\u00ec\3\2\2\2"+
		"\u00f5\u00ed\3\2\2\2\u00f5\u00ee\3\2\2\2\u00f5\u00ef\3\2\2\2\u00f5\u00f0"+
		"\3\2\2\2\u00f5\u00f1\3\2\2\2\u00f5\u00f4\3\2\2\2\u00f6\67\3\2\2\2\u00f7"+
		"\u00f8\5\20\t\2\u00f8\u00f9\7\63\2\2\u00f99\3\2\2\2\u00fa\u00fb\5\20\t"+
		"\2\u00fb\u00fc\7\63\2\2\u00fc;\3\2\2\2\u00fd\u00fe\7\3\2\2\u00fe\u00ff"+
		"\7\27\2\2\u00ff\u0100\5\26\f\2\u0100\u0101\7\30\2\2\u0101\u0102\7\4\2"+
		"\2\u0102\u0103\5\36\20\2\u0103\u0104\5> \2\u0104=\3\2\2\2\u0105\u010e"+
		"\7\27\2\2\u0106\u010b\5@!\2\u0107\u0108\7\64\2\2\u0108\u010a\5@!\2\u0109"+
		"\u0107\3\2\2\2\u010a\u010d\3\2\2\2\u010b\u0109\3\2\2\2\u010b\u010c\3\2"+
		"\2\2\u010c\u010f\3\2\2\2\u010d\u010b\3\2\2\2\u010e\u0106\3\2\2\2\u010e"+
		"\u010f\3\2\2\2\u010f\u0110\3\2\2\2\u0110\u0111\7\30\2\2\u0111?\3\2\2\2"+
		"\u0112\u0113\b!\1\2\u0113\u0124\5<\37\2\u0114\u0115\t\3\2\2\u0115\u0124"+
		"\5@!\13\u0116\u0117\7\60\2\2\u0117\u0124\5@!\n\u0118\u0119\7/\2\2\u0119"+
		"\u0124\5@!\t\u011a\u011b\t\4\2\2\u011b\u0124\5@!\7\u011c\u011d\7\23\2"+
		"\2\u011d\u0124\5\n\6\2\u011e\u011f\7\27\2\2\u011f\u0120\5@!\2\u0120\u0121"+
		"\7\30\2\2\u0121\u0124\3\2\2\2\u0122\u0124\5B\"\2\u0123\u0112\3\2\2\2\u0123"+
		"\u0114\3\2\2\2\u0123\u0116\3\2\2\2\u0123\u0118\3\2\2\2\u0123\u011a\3\2"+
		"\2\2\u0123\u011c\3\2\2\2\u0123\u011e\3\2\2\2\u0123\u0122\3\2\2\2\u0124"+
		"\u0154\3\2\2\2\u0125\u0126\f\31\2\2\u0126\u0127\7\26\2\2\u0127\u0153\5"+
		"@!\32\u0128\u0129\f\25\2\2\u0129\u012a\t\3\2\2\u012a\u0153\5@!\26\u012b"+
		"\u012c\f\24\2\2\u012c\u012d\t\5\2\2\u012d\u0153\5@!\25\u012e\u012f\f\23"+
		"\2\2\u012f\u0130\t\6\2\2\u0130\u0153\5@!\24\u0131\u0132\f\22\2\2\u0132"+
		"\u0133\t\7\2\2\u0133\u0153\5@!\23\u0134\u0135\f\21\2\2\u0135\u0136\t\b"+
		"\2\2\u0136\u0153\5@!\22\u0137\u0138\f\20\2\2\u0138\u0139\7*\2\2\u0139"+
		"\u0153\5@!\21\u013a\u013b\f\17\2\2\u013b\u013c\7.\2\2\u013c\u0153\5@!"+
		"\20\u013d\u013e\f\16\2\2\u013e\u013f\7+\2\2\u013f\u0153\5@!\17\u0140\u0141"+
		"\f\r\2\2\u0141\u0142\7,\2\2\u0142\u0153\5@!\16\u0143\u0144\f\f\2\2\u0144"+
		"\u0145\7-\2\2\u0145\u0153\5@!\r\u0146\u0147\f\b\2\2\u0147\u0148\7\65\2"+
		"\2\u0148\u0153\5@!\b\u0149\u014a\f\30\2\2\u014a\u0153\5> \2\u014b\u014c"+
		"\f\26\2\2\u014c\u014d\7\31\2\2\u014d\u014e\5@!\2\u014e\u014f\7\32\2\2"+
		"\u014f\u0153\3\2\2\2\u0150\u0151\f\5\2\2\u0151\u0153\t\4\2\2\u0152\u0125"+
		"\3\2\2\2\u0152\u0128\3\2\2\2\u0152\u012b\3\2\2\2\u0152\u012e\3\2\2\2\u0152"+
		"\u0131\3\2\2\2\u0152\u0134\3\2\2\2\u0152\u0137\3\2\2\2\u0152\u013a\3\2"+
		"\2\2\u0152\u013d\3\2\2\2\u0152\u0140\3\2\2\2\u0152\u0143\3\2\2\2\u0152"+
		"\u0146\3\2\2\2\u0152\u0149\3\2\2\2\u0152\u014b\3\2\2\2\u0152\u0150\3\2"+
		"\2\2\u0153\u0156\3\2\2\2\u0154\u0152\3\2\2\2\u0154\u0155\3\2\2\2\u0155"+
		"A\3\2\2\2\u0156\u0154\3\2\2\2\u0157\u0158\t\t\2\2\u0158C\3\2\2\2 GLSY"+
		"^chnv|\u008a\u008d\u0096\u009a\u009c\u00ab\u00b2\u00bf\u00c4\u00c8\u00cc"+
		"\u00d9\u00e3\u00ea\u00f5\u010b\u010e\u0123\u0152\u0154";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}