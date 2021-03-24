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
    
    def main(self):
        res = {"name": "main", "children": []}
        
        if self.token.type in ["openParen", "var"]:
            res['children'].append(self.OR())
            res["v"] = res["children"][0]["v"]
            
            return res
        raise Exception(str(self.token))
    
    
    
    def OR(self):
        res = {"name": "OR", "children": []}
        
        if self.token.type in ["openParen", "var"]:
            res['children'].append(self.AND())
            
            
            res['children'].append(self.ORR(res["children"][0]["v"]))
            res["v"] = res["children"][1]["v"]
            
            return res
        raise Exception(str(self.token))
    
    
    
    def ORR(self, fst):
        res = {"name": "ORR", "children": []}
        res["v"] = fst
        if self.token.type in ["or"]:
            assert self.token.type == 'or'
            
            self.nextToken()
            res['children'].append(self.AND())
            
            
            res['children'].append(self.ORR(['or',fst,res["children"][0]["v"]]))
            res["v"] = res["children"][1]["v"]
            
            return res
        if self.token.type in ["eps", "or", "end", "and", "closeParen"]:
            
            return res
        raise Exception(str(self.token))
    
    
    
    def AND(self):
        res = {"name": "AND", "children": []}
        
        if self.token.type in ["openParen", "var"]:
            res['children'].append(self.IN())
            
            
            res['children'].append(self.ANDD(res["children"][0]["v"]))
            res["v"] = res["children"][1]["v"]
            
            return res
        raise Exception(str(self.token))
    
    
    
    def ANDD(self, fst):
        res = {"name": "ANDD", "children": []}
        res["v"] = fst
        if self.token.type in ["and"]:
            assert self.token.type == 'and'
            
            self.nextToken()
            res['children'].append(self.IN())
            
            
            res['children'].append(self.ANDD('and',fst,res["children"][0]["v"]))
            res["v"] = res["children"][1]["v"]
            
            return res
        if self.token.type in ["eps", "or", "end", "and", "closeParen"]:
            
            return res
        raise Exception(str(self.token))
    
    
    
    def IN(self):
        res = {"name": "IN", "children": []}
        
        if self.token.type in ["openParen", "var"]:
            res['children'].append(self.VAR())
            
            
            res['children'].append(self.INN(res["children"][0]["v"]))
            res["v"] = res["children"][1]["v"]
            
            return res
        raise Exception(str(self.token))
    
    
    
    def INN(self, fst):
        res = {"name": "INN", "children": []}
        res["v"] = fst
        if self.token.type in ["in"]:
            assert self.token.type == 'in'
            
            self.nextToken()
            res['children'].append(self.VAR())
            res["v"] = ["in", fst, res["children"][0]["v"]]
            
            return res
        if self.token.type in ["eps", "or", "end", "and", "closeParen"]:
            
            return res
        raise Exception(str(self.token))
    
    
    
    def VAR(self):
        res = {"name": "VAR", "children": []}
        
        if self.token.type in ["openParen"]:
            assert self.token.type == 'openParen'
            
            self.nextToken()
            res['children'].append(self.OR())
            
            
            assert self.token.type == 'closeParen'
            res["v"] = res["children"][1]["v"]
            self.nextToken()
            return res
        if self.token.type in ["var"]:
            assert self.token.type == 'var'
            res["v"] = self.token.value
            self.nextToken()
            return res
        raise Exception(str(self.token))
    