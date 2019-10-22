-- /show
data IntList = Empty | Cons Int IntList
  deriving Show
-- show
keepOnlyOdd :: IntList -> IntList
keepOnlyOdd Empty = Empty
keepOnlyOdd (Cons x xs) 
  | odd x    = Cons x (keepOnlyOdd xs)
  | otherwise = keepOnlyOdd xs
  
myIntList = Cons 2 (Cons (-3) (Cons 5 Empty))

main = print (keepOnlyOdd myIntList)