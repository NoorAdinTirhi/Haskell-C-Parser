module SyntaxTree.Expressions
  ( Expression (..),
  )
where

import Invocation.SourceItem
import Types.Types 
import Variables.Variables

data Expression = Expression
  { expSourceItem :: SourceItem,
    expression :: ExpressionNode
  }
  deriving (Show, Eq)

data ExpressionNode
  = ExpressionNode {expText :: String, expType :: CType}
  | VarAccessExpression {varAccTarget :: Expression, varAccVar :: Variable}
  | -- | listAccessExp
    AddExpression {addLeftExp :: Expression, addRightExp :: Expression}
  -- all the other types of arithemtic expressions ()
  -- all the other types  of logical expressions
  deriving (Show, Eq)