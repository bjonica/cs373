-- -------
-- RMSE.hs
-- -------

{-
(>>)     :: IO a          -> IO b       -> IO b -- 'then' operator
(+)      :: a             -> a          -> a
(^)      :: a             -> b          -> a
assert   :: Bool          -> a          -> a
foldl    :: (a -> b -> a) -> a   -> [b] -> a
length   :: [a]                         -> Int
map      :: (a -> b)      -> [a]        -> [b]
putStrLn :: String                      -> IO ()
return   :: a                           -> IO a
sqrt     :: a                           -> a
sum      :: [a]                         -> a
zip      :: [a]           -> [b]        -> [(a, b)]
-}

import Control.Exception (assert)

rmse1 :: [Double] -> [Double] -> Double
rmse1 a p =
    let s = fromIntegral (length a)
        z = zip a p
        v = foldl (\w (x, y) -> w + (x - y) ** 2) 0.0 z
    in sqrt (v / s)

rmse2 :: [Double] -> [Double] -> Double
rmse2 a p =
    let s = fromIntegral (length a)
        z = zip a p
        v = sum (map (\(x, y) -> (x - y) ** 2) z)
    in sqrt (v / s)

rmse3 :: [Double] -> [Double] -> Double
rmse3 a p =
    let s = fromIntegral (length a)
        z = zip a p
        v = sum [(x - y) ** 2 | (x, y) <- z]
    in sqrt (v / s)

test :: ([Double] -> [Double] -> Double) -> IO ()
test f = do
    assert ((show (f [2, 3, 4] [2, 3, 4])) == "0.0")               return ()
    assert ((show (f [2, 3, 4] [3, 4, 5])) == "1.0")               return ()
    assert ((show (f [2, 3, 4] [4, 3, 2])) == "1.632993161855452") return ()

main :: IO ()
main = do
    putStrLn "RMSE.hs"
    test rmse1
    test rmse2
    test rmse3
    putStrLn "Done."
