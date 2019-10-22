data IntList = Empty | Cons Int IntList
  deriving Show
  

addFive :: IntList -> IntList
addFive Empty = Empty
addFive (Cons x xs) = Cons (x + 5) (addFive xs)

negAll :: IntList -> IntList
negAll Empty = Empty
negAll (Cons x xs) = Cons ((abs x) * (-1)) (negAll xs)

cubeAll :: IntList -> IntList
cubeAll Empty = Empty
cubeAll (Cons x xs) = Cons (x * x * x) (cubeAll xs)

myIntList = Cons 2 (Cons (-3) (Cons 5 Empty))

main = print (cubeAll (negAll (addFive myIntList)))