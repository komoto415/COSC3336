isOdd :: Integer -> Bool
isOdd n
 | mod n 2 == 1 = True
 | otherwise    = False

main = do
print(isOdd 5)
print(isOdd 4)
