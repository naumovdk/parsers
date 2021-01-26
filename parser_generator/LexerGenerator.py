def generateLexer(rules):
    template = open('./../LexerTemplate.py').read()
    template = template.replace('rules = {}', 'rules = ' + str(rules))

    with open('./../out/Lexer.py', 'w') as lexer:
        lexer.write(template)
