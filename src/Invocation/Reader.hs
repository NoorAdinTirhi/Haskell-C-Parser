module Invocation.Reader (
    validateArgs,
    readInputFile
) where

import System.Environment 
import Text.Regex.TDFA
import Data.List.Split
import System.IO
import Control.Monad
import SyntaxTree.Blocks (Block)


validateArgs :: IO ()
validateArgs = do 
               argList <- getArgs
               if length argList < 1
               then error "Please give at least the name of file to refer to\n usage : Haskell-C-Parser <file-C-Path>"
               else putStrLn "arguments validated succesfully"

-- this is gonna be a long function if this project goes on


readInputFile :: IO [String]
readInputFile = do
                argList <- getArgs
                topFileHandle <- openFile (argList !! 0) ReadMode
                content <- hGetContents topFileHandle
                let lines = splitOn "\n" content
                hClose topFileHandle
                return (lines)


-- parseFile :: [String] -> [Block]
-- parseFile lines = --search for regex for top-level blocks
--                   --
