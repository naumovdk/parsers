# Generated from Grammar.g4 by ANTLR 4.9.1
# encoding: utf-8
from antlr4 import *
from io import StringIO
import sys
if sys.version_info[1] > 5:
	from typing import TextIO
else:
	from typing.io import TextIO


def serializedATN():
    with StringIO() as buf:
        buf.write("\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\b")
        buf.write("\25\4\2\t\2\4\3\t\3\4\4\t\4\3\2\6\2\n\n\2\r\2\16\2\13")
        buf.write("\3\3\3\3\3\4\3\4\3\4\3\4\3\4\3\4\2\2\5\2\4\6\2\2\2\22")
        buf.write("\2\t\3\2\2\2\4\r\3\2\2\2\6\17\3\2\2\2\b\n\5\4\3\2\t\b")
        buf.write("\3\2\2\2\n\13\3\2\2\2\13\t\3\2\2\2\13\f\3\2\2\2\f\3\3")
        buf.write("\2\2\2\r\16\5\6\4\2\16\5\3\2\2\2\17\20\7\7\2\2\20\21\7")
        buf.write("\b\2\2\21\22\7\4\2\2\22\23\b\4\1\2\23\7\3\2\2\2\3\13")
        return buf.getvalue()


class GrammarParser ( Parser ):

    grammarFileName = "Grammar.g4"

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]

    sharedContextCache = PredictionContextCache()

    literalNames = [ "<INVALID>", "<INVALID>", "'\n'" ]

    symbolicNames = [ "<INVALID>", "TAB", "NL", "EMPTY", "WS", "ID", "REGEX" ]

    RULE_parse = 0
    RULE_stat = 1
    RULE_token = 2

    ruleNames =  [ "parse", "stat", "token" ]

    EOF = Token.EOF
    TAB=1
    NL=2
    EMPTY=3
    WS=4
    ID=5
    REGEX=6

    def __init__(self, input:TokenStream, output:TextIO = sys.stdout):
        super().__init__(input, output)
        self.checkVersion("4.9.1")
        self._interp = ParserATNSimulator(self, self.atn, self.decisionsToDFA, self.sharedContextCache)
        self._predicates = None



        self.lexer_tokens = []
        self.parser_tokens = []



    class ParseContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def stat(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(GrammarParser.StatContext)
            else:
                return self.getTypedRuleContext(GrammarParser.StatContext,i)


        def getRuleIndex(self):
            return GrammarParser.RULE_parse

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterParse" ):
                listener.enterParse(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitParse" ):
                listener.exitParse(self)




    def parse(self):

        localctx = GrammarParser.ParseContext(self, self._ctx, self.state)
        self.enterRule(localctx, 0, self.RULE_parse)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 7 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 6
                self.stat()
                self.state = 9 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not (_la==GrammarParser.ID):
                    break

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class StatContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def token(self):
            return self.getTypedRuleContext(GrammarParser.TokenContext,0)


        def getRuleIndex(self):
            return GrammarParser.RULE_stat

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterStat" ):
                listener.enterStat(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitStat" ):
                listener.exitStat(self)




    def stat(self):

        localctx = GrammarParser.StatContext(self, self._ctx, self.state)
        self.enterRule(localctx, 2, self.RULE_stat)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 11
            self.token()
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class TokenContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser
            self._ID = None # Token
            self._REGEX = None # Token

        def ID(self):
            return self.getToken(GrammarParser.ID, 0)

        def REGEX(self):
            return self.getToken(GrammarParser.REGEX, 0)

        def NL(self):
            return self.getToken(GrammarParser.NL, 0)

        def getRuleIndex(self):
            return GrammarParser.RULE_token

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterToken" ):
                listener.enterToken(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitToken" ):
                listener.exitToken(self)




    def token(self):

        localctx = GrammarParser.TokenContext(self, self._ctx, self.state)
        self.enterRule(localctx, 4, self.RULE_token)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 13
            localctx._ID = self.match(GrammarParser.ID)
            self.state = 14
            localctx._REGEX = self.match(GrammarParser.REGEX)
            self.state = 15
            self.match(GrammarParser.NL)

            self.lexer_tokens.append(((None if localctx._ID is None else localctx._ID.text), (None if localctx._REGEX is None else localctx._REGEX.text)))

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx





