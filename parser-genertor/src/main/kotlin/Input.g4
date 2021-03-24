grammar Input;

@header{
package antlr;
import graph.GToken;
import graph.GRule;
import java.util.*;
}

@members {
public List<GToken> tokens = new ArrayList<GToken>();
public Map<GRule, List<List<GRule>>> rules = new LinkedHashMap<>();
}

parse : (tokens) (rules);

tokens: TOKENS NL (token)+;

token : TAB NAME COLUMN REGEX NL {
    tokens.add(new GToken($NAME.text, $REGEX.text));
};

rules : RULES NL (declaration)+;

declaration : TAB NAME ARG? CODE? NL {
    var code = $CODE.text;
    if (code != null) {
        code = $CODE.text.substring(2, $CODE.text.length() - 2);
    }
    var cur = new GRule($NAME.text, $ARG.text, code);
    rules.computeIfAbsent(cur, key -> new ArrayList<>());
} (branch [cur])*
;

branch[GRule par] : TAB TAB {
    rules.get(par).add(new ArrayList<>());
} (application[par])+ NL
;

application[GRule par] : NAME ARG? CODE? {
    var cur = rules.get(par);
    var code = $CODE.text;
    if (code != null) {
        code = $CODE.text.substring(2, $CODE.text.length() - 2);
    }// гет или создать
    cur.get(cur.size() - 1).add(new GRule($NAME.text,$ARG.text,code));
};

RULES : 'rules';
TOKENS : 'tokens';
COLUMN : ':';
NAME
 : [a-zA-Z]+
 ;
REGEX : '"'~[\r\n"]*'"';
ARG : OPEN_PAREN ~[\r\n~]* CLOSE_PAREN; // два пробела по краям
CODE : OPEN_CURLY ~[\r\n>]* CLOSE_CURLY;
NL : '\n';
TAB
 : '\t'
 | '    '
 ;
SPACE
 : [ \r] -> skip
 ;

OPEN_ANGLE : '<';
CLOSE_ANGLE : '>';
OPEN_PAREN : '(';
CLOSE_PAREN : ')';
OPEN_CURLY : '{';
CLOSE_CURLY : '}';