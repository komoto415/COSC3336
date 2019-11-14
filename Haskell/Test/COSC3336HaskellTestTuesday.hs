{- This is the Haskell test for COSC 3336
   The sections of the test are as follows:
   Questions 1-3, from the function definition (and sample call)
   determine the appropriate function header (not that you don't have to do anything
   for problem #3 :)
   Questions 4-6, there are errors present inside the functions.
   Fix the errors so that the correct output is displayed from the function call
   Be sure to read the comments above each function declaring what the
   output is supposed to be
   Questions 7-10, pick 3 and complete the function definition.
   Question 11, create the full function.-}

-----------------------------------------------------------------------
-- Determine the header of each function
-----------------------------------------------------------------------


-- Problem #1 DONE
-- This function will generate the length of any input array
func1 :: [t] -> Integer
func1 [] = 0
func1 (x:xs) = 1 + func1 xs



-- Problem #2 DONE
-- This function will generate the first, middle, and last element of an array
func2 :: [t] -> [t]
func2 [] = []
func2 [x] = [x]
func2 (x:y:[]) = x : y : []
func2 x = (x !! 0) : (x !! ((length x) `div` 2)) : (x !! ((length x) - 1)) : []


{-
-- Problem #3
-- This function will take an input array and return the prime numbers
-- NO EDITS ARE NEEDED FOR THIS FUNCTION, DISREGARD :)
func3 :: [Int] -> [Int]
func3 (p:xs) = p : func3 [x | x <- xs, x `mod` p /= 0]
-}

-----------------------------------------------------------------------
-- Fix the functions below from their errors. Note that there many be
-- multiple errors per function. Pay close attention to the function
-- description above it. Errors may include missing Haskell function
-- calls, improper sign usage (+ instead of -, > instead of <, ...),
-- bad headers (missing declarations or type bindings), bad conditions,
-- ...
-----------------------------------------------------------------------


-- Problem #4 DONE
-- This function will return the input list in sorted order
-- The helper function is included on this problem (it can possess
-- errors that must be addressed)
func4 :: Ord a => [a] -> [a]
func4 [x] = [x]
func4 (x:y:xs)
 | helper1 (x:y:xs)   = (x:y:xs)
 | x < y              = func4 (x : ( func4 (y:xs)))
 | otherwise          = func4 (y : ( func4 (x:xs)))

-- Lets the user know if the input list is in sorted order
helper1 :: Ord a => [a] -> Bool
helper1 [x] = True
helper1 (x:y:xs)
 | x < y    = helper1 (y:xs)
 | otherwise = False



-- problem #5 DONE
-- This function will determine if the input array is a palindrome
-- (the same read backwords and forwards, such as 123321)
func5 :: (Eq a) => [a] -> Bool
func5 x = x == (reverse x)


{-
-- problem #6 ATTEMPTED
-- This function takes as input an unsorted array and returns an array
-- in reverse sorted order
func6 :: Ord a => [a] -> [a]
func6 [x]     = [x]
func6 (p:ps) = (func6 a) ++ b
                where
                 a = filter (< p) ps
                 b = filter (> p) ps
-}


------------------------------------------------------------------
-- For the following problems, fill in the missing component(s)
-- of the function calls
-- All of them utilize the Op and Expt data type defined here
------------------------------------------------------------------

data Op = Add | Sub | Mul | Div

instance Show Op where
   show Add = "+"
   show Sub = "-"
   show Mul = "*"
   show Div = "/"

valid :: Op -> Double -> Double -> Bool
valid Add _ _ = True
valid Sub _ _ = True
valid Mul _ _ = True
valid Div x y = ((y /= 0) && (x > y))

apply :: Op -> Double -> Double -> Double
apply Add x y = x + y
apply Sub x y = x - y
apply Mul x y = x * y
apply Div x y = x / y

-- Numeric expressions

data Expr = Val Double | App Op Expr Expr

