sum2 :: [Integer] -> Integer
sum2 [] = 0
sum2 (x:xs) = (2*x) + (sum2 xs)

fold :: (a -> b -> b) -> b -> [a] -> b
fold f z []     = z
fold f z (x:xs) = f x (fold f z xs)

sum2' = fold (\x y -> (2*x) + y) 0

main = do 
print(sum2 [1,2,3,4,5])
print(sum2' [1,2,3,4,5])
print(foldr (\x y -> (2*x) + y) 0 [1,2,3,4,5])
print(foldl (\x y -> (2*y) + x) 0 [1,2,3,4,5])