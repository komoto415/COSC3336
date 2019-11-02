greaterThan50 :: [Integer] -> [Integer]
greaterThan50 xs = filter (>50) xs

myTest :: [Integer] -> Bool
myTest xs = even (length (greaterThan50 xs))

main = print (myTest [61,99,49,16,7,58,10])