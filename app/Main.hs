module Main where

import Password
import System.Environment

main :: IO ()
main = do
  args <- getArgs
  putStrLn =<< flip password 16 (case args of
                                  ["alpha"] -> 'a'
                                  ["num"] -> 'n'
                                  ["symbol"] -> 's'
                                  _ -> ' ')
