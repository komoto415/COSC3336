hailstone :: Integer -> Integer
hailstone n
 | n `mod` 2 == 0 = n `div` 2
 | n `mod` 3 == 0 = n `div` 4
 | otherwise      = 3 * n + 1

main = do
print(hailstone 2)
print(hailstone 3)
print(hailstone 6)
print(hailstone 7)
