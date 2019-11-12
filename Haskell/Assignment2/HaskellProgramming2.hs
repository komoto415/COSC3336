data List t = E | C t (List t)
    deriving Show

llastTwo ::  [a] -> [a]
llastTwo [] = []
llastTwo xs = (take 2 (reverse xs))

eq x y = x == y
gr x y = x  > y
ls x y = x  < y

function :: (t -> t -> Bool) -> [t] -> t -> [Bool]
function f [] n = []
function f (x:xs) n = (f x n) : (function f xs n)

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

let arr1 = [1,2,3,4,5,6]

print(function eq arr1 2) -- Should print [False,True,False,False,False,False,False]
print(function gr arr1 2) -- Should print [False,False,True,True,True,True,True]
print(function ls arr1 2) -- Should print [True,False,False,False,False,False,False]

let arr2 = [1,5,2,10,9,-3,15]

print(arr2)
print(bubsort(arr2)) -- Expecting [-3,1,2,5,9,10,15]
