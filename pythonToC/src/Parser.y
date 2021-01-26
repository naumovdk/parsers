{
module Parser where

import Grammar
import Lexer
}

%name      parseExpr
%tokentype { Token }
%error     { parseError }
%monad     { Either String }{ >>= }{ return }

%token VAR      { VarT $$ }
--%token INT      { IntT }
--%token INPUT    { InputT }
%token ASSIGN   { AssignT }
--%token OPENING  { OpeningT }
--%token CLOSING  { ClosingT }
--%token PLUS     { PlusT }
%token RAW      { RawStrT $$ }
%token NUM      { NumberT $$ }
%token NL       { NewLineT }

%left PLUS

%%
File
	: Expr NL { [$1] }
	| Expr { [$1] }
	| Expr NL File { $1 : $3 }

Expr
	: Assignment { $1 }
--	| IfElse
--	| Call
	| Rvalue { $1 }

Assignment
	: Var ASSIGN Rvalue { Assignment $1 $3 }

Rvalue
	: Var { $1 }
	| String { $1 }
	| Number { $1 }
	| Call

String
	: RAW { PyString $1 }

Number
	: NUM { PyInt $1 }

Var
	: VAR { Variable $1 }

Call
	:
{
parseError x = Left "Parse error"
}