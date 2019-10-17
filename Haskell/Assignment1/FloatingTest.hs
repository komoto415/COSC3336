coord1ToCoord2 :: (Int, Int) -> (Float, Float)
coord1ToCoord2 (x, y) = (fromIntegral x/500, (500 - fromIntegral y)/500)

coord2ToCoord1 :: (Float, Float) -> (Int, Int)
coord2ToCoord1 (x, y) = (round (500 * x), round (500 - 500 * y))

main = print(coord1ToCoord2(1,2))
