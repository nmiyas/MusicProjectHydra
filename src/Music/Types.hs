{-# LANGUAGE DeriveAnyClass #-}

module Music.Types where


import Music.Prelude
import Music.Domain

-- timing and how it translates into "music"
-- IO types described here.. application-level things

beat :: Float -> Float
beat x = 0.476188 * x

introBeat :: [Float]
introBeat =
  [ beat 1
  , beat 1
  , beat 1
  , beat 0.5
  ]

--
tempo :: [Float]
tempo =
  [ beat 1
  , beat 1
  , beat 1
  , beat 1
  ]


single :: [Float]
single = [beat 1]

double :: [Float]
double = [beat 2]

quadruple :: [Float]
quadruple = [beat 4]

half :: [Float]
half = [beat 0.5]
