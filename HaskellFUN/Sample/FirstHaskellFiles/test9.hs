intListLength :: [Integer] -> Integer
intListLength [] = 0
intListLength (x:xs) = 1 + intListLength xs

main = print(intListLength [1,2,3,4,5,6])
