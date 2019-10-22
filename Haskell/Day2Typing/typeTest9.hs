data IntList = Empty | Cons Int IntList
  deriving Show
  

mapIntList :: (Int -> Int) -> IntList -> IntList
mapIntList _ Empty       = Empty
mapIntList f (Cons x xs) = Cons (f x) (mapIntList f xs) 

addFive x = x + 5
cube x = x * x * x
negOne x = x * (-1)

addFiveToAll xs = mapIntList addFive xs
absAll xs = mapIntList abs xs
negAll xs = mapIntList negOne (absAll xs)
cubeAll xs   = mapIntList cube xs

myIntList = Cons 2 (Cons (-3) (Cons 5 Empty))

main = do
print (negAll myIntList)
print (cubeAll myIntList)
print (addFiveToAll myIntList)