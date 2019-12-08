haskellFinal :: [Integer] -> [Integer] -> [Integer] -> [Bool]
haskellFinal [] (b:bs) (c:cs)                 = False : haskellFinal [] bs cs
haskellFinal (a:as) [] (c:cs)                 = False : haskellFinal as [] cs
haskellFinal (a:as) (b:bs) []                 = False : haskellFinal as bs []
haskellFinal [] [] (c:cs)                     = False : haskellFinal [] [] cs
haskellFinal (a:as) [] []                     = False : haskellFinal as [] []
haskellFinal [] (b:bs) []                     = False : haskellFinal [] bs []
haskellFinal [] [] []                         = []
haskellFinal (a:as) (b:bs) (c:cs)             = calcN a b c : haskellFinal as bs cs

calcN :: Integer -> Integer -> Integer -> Bool
calcN a b c
  | a + b == c = True
  | otherwise  = False

main = do
 let arr = [1,2,3]
 print $ haskellFinal arr arr arr -- Should output [f,f,f]
 print $ haskellFinal arr arr [2,4,6] -- Should output [t,t,t]
 print $ haskellFinal arr [1,2,3,4] [2,4,6] -- Should output [t,t,t,f]
 print $ haskellFinal [1,2] [3,4,5] [4,2] -- Should output [t,f,f]
