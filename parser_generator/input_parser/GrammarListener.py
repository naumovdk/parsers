# Generated from Grammar.g4 by ANTLR 4.9.1
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .GrammarParser import GrammarParser
else:
    from GrammarParser import GrammarParser

# This class defines a complete listener for a parse tree produced by GrammarParser.
class GrammarListener(ParseTreeListener):

    # Enter a parse tree produced by GrammarParser#parse.
    def enterParse(self, ctx:GrammarParser.ParseContext):
        pass

    # Exit a parse tree produced by GrammarParser#parse.
    def exitParse(self, ctx:GrammarParser.ParseContext):
        pass


    # Enter a parse tree produced by GrammarParser#stat.
    def enterStat(self, ctx:GrammarParser.StatContext):
        pass

    # Exit a parse tree produced by GrammarParser#stat.
    def exitStat(self, ctx:GrammarParser.StatContext):
        pass


    # Enter a parse tree produced by GrammarParser#token.
    def enterToken(self, ctx:GrammarParser.TokenContext):
        pass

    # Exit a parse tree produced by GrammarParser#token.
    def exitToken(self, ctx:GrammarParser.TokenContext):
        pass



del GrammarParser