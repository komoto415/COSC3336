greaterThan50 :: [Integer] -> [Integer]
greaterThan50 xs = filter (>50) xs

myTest :: [Integer] -> Bool
myTest = even . length . greaterThan50

main = print (myTest [61,99,49,16,7,58,10,100])