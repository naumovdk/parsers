{-# LANGUAGE LambdaCase        #-}

module Parser where

import Control.Applicative (Alternative, empty, some, (<|>), many)
import qualified Lexer

newtype Var = MkVar Char deriving (Show, Eq)

data Op = Or Expr Expr | And Expr Expr | Xor Expr Expr deriving (Show, Eq)

data Expr = Var | Op | In Var Var | Not Expr deriving (Show, Eq)

-- parser instances

newtype Parser s a = Parser {runParser :: [s] -> Maybe (a, [s])}

instance Functor (Parser s) where
    fmap g (Parser f) = Parser (fmap (first g) . f)

instance Applicative (Parser s) where
    pure a = Parser $ \tokens -> Just (a, tokens)

    Parser pf <*> Parser pv = Parser $ \tokens -> case pf tokens of
        Nothing     -> Nothing
        Just (f, t) -> case pv t of
            Nothing            -> Nothing
            Just (value, rest) -> Just (f value, rest)

instance Monad (Parser s) where
    return = pure

    p >>= f = Parser $ \tokens -> do
        (res, rest) <- runParser p tokens
        runParser (f res) rest

instance Alternative (Parser s) where
    empty = Parser $ const Nothing

    f <|> g = Parser $ \tokens -> runParser f tokens <|> runParser g tokens

--

satisfy :: (s -> Bool) -> Parser s s
satisfy predicate = Parser $ \case
    x : xs -> if predicate x then return (x, xs) else Nothing
    []     -> Nothing

element :: Eq s => s -> Parser s s
element e = satisfy (== e)

--exprParser :: Parser Char Expr
--parse input = orParser $ tokenize input

varParser :: Parser Token Expr
varParser =
  Parser $ \case
    (Lexer.Var name:rest) -> Just (Var name, rest)
    _ -> Nothing

inParser :: Parser Token Expr
inParser = element Lexer.In *> varParser

