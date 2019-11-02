f :: Int -> Int -> Int
f x y = 4*x + ((-1) * y)


f2 :: (Int,Int) -> Int
f2 (x,y) = 4*x + ((-1) * y)

main = do
print (curry f2 2 3)
print (uncurry f (2,3))