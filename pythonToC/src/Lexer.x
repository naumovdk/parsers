{
module Lexer where
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]
$quote = [\'\"]

tokens :-

  \n                        { \_ -> NewLineT }
  $white                     ;
  "("                         { \_ -> OpeningT }
  ")"                         { \_ -> ClosingT }
  "="                         { \_ -> AssignT }
  "+"                         { \_ -> PlusT }
  "int"                       { \_ -> IntT }
  "input"                     { \_ -> InputT }
  $quote [$alpha $digit]* $quote      { \s -> RawStrT s }
  $alpha [$alpha $digit]*     { \s -> VarT s }
  $digit+                     { \s -> NumberT s }

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
           deriving (Show, Eq)
}