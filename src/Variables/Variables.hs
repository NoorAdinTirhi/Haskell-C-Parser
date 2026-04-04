
module Variables.Variables 
(
    Variable(..)
) where

import Types.Types (CType)

data Variable = Variable {
    varName :: String,
    varType :: CType,
    varScopeId :: Int
} deriving (Show, Eq)


data ScopeKind 
    = Global
    | FunctionScope
    | BlockScope
    | PrototypeScope
    | StructScope deriving (Show, Eq)
