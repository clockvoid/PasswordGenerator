module Password
  ( password
  ) where

import System.Random
import Control.Monad (replicateM)

numbers :: String
numbers = "numbers"

randAll :: IO Char
randAll = randomRIO ('0', 'z') :: IO Char

randAlpha :: IO Char
randAlpha = do
  a <- randomRIO (0, 1) :: IO Int
  [randomRIO ('a', 'z') :: IO Char, randomRIO ('A', 'Z') :: IO Char] !! a

randNum :: IO Char
randNum = randomRIO ('0', '9') :: IO Char

randSymbol :: IO Char
randSymbol = randomRIO ('!', '@') :: IO Char

password :: Char -> Int -> IO String
password m n = replicateM n rc
  where
  rc = case m of
    'a' -> randAlpha
    'n' -> randNum
    's' -> randSymbol
    _ -> randAll
