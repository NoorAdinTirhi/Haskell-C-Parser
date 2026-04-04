module Lib
    ( someFunc
) where

import Types.Types 
import Variables.Variables 
import Invocation.Reader 
import SyntaxTree.Expressions
import SyntaxTree.Statements
import SyntaxTree.Blocks

someFunc :: IO ()
someFunc = do
            validateArgs
            lines <- readInputFile

            putStrLn "Finished Reading"
