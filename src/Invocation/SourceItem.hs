module Invocation.SourceItem (
    SourceItem(..)
) where

data SourceItem = SourceItem {siString :: String,
                              siLineNum :: Int,
                              siFilePath :: String} deriving (Show, Eq)
