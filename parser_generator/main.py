# java -jar antlr-4.9.1-complete.jar -Dlanguage=Python3 -o Input.g4
# parser_generator\input_parser

from LexerGenerator import generateLexer
from out.Lexer import tokenize
from antlr4 import InputStream, CommonTokenStream
from input_parser.InputLexer import InputLexer
from input_parser.InputParser import InputParser


text = open('./../input.txt').read()
input_stream = InputStream(text)
lexer = InputLexer(input_stream)
token_stream = CommonTokenStream(lexer)
parser = InputParser(token_stream)
parser.parse()

lexer_rules = parser.lexer_tokens
parser_rules = parser.parser_tokens

lexer_rules = {name: value[1:-1] for name, value in lexer_rules}

generateLexer(lexer_rules)
test = 'x + 8 - 90'
print(tokenize(test))
