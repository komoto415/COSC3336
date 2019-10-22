-- /show
data IntList = Empty | Cons Int IntList
  deriving Show
-- show
filterIntList :: (Int -> Bool) -> IntList -> IntList
filterIntList _ Empty = Empty
filterIntList p (Cons x xs) 
  | p x       = Cons x (filterIntList p xs)
  | otherwise = filterIntList p xs

myIntList = Cons 2 (Cons (-5) (Cons 1 Empty))

main = print (filterIntList odd myIntList)
