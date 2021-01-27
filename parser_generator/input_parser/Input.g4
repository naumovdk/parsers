grammar Input;

@parser::members {
    self.lexer_tokens = []
    self.parser_tokens = []
}

parse: stat+ ;
stat 
    : token
    | rule_
    ;

TAB
    : '\t'
    | '    '
    ;
NL: '\n';
EMPTY: NL NL;
WS: [ \t]+ -> skip;
ID: [a-zA-Z']+;
REGEX: '"' ~[\n]+ '"';

token: ID REGEX NL {
self.lexer_tokens.append(($ID.text, $REGEX.text))
};

rule_: ID '=' ID* {
id = $ID
self.parser_tokens.append(id)
};