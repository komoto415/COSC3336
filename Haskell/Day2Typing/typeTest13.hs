data List t = E | C t (List t)
    deriving Show

lst1 :: List Int
lst1 = C 2 (C 7 (C (-2) E))

lst2 :: List Char
lst2 = C 'a' (C 'm' (C 'z' E))

lst3 :: List Bool
lst3 = C True (C False E)

filterList _ E = E
filterList p (C x xs)
  | p x       = C x (filterList p xs)
  | otherwise = filterList p xs

mapList :: (a -> b) -> List a -> List b
mapList f (C x xs) = C (f x) (mapList f xs)
mapList f E        = E

double x = 2 * x
greatFive x = x > 5

main = do
print (lst1)
print (lst2)
print (lst3)
print (filterList odd lst1)
print (mapList double lst1)
print (mapList greatFive lst1)
