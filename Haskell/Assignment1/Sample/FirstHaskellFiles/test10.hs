sumEveryPair :: [Integer] -> [Integer]
sumEveryPair [] = []
sumEveryPair (x:[]) = []
sumEveryPair (x:(y:z)) = (x + y) : sumEveryPair z

main = print(sumEveryPair [1,2,3,4,5,6,7,8,9])
