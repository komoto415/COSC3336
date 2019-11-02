makeDivArray ::  Double -> [Double] -> [Double]
makeDivArray _ [] = []
makeDivArray x (y:ys) = (y/x) : (makeDivArray y ys)

main = print(makeDivArray 1 [1.0, 2.5, 4.6, 9.4])