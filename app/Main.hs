module Main where

import Data.List
import Data.List.Split
import System.Environment
import Graphics.GD

sortImage image = do
    (width, height) <- imageSize image
    let points = [(x,y) | x <- [0..width], y <- [0..height]]
        colors = mapM (`getPixel` image) points
        render = mapM (\(point,color) -> setPixel point color image)
    render . zip points . sort =<< colors
    return image

pixelSort [name, "png"] =
  loadPngFile (name ++ ".png")
  >>= sortImage
  >>= savePngFile "out.png"

pixelSort [name, "jpeg"] =
  loadJpegFile (name ++ ".jpeg")
  >>= sortImage
  >>= saveJpegFile 95 "out.jpeg"

main = do
  [filename] <- getArgs
  pixelSort $ splitOn "." filename
