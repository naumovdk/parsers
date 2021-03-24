{-#LANGUAGE OverloadedStrings#-}

module Main where

import Lexer (alexScanTokens)
import Parser (parseExpr)
import Data.List (intercalate)
import Grammar (tabbed)

main :: IO ()
main = do
  inp <- readFile "app/sample.py"
  print $ alexScanTokens inp
  let res = case parseExpr $ alexScanTokens inp of
                Left err -> err
                Right expr -> intoTemplate $ tabAfterNewline $ intercalate "\n" $ map show expr
                  where
                    tabAfterNewline :: [Char] -> String
                    tabAfterNewline = ("\t" ++) . concatMap (\c -> if c == '\n' then c : "\t" else [c])

                    intoTemplate :: String -> String
                    intoTemplate text = "#include <string>\n#include <iostream>\nusing namespace std;\n\nstring input() {\n\tstring inp;\n\tcin >> inp;\n\treturn inp;\n}\n\nint to_int(string s) {\n\t return stoi(s); \n}\n\nint to_int(int x) {\n\t return x;\n}\n\nint main() {\n" ++ text ++ "\n}"
  putStrLn res
  writeFile "app/sample.cpp" res