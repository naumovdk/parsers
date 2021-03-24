from Lexer import tokenize, Token

class Parser:
    def __init__(self):
        self.i = None
        self.tokens = None
        self.token = None

    def parse(self, inp):
        self.tokens = tokenize(inp)
        self.i = 0
        self.token = self.tokens[self.i]
        return self.main()


    def nextToken(self):
        self.i += 1
        if (self.i < len(self.tokens)):
            self.token = self.tokens[self.i]
        else:
            self.token = Token(type='end', value='')
        return self.token
