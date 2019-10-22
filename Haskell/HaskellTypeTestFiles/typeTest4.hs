-- /show
data FailableDouble = Failure 
                    | OK Double
  deriving Show
  
-- show
a = Failure
b = OK 3.4

-- show
safeDiv :: Double -> Double -> FailableDouble
safeDiv _ 0 = Failure
safeDiv x y = OK (x / y)

-- show
failureToZero :: FailableDouble -> Double
failureToZero Failure = 0
failureToZero (OK d) = d

main = do
print (failureToZero Failure, failureToZero (OK 3.4))
print (safeDiv 2 0, safeDiv 3 4)
print (a,b)