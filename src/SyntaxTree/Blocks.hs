module SyntaxTree.Blocks
(
    Block(..)
) where

import SyntaxTree.Statements (Statement)
import SyntaxTree.Expressions (Expression)

data AST
    = AST [Block] deriving (Eq)

data Block
    =
    Block {blockScopeID :: Int,
           blockStatements :: [Statement]}

    | IfBlock {ifCondition :: Expression,
               ifThen :: Block,
               ifElse :: Maybe Block}

    | WhileBlock {whileCondition :: Expression,
                  whileDo :: Block}

    | ForBlock {forInit :: Statement,
                forCondition :: Expression,
                forIter :: Statement, forDo :: Block}

    deriving (Show, Eq)
