f :: Int -> Int -> Int
f x y = 4*x + ((-1) * y)

f2 :: Int -> (Int -> Int)
f2 x y = 4*x + ((-1) * y)

main = do 
print (f 4 10)
print (f2 4 10)
