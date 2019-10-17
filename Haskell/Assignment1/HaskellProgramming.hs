import Data.Fixed
import Prelude

math :: (Integer, Integer, Char) -> Float
math (x,y,z)
    | z == '+'   = fromIntegral x +       fromIntegral y
    | z == '-'   = fromIntegral x -       fromIntegral y
    | z == '*'   = fromIntegral x *       fromIntegral y
    | z == '/'   = fromIntegral x /       fromIntegral y
    | z == '%'   = mod' (fromIntegral x) (fromIntegral y)
    | otherwise  = error "Not proper operator!"

lengthArr :: [Integer] -> Integer
lengthArr [] = 0
lengthArr (x:xs) = 1 + lengthArr xs

sumArr :: [Integer] -> Integer
sumArr [] = 0
sumArr (x:xs) = x + sumArr xs

prodArr :: [Integer] -> Integer
prodArr [] = 1
prodArr (x:xs) = x * prodArr xs

arrayOps :: [Integer] -> Float
arrayOps n
    | mod (length n) 2 == 0  = fromIntegral (sum n) / fromIntegral (lengthArr n)
    | otherwise              = fromIntegral (prodArr n)

main = do
print("Bob")
