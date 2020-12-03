{-# LANGUAGE LambdaCase #-}

module ExpressionParser where

import Control.Applicative ((<|>))
import Text.Printf
import qualified Lexer as L
import Parser

data Expr = Var Char | Or Expr Expr | And Expr Expr | Xor Expr Expr | In Expr Expr | Not Expr

parse :: String -> Maybe Expr
parse input = runParse =<< L.tokenize input

varP :: Parser L.Token Expr
varP =
  Parser $ \case
    (L.Var name : rest) -> Just (Var name, rest)
    _ -> Nothing
    
argP :: Parser L.Token Expr
argP = varP <|> (element L.Lparen *> orP <* element L.Rparen) 

inP :: Parser L.Token Expr
inP = In <$> varP <*> (element L.In *> varP) <|> argP

notP :: Parser L.Token Expr
notP = Not <$> (element L.Not *> notP <|> In <$> varP <*> (element L.Not *> (element L.In *> varP))) <|> inP

andP :: Parser L.Token Expr
andP = And <$> notP <*> (element L.And *> andP) <|> notP

xorP :: Parser L.Token Expr
xorP = Xor <$> andP <*> (element L.Xor *> xorP) <|> andP

orP :: Parser L.Token Expr
orP = Or <$> xorP <*> (element L.Or *> orP) <|> xorP

runParse :: [L.Token] -> Maybe Expr
runParse tokens = fst <$> runParser (orP <* eof) tokens

instance Show Expr where
  show = showTree 0
    where
      showTree d (Var var)  = addTabs d ++ show var
      showTree d (In l r)   = showBinary d l r "in"
      showTree d (Not expr) = printf "%s\n%s" (addTabs d ++ "not") (showTree (d + 1) expr)
      showTree d (Or l r)   = showBinary d l r "or"
      showTree d (Xor l r)  = showBinary d l r "xor"
      showTree d (And l r)  = showBinary d l r "and"

      showBinary d l r op = printf "%s\n%s\n%s" (addTabs d ++ show op) (showTree (d + 1) l) (showTree (d + 1) r)
      addTabs = flip replicate '\t'