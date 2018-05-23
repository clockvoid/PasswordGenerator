module Main where

import Password
import System.Environment
import Files

main :: IO ()
main = do
  let file = createFile "passwordFile"
  args <- getArgs
  pass <-  password (case args of
    ["alpha"] -> 'a'
    ["num"] -> 'n'
    ["symbol"] -> 's'
    _ -> ' ') 16
  saveFile file pass
