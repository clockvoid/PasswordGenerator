module Main where

import Lib

main :: IO ()
main = putStrLn =<< password ' ' 16
