# Pixel Sort

An algorithm that sorts a provided PNG image.

``` haskell
pxlsrt :: FilePath -> IO ()
```

### Quick Start

``` bash
stack build
stack exec PixelSort -- FILENAME.png

# You should now see out.png in the current directory
```


If you would like to sort only certain sections of the image, edit the following line

``` haskell
let l = [(i,j) | j <- [0..y] , i <- [0..x]]
```