instance Show Expr where
   show (Val n)     = show n
   show (App o l r) = brak l ++ show o ++ brak r
                       where
                         brak (Val n) = show n
                         brak e       = "(" ++ show e ++ ")"

eval :: Expr -> [Double]
eval (Val n)     = [n]
eval (App o l r) = [apply o x y | x <- eval l,
                                  y <- eval r,
                                  valid o x y]


-- Problem #7 DONE
-- This function will output a tuple containing the string representation of whichever input
-- expression is greater, and the evaluated result
func7 :: Expr -> Expr -> (String, [Double])
func7 x y
 | eval x > eval y    = (show x, eval x)
 | otherwise          = (show y, eval y)


{-
-- Problem #8
-- This function will take two input expressions and an operation and merge them
-- together to form a new operation. The first expression will be evaluated
func8 :: Expr -> Expr -> Op -> Expr
func8 l r o = App o (eval l) (eval r)
-}

{-
-- Problem #9
-- This function will take a list of expressions and return the expression with the
-- smallest absolute value
func9 :: [Expr] -> Expr
func9 [x] = x
func9 (x:xs) = if (abs ((eval x) !! 0)) < (abs ((eval ???) !! 0)) then ??? else ???
                where ????
-}


--Problem #10 DONE
-- This function will take an expression list and an Op as input.
-- It will apply that Op to every item in the array (if Add is passed in,
-- all items in the array will be added together, if Mul is passed in all will
-- be multiplied together, ...)
func10 :: [Expr] -> Op -> Double
func10 [x] _ = (eval x) !! 0
func10 (x:xs) f = (apply f ((eval x) !! 0) (func10 xs f))


{-
-- Problem #11
-- This function will evaluate the inverse of the input expression
-- (Plus <-> Minus) (Mul <-> Div)
-- Note we must swap all operations (including inside the expression)
-- Hint: Define a helper function
func11 :: Expr -> Expr
-}

main = do
 print $ "Welcome to the COSC 3336 Haskell test!"
 print $ "Uncomment the function calls below to observe their output and test your implementations"
 print $ "Do recall that all print statements must be indented in one space or errors will be thrown"
 print $ "Problem #1 DONE"
 print $ func1 [1,2,3,4,5,6,7,8,9,10]
 print $ "Problem #2 DONE"
 print $ func2 [1,2,3,4,5,6,7,8,9]
 print $ "Problem #3 No need to do"
--print $ take 50 $ func3 [2..]
 print $ "Problem #4 DONE"
 print $ func4 [12,18,1,5,6,50,3]
 print $ "Problem #5 DONE"
 print $ func5 "Yeet teeY"
 print $ "Problem #6 So close. So, so close"
-- print $ func6 [34,12,4,3,9,15,6,10,25]
 print $ "Problem #7 DONE"
 print $ func7 (App Add (Val 5) (Val 3)) (App Sub (Val 5) (Val 2))
 print $ "Problem #8"
-- print $ func8 (App Add (Val 5) (Val 3)) (App Sub (App Mul (Val 3) (Val 1.5)) (Val 2)) Add
 print $ "Problem #9"
-- print $ func9 [(App Add (Val 5) (Val 3)), (App Sub (Val 5) (Val 2)), (App Sub (App Mul (Val 3) (Val 1.5)) (Val 2)), (App Sub (App Mul (Val (-3)) (Val 2.5)) (Val 12))]
 print $ "Problem #10 DONE"
 print $ func10 [(App Add (Val 5) (Val 3)), (App Sub (Val 5) (Val 2)), (App Sub (App Mul (Val 3) (Val 1.5)) (Val 2)), (App Sub (App Mul (Val (3)) (Val 2.5)) (Val 5))] Mul
 print $ "Problem #11"
-- print $ func11 (App Sub (App Div (App Add (Val 2) (Val 1)) (Val 12)) (App Mul (Val 3) (Val 1.5)) )
