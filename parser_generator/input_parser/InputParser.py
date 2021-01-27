# Generated from Input.g4 by ANTLR 4.9.1
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
        buf.write("\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\t")
        buf.write("#\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\3\2\6\2\f\n\2\r\2\16")
        buf.write("\2\r\3\3\3\3\5\3\22\n\3\3\4\3\4\3\4\3\4\3\4\3\5\3\5\3")
        buf.write("\5\7\5\34\n\5\f\5\16\5\37\13\5\3\5\3\5\3\5\2\2\6\2\4\6")
        buf.write("\b\2\2\2!\2\13\3\2\2\2\4\21\3\2\2\2\6\23\3\2\2\2\b\30")
        buf.write("\3\2\2\2\n\f\5\4\3\2\13\n\3\2\2\2\f\r\3\2\2\2\r\13\3\2")
        buf.write("\2\2\r\16\3\2\2\2\16\3\3\2\2\2\17\22\5\6\4\2\20\22\5\b")
        buf.write("\5\2\21\17\3\2\2\2\21\20\3\2\2\2\22\5\3\2\2\2\23\24\7")
        buf.write("\b\2\2\24\25\7\t\2\2\25\26\7\5\2\2\26\27\b\4\1\2\27\7")
        buf.write("\3\2\2\2\30\31\7\b\2\2\31\35\7\3\2\2\32\34\7\b\2\2\33")
        buf.write("\32\3\2\2\2\34\37\3\2\2\2\35\33\3\2\2\2\35\36\3\2\2\2")
        buf.write("\36 \3\2\2\2\37\35\3\2\2\2 !\b\5\1\2!\t\3\2\2\2\5\r\21")
        buf.write("\35")
        return buf.getvalue()


class InputParser ( Parser ):

    grammarFileName = "Input.g4"

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]

    sharedContextCache = PredictionContextCache()

    literalNames = [ "<INVALID>", "'='", "<INVALID>", "'\n'" ]

    symbolicNames = [ "<INVALID>", "<INVALID>", "TAB", "NL", "EMPTY", "WS", 
                      "ID", "REGEX" ]

    RULE_parse = 0
    RULE_stat = 1
    RULE_token = 2
    RULE_rule_ = 3

    ruleNames =  [ "parse", "stat", "token", "rule_" ]

    EOF = Token.EOF
    T__0=1
    TAB=2
    NL=3
    EMPTY=4
    WS=5
    ID=6
    REGEX=7

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
                return self.getTypedRuleContexts(InputParser.StatContext)
            else:
                return self.getTypedRuleContext(InputParser.StatContext,i)


        def getRuleIndex(self):
            return InputParser.RULE_parse

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterParse" ):
                listener.enterParse(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitParse" ):
                listener.exitParse(self)




    def parse(self):

        localctx = InputParser.ParseContext(self, self._ctx, self.state)
        self.enterRule(localctx, 0, self.RULE_parse)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 9 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 8
                self.stat()
                self.state = 11 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not (_la==InputParser.ID):
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
            return self.getTypedRuleContext(InputParser.TokenContext,0)


        def rule_(self):
            return self.getTypedRuleContext(InputParser.Rule_Context,0)


        def getRuleIndex(self):
            return InputParser.RULE_stat

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterStat" ):
                listener.enterStat(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitStat" ):
                listener.exitStat(self)




    def stat(self):

        localctx = InputParser.StatContext(self, self._ctx, self.state)
        self.enterRule(localctx, 2, self.RULE_stat)
        try:
            self.state = 15
            self._errHandler.sync(self)
            la_ = self._interp.adaptivePredict(self._input,1,self._ctx)
            if la_ == 1:
                self.enterOuterAlt(localctx, 1)
                self.state = 13
                self.token()
                pass

            elif la_ == 2:
                self.enterOuterAlt(localctx, 2)
                self.state = 14
                self.rule_()
                pass


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
            return self.getToken(InputParser.ID, 0)

        def REGEX(self):
            return self.getToken(InputParser.REGEX, 0)

        def NL(self):
            return self.getToken(InputParser.NL, 0)

        def getRuleIndex(self):
            return InputParser.RULE_token

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterToken" ):
                listener.enterToken(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitToken" ):
                listener.exitToken(self)




    def token(self):

        localctx = InputParser.TokenContext(self, self._ctx, self.state)
        self.enterRule(localctx, 4, self.RULE_token)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 17
            localctx._ID = self.match(InputParser.ID)
            self.state = 18
            localctx._REGEX = self.match(InputParser.REGEX)
            self.state = 19
            self.match(InputParser.NL)

            self.lexer_tokens.append(((None if localctx._ID is None else localctx._ID.text), (None if localctx._REGEX is None else localctx._REGEX.text)))

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class Rule_Context(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser
            self._ID = None # Token

        def ID(self, i:int=None):
            if i is None:
                return self.getTokens(InputParser.ID)
            else:
                return self.getToken(InputParser.ID, i)

        def getRuleIndex(self):
            return InputParser.RULE_rule_

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterRule_" ):
                listener.enterRule_(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitRule_" ):
                listener.exitRule_(self)




    def rule_(self):

        localctx = InputParser.Rule_Context(self, self._ctx, self.state)
        self.enterRule(localctx, 6, self.RULE_rule_)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 22
            localctx._ID = self.match(InputParser.ID)
            self.state = 23
            self.match(InputParser.T__0)
            self.state = 27
            self._errHandler.sync(self)
            _alt = self._interp.adaptivePredict(self._input,2,self._ctx)
            while _alt!=2 and _alt!=ATN.INVALID_ALT_NUMBER:
                if _alt==1:
                    self.state = 24
                    localctx._ID = self.match(InputParser.ID) 
                self.state = 29
                self._errHandler.sync(self)
                _alt = self._interp.adaptivePredict(self._input,2,self._ctx)


            id = localctx._ID
            self.parser_tokens.append(id)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx





