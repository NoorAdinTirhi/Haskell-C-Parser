module SyntaxTree.Expressions
(
    Expression(..)
) where

import Variables.Variables (Variable)
import Types.Types (CType)

data Expression 
    = Expression {expText :: String, expType :: CType}
    | VarAccessExpression {varAccTarget :: Expression, varAccVar :: Variable}
    -- | listAccessExp
    | AddExpression {addLeftExp :: Expression, addRightExp :: Expression}
    -- all the other types of arithemtic expressions ()
    -- all the other types  of logical expressions 
    deriving (Show, Eq)