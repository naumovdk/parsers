// Generated from c:\Users\Mi\Desktop\parser_generator\input_parser\Grammar.g4 by ANTLR 4.8
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class GrammarLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.8", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		TAB=1, NL=2, EMPTY=3, WS=4, ID=5, REGEX=6;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"TAB", "NL", "EMPTY", "WS", "ID", "REGEX"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, null, "'\n'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "TAB", "NL", "EMPTY", "WS", "ID", "REGEX"
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


	public GrammarLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Grammar.g4"; }

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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\b/\b\1\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\3\2\3\2\3\2\3\2\3\2\5\2\25\n\2"+
		"\3\3\3\3\3\4\3\4\3\4\3\5\6\5\35\n\5\r\5\16\5\36\3\5\3\5\3\6\6\6$\n\6\r"+
		"\6\16\6%\3\7\3\7\6\7*\n\7\r\7\16\7+\3\7\3\7\2\2\b\3\3\5\4\7\5\t\6\13\7"+
		"\r\b\3\2\5\4\2\13\13\"\"\4\2C\\c|\3\2\f\f\2\62\2\3\3\2\2\2\2\5\3\2\2\2"+
		"\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2\2\2\3\24\3\2\2\2\5\26\3"+
		"\2\2\2\7\30\3\2\2\2\t\34\3\2\2\2\13#\3\2\2\2\r\'\3\2\2\2\17\25\7\13\2"+
		"\2\20\21\7\"\2\2\21\22\7\"\2\2\22\23\7\"\2\2\23\25\7\"\2\2\24\17\3\2\2"+
		"\2\24\20\3\2\2\2\25\4\3\2\2\2\26\27\7\f\2\2\27\6\3\2\2\2\30\31\5\5\3\2"+
		"\31\32\5\5\3\2\32\b\3\2\2\2\33\35\t\2\2\2\34\33\3\2\2\2\35\36\3\2\2\2"+
		"\36\34\3\2\2\2\36\37\3\2\2\2\37 \3\2\2\2 !\b\5\2\2!\n\3\2\2\2\"$\t\3\2"+
		"\2#\"\3\2\2\2$%\3\2\2\2%#\3\2\2\2%&\3\2\2\2&\f\3\2\2\2\')\7$\2\2(*\n\4"+
		"\2\2)(\3\2\2\2*+\3\2\2\2+)\3\2\2\2+,\3\2\2\2,-\3\2\2\2-.\7$\2\2.\16\3"+
		"\2\2\2\7\2\24\36%+\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}