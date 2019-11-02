import System.IO
import System.CPUTime
import Numeric

-- Arithmetic operators

data Op = Add | Sub | Mul | Div

-- Defines the show function for Op
instance Show Op where
   show Add = "+"
   show Sub = "-"
   show Mul = "*"
   show Div = "/"

valid :: Op -> Int -> Int -> Bool
valid Add _ _ = True
valid Sub x y = x > y
valid Mul _ _ = True
valid Div x y = x `mod` y == 0

apply :: Op -> Int -> Int -> Int
apply Add x y = x + y
apply Sub x y = x - y
apply Mul x y = x * y
apply Div x y = x `div` y

-- Numeric expressions

data Expr = Val Int | App Op Expr Expr

-- Properly places parentheses
instance Show Expr where
   show (Val n)     = show n
   show (App o l r) = brak l ++ show o ++ brak r
                      where
                         brak (Val n) = show n
                         brak e       = "(" ++ show e ++ ")"

-- Make expression work for decimal data
-- Make a function that takes an [expr] and return an Expr using Add to link Expr
-- Make a function given an Expr it will transform it to Exp Op Val n Val m
-- Example conditions
-- App Op (Val n) (Val m) ==> same
-- App Op e (Val n)
-- App Op e g

values :: Expr -> [Double]
values (Val n)     = [n]
values (App _ l r) = values l ++ values r


eval :: Expr -> [Double]
eval (Val n)     = [n | n > 0]
eval (App o l r) = [apply o x y | x <- eval l,
                                  y <- eval r,
                                  valid o x y]

arrayToExpr :: [Expr] -> Expr
arrayToExpr [x] = x
arrayToExpr (x:xs) = App Add x (arrayToExpr xs)

exprTransform :: Expr -> Expr
exprTransform (App Op (Val n) (Val m)) = (App Op (Val n) (Val m))
exprTransform (App Op (Val n) e) = (App Op (Val n) (Val (head (eval e))))
exprTransform (App Op e (Val n)) = (App Op (Val (head (eval e))) (Val n))
exprTransform (App Op e g)       = (App Op (Val (head (eval e))) (Val (head (eavl g))))



main = do
