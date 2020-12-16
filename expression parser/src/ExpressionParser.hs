{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE BlockArguments #-}

module ExpressionParser where

import           Control.Applicative ((<|>), many, liftA2)
import           Lexer
import           Parser
import           Text.Printf

data Expr
  = Var Char
  | Or Expr Expr
  | And Expr Expr
  | Xor Expr Expr
  | In Expr Expr
  | Not Expr

parse :: String -> Maybe Expr
parse input = runParse =<< tokenize input

varP :: Parser Token Expr
varP =
  Parser $ \case
    (VarT name:rest) -> Just (Var name, rest)
    _ -> Nothing

argP :: Parser Token Expr
argP = varP <|> (consume OpeningT *> orP <* consume ClosingT)

inP :: Parser Token Expr
inP = do
  arg <- argP
  args <- in'P [] arg
  return $ foldl1 And (reverse args)

in'P :: [Expr] -> Expr -> Parser Token [Expr]
in'P acc a = do
  consume InT
  b <- argP
  in'P (In a b : acc) b
  <|> do
  consume NotT
  consume InT
  b <- argP
  in'P (Not (In a b) : acc) b
  <|> do 
  return $ case acc of 
    [] -> [a] 
    _ -> acc

f x = Just $ case x of
  [] -> [1]
  _ -> x 

notP :: Parser Token Expr
notP = Not <$> (consume NotT *> inP) <|> inP

andP :: Parser Token Expr
andP = foldl1 And <$> liftA2 (:) notP and'P <|> notP

and'P :: Parser Token [Expr]
and'P = many (consume AndT *> notP)

xorP :: Parser Token Expr
xorP = foldl1 Xor <$> liftA2 (:) andP xor'P <|> andP

xor'P :: Parser Token [Expr]
xor'P = many (consume XorT *> andP)

orP :: Parser Token Expr
orP = foldl1 Or <$> liftA2 (:) xorP or'P <|> xorP

or'P :: Parser Token [Expr]
or'P = many (consume OrT *> xorP)

runParse :: [Token] -> Maybe Expr
runParse tokens = fst <$> runParser (orP <* eof) tokens

instance Show Expr where
  show = showTree 0
    where
      showTree d (Var var) = addTabs d ++ show var
      showTree d (In l r) = showBinary d l r "in"
      showTree d (Not expr) = printf "%s\n%s" (addTabs d ++ "not") (showTree (d + 1) expr)
      showTree d (Or l r) = showBinary d l r "or"
      showTree d (Xor l r) = showBinary d l r "xor"
      showTree d (And l r) = showBinary d l r "and"
      showBinary d l r op = printf "%s\n%s\n%s" (addTabs d ++ show op) (showTree (d + 1) l) (showTree (d + 1) r)
      addTabs = flip replicate '\t'
