module Main where

import Lib

main :: IO ()
main = putStrLn =<< generateAStringByRandomCharacters 16
