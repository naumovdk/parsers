# java -jar .\input\antlr-4.9.1-complete.jar -Dlanguage=Python3 -o Input.g4
# parser_generator\input_parser

from out.Lexer import tokenize
from antlr4 import InputStream, CommonTokenStream
from input_parser.GrammarLexer import GrammarLexer
from input_parser.GrammarParser import GrammarParser


text = open('./../input.txt').read()
input_stream = InputStream(text)
lexer = GrammarLexer(input_stream)
token_stream = CommonTokenStream(lexer)
parser = GrammarParser(token_stream)
parser.parse()

lexer_rules = parser.lexer_tokens
parser_rules = parser.parser_tokens

lexer_rules = {name: value[1:-1] for name, value in lexer_rules}

from LexerGenerator import generateLexer

generateLexer(lexer_rules)
test = 'x - 8 - 90'
print(tokenize(test))
