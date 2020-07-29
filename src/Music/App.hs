module Music.App where

import qualified Data.Map      as Map
import qualified Data.String   as Str
import qualified Data.List     as List

import qualified Hydra.Domain  as D
import Music.Prelude       as L
import Music.Domain
import Music.Types
import Music.Sound
import Music.Algorithms
import Music.Gen
import Music.Lens
import qualified Music.KVDB.Model as KVDB
import qualified Music.KVDB.Repository as KVDB


save :: FilePath -> IO ()
save filePath = B.writeFile filePath $ B.toLazyByteString $ fold $ map B.floatLE hehehe

play :: IO ()
play = do
  save outputFilePath
  _ <- runCommand $ printf "ffplay -autoexit -showmode 1 -f f32le -ar %f %s" sampleRate outputFilePath
  return ()
