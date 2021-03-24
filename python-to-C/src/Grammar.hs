module Grammar where

import Data.List (intercalate)
import Control.Monad.State.Lazy

data Statement
  = Block [Statement]
  | Variable String
  | Assignment Statement Statement
  | EqCheck Statement Statement
  | IfElse Statement [Statement] [Statement] (Maybe [Statement])
  | PyInt String
  | PyString String
  | Input Statement
  | IntFunc Statement
  | Elif Statement [Statement] -- deriving Show

instance Show Statement where
  show (Variable name) = name
  show (Assignment l r) = show (getType r) ++ show l ++ " = " ++ show r ++ ";"
  show (EqCheck l r) = show l ++ " == " ++ show r
  show (PyInt value) = value
  show (PyString value) = value
  show (Block statements) = "{\n" ++ tabbed statements ++ "}"
  show (Input msg) = "input(" ++ show msg ++ ")"
  show (IntFunc value) = "to_int(" ++ show value ++ ")"

  show (IfElse cond yes elifs Nothing) = "if (" ++ show cond ++ ") " ++ show (Block yes) ++ (concatMap show elifs)
  show (IfElse cond yes elifs (Just no)) = show (IfElse cond yes elifs Nothing) ++ " else " ++ show (Block no)

  show (Elif cond yes) = " else " ++ show (IfElse cond yes [] Nothing)


tabbed :: Show a => [a] -> String
tabbed = concatMap (\line -> "\t" ++ show line ++ "\n")

data PyType = IntegerT | StringT | BoolT | NoneT

instance Show PyType where
  show IntegerT = "int "
  show StringT = "string "
  show BoolT = "bool "
  show NoneT = ""

getType :: Statement -> PyType
getType (PyInt _) = IntegerT
getType (PyString _) = StringT
getType (EqCheck _ _) = BoolT
getType (IntFunc _) = IntegerT
getType (Input _) = StringT
getType _  = NoneT


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