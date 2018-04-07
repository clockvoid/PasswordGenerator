module Main where

import Password
import System.Environment

main :: IO ()
main = do
  args <- getArgs
  putStrLn =<< password (case args of
                                  ["alpha"] -> 'a'
                                  ["num"] -> 'n'
                                  ["symbol"] -> 's'
                                  _ -> ' ')
                        16
