module Music.App where

import qualified Data.Map      as Map
import qualified Data.String   as Str
import qualified Data.List     as List
import System.Process
import Text.Printf

import qualified Data.ByteString.Lazy as B
import qualified Data.ByteString.Builder as B
import qualified Hydra.Domain  as D
import Music.Prelude       as L
import Music.Domain
import Music.Types
import Music.Sound
import Music.Algorithms
import Music.Musics



-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- music timing sample Gangnam Style, no sound

zipWith3Gangnam :: [(Text, Int, [Float])]
zipWith3Gangnam =
  zipWith3 (\x y z -> (x, y, z)) gangnamTexts gangnamPhases gangnamTempos

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
