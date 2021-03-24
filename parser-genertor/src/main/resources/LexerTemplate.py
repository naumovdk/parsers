import re
from collections import namedtuple
from enum import Enum

rules = {}
rules = {name: re.compile(rules[name]) for name in rules}

Token = namedtuple('Token', 'type value')

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
            t = Token(value=cur, type=match_first(cur))
            res.append(t)
            l = r
        else:
            r += 1
    res = list(filter(lambda token: token.type != 'skip', res))
    return res
