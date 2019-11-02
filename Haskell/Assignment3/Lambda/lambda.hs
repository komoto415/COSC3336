greaterThan100 :: [Integer] -> [Integer]
greaterThan100 xs = filter (\x -> x > 100) xs

greaterThan50 :: [Integer] -> [Integer]
greaterThan50 xs = filter (>50) xs

main = do
print (greaterThan100 [1,14,34,600,97,918,106])
print (greaterThan50 [13,29,39,60,79,8,102])