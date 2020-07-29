module Music.Musics where

import qualified Data.Map  as Map

import           Music.Prelude
import           Music.Domain

testSounds1 :: [Pulse]
testSounds1 = concat
    [ note 0 0.25
    , note 0 0.25
    , note 0 0.25
    , note 0 0.25
    , note 0 0.5
    , note 0 0.25
    , note 0 0.25
    , note 0 0.25
    , note 0 0.25
    , note 0 0.25
    , note 0 0.25
    , note 0 0.5
    , note 5 0.25
    , note 5 0.25
    , note 5 0.25
    , note 5 0.25
    , note 5 0.25
    , note 5 0.25
    , note 5 0.5
    , note 3 0.25
    , note 3 0.25
    , note 3 0.25
    , note 3 0.25
    , note 3 0.25
    , note 3 0.25
    , note 3 0.5
    , note (-2) 0.5
    , note 0 0.25
    , note 0 0.25
    , note 0 0.25
    , note 0 0.25
    , note 0 0.5
    ]



testSounds2 :: [Pulse]
testSounds2 = concat [ note 0 0.25
                , note 0 0.25
                , note 12 0.5
                , note 7 (0.5 + 0.25)
                , note 6 0.5
                , note 5 0.5
                , note 3 0.5
                , note 0 0.25
                , note 3 0.25
                , note 5 0.25
                ]
