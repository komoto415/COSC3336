addFour a b c d = a + b + c + d

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

main = print([addFour 1 2 3 4, addThree 5 6 7])
