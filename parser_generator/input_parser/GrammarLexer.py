# Generated from Grammar.g4 by ANTLR 4.9.1
from antlr4 import *
from io import StringIO
from typing.io import TextIO
import sys



def serializedATN():
    with StringIO() as buf:
        buf.write("\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\b")
        buf.write("/\b\1\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7")
        buf.write("\3\2\3\2\3\2\3\2\3\2\5\2\25\n\2\3\3\3\3\3\4\3\4\3\4\3")
        buf.write("\5\6\5\35\n\5\r\5\16\5\36\3\5\3\5\3\6\6\6$\n\6\r\6\16")
        buf.write("\6%\3\7\3\7\6\7*\n\7\r\7\16\7+\3\7\3\7\2\2\b\3\3\5\4\7")
        buf.write("\5\t\6\13\7\r\b\3\2\5\4\2\13\13\"\"\4\2C\\c|\3\2\f\f\2")
        buf.write("\62\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2")
        buf.write("\13\3\2\2\2\2\r\3\2\2\2\3\24\3\2\2\2\5\26\3\2\2\2\7\30")
        buf.write("\3\2\2\2\t\34\3\2\2\2\13#\3\2\2\2\r\'\3\2\2\2\17\25\7")
        buf.write("\13\2\2\20\21\7\"\2\2\21\22\7\"\2\2\22\23\7\"\2\2\23\25")
        buf.write("\7\"\2\2\24\17\3\2\2\2\24\20\3\2\2\2\25\4\3\2\2\2\26\27")
        buf.write("\7\f\2\2\27\6\3\2\2\2\30\31\5\5\3\2\31\32\5\5\3\2\32\b")
        buf.write("\3\2\2\2\33\35\t\2\2\2\34\33\3\2\2\2\35\36\3\2\2\2\36")
        buf.write("\34\3\2\2\2\36\37\3\2\2\2\37 \3\2\2\2 !\b\5\2\2!\n\3\2")
        buf.write("\2\2\"$\t\3\2\2#\"\3\2\2\2$%\3\2\2\2%#\3\2\2\2%&\3\2\2")
        buf.write("\2&\f\3\2\2\2\')\7$\2\2(*\n\4\2\2)(\3\2\2\2*+\3\2\2\2")
        buf.write("+)\3\2\2\2+,\3\2\2\2,-\3\2\2\2-.\7$\2\2.\16\3\2\2\2\7")
        buf.write("\2\24\36%+\3\b\2\2")
        return buf.getvalue()


class GrammarLexer(Lexer):

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]

    TAB = 1
    NL = 2
    EMPTY = 3
    WS = 4
    ID = 5
    REGEX = 6

    channelNames = [ u"DEFAULT_TOKEN_CHANNEL", u"HIDDEN" ]

    modeNames = [ "DEFAULT_MODE" ]

    literalNames = [ "<INVALID>",
            "'\n'" ]

    symbolicNames = [ "<INVALID>",
            "TAB", "NL", "EMPTY", "WS", "ID", "REGEX" ]

    ruleNames = [ "TAB", "NL", "EMPTY", "WS", "ID", "REGEX" ]

    grammarFileName = "Grammar.g4"

    def __init__(self, input=None, output:TextIO = sys.stdout):
        super().__init__(input, output)
        self.checkVersion("4.9.1")
        self._interp = LexerATNSimulator(self, self.atn, self.decisionsToDFA, PredictionContextCache())
        self._actions = None
        self._predicates = None


