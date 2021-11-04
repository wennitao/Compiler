// Generated from Parser/MxLite.g4 by ANTLR 4.9.1
package Parser;
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxLiteLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.9.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, Int=3, Bool=4, String=5, Null=6, Void=7, If=8, Else=9, 
		For=10, While=11, Break=12, Continue=13, Return=14, New=15, Class=16, 
		This=17, Dot=18, LeftParen=19, RightParen=20, LeftBracket=21, RightBracket=22, 
		LeftBrace=23, RightBrace=24, Less=25, LessEqual=26, Greater=27, GreaterEqual=28, 
		LeftShift=29, RightShift=30, Plus=31, SelfPlus=32, Minus=33, SelfMinus=34, 
		Mul=35, Div=36, Mod=37, And=38, Or=39, AndAnd=40, OrOr=41, Caret=42, Not=43, 
		Tilde=44, Question=45, Colon=46, Semi=47, Comma=48, Assign=49, Equal=50, 
		NotEqual=51, DecimalInteger=52, BoolLiteral=53, StringObject=54, Identifier=55, 
		Whitespace=56, Newline=57, BlockComment=58, LineComment=59;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "T__1", "Int", "Bool", "String", "Null", "Void", "True", "False", 
			"If", "Else", "For", "While", "Break", "Continue", "Return", "New", "Class", 
			"This", "Dot", "LeftParen", "RightParen", "LeftBracket", "RightBracket", 
			"LeftBrace", "RightBrace", "Less", "LessEqual", "Greater", "GreaterEqual", 
			"LeftShift", "RightShift", "Plus", "SelfPlus", "Minus", "SelfMinus", 
			"Mul", "Div", "Mod", "And", "Or", "AndAnd", "OrOr", "Caret", "Not", "Tilde", 
			"Question", "Colon", "Semi", "Comma", "Assign", "Equal", "NotEqual", 
			"EscapeCharacter", "PrintableCharacter", "DecimalInteger", "BoolLiteral", 
			"StringObject", "Identifier", "Whitespace", "Newline", "BlockComment", 
			"LineComment"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'[&]'", "'->'", "'int'", "'bool'", "'string'", "'null'", "'void'", 
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
			null, null, null, "Int", "Bool", "String", "Null", "Void", "If", "Else", 
			"For", "While", "Break", "Continue", "Return", "New", "Class", "This", 
			"Dot", "LeftParen", "RightParen", "LeftBracket", "RightBracket", "LeftBrace", 
			"RightBrace", "Less", "LessEqual", "Greater", "GreaterEqual", "LeftShift", 
			"RightShift", "Plus", "SelfPlus", "Minus", "SelfMinus", "Mul", "Div", 
			"Mod", "And", "Or", "AndAnd", "OrOr", "Caret", "Not", "Tilde", "Question", 
			"Colon", "Semi", "Comma", "Assign", "Equal", "NotEqual", "DecimalInteger", 
			"BoolLiteral", "StringObject", "Identifier", "Whitespace", "Newline", 
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


	public MxLiteLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "MxLite.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2=\u0180\b\1\4\2\t"+
		"\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t+\4"+
		",\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64\t"+
		"\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:\4;\t;\4<\t<\4=\t="+
		"\4>\t>\4?\t?\4@\t@\3\2\3\2\3\2\3\2\3\3\3\3\3\3\3\4\3\4\3\4\3\4\3\5\3\5"+
		"\3\5\3\5\3\5\3\6\3\6\3\6\3\6\3\6\3\6\3\6\3\7\3\7\3\7\3\7\3\7\3\b\3\b\3"+
		"\b\3\b\3\b\3\t\3\t\3\t\3\t\3\t\3\n\3\n\3\n\3\n\3\n\3\n\3\13\3\13\3\13"+
		"\3\f\3\f\3\f\3\f\3\f\3\r\3\r\3\r\3\r\3\16\3\16\3\16\3\16\3\16\3\16\3\17"+
		"\3\17\3\17\3\17\3\17\3\17\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\22\3\22\3\22\3\22\3\23\3\23\3\23"+
		"\3\23\3\23\3\23\3\24\3\24\3\24\3\24\3\24\3\25\3\25\3\26\3\26\3\27\3\27"+
		"\3\30\3\30\3\31\3\31\3\32\3\32\3\33\3\33\3\34\3\34\3\35\3\35\3\35\3\36"+
		"\3\36\3\37\3\37\3\37\3 \3 \3 \3!\3!\3!\3\"\3\"\3#\3#\3#\3$\3$\3%\3%\3"+
		"%\3&\3&\3\'\3\'\3(\3(\3)\3)\3*\3*\3+\3+\3+\3,\3,\3,\3-\3-\3.\3.\3/\3/"+
		"\3\60\3\60\3\61\3\61\3\62\3\62\3\63\3\63\3\64\3\64\3\65\3\65\3\65\3\66"+
		"\3\66\3\66\3\67\3\67\38\38\39\39\79\u0139\n9\f9\169\u013c\139\39\59\u013f"+
		"\n9\3:\3:\5:\u0143\n:\3;\3;\3;\3;\3;\7;\u014a\n;\f;\16;\u014d\13;\3;\3"+
		";\3<\3<\7<\u0153\n<\f<\16<\u0156\13<\3=\6=\u0159\n=\r=\16=\u015a\3=\3"+
		"=\3>\3>\5>\u0161\n>\3>\5>\u0164\n>\3>\3>\3?\3?\3?\3?\7?\u016c\n?\f?\16"+
		"?\u016f\13?\3?\3?\3?\3?\3?\3@\3@\3@\3@\7@\u017a\n@\f@\16@\u017d\13@\3"+
		"@\3@\3\u016d\2A\3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\2\23\2\25\n\27\13\31"+
		"\f\33\r\35\16\37\17!\20#\21%\22\'\23)\24+\25-\26/\27\61\30\63\31\65\32"+
		"\67\339\34;\35=\36?\37A C!E\"G#I$K%M&O\'Q(S)U*W+Y,[-]._/a\60c\61e\62g"+
		"\63i\64k\65m\2o\2q\66s\67u8w9y:{;}<\177=\3\2\n\6\2$$^^pptt\6\2\f\f\16"+
		"\17$$^^\3\2\63;\3\2\62;\4\2C\\c|\6\2\62;C\\aac|\4\2\13\13\"\"\4\2\f\f"+
		"\17\17\2\u0187\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3"+
		"\2\2\2\2\r\3\2\2\2\2\17\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2\2\31\3\2\2\2"+
		"\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2\2\2\2%\3\2\2"+
		"\2\2\'\3\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2/\3\2\2\2\2\61\3\2\2"+
		"\2\2\63\3\2\2\2\2\65\3\2\2\2\2\67\3\2\2\2\29\3\2\2\2\2;\3\2\2\2\2=\3\2"+
		"\2\2\2?\3\2\2\2\2A\3\2\2\2\2C\3\2\2\2\2E\3\2\2\2\2G\3\2\2\2\2I\3\2\2\2"+
		"\2K\3\2\2\2\2M\3\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S\3\2\2\2\2U\3\2\2\2\2W"+
		"\3\2\2\2\2Y\3\2\2\2\2[\3\2\2\2\2]\3\2\2\2\2_\3\2\2\2\2a\3\2\2\2\2c\3\2"+
		"\2\2\2e\3\2\2\2\2g\3\2\2\2\2i\3\2\2\2\2k\3\2\2\2\2q\3\2\2\2\2s\3\2\2\2"+
		"\2u\3\2\2\2\2w\3\2\2\2\2y\3\2\2\2\2{\3\2\2\2\2}\3\2\2\2\2\177\3\2\2\2"+
		"\3\u0081\3\2\2\2\5\u0085\3\2\2\2\7\u0088\3\2\2\2\t\u008c\3\2\2\2\13\u0091"+
		"\3\2\2\2\r\u0098\3\2\2\2\17\u009d\3\2\2\2\21\u00a2\3\2\2\2\23\u00a7\3"+
		"\2\2\2\25\u00ad\3\2\2\2\27\u00b0\3\2\2\2\31\u00b5\3\2\2\2\33\u00b9\3\2"+
		"\2\2\35\u00bf\3\2\2\2\37\u00c5\3\2\2\2!\u00ce\3\2\2\2#\u00d5\3\2\2\2%"+
		"\u00d9\3\2\2\2\'\u00df\3\2\2\2)\u00e4\3\2\2\2+\u00e6\3\2\2\2-\u00e8\3"+
		"\2\2\2/\u00ea\3\2\2\2\61\u00ec\3\2\2\2\63\u00ee\3\2\2\2\65\u00f0\3\2\2"+
		"\2\67\u00f2\3\2\2\29\u00f4\3\2\2\2;\u00f7\3\2\2\2=\u00f9\3\2\2\2?\u00fc"+
		"\3\2\2\2A\u00ff\3\2\2\2C\u0102\3\2\2\2E\u0104\3\2\2\2G\u0107\3\2\2\2I"+
		"\u0109\3\2\2\2K\u010c\3\2\2\2M\u010e\3\2\2\2O\u0110\3\2\2\2Q\u0112\3\2"+
		"\2\2S\u0114\3\2\2\2U\u0116\3\2\2\2W\u0119\3\2\2\2Y\u011c\3\2\2\2[\u011e"+
		"\3\2\2\2]\u0120\3\2\2\2_\u0122\3\2\2\2a\u0124\3\2\2\2c\u0126\3\2\2\2e"+
		"\u0128\3\2\2\2g\u012a\3\2\2\2i\u012c\3\2\2\2k\u012f\3\2\2\2m\u0132\3\2"+
		"\2\2o\u0134\3\2\2\2q\u013e\3\2\2\2s\u0142\3\2\2\2u\u0144\3\2\2\2w\u0150"+
		"\3\2\2\2y\u0158\3\2\2\2{\u0163\3\2\2\2}\u0167\3\2\2\2\177\u0175\3\2\2"+
		"\2\u0081\u0082\7]\2\2\u0082\u0083\7(\2\2\u0083\u0084\7_\2\2\u0084\4\3"+
		"\2\2\2\u0085\u0086\7/\2\2\u0086\u0087\7@\2\2\u0087\6\3\2\2\2\u0088\u0089"+
		"\7k\2\2\u0089\u008a\7p\2\2\u008a\u008b\7v\2\2\u008b\b\3\2\2\2\u008c\u008d"+
		"\7d\2\2\u008d\u008e\7q\2\2\u008e\u008f\7q\2\2\u008f\u0090\7n\2\2\u0090"+
		"\n\3\2\2\2\u0091\u0092\7u\2\2\u0092\u0093\7v\2\2\u0093\u0094\7t\2\2\u0094"+
		"\u0095\7k\2\2\u0095\u0096\7p\2\2\u0096\u0097\7i\2\2\u0097\f\3\2\2\2\u0098"+
		"\u0099\7p\2\2\u0099\u009a\7w\2\2\u009a\u009b\7n\2\2\u009b\u009c\7n\2\2"+
		"\u009c\16\3\2\2\2\u009d\u009e\7x\2\2\u009e\u009f\7q\2\2\u009f\u00a0\7"+
		"k\2\2\u00a0\u00a1\7f\2\2\u00a1\20\3\2\2\2\u00a2\u00a3\7v\2\2\u00a3\u00a4"+
		"\7t\2\2\u00a4\u00a5\7w\2\2\u00a5\u00a6\7g\2\2\u00a6\22\3\2\2\2\u00a7\u00a8"+
		"\7h\2\2\u00a8\u00a9\7c\2\2\u00a9\u00aa\7n\2\2\u00aa\u00ab\7u\2\2\u00ab"+
		"\u00ac\7g\2\2\u00ac\24\3\2\2\2\u00ad\u00ae\7k\2\2\u00ae\u00af\7h\2\2\u00af"+
		"\26\3\2\2\2\u00b0\u00b1\7g\2\2\u00b1\u00b2\7n\2\2\u00b2\u00b3\7u\2\2\u00b3"+
		"\u00b4\7g\2\2\u00b4\30\3\2\2\2\u00b5\u00b6\7h\2\2\u00b6\u00b7\7q\2\2\u00b7"+
		"\u00b8\7t\2\2\u00b8\32\3\2\2\2\u00b9\u00ba\7y\2\2\u00ba\u00bb\7j\2\2\u00bb"+
		"\u00bc\7k\2\2\u00bc\u00bd\7n\2\2\u00bd\u00be\7g\2\2\u00be\34\3\2\2\2\u00bf"+
		"\u00c0\7d\2\2\u00c0\u00c1\7t\2\2\u00c1\u00c2\7g\2\2\u00c2\u00c3\7c\2\2"+
		"\u00c3\u00c4\7m\2\2\u00c4\36\3\2\2\2\u00c5\u00c6\7e\2\2\u00c6\u00c7\7"+
		"q\2\2\u00c7\u00c8\7p\2\2\u00c8\u00c9\7v\2\2\u00c9\u00ca\7k\2\2\u00ca\u00cb"+
		"\7p\2\2\u00cb\u00cc\7w\2\2\u00cc\u00cd\7g\2\2\u00cd \3\2\2\2\u00ce\u00cf"+
		"\7t\2\2\u00cf\u00d0\7g\2\2\u00d0\u00d1\7v\2\2\u00d1\u00d2\7w\2\2\u00d2"+
		"\u00d3\7t\2\2\u00d3\u00d4\7p\2\2\u00d4\"\3\2\2\2\u00d5\u00d6\7p\2\2\u00d6"+
		"\u00d7\7g\2\2\u00d7\u00d8\7y\2\2\u00d8$\3\2\2\2\u00d9\u00da\7e\2\2\u00da"+
		"\u00db\7n\2\2\u00db\u00dc\7c\2\2\u00dc\u00dd\7u\2\2\u00dd\u00de\7u\2\2"+
		"\u00de&\3\2\2\2\u00df\u00e0\7v\2\2\u00e0\u00e1\7j\2\2\u00e1\u00e2\7k\2"+
		"\2\u00e2\u00e3\7u\2\2\u00e3(\3\2\2\2\u00e4\u00e5\7\60\2\2\u00e5*\3\2\2"+
		"\2\u00e6\u00e7\7*\2\2\u00e7,\3\2\2\2\u00e8\u00e9\7+\2\2\u00e9.\3\2\2\2"+
		"\u00ea\u00eb\7]\2\2\u00eb\60\3\2\2\2\u00ec\u00ed\7_\2\2\u00ed\62\3\2\2"+
		"\2\u00ee\u00ef\7}\2\2\u00ef\64\3\2\2\2\u00f0\u00f1\7\177\2\2\u00f1\66"+
		"\3\2\2\2\u00f2\u00f3\7>\2\2\u00f38\3\2\2\2\u00f4\u00f5\7>\2\2\u00f5\u00f6"+
		"\7?\2\2\u00f6:\3\2\2\2\u00f7\u00f8\7@\2\2\u00f8<\3\2\2\2\u00f9\u00fa\7"+
		"@\2\2\u00fa\u00fb\7?\2\2\u00fb>\3\2\2\2\u00fc\u00fd\7>\2\2\u00fd\u00fe"+
		"\7>\2\2\u00fe@\3\2\2\2\u00ff\u0100\7@\2\2\u0100\u0101\7@\2\2\u0101B\3"+
		"\2\2\2\u0102\u0103\7-\2\2\u0103D\3\2\2\2\u0104\u0105\7-\2\2\u0105\u0106"+
		"\7-\2\2\u0106F\3\2\2\2\u0107\u0108\7/\2\2\u0108H\3\2\2\2\u0109\u010a\7"+
		"/\2\2\u010a\u010b\7/\2\2\u010bJ\3\2\2\2\u010c\u010d\7,\2\2\u010dL\3\2"+
		"\2\2\u010e\u010f\7\61\2\2\u010fN\3\2\2\2\u0110\u0111\7\'\2\2\u0111P\3"+
		"\2\2\2\u0112\u0113\7(\2\2\u0113R\3\2\2\2\u0114\u0115\7~\2\2\u0115T\3\2"+
		"\2\2\u0116\u0117\7(\2\2\u0117\u0118\7(\2\2\u0118V\3\2\2\2\u0119\u011a"+
		"\7~\2\2\u011a\u011b\7~\2\2\u011bX\3\2\2\2\u011c\u011d\7`\2\2\u011dZ\3"+
		"\2\2\2\u011e\u011f\7#\2\2\u011f\\\3\2\2\2\u0120\u0121\7\u0080\2\2\u0121"+
		"^\3\2\2\2\u0122\u0123\7A\2\2\u0123`\3\2\2\2\u0124\u0125\7<\2\2\u0125b"+
		"\3\2\2\2\u0126\u0127\7=\2\2\u0127d\3\2\2\2\u0128\u0129\7.\2\2\u0129f\3"+
		"\2\2\2\u012a\u012b\7?\2\2\u012bh\3\2\2\2\u012c\u012d\7?\2\2\u012d\u012e"+
		"\7?\2\2\u012ej\3\2\2\2\u012f\u0130\7#\2\2\u0130\u0131\7?\2\2\u0131l\3"+
		"\2\2\2\u0132\u0133\t\2\2\2\u0133n\3\2\2\2\u0134\u0135\n\3\2\2\u0135p\3"+
		"\2\2\2\u0136\u013a\t\4\2\2\u0137\u0139\t\5\2\2\u0138\u0137\3\2\2\2\u0139"+
		"\u013c\3\2\2\2\u013a\u0138\3\2\2\2\u013a\u013b\3\2\2\2\u013b\u013f\3\2"+
		"\2\2\u013c\u013a\3\2\2\2\u013d\u013f\7\62\2\2\u013e\u0136\3\2\2\2\u013e"+
		"\u013d\3\2\2\2\u013fr\3\2\2\2\u0140\u0143\5\21\t\2\u0141\u0143\5\23\n"+
		"\2\u0142\u0140\3\2\2\2\u0142\u0141\3\2\2\2\u0143t\3\2\2\2\u0144\u014b"+
		"\7$\2\2\u0145\u014a\7\"\2\2\u0146\u014a\5o8\2\u0147\u0148\7^\2\2\u0148"+
		"\u014a\5m\67\2\u0149\u0145\3\2\2\2\u0149\u0146\3\2\2\2\u0149\u0147\3\2"+
		"\2\2\u014a\u014d\3\2\2\2\u014b\u0149\3\2\2\2\u014b\u014c\3\2\2\2\u014c"+
		"\u014e\3\2\2\2\u014d\u014b\3\2\2\2\u014e\u014f\7$\2\2\u014fv\3\2\2\2\u0150"+
		"\u0154\t\6\2\2\u0151\u0153\t\7\2\2\u0152\u0151\3\2\2\2\u0153\u0156\3\2"+
		"\2\2\u0154\u0152\3\2\2\2\u0154\u0155\3\2\2\2\u0155x\3\2\2\2\u0156\u0154"+
		"\3\2\2\2\u0157\u0159\t\b\2\2\u0158\u0157\3\2\2\2\u0159\u015a\3\2\2\2\u015a"+
		"\u0158\3\2\2\2\u015a\u015b\3\2\2\2\u015b\u015c\3\2\2\2\u015c\u015d\b="+
		"\2\2\u015dz\3\2\2\2\u015e\u0160\7\17\2\2\u015f\u0161\7\f\2\2\u0160\u015f"+
		"\3\2\2\2\u0160\u0161\3\2\2\2\u0161\u0164\3\2\2\2\u0162\u0164\7\f\2\2\u0163"+
		"\u015e\3\2\2\2\u0163\u0162\3\2\2\2\u0164\u0165\3\2\2\2\u0165\u0166\b>"+
		"\2\2\u0166|\3\2\2\2\u0167\u0168\7\61\2\2\u0168\u0169\7,\2\2\u0169\u016d"+
		"\3\2\2\2\u016a\u016c\13\2\2\2\u016b\u016a\3\2\2\2\u016c\u016f\3\2\2\2"+
		"\u016d\u016e\3\2\2\2\u016d\u016b\3\2\2\2\u016e\u0170\3\2\2\2\u016f\u016d"+
		"\3\2\2\2\u0170\u0171\7,\2\2\u0171\u0172\7\61\2\2\u0172\u0173\3\2\2\2\u0173"+
		"\u0174\b?\2\2\u0174~\3\2\2\2\u0175\u0176\7\61\2\2\u0176\u0177\7\61\2\2"+
		"\u0177\u017b\3\2\2\2\u0178\u017a\n\t\2\2\u0179\u0178\3\2\2\2\u017a\u017d"+
		"\3\2\2\2\u017b\u0179\3\2\2\2\u017b\u017c\3\2\2\2\u017c\u017e\3\2\2\2\u017d"+
		"\u017b\3\2\2\2\u017e\u017f\b@\2\2\u017f\u0080\3\2\2\2\16\2\u013a\u013e"+
		"\u0142\u0149\u014b\u0154\u015a\u0160\u0163\u016d\u017b\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}