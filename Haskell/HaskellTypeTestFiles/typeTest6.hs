-- /show
data IntList = Empty | Cons Int IntList

-- show
intListProd :: IntList -> Int
intListProd Empty = 1
intListProd (Cons x xs) = x * intListProd xs

main = print (intListProd (Cons 3 (Cons 2 (Cons 4 Empty))))