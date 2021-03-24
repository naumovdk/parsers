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
%token INT      { IntT }
%token INPUT    { InputT }
%token ASSIGN   { AssignT }
%token OPENING  { OpeningT }
%token CLOSING  { ClosingT }
%token RAW      { RawStrT $$ }
%token NUM      { NumberT $$ }
%token NL       { NewLineT }
%token IF       { IfT }
%token ELSE     { ElseT }
%token COLON    { ColonT }
%token TAB      { TabT }
%token EQ       { EqT }
%token ELIF     { ElifT }

%left PLUS

%%
File
	: Expr { [$1] }
	--| Expr NL { [$1] }
	--| NL { [] }
	| Expr NL File { $1 : $3 }

Expr
	: Assignment { $1 }
	| IfElse { $1 }
	| Rvalue { $1 }
	--| Elifs { $1 }

Assignment
	: Var ASSIGN Rvalue { Assignment $1 $3 }

Rvalue
	: Var { $1 }
	| String { $1 }
	| Number { $1 }
	| Call { $1 }

Var
	: VAR { Variable $1 }

String
	: RAW { PyString $1 }

Number
	: NUM { PyInt $1 }

Call
	: Input { $1 }
	| Int { $1 }

Input
	: INPUT OPENING Rvalue CLOSING { Input $3 }
	| INPUT OPENING CLOSING { Input $ PyString "" }

Int
	: INT OPENING Rvalue CLOSING { IntFunc $3 }

IfElse
	: IF Bool COLON NL Block { IfElse $2 $5 [] Nothing }
	| IF Bool COLON NL Block ELSE COLON NL Block { IfElse $2 $5 [] (Just $9) }
	| IF Bool COLON NL Block Elifs { IfElse $2 $5 $6 Nothing }
	| IF Bool COLON NL Block Elifs ELSE COLON NL Block { IfElse $2 $5 $6 (Just $10) }

Elifs
	: Elif { [$1] }
	| Elif Elifs { $1 : $2 }

Elif
	: ELIF Bool COLON NL Block { Elif $2 $5 }

Block
	: TAB Expr NL { [$2] }
	| TAB Expr NL Block { $2 : $4 }

Bool:
	Eq { $1 }

Eq
	: Rvalue EQ Rvalue { EqCheck $1 $3 }

{
parseError x = Left "Parse error"
}