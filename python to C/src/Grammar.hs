module Grammar where

import Data.List (intercalate)
import Data.Map
import Control.Monad.State.Lazy

data Statement
  = Block [Statement]
  | Variable String
  | Assignment Statement Statement
  | Equality Statement Statement
  | IfElse Statement [Statement] (Maybe [Statement])
  | PyInt String
  | PyString String deriving Show

--data PyType = IntT | StringT | BoolT | PyNone

--data Context = Context (Map Statement PyType) (Map String String)

--toString :: Context -> Statement -> String
--toString context (Assignment l r) = toString context l ++ " = " ++ toString context r ++ ";"
--toString context (Variable name) = name
--toString context (PyString value) = value
--toString context (PyInt value) = value
--
--addCasts :: Map Statement Statement -> [Statement] -> (Map Statement Statement, [Statement])
--addCasts context statements = concatMap $ addCast context statements
--  where
--    addCast :: Map Statement Statement -> Statement -> (Map Statement Statement, [Statement])
--    addCast context this@(Assignment l@(Variable name) r) = (insert l (Variable $ name ++ name) context,  )
--    addCast c s = (c, [s])