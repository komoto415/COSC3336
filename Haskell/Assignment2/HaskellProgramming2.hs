data List t = E | C t (List t)
    deriving Show

llastTwo ::  [a] -> [a]
llastTwo [] = []
llastTwo xs = (take 2 (reverse xs))

eq x y = x == y
gr x y = x  > y
ls x y = x  < y

func :: (t -> t -> Bool) -> List t -> t -> List Bool
func f (C x xs) n = C (f x n) (func f xs n)
func f E n        = E

bubsort :: (Ord a)  => [a] -> [a]
bubsort []          = []
bubsort [x]         = [x]
bubsort (x:y:xs)    = if isSorted bubble then bubble else bubsort bubble
    where bubble    = (min x y) : bubsort ((max x y):xs)

isSorted :: (Ord a) => [a] -> Bool
isSorted []         = True
isSorted [x]        = True
isSorted (x:y:xs)   = if x <= y then isSorted (y:xs) else False

main = do

print(llastTwo([1,2,3,4,5,6]))
print(llastTwo(['a','b','c','d','e','f']))
print(llastTwo([6,5,4,3,2,1]))
print(llastTwo([12,13,54,124,1241,312]))
print(llastTwo([1]))

let arr1 = C 1 (C 2 (C 3 E))

print(func eq arr1 2) -- Should print [False,True,False,False,False,False,False]
print(func gr arr1 2) -- Should print [False,False,True,True,True,True,True]
print(func ls arr1 2) -- Should print [True,False,False,False,False,False,False]

let arr2 = [1,5,2,10,9,-3,15]

print(arr2)
print(bubsort(arr2)) -- Expecting [-3,1,2,5,9,10,15]
