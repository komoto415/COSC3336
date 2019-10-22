quicksort :: Ord a => [a] -> [a]
quicksort []     = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
  where
    lesser  = filter (< p) xs
    greater = filter (>= p) xs

lst :: [Int]
lst = [1,2,(-5),8,90,23,5,8,4,3,15,87,45,0]

main = print(quicksort lst)