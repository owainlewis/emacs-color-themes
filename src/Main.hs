{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE OverloadedStrings #-}
module Main
  ( main
  , compileTemplate
  , compileAndRender
  , themeToMap
  , Theme(..)
  , Colors(..)) where

import           Control.Applicative   ((<$>), (<*>))
import           Control.Monad         (mzero)
import           Data.Aeson
import qualified Data.ByteString.Char8 as BC
import qualified Data.ByteString.Lazy  as B
import qualified Data.Map              as M
import           Data.Monoid
import qualified Data.Text             as T
import           GHC.Generics
import           Text.Regex            (Regex, matchRegexAll, mkRegex, subRegex)

-- A naive but simple template substitution function
--
compileTemplate :: String -> M.Map String T.Text -> String
compileTemplate template subs =
  M.foldrWithKey doReplace template subs
    where doReplace expr replacement str = let e = (mkRegex ("{{" <> expr <> "}}")) in
                                           subRegex e str (T.unpack replacement)

type HexColor = T.Text

forall :: (a -> Bool) -> [a] -> Bool
forall f = and . map f

validHex :: String -> Bool
validHex [] = False
validHex (x:xs) = x == '#' && (length xs) == 6

-- | Types
-- ==============================================

data Colors = Colors {
-- Primary colors for theme
    background :: HexColor
  , foreground :: HexColor
  , text       :: HexColor
  , comments   :: HexColor
  , operators  :: HexColor
  , keywords   :: HexColor
  , variables  :: HexColor
  , functions  :: HexColor
  , methods    :: HexColor
  , strings    :: HexColor
  , constants  :: HexColor
-- Additional colors
  , builtin    :: HexColor
  , warning    :: HexColor
} deriving ( Show, Generic )

instance FromJSON Colors

-- An Emacs theme
--
data Theme = Theme {
    title       :: T.Text
  , description :: T.Text
  , colors      :: Colors
} deriving ( Show )

instance FromJSON Theme where
    parseJSON (Object o) =
        Theme <$> (o .: "title")
              <*> (o .: "description")
              <*> (o .: "colors")
    parseJSON _ = mzero

-- ==============================================

--
colorMap :: Colors -> M.Map String HexColor
colorMap (Colors a b c d e f g h i j k l m) =
    M.fromList [ ("background", a)
               , ("foreground", b)
               , ("text", c)
               , ("comments", d)
               , ("operators", e)
               , ("keywords", f)
               , ("variables", g)
               , ("functions", h)
               , ("methods", i)
               , ("strings", j)
               , ("constants", k)
               , ("builtin", l)
               , ("warning", m)
               ]

-- Return a theme as a map
--
themeToMap
  :: Theme -> M.Map String T.Text
themeToMap (Theme t d c) =
  M.union m1 m2
  where m1 = M.fromList [ ("title", t)
                        , ("description", d)
                        ]
        m2 = colorMap c

-- Reads a JSON theme into a Map
--
readTheme :: FilePath -> IO (Maybe (M.Map String T.Text))
readTheme themePath = do
     content <- B.readFile themePath
     let result     = decode content :: Maybe Theme
         asMap = fmap themeToMap result
     return asMap

compile :: FilePath -> IO (Maybe String)
compile template = do
    temp <- readFile "templates/template.txt"
    subs <- readTheme template
    return $ (compileTemplate temp) <$> subs

compileAndRender :: FilePath -> IO ()
compileAndRender templateName = do
    template <- compile templateName
    case template of
      Just t  -> writeFile "output.el" t
      Nothing -> putStrLn "No template"

-- Main method renders theme.json to a template file
main :: IO ()
main = compileAndRender "spolsky.json"
