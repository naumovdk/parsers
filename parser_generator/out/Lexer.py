import re

rules = {'skip': '[ ]+', 'var': '[a-z]+', 'int': '[0-9]+', 'minus': '-'}
rules = {name: re.compile(rules[name]) for name in rules}


def matches_any(substring):
    for rule in rules.values():
        if rule.fullmatch(substring):
            return True
    return False


def match_first(substring):
    for name in rules:
        if rules[name].fullmatch(substring):
            return name


def tokenize(input):
    l = 0
    r = 0
    res = []
    while input[l:] != '':
        cur = input[l:r]
        nxt = input[l:r + 1]
        if matches_any(cur) and not matches_any(nxt) or r >= len(input):
            res.append((cur, match_first(cur)))
            l = r
        else:
            r += 1
    res = list(filter(lambda rule: rule[1] != 'skip', res))
    return res
