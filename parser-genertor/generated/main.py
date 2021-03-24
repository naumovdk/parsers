from Lexer import tokenize
from Parser import Parser

parser = Parser()
# res = parser.parse('1 + 8 * (90 + (10))')
res = parser.parse('a in b or c in z')


def print_py_tree(tree, tab = 0):
    if not (type(tree) is list):
        print("    " * tab + tree[0])
    else:
        print("    " * tab +tree[0])
        print_py_tree(tree[1], tab+1)
        print_py_tree(tree[2], tab+1)

def print_tree(d, n):
    print("    " * n + d["name"])
    for sub in d["children"]:
        print_tree(sub, n + 1)

# print(res["acc"])
print_py_tree(res["v"])
# print_tree(res, 0)


























