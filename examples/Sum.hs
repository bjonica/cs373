-- ------
-- Sum.hs
-- ------

{-
(+)      :: a             -> a        -> a
assert   :: Bool          -> a        -> a
foldl    :: (a -> b -> a) -> a -> [b] -> a
putStrLn :: String                    -> IO ()
return   :: a                         -> IO a
sum      :: [a]                       -> a
-}

import Control.Exception (assert)

sum_1 :: Num a => [a] -> a
sum_1 []       = 0
sum_1 (x : xs) = x + sum_1 xs

sum_2 :: Num a => [a] -> a
sum_2 a = foldl (+) 0 a

test :: ([Int] -> Int) -> IO ()
test f = do
    assert ((f [])        == 0) return ()
    assert ((f [2])       == 2) return ()
    assert ((f [2, 3])    == 5) return ()
    assert ((f [2, 3, 4]) == 9) return ()

main :: IO ()
main = do
    putStrLn "Sum.hs"
    test sum_1
    test sum_2
    test sum
    putStrLn "Done."
