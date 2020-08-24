{-# LANGUAGE PackageImports #-}

module Main where

import           Music.Prelude
import qualified Prelude as P
import qualified Data.Text as T


import qualified "hydra-base" Hydra.Domain               as D
import qualified "hydra-free" Hydra.Runtime              as R
import qualified "hydra-free" Hydra.Interpreters         as R

import qualified Music as Mus


-- main :: IO ()
-- main = Mus.save Mus.outputFilePath


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- music timing sample Gangnam Style, no sound


main :: IO ()
main = do

--  putStrLn @Text $ show $ duration 126

  forkIO $ Mus.mapAll Mus.zipWith3Gangnam

  input <- getLine

  P.putStrLn $ T.unpack input

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
