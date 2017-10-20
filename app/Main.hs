module Main where

import Data.List
import System.Environment
import Graphics.GD

pxlsrt :: FilePath -> IO ()
pxlsrt file = do
  img <- loadPngFile file
  (x,y) <- imageSize img
  let l = [(i,j) | j <- [0..y], i <- [0..x]] -- Edit coordinates here
  -- For horizontal pixel sorting, swap list y with x
  mapM (`getPixel` img) l >>= mapM (\(d,c) -> setPixel d c img).zip l.sort
  savePngFile "out.png" img

main :: IO ()
main = do
  [filename] <- getArgs
  pxlsrt filename
