callMath :: (Int -> Int -> Int) -> Int -> [Int] -> [Int]
callMath _ _ [] = []
callMath f y (x:xs)= (f x y) : (callMath f y xs)

doMult :: Int -> Int -> Int
doMult x y = x * y

main = print(callMath doMult 4 [1,2,3,4,5])