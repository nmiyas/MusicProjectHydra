module Music.Algorithms where

import Prelude (zipWith3)

import qualified Data.Map as Map
import qualified Data.Set as Set

import Music.Prelude
import Music.Domain
import Music.Sound

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- music timing sample Gangnam Style, no sound

frequency :: Int -> Float
frequency bpm = (fromIntegral bpm) / 60.0

bps :: Int -> Float
bps = frequency

duration :: Int -> Float
duration bpm = 1.0 / (frequency bpm)

toIntList :: [Float] -> [Int]
toIntList fl = map round (map (*1000000) fl)

phraseForLoop:: Int
phraseForLoop = 4

printingWorkerLoop :: Int -> Int -> IO ()
printingWorkerLoop phraseForLoop ms = do
  if phraseForLoop == 0
  then pure()
  else do
    putStrLn @Text ("Hello, world!" <> show ms)
    threadDelay ms
    printingWorkerLoop (phraseForLoop-1) ms

printingWorkerOne :: Int -> IO ()
printingWorkerOne ms = do
  putStrLn @Text ("Hello, world!" <> show ms)
  threadDelay ms

--
printingBeat :: Text -> Int -> IO ()
printingBeat text ms = do
  putStrLn @Text text
  threadDelay ms

mapPrintingWorker :: Text -> [Float] -> IO ()
mapPrintingWorker text =
  mapM_ (printingBeat text) . toIntList

mapLoopPrintingWorker :: Text -> Int -> [Float] -> IO()
mapLoopPrintingWorker text phrase timing = do
  if phrase == 0
  then pure()
  else do
    mapPrintingWorker text timing
    mapLoopPrintingWorker text (phrase-1) timing


mapAll :: [(Text, Int, [Float])] -> IO()
mapAll g = mapM_ f g
  where
    f (bs, ns, ts) = mapLoopPrintingWorker bs ns ts
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
