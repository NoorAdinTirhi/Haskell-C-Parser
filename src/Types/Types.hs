
module Types.Types 
(
    CType(..),
    parseCType

) where
    

data CType = CInt
           | CFloat
           | CDouble
           | CChar
           | CVoid
           | CPointer CType
           deriving (Show, Eq)

parseCType :: String -> CType
parseCType "int" = CInt
parseCType "float" = CFloat
parseCType "double" = CDouble
parseCType "char" = CChar
parseCType "void" = CVoid
parseCType str = error ((show str) ++ "is not a recognized C type")


