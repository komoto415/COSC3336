badHaskell :: [Integer] -> Integer
badHaskell []     = 0
badHaskell (x:xs)
  | x >= 5     = (11*x + 2) + badHaskell xs
  | otherwise = badHaskell xs

goodHaskell :: [Integer] -> Integer
goodHaskell = sum . map (\x -> 11*x + 2) . filter (>=5)

  
main = do 
print (badHaskell [1,3,5,7,9])
print (goodHaskell [1,3,5,7,9])