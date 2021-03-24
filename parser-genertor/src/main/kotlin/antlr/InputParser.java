// Generated from C:/Users/Mi/Desktop/git/parsers/parser-genertor/src/main/kotlin\Input.g4 by ANTLR 4.9.1

package antlr;
import graph.GToken;
import graph.GRule;
import java.util.*;

import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class InputParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.9.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		RULES=1, TOKENS=2, COLUMN=3, NAME=4, REGEX=5, ARG=6, CODE=7, NL=8, TAB=9, 
		SPACE=10, OPEN_ANGLE=11, CLOSE_ANGLE=12, OPEN_PAREN=13, CLOSE_PAREN=14, 
		OPEN_CURLY=15, CLOSE_CURLY=16;
	public static final int
		RULE_parse = 0, RULE_tokens = 1, RULE_token = 2, RULE_rules = 3, RULE_declaration = 4, 
		RULE_branch = 5, RULE_application = 6;
	private static String[] makeRuleNames() {
		return new String[] {
			"parse", "tokens", "token", "rules", "declaration", "branch", "application"
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

	@Override
	public String getGrammarFileName() { return "Input.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }


	public List<GToken> tokens = new ArrayList<GToken>();
	public Map<GRule, List<List<GRule>>> rules = new LinkedHashMap<>();

	public InputParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class ParseContext extends ParserRuleContext {
		public TokensContext tokens() {
			return getRuleContext(TokensContext.class,0);
		}
		public RulesContext rules() {
			return getRuleContext(RulesContext.class,0);
		}
		public ParseContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_parse; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof InputListener ) ((InputListener)listener).enterParse(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof InputListener ) ((InputListener)listener).exitParse(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof InputVisitor ) return ((InputVisitor<? extends T>)visitor).visitParse(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ParseContext parse() throws RecognitionException {
		ParseContext _localctx = new ParseContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_parse);
		try {
			enterOuterAlt(_localctx, 1);
			{
			{
			setState(14);
			tokens();
			}
			{
			setState(15);
			rules();
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

	public static class TokensContext extends ParserRuleContext {
		public TerminalNode TOKENS() { return getToken(InputParser.TOKENS, 0); }
		public TerminalNode NL() { return getToken(InputParser.NL, 0); }
		public List<TokenContext> token() {
			return getRuleContexts(TokenContext.class);
		}
		public TokenContext token(int i) {
			return getRuleContext(TokenContext.class,i);
		}
		public TokensContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_tokens; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof InputListener ) ((InputListener)listener).enterTokens(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof InputListener ) ((InputListener)listener).exitTokens(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof InputVisitor ) return ((InputVisitor<? extends T>)visitor).visitTokens(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TokensContext tokens() throws RecognitionException {
		TokensContext _localctx = new TokensContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_tokens);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(17);
			match(TOKENS);
			setState(18);
			match(NL);
			setState(20); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(19);
				token();
				}
				}
				setState(22); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==TAB );
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

	public static class TokenContext extends ParserRuleContext {
		public Token NAME;
		public Token REGEX;
		public TerminalNode TAB() { return getToken(InputParser.TAB, 0); }
		public TerminalNode NAME() { return getToken(InputParser.NAME, 0); }
		public TerminalNode COLUMN() { return getToken(InputParser.COLUMN, 0); }
		public TerminalNode REGEX() { return getToken(InputParser.REGEX, 0); }
		public TerminalNode NL() { return getToken(InputParser.NL, 0); }
		public TokenContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_token; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof InputListener ) ((InputListener)listener).enterToken(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof InputListener ) ((InputListener)listener).exitToken(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof InputVisitor ) return ((InputVisitor<? extends T>)visitor).visitToken(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TokenContext token() throws RecognitionException {
		TokenContext _localctx = new TokenContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_token);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(24);
			match(TAB);
			setState(25);
			((TokenContext)_localctx).NAME = match(NAME);
			setState(26);
			match(COLUMN);
			setState(27);
			((TokenContext)_localctx).REGEX = match(REGEX);
			setState(28);
			match(NL);

			    tokens.add(new GToken((((TokenContext)_localctx).NAME!=null?((TokenContext)_localctx).NAME.getText():null), (((TokenContext)_localctx).REGEX!=null?((TokenContext)_localctx).REGEX.getText():null)));

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

	public static class RulesContext extends ParserRuleContext {
		public TerminalNode RULES() { return getToken(InputParser.RULES, 0); }
		public TerminalNode NL() { return getToken(InputParser.NL, 0); }
		public List<DeclarationContext> declaration() {
			return getRuleContexts(DeclarationContext.class);
		}
		public DeclarationContext declaration(int i) {
			return getRuleContext(DeclarationContext.class,i);
		}
		public RulesContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_rules; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof InputListener ) ((InputListener)listener).enterRules(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof InputListener ) ((InputListener)listener).exitRules(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof InputVisitor ) return ((InputVisitor<? extends T>)visitor).visitRules(this);
			else return visitor.visitChildren(this);
		}
	}

	public final RulesContext rules() throws RecognitionException {
		RulesContext _localctx = new RulesContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_rules);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(31);
			match(RULES);
			setState(32);
			match(NL);
			setState(34); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(33);
				declaration();
				}
				}
				setState(36); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==TAB );
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

	public static class DeclarationContext extends ParserRuleContext {
		public Token NAME;
		public Token ARG;
		public Token CODE;
		public TerminalNode TAB() { return getToken(InputParser.TAB, 0); }
		public TerminalNode NAME() { return getToken(InputParser.NAME, 0); }
		public TerminalNode NL() { return getToken(InputParser.NL, 0); }
		public TerminalNode ARG() { return getToken(InputParser.ARG, 0); }
		public TerminalNode CODE() { return getToken(InputParser.CODE, 0); }
		public List<BranchContext> branch() {
			return getRuleContexts(BranchContext.class);
		}
		public BranchContext branch(int i) {
			return getRuleContext(BranchContext.class,i);
		}
		public DeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_declaration; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof InputListener ) ((InputListener)listener).enterDeclaration(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof InputListener ) ((InputListener)listener).exitDeclaration(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof InputVisitor ) return ((InputVisitor<? extends T>)visitor).visitDeclaration(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DeclarationContext declaration() throws RecognitionException {
		DeclarationContext _localctx = new DeclarationContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_declaration);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(38);
			match(TAB);
			setState(39);
			((DeclarationContext)_localctx).NAME = match(NAME);
			setState(41);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ARG) {
				{
				setState(40);
				((DeclarationContext)_localctx).ARG = match(ARG);
				}
			}

			setState(44);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==CODE) {
				{
				setState(43);
				((DeclarationContext)_localctx).CODE = match(CODE);
				}
			}

			setState(46);
			match(NL);

			    var code = (((DeclarationContext)_localctx).CODE!=null?((DeclarationContext)_localctx).CODE.getText():null);
			    if (code != null) {
			        code = (((DeclarationContext)_localctx).CODE!=null?((DeclarationContext)_localctx).CODE.getText():null).substring(2, (((DeclarationContext)_localctx).CODE!=null?((DeclarationContext)_localctx).CODE.getText():null).length() - 2);
			    }
			    var cur = new GRule((((DeclarationContext)_localctx).NAME!=null?((DeclarationContext)_localctx).NAME.getText():null), (((DeclarationContext)_localctx).ARG!=null?((DeclarationContext)_localctx).ARG.getText():null), code);
			    rules.computeIfAbsent(cur, key -> new ArrayList<>());

			setState(51);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,4,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(48);
					branch(cur);
					}
					} 
				}
				setState(53);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,4,_ctx);
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

	public static class BranchContext extends ParserRuleContext {
		public GRule par;
		public List<TerminalNode> TAB() { return getTokens(InputParser.TAB); }
		public TerminalNode TAB(int i) {
			return getToken(InputParser.TAB, i);
		}
		public TerminalNode NL() { return getToken(InputParser.NL, 0); }
		public List<ApplicationContext> application() {
			return getRuleContexts(ApplicationContext.class);
		}
		public ApplicationContext application(int i) {
			return getRuleContext(ApplicationContext.class,i);
		}
		public BranchContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public BranchContext(ParserRuleContext parent, int invokingState, GRule par) {
			super(parent, invokingState);
			this.par = par;
		}
		@Override public int getRuleIndex() { return RULE_branch; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof InputListener ) ((InputListener)listener).enterBranch(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof InputListener ) ((InputListener)listener).exitBranch(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof InputVisitor ) return ((InputVisitor<? extends T>)visitor).visitBranch(this);
			else return visitor.visitChildren(this);
		}
	}

	public final BranchContext branch(GRule par) throws RecognitionException {
		BranchContext _localctx = new BranchContext(_ctx, getState(), par);
		enterRule(_localctx, 10, RULE_branch);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(54);
			match(TAB);
			setState(55);
			match(TAB);

			    rules.get(par).add(new ArrayList<>());

			setState(58); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(57);
				application(par);
				}
				}
				setState(60); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==NAME );
			setState(62);
			match(NL);
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

	public static class ApplicationContext extends ParserRuleContext {
		public GRule par;
		public Token NAME;
		public Token ARG;
		public Token CODE;
		public TerminalNode NAME() { return getToken(InputParser.NAME, 0); }
		public TerminalNode ARG() { return getToken(InputParser.ARG, 0); }
		public TerminalNode CODE() { return getToken(InputParser.CODE, 0); }
		public ApplicationContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public ApplicationContext(ParserRuleContext parent, int invokingState, GRule par) {
			super(parent, invokingState);
			this.par = par;
		}
		@Override public int getRuleIndex() { return RULE_application; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof InputListener ) ((InputListener)listener).enterApplication(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof InputListener ) ((InputListener)listener).exitApplication(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof InputVisitor ) return ((InputVisitor<? extends T>)visitor).visitApplication(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ApplicationContext application(GRule par) throws RecognitionException {
		ApplicationContext _localctx = new ApplicationContext(_ctx, getState(), par);
		enterRule(_localctx, 12, RULE_application);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(64);
			((ApplicationContext)_localctx).NAME = match(NAME);
			setState(66);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ARG) {
				{
				setState(65);
				((ApplicationContext)_localctx).ARG = match(ARG);
				}
			}

			setState(69);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==CODE) {
				{
				setState(68);
				((ApplicationContext)_localctx).CODE = match(CODE);
				}
			}


			    var cur = rules.get(par);
			    var code = (((ApplicationContext)_localctx).CODE!=null?((ApplicationContext)_localctx).CODE.getText():null);
			    if (code != null) {
			        code = (((ApplicationContext)_localctx).CODE!=null?((ApplicationContext)_localctx).CODE.getText():null).substring(2, (((ApplicationContext)_localctx).CODE!=null?((ApplicationContext)_localctx).CODE.getText():null).length() - 2);
			    }// гет или создать
			    cur.get(cur.size() - 1).add(new GRule((((ApplicationContext)_localctx).NAME!=null?((ApplicationContext)_localctx).NAME.getText():null),(((ApplicationContext)_localctx).ARG!=null?((ApplicationContext)_localctx).ARG.getText():null),code));

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

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\22L\4\2\t\2\4\3\t"+
		"\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\3\2\3\2\3\2\3\3\3\3\3\3\6\3"+
		"\27\n\3\r\3\16\3\30\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\5\3\5\3\5\6\5%\n\5\r"+
		"\5\16\5&\3\6\3\6\3\6\5\6,\n\6\3\6\5\6/\n\6\3\6\3\6\3\6\7\6\64\n\6\f\6"+
		"\16\6\67\13\6\3\7\3\7\3\7\3\7\6\7=\n\7\r\7\16\7>\3\7\3\7\3\b\3\b\5\bE"+
		"\n\b\3\b\5\bH\n\b\3\b\3\b\3\b\2\2\t\2\4\6\b\n\f\16\2\2\2L\2\20\3\2\2\2"+
		"\4\23\3\2\2\2\6\32\3\2\2\2\b!\3\2\2\2\n(\3\2\2\2\f8\3\2\2\2\16B\3\2\2"+
		"\2\20\21\5\4\3\2\21\22\5\b\5\2\22\3\3\2\2\2\23\24\7\4\2\2\24\26\7\n\2"+
		"\2\25\27\5\6\4\2\26\25\3\2\2\2\27\30\3\2\2\2\30\26\3\2\2\2\30\31\3\2\2"+
		"\2\31\5\3\2\2\2\32\33\7\13\2\2\33\34\7\6\2\2\34\35\7\5\2\2\35\36\7\7\2"+
		"\2\36\37\7\n\2\2\37 \b\4\1\2 \7\3\2\2\2!\"\7\3\2\2\"$\7\n\2\2#%\5\n\6"+
		"\2$#\3\2\2\2%&\3\2\2\2&$\3\2\2\2&\'\3\2\2\2\'\t\3\2\2\2()\7\13\2\2)+\7"+
		"\6\2\2*,\7\b\2\2+*\3\2\2\2+,\3\2\2\2,.\3\2\2\2-/\7\t\2\2.-\3\2\2\2./\3"+
		"\2\2\2/\60\3\2\2\2\60\61\7\n\2\2\61\65\b\6\1\2\62\64\5\f\7\2\63\62\3\2"+
		"\2\2\64\67\3\2\2\2\65\63\3\2\2\2\65\66\3\2\2\2\66\13\3\2\2\2\67\65\3\2"+
		"\2\289\7\13\2\29:\7\13\2\2:<\b\7\1\2;=\5\16\b\2<;\3\2\2\2=>\3\2\2\2><"+
		"\3\2\2\2>?\3\2\2\2?@\3\2\2\2@A\7\n\2\2A\r\3\2\2\2BD\7\6\2\2CE\7\b\2\2"+
		"DC\3\2\2\2DE\3\2\2\2EG\3\2\2\2FH\7\t\2\2GF\3\2\2\2GH\3\2\2\2HI\3\2\2\2"+
		"IJ\b\b\1\2J\17\3\2\2\2\n\30&+.\65>DG";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}