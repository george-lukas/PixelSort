# Pixel Sort

Given a png image.. the algorithm return a png (called "o") sorted.

``` haskell
f :: FilePath -> IO ()
```
### Example 

-- If the image is in the same folder as the program.
- f "01.png"

-- You are able to sort only certain sections of the image, editing the following line

``` haskell
let l = [(i,j) | j <- [0..y] , i <- [0..x]]
```
