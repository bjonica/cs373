-- ------
-- Max.hs
-- ------

{-
assert   :: Bool   -> a -> a
putStrLn :: String      -> IO ()
return   :: a           -> IO a
-}

import Control.Exception (assert)

data A =
    A Int
    deriving (Eq, Ord)

data B =
    B Int
    deriving (Eq, Ord)

my_max :: (Ord a) => a -> a -> a
my_max x y =
    if x < y then
        y
    else
        x

main :: IO ()
main = do
    putStrLn "Max.hs"

    assert ((   max (A 2) (A 3)) == (A 3)) return ()
    assert ((my_max (A 2) (A 3)) == (A 3)) return ()

    assert ((   max (B 2) (B 3)) == (B 3)) return ()
    assert ((my_max (B 2) (B 3)) == (B 3)) return ()

    putStrLn "Done."
