// Generated from C:/Users/Mi/Desktop/git/parsers/parser-genertor/src/main/kotlin\Input.g4 by ANTLR 4.9.1

package antlr;
import graph.GToken;
import graph.GRule;
import java.util.*;

import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class InputLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.9.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		RULES=1, TOKENS=2, COLUMN=3, NAME=4, REGEX=5, ARG=6, CODE=7, NL=8, TAB=9, 
		SPACE=10, OPEN_ANGLE=11, CLOSE_ANGLE=12, OPEN_PAREN=13, CLOSE_PAREN=14, 
		OPEN_CURLY=15, CLOSE_CURLY=16;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"RULES", "TOKENS", "COLUMN", "NAME", "REGEX", "ARG", "CODE", "NL", "TAB", 
			"SPACE", "OPEN_ANGLE", "CLOSE_ANGLE", "OPEN_PAREN", "CLOSE_PAREN", "OPEN_CURLY", 
			"CLOSE_CURLY"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'rules'", "'tokens'", "':'", null, null, null, null, "'\n'", null, 
			null, "'<'", "'>'", "'('", "')'", "'{'", "'}'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "RULES", "TOKENS", "COLUMN", "NAME", "REGEX", "ARG", "CODE", "NL", 
			"TAB", "SPACE", "OPEN_ANGLE", "CLOSE_ANGLE", "OPEN_PAREN", "CLOSE_PAREN", 
			"OPEN_CURLY", "CLOSE_CURLY"
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


	public List<GToken> tokens = new ArrayList<GToken>();
	public Map<GRule, List<List<GRule>>> rules = new LinkedHashMap<>();


	public InputLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Input.g4"; }

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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\22k\b\1\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\3\2\3\2\3"+
		"\2\3\2\3\2\3\2\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\4\3\4\3\5\6\5\64\n\5\r\5"+
		"\16\5\65\3\6\3\6\7\6:\n\6\f\6\16\6=\13\6\3\6\3\6\3\7\3\7\7\7C\n\7\f\7"+
		"\16\7F\13\7\3\7\3\7\3\b\3\b\7\bL\n\b\f\b\16\bO\13\b\3\b\3\b\3\t\3\t\3"+
		"\n\3\n\3\n\3\n\3\n\5\nZ\n\n\3\13\3\13\3\13\3\13\3\f\3\f\3\r\3\r\3\16\3"+
		"\16\3\17\3\17\3\20\3\20\3\21\3\21\2\2\22\3\3\5\4\7\5\t\6\13\7\r\b\17\t"+
		"\21\n\23\13\25\f\27\r\31\16\33\17\35\20\37\21!\22\3\2\7\4\2C\\c|\5\2\f"+
		"\f\17\17$$\5\2\f\f\17\17\u0080\u0080\5\2\f\f\17\17@@\4\2\17\17\"\"\2o"+
		"\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2"+
		"\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2"+
		"\2\31\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\3#\3\2"+
		"\2\2\5)\3\2\2\2\7\60\3\2\2\2\t\63\3\2\2\2\13\67\3\2\2\2\r@\3\2\2\2\17"+
		"I\3\2\2\2\21R\3\2\2\2\23Y\3\2\2\2\25[\3\2\2\2\27_\3\2\2\2\31a\3\2\2\2"+
		"\33c\3\2\2\2\35e\3\2\2\2\37g\3\2\2\2!i\3\2\2\2#$\7t\2\2$%\7w\2\2%&\7n"+
		"\2\2&\'\7g\2\2\'(\7u\2\2(\4\3\2\2\2)*\7v\2\2*+\7q\2\2+,\7m\2\2,-\7g\2"+
		"\2-.\7p\2\2./\7u\2\2/\6\3\2\2\2\60\61\7<\2\2\61\b\3\2\2\2\62\64\t\2\2"+
		"\2\63\62\3\2\2\2\64\65\3\2\2\2\65\63\3\2\2\2\65\66\3\2\2\2\66\n\3\2\2"+
		"\2\67;\7$\2\28:\n\3\2\298\3\2\2\2:=\3\2\2\2;9\3\2\2\2;<\3\2\2\2<>\3\2"+
		"\2\2=;\3\2\2\2>?\7$\2\2?\f\3\2\2\2@D\5\33\16\2AC\n\4\2\2BA\3\2\2\2CF\3"+
		"\2\2\2DB\3\2\2\2DE\3\2\2\2EG\3\2\2\2FD\3\2\2\2GH\5\35\17\2H\16\3\2\2\2"+
		"IM\5\37\20\2JL\n\5\2\2KJ\3\2\2\2LO\3\2\2\2MK\3\2\2\2MN\3\2\2\2NP\3\2\2"+
		"\2OM\3\2\2\2PQ\5!\21\2Q\20\3\2\2\2RS\7\f\2\2S\22\3\2\2\2TZ\7\13\2\2UV"+
		"\7\"\2\2VW\7\"\2\2WX\7\"\2\2XZ\7\"\2\2YT\3\2\2\2YU\3\2\2\2Z\24\3\2\2\2"+
		"[\\\t\6\2\2\\]\3\2\2\2]^\b\13\2\2^\26\3\2\2\2_`\7>\2\2`\30\3\2\2\2ab\7"+
		"@\2\2b\32\3\2\2\2cd\7*\2\2d\34\3\2\2\2ef\7+\2\2f\36\3\2\2\2gh\7}\2\2h"+
		" \3\2\2\2ij\7\177\2\2j\"\3\2\2\2\b\2\65;DMY\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}