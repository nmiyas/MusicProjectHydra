module Main where

import           Music.Prelude

import qualified Hydra.Domain               as D
import qualified Hydra.Runtime              as R
import qualified Hydra.Interpreters         as R

import qualified Music as Mus


main :: IO ()
main = save outputFilePath
