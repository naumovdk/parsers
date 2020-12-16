{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}

module Lexer where

import           Control.Applicative

data Token
  = VarT Char
  | AndT
  | OrT
  | XorT
  | NotT
  | InT
  | OpeningT
  | ClosingT
  deriving (Show, Eq)

token :: String -> Maybe Token
token =
  \case
    "or" -> Just OrT
    "and" -> Just AndT
    "xor" -> Just XorT
    "not" -> Just NotT
    "in" -> Just InT
    "(" -> Just ClosingT
    ")" -> Just OpeningT
    [c] -> Just $ VarT c
    _ -> Nothing

split :: String -> [String]
split s = foldl1 (++) (map cutOpening (cutClosing s))
  where
    cutOpening s =
      case head s of
        '(' -> [[head s], tail s]
        _ -> [s]
    cutClosing s =
      case last s of
        ')' -> [init s, [last s]]
        _ -> [s]

tokenize :: String -> Maybe [Token]
tokenize input = traverse token (foldl1 (++) (map split (words input)))
