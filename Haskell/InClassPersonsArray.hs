data Person = Person String Int
  deriving Show

joe :: Person
joe = Person "Joe" 42

ryan :: Person
ryan = Person "Ryan" 31

tim :: Person
tim = Person "Time" 29

getName :: Person -> String
getName (Person a _) = a

getAge :: Person -> Int
getAge (Person _ a) = a

addPersArr :: [Person] -> Person -> [Person]
addPersArr p [] = p:[]
addPersArr p (x:xs)
| (getName x) == (getName p) = (x:xs)
| otherwise                  = x : (addPersArr p xs)

main = do
print("Bob")
