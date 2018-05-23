{- |
Module : File
Description : amodule for management files

This module is to manage files to save Passwords etc.
We want to manage file names and file contents, we make a State Monad for do it.:w
 -}

module Files
  (
    saveFile
    , createFile
    , setFilePath
    , getFilePath
  ) where

import Control.Monad.Trans.State.Lazy
import Password

-- encryption for Passwords
encrypt :: String -> String
encrypt str = str

type File = State FilePath FilePath

saveFile :: File -> String -> IO ()
saveFile file = writeFile $ getFilePath file

setFilePath :: String -> File
setFilePath name = do
  v <- get
  put name
  return v

getFilePath :: File -> String
getFilePath file = execState file "something"

createFile :: String -> File
createFile = setFilePath
