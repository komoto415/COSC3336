data Soda = Sprite
 | RootBeer
 | Pepsi
 | Coke
 | DrPepper
 deriving Show

hasCaffeine :: Soda -> Bool
hasCaffeine Sprite    = False
hasCaffeine RootBeer  = False
hasCaffeine _         = True

listO :: [Soda]
listO = [Sprite, Pepsi, DrPepper, Coke, DrPepper, RootBeer]
  
main = do
print(listO)
print(map hasCaffeine listO)
