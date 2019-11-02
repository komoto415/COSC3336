-- PROBLEM 1
func:: ([t] -> t -> [Bool]) -> [t] -> [t] -> [[Bool]]
func f xs [] = []
func f [] y = []
func f xs (y:ys) = (f xs y):(func f xs ys)

eq :: (Ord t)   => [t] -> t -> [Bool]
eq [] _     = []
eq (x:xs) y = (x == y) : eq xs y

gr :: (Ord t)   => [t] -> t -> [Bool]
gr [] _     = []
gr (x:xs) y = (x > y) : gr xs y

ls :: (Ord t)   => [t] -> t -> [Bool]
ls [] _     = []
ls (x:xs) y = (x < y) : ls xs y

-- PROBLEM 2
data Soda = Sprite
 | RootBeer
 | Pepsi
 | Coke
 | DrPepper
 deriving Show

-- show
-- Store a person's name, age, and favorite Soday
data Person = Person String Int Soda
  deriving Show

joe :: Person
joe = Person "Joe" 42 RootBeer

ryan :: Person
ryan = Person "Ryan" 31 DrPepper

tim :: Person
tim = Person "Tim" 21 Coke

ryan2 :: Person
ryan2 = Person "Ryan" 1337 DrPepper

getName :: Person -> String
getName (Person a _ _) = a

getAge :: Person -> Int
getAge (Person _ a _) = a

getSoda :: Person -> Soda
getSoda (Person _ _ a) = a

showName :: Person -> String
showName p@(Person n _ _) = "The name field of (" ++ show p ++ ") is " ++ n

checkFav :: Person -> String
checkFav (Person n _ DrPepper)   = n ++ ", you're my kind of person!"
checkFav (Person n _ _)          = n ++ ", your favorite thing is lame."

grAge :: Person -> Person -> Person
grAge x y
    | getAge x > getAge y   = x
    | otherwise                 = y

lsAge :: Person -> Person -> Person
lsAge x y
    | getAge x < getAge y   = x
    | otherwise                 = y

grName :: Person -> Person -> Person
grName x y
    | getName x > getName y = x
    | otherwise                 = y

lsName :: Person -> Person -> Person
lsName x y
    | getName x < getName y = x
    | otherwise                 = y

sumFum :: (Person -> Person -> Person) -> [Person] -> Person
sumFum f [y] = y
sumFum f (y:ys) = f y (sumFum f ys)

main = do
print(func eq [1,2,3,4] [4,3,2,1])
print(func gr [1,2,3,4] [4,3,2,1])
print(func ls [1,2,3,4] [4,3,2,1])

print(sumFum grAge [tim, ryan, joe])
print(sumFum lsAge [tim, ryan, joe])
print(sumFum grName [tim, ryan, joe])
print(sumFum lsName [tim, ryan, joe])
