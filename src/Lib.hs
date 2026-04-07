module Lib
    ( someFunc
) where

import Invocation.Reader
import Control.Monad
import Invocation.SourceItem
import Types.Types 
import Variables.Variables 
import Invocation.Reader 
import SyntaxTree.Expressions
import SyntaxTree.Statements
import SyntaxTree.Blocks

someFunc :: IO ()
someFunc = do
            validateArgs
            fileLines <- readInputFile
            mapM putStrLn $ map show fileLines
            -- forM_ fileLines $ \line -> do putStrLn $ show line
            putStrLn "Finished Reading"
