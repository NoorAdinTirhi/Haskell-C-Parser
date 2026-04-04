module SyntaxTree.Statements (
    Statement (..),
    parseStatement
) where

import Types.Types
import SyntaxTree.Expressions
import Variables.Variables
    
data Statement 
    = Statement {stmntExpressions :: [Expression]} 
    | VarDeclStatement {declVar :: Variable, declRhs :: Maybe Expression}
    | AssignStatement {assignLhs :: Expression, assignRhs :: Expression} 
    -- function call ??
    -- increment/decremenet ?? (or is that just sugar for an assignment?) 
    deriving (Show, Eq)

parseStatement :: String -> Statement
-- pattern is a variable declaration statement
parseStatement str = VarDeclStatement (Variable varNameStr typeObj 0) Nothing where
                    typeObj = parseCType typeStr
                    typeStr = words (str) !! 0
                    varNameStr = words (str) !! 1