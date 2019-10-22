data Soda = Sprite
 | RootBeer
 | Pepsi
 | Coke
 | DrPepper
 deriving Show

listO :: [Soda]
listO = [Sprite, Pepsi, DrPepper, Coke, DrPepper]
  
main = print(listO)
