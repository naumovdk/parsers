{-# LANGUAGE LambdaCase #-}

module ExpressionParser where

import Control.Applicative ((<|>))
import qualified Lexer as L
import Parser

data Expr = Var Char | Or Expr Expr | And Expr Expr | Xor Expr Expr | In Expr Expr | Not Expr deriving (Show, Eq)

parse :: String -> Maybe Expr
parse input = runParse =<< L.tokenize input

varP :: Parser L.Token Expr
varP =
  Parser $ \case
    (L.Var name : rest) -> Just (Var name, rest)
    _ -> Nothing

inP :: Parser L.Token Expr
inP = In <$> varP <*> (element L.In *> varP) <|> varP

notP :: Parser L.Token Expr
notP = Not <$> (element L.Not *> inP <|> In <$> varP <*> (element L.Not *> (element L.In *> varP))) <|> inP

andP :: Parser L.Token Expr
andP = And <$> notP <*> (element L.And *> notP) <|> notP

xorP :: Parser L.Token Expr
xorP = Xor <$> andP <*> (element L.Xor *> andP) <|> andP

orP :: Parser L.Token Expr
orP = Or <$> xorP <*> (element L.Or *> xorP) <|> xorP

runParse :: [L.Token] -> Maybe Expr
runParse tokens = fst <$> runParser (orP <* eof) tokens
