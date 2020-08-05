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

save :: FilePath -> IO ()
save filePath = B.writeFile filePath $ B.toLazyByteString $ fold $ map B.floatLE testSounds1

play :: IO ()
play = do
  save outputFilePath
  _ <- runCommand $ printf "ffplay -autoexit -showmode 1 -f f32le -ar %f %s" sampleRate outputFilePath
  return ()
