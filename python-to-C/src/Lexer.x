{
module Lexer where
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]
$quote = [\'\"]
$tab = [\t]

tokens :-

  \n                          { \_ -> NewLineT }
  \t                          { \_ -> TabT }
  "    "                      { \_ -> TabT }
  $white                      ;
  "("                         { \_ -> OpeningT }
  ")"                         { \_ -> ClosingT }
  "=="                        { \_ -> EqT }
  "="                         { \_ -> AssignT }
  "+"                         { \_ -> PlusT }
  "int"                       { \_ -> IntT }
  "input"                     { \_ -> InputT }
  $quote [$alpha $digit]* $quote      { \s -> RawStrT s }
  $digit+                     { \s -> NumberT s }
  "if"                        { \_ -> IfT }
  "else"                      { \_ -> ElseT }
  ":"                         { \_ -> ColonT }
  "elif"                      { \_ -> ElifT }
  $alpha [$alpha $digit]*     { \s -> VarT s }
{

data Token = OpeningT
           | ClosingT
           | AssignT
           | PlusT
           | QuoteT
           | VarT String
           | RawStrT String
           | IntT
           | InputT
           | NumberT String
           | NewLineT
           | IfT
           | ElseT
           | ColonT
           | TabT
           | EqT
           | ElifT
           deriving (Show, Eq)
}