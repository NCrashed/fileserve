module Main where

import Lib
import System.Environment

main :: IO ()
main = do
  [folder, port] <- getArgs
  startServer folder (read port)
