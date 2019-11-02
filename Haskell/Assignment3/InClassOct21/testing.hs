import System.IO

main :: IO ()
main = do
print ("Enter four lines")
line1 <- getLine                                    -- line1 :: String
line2 <- getLine                                    -- line2 :: String
line3 <- getLine                                    -- line3 :: String
line4 <- getLine                                    -- line4 :: String
putStrLn ("you said: " ++ line1 ++ " and " ++ line2 ++ " and " ++ line3 ++ " and finally " ++ line4)