{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}

module Lexer where

import Control.Applicative

data Token
  = Var Char
  | And
  | Or
  | Xor
  | Not
  | NotIn
  | In
  | Lparen
  | Rparen
  deriving (Show, Eq)

token :: String -> Maybe Token
token =
  \case
    "or" -> Just Or
    "and" -> Just And
    "xor" -> Just Xor
    "not" -> Just Not
    "in" -> Just In
    "(" -> Just Lparen
    ")" -> Just Rparen
    [c] -> Just $ Var c
    _ -> Nothing

tokenize :: String -> Maybe [Token]
tokenize input = traverse token (words input)
