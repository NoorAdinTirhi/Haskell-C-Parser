module SyntaxTree.Blocks
  ( Block (..),
    BlockNode (..),
  )
where

import Invocation.SourceItem
import SyntaxTree.Expressions
import SyntaxTree.Statements

data AST
  = AST [Block]
  deriving (Eq)

data Block = Block
  { blkSourceItem :: SourceItem,
    block :: BlockNode
  }
  deriving (Show, Eq)

data BlockNode
  = BlockNode
      { blockScopeID :: Int,
        blockStatements :: [Statement],
        blockInnerBlocks :: [Block]
      }
  | IfBlockNode
      { ifCondition :: Expression,
        ifThen :: BlockNode,
        ifElse :: Maybe Block
      }
  | WhileBlockNode
      { whileCondition :: Expression,
        whileDo :: Block
      }
  | ForBlockNode
      { forInit :: Statement,
        forCondition :: Expression,
        forIter :: Statement,
        forDo :: Block
      }
  deriving (Show, Eq)
