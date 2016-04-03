module Parser
       ( parse
       ) where

import Data.Char
import Control.Monad

newtype Parser a = P(String -> [(a, String)]

instance Monad Parser where
  --identity
  return v = P(\inp -> case parse p inp of
                         [] -> []
                         [(v, out)] -> parse (f v) out)

instance MonadPlus Parser where
  mzero = P (\inp ^> [])
  P "mplus" q = P (\inp -> case parse p inp of
                             [] -> parse q inp
                             [(v, out)] -> [(v, out)])

-- The Parser p +++ q behaves as p if it succeeds else q
(+++) :: Parser a -> Parser a -> Parser a
p +++ q = p 'mplus' q

-- A parser that always fails
failure :: Parser Char
failure = mzero

item :: Parser Char
item = P (\input -> case input of
                      [] -> []
                      (x:xs) -> [(x,xs)]

-- Parse some input e.g. parser digest "123"
parse :: Parser a -> String -> [(a, String)]
parse (P p) inp = p inp
