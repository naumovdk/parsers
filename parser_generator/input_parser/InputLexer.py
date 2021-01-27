# Generated from Input.g4 by ANTLR 4.9.1
from antlr4 import *
from io import StringIO
from typing.io import TextIO
import sys



def serializedATN():
    with StringIO() as buf:
        buf.write("\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\t")
        buf.write("\63\b\1\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t")
        buf.write("\7\4\b\t\b\3\2\3\2\3\3\3\3\3\3\3\3\3\3\5\3\31\n\3\3\4")
        buf.write("\3\4\3\5\3\5\3\5\3\6\6\6!\n\6\r\6\16\6\"\3\6\3\6\3\7\6")
        buf.write("\7(\n\7\r\7\16\7)\3\b\3\b\6\b.\n\b\r\b\16\b/\3\b\3\b\2")
        buf.write("\2\t\3\3\5\4\7\5\t\6\13\7\r\b\17\t\3\2\5\4\2\13\13\"\"")
        buf.write("\5\2))C\\c|\3\2\f\f\2\66\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3")
        buf.write("\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2\2\2\2\17\3\2\2")
        buf.write("\2\3\21\3\2\2\2\5\30\3\2\2\2\7\32\3\2\2\2\t\34\3\2\2\2")
        buf.write("\13 \3\2\2\2\r\'\3\2\2\2\17+\3\2\2\2\21\22\7?\2\2\22\4")
        buf.write("\3\2\2\2\23\31\7\13\2\2\24\25\7\"\2\2\25\26\7\"\2\2\26")
        buf.write("\27\7\"\2\2\27\31\7\"\2\2\30\23\3\2\2\2\30\24\3\2\2\2")
        buf.write("\31\6\3\2\2\2\32\33\7\f\2\2\33\b\3\2\2\2\34\35\5\7\4\2")
        buf.write("\35\36\5\7\4\2\36\n\3\2\2\2\37!\t\2\2\2 \37\3\2\2\2!\"")
        buf.write("\3\2\2\2\" \3\2\2\2\"#\3\2\2\2#$\3\2\2\2$%\b\6\2\2%\f")
        buf.write("\3\2\2\2&(\t\3\2\2\'&\3\2\2\2()\3\2\2\2)\'\3\2\2\2)*\3")
        buf.write("\2\2\2*\16\3\2\2\2+-\7$\2\2,.\n\4\2\2-,\3\2\2\2./\3\2")
        buf.write("\2\2/-\3\2\2\2/\60\3\2\2\2\60\61\3\2\2\2\61\62\7$\2\2")
        buf.write("\62\20\3\2\2\2\7\2\30\")/\3\b\2\2")
        return buf.getvalue()


class InputLexer(Lexer):

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]

    T__0 = 1
    TAB = 2
    NL = 3
    EMPTY = 4
    WS = 5
    ID = 6
    REGEX = 7

    channelNames = [ u"DEFAULT_TOKEN_CHANNEL", u"HIDDEN" ]

    modeNames = [ "DEFAULT_MODE" ]

    literalNames = [ "<INVALID>",
            "'='", "'\n'" ]

    symbolicNames = [ "<INVALID>",
            "TAB", "NL", "EMPTY", "WS", "ID", "REGEX" ]

    ruleNames = [ "T__0", "TAB", "NL", "EMPTY", "WS", "ID", "REGEX" ]

    grammarFileName = "Input.g4"

    def __init__(self, input=None, output:TextIO = sys.stdout):
        super().__init__(input, output)
        self.checkVersion("4.9.1")
        self._interp = LexerATNSimulator(self, self.atn, self.decisionsToDFA, PredictionContextCache())
        self._actions = None
        self._predicates = None


