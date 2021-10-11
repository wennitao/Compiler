// Generated from Mx_lite.g4 by ANTLR 4.9
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class Mx_liteLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.9", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		Int=1, Bool=2, Void=3, True=4, False=5, If=6, Else=7, Return=8, Dot=9, 
		LeftParen=10, RightParen=11, LeftBracket=12, RightBracket=13, LeftBrace=14, 
		RightBrace=15, Less=16, LessEqual=17, Greater=18, GreaterEqual=19, LeftShift=20, 
		RightShift=21, Plus=22, SelfPlus=23, Minus=24, SelfMinus=25, Mul=26, Div=27, 
		Mod=28, And=29, Or=30, AndAnd=31, OrOr=32, Caret=33, Not=34, Tilde=35, 
		Question=36, Colon=37, Semi=38, Comma=39, Assign=40, Equal=41, NotEqual=42, 
		BackSlash=43, DbQuotation=44, Identifier=45, DecimalInteger=46, Whitespace=47, 
		Newline=48, BlockComment=49, LineComment=50;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"Int", "Bool", "Void", "True", "False", "If", "Else", "Return", "Dot", 
			"LeftParen", "RightParen", "LeftBracket", "RightBracket", "LeftBrace", 
			"RightBrace", "Less", "LessEqual", "Greater", "GreaterEqual", "LeftShift", 
			"RightShift", "Plus", "SelfPlus", "Minus", "SelfMinus", "Mul", "Div", 
			"Mod", "And", "Or", "AndAnd", "OrOr", "Caret", "Not", "Tilde", "Question", 
			"Colon", "Semi", "Comma", "Assign", "Equal", "NotEqual", "BackSlash", 
			"DbQuotation", "Identifier", "DecimalInteger", "Whitespace", "Newline", 
			"BlockComment", "LineComment"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'int'", "'bool'", "'void'", "'true'", "'false'", "'if'", "'else'", 
			"'return'", "'.'", "'('", "')'", "'['", "']'", "'{'", "'}'", "'<'", "'<='", 
			"'>'", "'>='", "'<<'", "'>>'", "'+'", "'++'", "'-'", "'--'", "'*'", "'/'", 
			"'%'", "'&'", "'|'", "'&&'", "'||'", "'^'", "'!'", "'~'", "'?'", "':'", 
			"';'", "','", "'='", "'=='", "'!='", "'\\\\'", "'\\\"'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "Int", "Bool", "Void", "True", "False", "If", "Else", "Return", 
			"Dot", "LeftParen", "RightParen", "LeftBracket", "RightBracket", "LeftBrace", 
			"RightBrace", "Less", "LessEqual", "Greater", "GreaterEqual", "LeftShift", 
			"RightShift", "Plus", "SelfPlus", "Minus", "SelfMinus", "Mul", "Div", 
			"Mod", "And", "Or", "AndAnd", "OrOr", "Caret", "Not", "Tilde", "Question", 
			"Colon", "Semi", "Comma", "Assign", "Equal", "NotEqual", "BackSlash", 
			"DbQuotation", "Identifier", "DecimalInteger", "Whitespace", "Newline", 
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


	public Mx_liteLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Mx_lite.g4"; }

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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\64\u011d\b\1\4\2"+
		"\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4"+
		"\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22"+
		"\t\22\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31"+
		"\t\31\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t"+
		" \4!\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t"+
		"+\4,\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\3\2"+
		"\3\2\3\2\3\2\3\3\3\3\3\3\3\3\3\3\3\4\3\4\3\4\3\4\3\4\3\5\3\5\3\5\3\5\3"+
		"\5\3\6\3\6\3\6\3\6\3\6\3\6\3\7\3\7\3\7\3\b\3\b\3\b\3\b\3\b\3\t\3\t\3\t"+
		"\3\t\3\t\3\t\3\t\3\n\3\n\3\13\3\13\3\f\3\f\3\r\3\r\3\16\3\16\3\17\3\17"+
		"\3\20\3\20\3\21\3\21\3\22\3\22\3\22\3\23\3\23\3\24\3\24\3\24\3\25\3\25"+
		"\3\25\3\26\3\26\3\26\3\27\3\27\3\30\3\30\3\30\3\31\3\31\3\32\3\32\3\32"+
		"\3\33\3\33\3\34\3\34\3\35\3\35\3\36\3\36\3\37\3\37\3 \3 \3 \3!\3!\3!\3"+
		"\"\3\"\3#\3#\3$\3$\3%\3%\3&\3&\3\'\3\'\3(\3(\3)\3)\3*\3*\3*\3+\3+\3+\3"+
		",\3,\3,\3-\3-\3-\3.\3.\7.\u00e6\n.\f.\16.\u00e9\13.\3/\3/\7/\u00ed\n/"+
		"\f/\16/\u00f0\13/\3/\5/\u00f3\n/\3\60\6\60\u00f6\n\60\r\60\16\60\u00f7"+
		"\3\60\3\60\3\61\3\61\5\61\u00fe\n\61\3\61\5\61\u0101\n\61\3\61\3\61\3"+
		"\62\3\62\3\62\3\62\7\62\u0109\n\62\f\62\16\62\u010c\13\62\3\62\3\62\3"+
		"\62\3\62\3\62\3\63\3\63\3\63\3\63\7\63\u0117\n\63\f\63\16\63\u011a\13"+
		"\63\3\63\3\63\3\u010a\2\64\3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25"+
		"\f\27\r\31\16\33\17\35\20\37\21!\22#\23%\24\'\25)\26+\27-\30/\31\61\32"+
		"\63\33\65\34\67\359\36;\37= ?!A\"C#E$G%I&K\'M(O)Q*S+U,W-Y.[/]\60_\61a"+
		"\62c\63e\64\3\2\b\4\2C\\c|\6\2\62;C\\aac|\3\2\63;\3\2\62;\4\2\13\13\""+
		"\"\4\2\f\f\17\17\2\u0124\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2"+
		"\2\2\13\3\2\2\2\2\r\3\2\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25"+
		"\3\2\2\2\2\27\3\2\2\2\2\31\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2"+
		"\2\2\2!\3\2\2\2\2#\3\2\2\2\2%\3\2\2\2\2\'\3\2\2\2\2)\3\2\2\2\2+\3\2\2"+
		"\2\2-\3\2\2\2\2/\3\2\2\2\2\61\3\2\2\2\2\63\3\2\2\2\2\65\3\2\2\2\2\67\3"+
		"\2\2\2\29\3\2\2\2\2;\3\2\2\2\2=\3\2\2\2\2?\3\2\2\2\2A\3\2\2\2\2C\3\2\2"+
		"\2\2E\3\2\2\2\2G\3\2\2\2\2I\3\2\2\2\2K\3\2\2\2\2M\3\2\2\2\2O\3\2\2\2\2"+
		"Q\3\2\2\2\2S\3\2\2\2\2U\3\2\2\2\2W\3\2\2\2\2Y\3\2\2\2\2[\3\2\2\2\2]\3"+
		"\2\2\2\2_\3\2\2\2\2a\3\2\2\2\2c\3\2\2\2\2e\3\2\2\2\3g\3\2\2\2\5k\3\2\2"+
		"\2\7p\3\2\2\2\tu\3\2\2\2\13z\3\2\2\2\r\u0080\3\2\2\2\17\u0083\3\2\2\2"+
		"\21\u0088\3\2\2\2\23\u008f\3\2\2\2\25\u0091\3\2\2\2\27\u0093\3\2\2\2\31"+
		"\u0095\3\2\2\2\33\u0097\3\2\2\2\35\u0099\3\2\2\2\37\u009b\3\2\2\2!\u009d"+
		"\3\2\2\2#\u009f\3\2\2\2%\u00a2\3\2\2\2\'\u00a4\3\2\2\2)\u00a7\3\2\2\2"+
		"+\u00aa\3\2\2\2-\u00ad\3\2\2\2/\u00af\3\2\2\2\61\u00b2\3\2\2\2\63\u00b4"+
		"\3\2\2\2\65\u00b7\3\2\2\2\67\u00b9\3\2\2\29\u00bb\3\2\2\2;\u00bd\3\2\2"+
		"\2=\u00bf\3\2\2\2?\u00c1\3\2\2\2A\u00c4\3\2\2\2C\u00c7\3\2\2\2E\u00c9"+
		"\3\2\2\2G\u00cb\3\2\2\2I\u00cd\3\2\2\2K\u00cf\3\2\2\2M\u00d1\3\2\2\2O"+
		"\u00d3\3\2\2\2Q\u00d5\3\2\2\2S\u00d7\3\2\2\2U\u00da\3\2\2\2W\u00dd\3\2"+
		"\2\2Y\u00e0\3\2\2\2[\u00e3\3\2\2\2]\u00f2\3\2\2\2_\u00f5\3\2\2\2a\u0100"+
		"\3\2\2\2c\u0104\3\2\2\2e\u0112\3\2\2\2gh\7k\2\2hi\7p\2\2ij\7v\2\2j\4\3"+
		"\2\2\2kl\7d\2\2lm\7q\2\2mn\7q\2\2no\7n\2\2o\6\3\2\2\2pq\7x\2\2qr\7q\2"+
		"\2rs\7k\2\2st\7f\2\2t\b\3\2\2\2uv\7v\2\2vw\7t\2\2wx\7w\2\2xy\7g\2\2y\n"+
		"\3\2\2\2z{\7h\2\2{|\7c\2\2|}\7n\2\2}~\7u\2\2~\177\7g\2\2\177\f\3\2\2\2"+
		"\u0080\u0081\7k\2\2\u0081\u0082\7h\2\2\u0082\16\3\2\2\2\u0083\u0084\7"+
		"g\2\2\u0084\u0085\7n\2\2\u0085\u0086\7u\2\2\u0086\u0087\7g\2\2\u0087\20"+
		"\3\2\2\2\u0088\u0089\7t\2\2\u0089\u008a\7g\2\2\u008a\u008b\7v\2\2\u008b"+
		"\u008c\7w\2\2\u008c\u008d\7t\2\2\u008d\u008e\7p\2\2\u008e\22\3\2\2\2\u008f"+
		"\u0090\7\60\2\2\u0090\24\3\2\2\2\u0091\u0092\7*\2\2\u0092\26\3\2\2\2\u0093"+
		"\u0094\7+\2\2\u0094\30\3\2\2\2\u0095\u0096\7]\2\2\u0096\32\3\2\2\2\u0097"+
		"\u0098\7_\2\2\u0098\34\3\2\2\2\u0099\u009a\7}\2\2\u009a\36\3\2\2\2\u009b"+
		"\u009c\7\177\2\2\u009c \3\2\2\2\u009d\u009e\7>\2\2\u009e\"\3\2\2\2\u009f"+
		"\u00a0\7>\2\2\u00a0\u00a1\7?\2\2\u00a1$\3\2\2\2\u00a2\u00a3\7@\2\2\u00a3"+
		"&\3\2\2\2\u00a4\u00a5\7@\2\2\u00a5\u00a6\7?\2\2\u00a6(\3\2\2\2\u00a7\u00a8"+
		"\7>\2\2\u00a8\u00a9\7>\2\2\u00a9*\3\2\2\2\u00aa\u00ab\7@\2\2\u00ab\u00ac"+
		"\7@\2\2\u00ac,\3\2\2\2\u00ad\u00ae\7-\2\2\u00ae.\3\2\2\2\u00af\u00b0\7"+
		"-\2\2\u00b0\u00b1\7-\2\2\u00b1\60\3\2\2\2\u00b2\u00b3\7/\2\2\u00b3\62"+
		"\3\2\2\2\u00b4\u00b5\7/\2\2\u00b5\u00b6\7/\2\2\u00b6\64\3\2\2\2\u00b7"+
		"\u00b8\7,\2\2\u00b8\66\3\2\2\2\u00b9\u00ba\7\61\2\2\u00ba8\3\2\2\2\u00bb"+
		"\u00bc\7\'\2\2\u00bc:\3\2\2\2\u00bd\u00be\7(\2\2\u00be<\3\2\2\2\u00bf"+
		"\u00c0\7~\2\2\u00c0>\3\2\2\2\u00c1\u00c2\7(\2\2\u00c2\u00c3\7(\2\2\u00c3"+
		"@\3\2\2\2\u00c4\u00c5\7~\2\2\u00c5\u00c6\7~\2\2\u00c6B\3\2\2\2\u00c7\u00c8"+
		"\7`\2\2\u00c8D\3\2\2\2\u00c9\u00ca\7#\2\2\u00caF\3\2\2\2\u00cb\u00cc\7"+
		"\u0080\2\2\u00ccH\3\2\2\2\u00cd\u00ce\7A\2\2\u00ceJ\3\2\2\2\u00cf\u00d0"+
		"\7<\2\2\u00d0L\3\2\2\2\u00d1\u00d2\7=\2\2\u00d2N\3\2\2\2\u00d3\u00d4\7"+
		".\2\2\u00d4P\3\2\2\2\u00d5\u00d6\7?\2\2\u00d6R\3\2\2\2\u00d7\u00d8\7?"+
		"\2\2\u00d8\u00d9\7?\2\2\u00d9T\3\2\2\2\u00da\u00db\7#\2\2\u00db\u00dc"+
		"\7?\2\2\u00dcV\3\2\2\2\u00dd\u00de\7^\2\2\u00de\u00df\7^\2\2\u00dfX\3"+
		"\2\2\2\u00e0\u00e1\7^\2\2\u00e1\u00e2\7$\2\2\u00e2Z\3\2\2\2\u00e3\u00e7"+
		"\t\2\2\2\u00e4\u00e6\t\3\2\2\u00e5\u00e4\3\2\2\2\u00e6\u00e9\3\2\2\2\u00e7"+
		"\u00e5\3\2\2\2\u00e7\u00e8\3\2\2\2\u00e8\\\3\2\2\2\u00e9\u00e7\3\2\2\2"+
		"\u00ea\u00ee\t\4\2\2\u00eb\u00ed\t\5\2\2\u00ec\u00eb\3\2\2\2\u00ed\u00f0"+
		"\3\2\2\2\u00ee\u00ec\3\2\2\2\u00ee\u00ef\3\2\2\2\u00ef\u00f3\3\2\2\2\u00f0"+
		"\u00ee\3\2\2\2\u00f1\u00f3\7\62\2\2\u00f2\u00ea\3\2\2\2\u00f2\u00f1\3"+
		"\2\2\2\u00f3^\3\2\2\2\u00f4\u00f6\t\6\2\2\u00f5\u00f4\3\2\2\2\u00f6\u00f7"+
		"\3\2\2\2\u00f7\u00f5\3\2\2\2\u00f7\u00f8\3\2\2\2\u00f8\u00f9\3\2\2\2\u00f9"+
		"\u00fa\b\60\2\2\u00fa`\3\2\2\2\u00fb\u00fd\7\17\2\2\u00fc\u00fe\7\f\2"+
		"\2\u00fd\u00fc\3\2\2\2\u00fd\u00fe\3\2\2\2\u00fe\u0101\3\2\2\2\u00ff\u0101"+
		"\7\f\2\2\u0100\u00fb\3\2\2\2\u0100\u00ff\3\2\2\2\u0101\u0102\3\2\2\2\u0102"+
		"\u0103\b\61\2\2\u0103b\3\2\2\2\u0104\u0105\7\61\2\2\u0105\u0106\7,\2\2"+
		"\u0106\u010a\3\2\2\2\u0107\u0109\13\2\2\2\u0108\u0107\3\2\2\2\u0109\u010c"+
		"\3\2\2\2\u010a\u010b\3\2\2\2\u010a\u0108\3\2\2\2\u010b\u010d\3\2\2\2\u010c"+
		"\u010a\3\2\2\2\u010d\u010e\7,\2\2\u010e\u010f\7\61\2\2\u010f\u0110\3\2"+
		"\2\2\u0110\u0111\b\62\2\2\u0111d\3\2\2\2\u0112\u0113\7\61\2\2\u0113\u0114"+
		"\7\61\2\2\u0114\u0118\3\2\2\2\u0115\u0117\n\7\2\2\u0116\u0115\3\2\2\2"+
		"\u0117\u011a\3\2\2\2\u0118\u0116\3\2\2\2\u0118\u0119\3\2\2\2\u0119\u011b"+
		"\3\2\2\2\u011a\u0118\3\2\2\2\u011b\u011c\b\63\2\2\u011cf\3\2\2\2\13\2"+
		"\u00e7\u00ee\u00f2\u00f7\u00fd\u0100\u010a\u0118\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}