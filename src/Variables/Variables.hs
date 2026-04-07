module Variables.Variables
  ( Variable (..),
  )
where

import Invocation.SourceItem
import Types.Types (CType)

data Variable = Variable
  { varSourceItem :: SourceItem,
    variable :: VariableNode
  }
  deriving (Show, Eq)

data VariableNode = VariableNode
  { varName :: String,
    varType :: CType,
    varScopeId :: Int
  }
  deriving (Show, Eq)

data ScopeKind
  = Global
  | FunctionScope
  | BlockScope
  | PrototypeScope
  | StructScope
  deriving (Show, Eq)
