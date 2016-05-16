import Data.List
import Graphics.GD

f p = do 
 a <- loadPngFile p;(x,y) <- imageSize a
 let l = [(i,j) | j <- [0..y] , i <- [0..x]] -- edit coordinates here. if u swap list y with list x results in horizontal pixel sorting
 mapM (flip getPixel a) l >>= mapM (\(d,c) -> setPixel d c a).zip l.sort
 savePngFile "o" a
