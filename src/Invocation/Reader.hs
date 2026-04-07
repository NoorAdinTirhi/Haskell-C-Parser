module Invocation.Reader (
    validateArgs,
    readInputFile,
    readInputFileStr
) where

import Invocation.SourceItem
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

readInputFileStr:: IO [String]
readInputFileStr = do
                argList <- getArgs
                let path = head argList
                topFileHandle <- openFile path ReadMode
                content <- hGetContents topFileHandle
                let fileLines = splitOn "\n" content
                -- hClose topFileHandle
                return (fileLines)


readInputFile :: IO [SourceItem]
readInputFile = do
                argList <- getArgs
                let path = head argList
                topFileHandle <- openFile path ReadMode
                content <- hGetContents topFileHandle
                let fileLines = splitOn "\n" content
                let source = zipWith (\n line -> SourceItem line n path) [1..] fileLines
                -- hClose topFileHandle
                return (source)


-- parseFile :: [String] -> [Block]
-- parseFile lines = --search for regex for top-level blocks
--                   --
