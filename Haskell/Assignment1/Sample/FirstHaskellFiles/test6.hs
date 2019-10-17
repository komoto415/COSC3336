foo :: Integer -> Integer
foo 0 = 1337
foo 1
 | "Haskell"> "C++" = foo 2
 | otherwise        = 4
foo n
 | n < 0            = 0
 | n `mod` 17 == 2  = -1337
 | otherwise        = n + 3

main = print([foo 0, foo 1, foo 2, foo (-4), foo 36, foo 38])
