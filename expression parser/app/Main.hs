module Main where

import ExpressionParser

main :: IO ()
main = do
  input <- getLine
  putStr $ maybe "No parse" show (parse input)
