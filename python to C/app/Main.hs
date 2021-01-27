module Main where

import Lexer (alexScanTokens)
import Parser (parseExpr)
import Data.List (intercalate)

main :: IO ()
main = do
  inp <- readFile "app/sample.py"
  putStrLn inp
  print (alexScanTokens inp)
  putStrLn $ case parseExpr $ alexScanTokens inp of
    Left err -> err
    Right expr -> intercalate "\n" $ map show expr