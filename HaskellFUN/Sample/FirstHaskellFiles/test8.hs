sumPair :: (Int,Int) -> Int
sumPair (x,y) = x + y

arraySeq :: Integer -> [Integer]
arraySeq 1 = [1]
arraySeq n = n : arraySeq(n - 1)


main = do
 print(sumPair (3,4)) 
 print(arraySeq 5)
 print(arraySeq 16)
