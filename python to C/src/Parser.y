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
--%token RAW      { RawStrT $$ }
--%token NUM      { NumberT $$ }
%token NL       { NewLineT }
%token IF       { IfT }
%token ELSE     { ElseT }
%token COLON    { ColonT }
%token TAB      { TabT }
%token EQ       { EqT }

%left PLUS

%%
File
	: Expr NL { [$1] }
	| Expr { [$1] }
	| Expr NL File { $1 : $3 }

Expr
	: Assignment { $1 }
	| IfElse { $1 }
--	| Call
	| Rvalue { $1 }

Assignment
	: Var ASSIGN Rvalue { Assignment $1 $3 }

Rvalue
	: Var { $1 }
	| Eq { $1 }
--	| String { $1 }
--	| Number { $1 }
--	| Call

Var
	: VAR { Variable $1 }

--String
--	: RAW { PyString $1 }

--Number
--	: NUM { PyInt $1 }
	

--Call
--	:

IfElse
	: IF Rvalue COLON NL Block { IfElse $2 $5 Nothing }
	| IF Rvalue COLON NL Block ELSE COLON NL Block { IfElse $2 $5 (Just $9) }

Block
	: TAB Expr NL { [$2] }
--	| TAB Expr { [$2] }
	| TAB Expr NL Block { $2 : $4 }

Eq
	: Rvalue Eq { Eq $1 $2 }
	| Rvalue

{
parseError x = Left "Parse error"
}