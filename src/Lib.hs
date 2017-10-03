module Lib
    ( generateAStringByRandomCharacters
    ) where

import System.Random

randAlpha :: IO Char
randAlpha = getStdRandom $ randomR ('0', 'z')

generateAStringByRandomCharacters :: Int -> IO [Char]
generateAStringByRandomCharacters 0 = return ""
generateAStringByRandomCharacters n = 
    randAlpha >>= \c ->
    generateAStringByRandomCharacters (n - 1) >>= \b ->
    return $ [c] ++ b
