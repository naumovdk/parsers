# Generated from Input.g4 by ANTLR 4.9.1
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .InputParser import InputParser
else:
    from InputParser import InputParser

# This class defines a complete listener for a parse tree produced by InputParser.
class InputListener(ParseTreeListener):

    # Enter a parse tree produced by InputParser#parse.
    def enterParse(self, ctx:InputParser.ParseContext):
        pass

    # Exit a parse tree produced by InputParser#parse.
    def exitParse(self, ctx:InputParser.ParseContext):
        pass


    # Enter a parse tree produced by InputParser#stat.
    def enterStat(self, ctx:InputParser.StatContext):
        pass

    # Exit a parse tree produced by InputParser#stat.
    def exitStat(self, ctx:InputParser.StatContext):
        pass


    # Enter a parse tree produced by InputParser#token.
    def enterToken(self, ctx:InputParser.TokenContext):
        pass

    # Exit a parse tree produced by InputParser#token.
    def exitToken(self, ctx:InputParser.TokenContext):
        pass


    # Enter a parse tree produced by InputParser#rule_.
    def enterRule_(self, ctx:InputParser.Rule_Context):
        pass

    # Exit a parse tree produced by InputParser#rule_.
    def exitRule_(self, ctx:InputParser.Rule_Context):
        pass



del InputParser