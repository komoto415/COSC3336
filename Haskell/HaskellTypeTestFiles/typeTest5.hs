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

getName :: Person -> String 
getName (Person a _ _) = a

getAge :: Person -> Int
getAge (Person _ a _) = a

getSoda :: Person -> Soda 
getSoda (Person _ _ a) = a

-- show
showName :: Person -> String
showName p@(Person n _ _) = "The name field of (" ++ show p ++ ") is " ++ n

checkFav :: Person -> String
checkFav (Person n _ DrPepper)   = n ++ ", you're my kind of person!"
checkFav (Person n _ _)          = n ++ ", your favorite thing is lame."

main = do
print ((getName ryan, getAge ryan,getSoda ryan))
putStrLn (showName joe)
print (showName ryan)
putStrLn (checkFav ryan)
print (checkFav joe)
