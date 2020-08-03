{-# LANGUAGE PackageImports #-}

module Main where

import           Music.Prelude

import qualified Hydra.Domain               as D
import qualified "hydra-free" Hydra.Runtime              as R
import qualified "hydra-free" Hydra.Interpreters         as R

import qualified Music as Mus

main :: IO ()
main = Mus.save Mus.outputFilePath
