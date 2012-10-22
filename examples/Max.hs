-- ------
-- Max.hs
-- ------

-- compile-time polymorphism

{-
assert   :: Bool   -> a -> a
putStrLn :: String      -> IO ()
return   :: a           -> IO a
-}

{-
class Eq a where
    (==) :: a -> a -> Bool

class (Eq a) => Ord a where
    (<) :: a -> a -> Bool

instance Eq A where
    A x == A y  =  x == y

instance Ord A where
    A x <  A y  =  x <  y
-}

import Control.Exception (assert)

data A =
    A Int
    deriving (Eq, Ord)

data B =
    B Int

instance Eq B where
    B x == B y  =  x == y

instance Ord B where
    B x <  B y  =  x <  y

data C =
    C Int

myMax1 :: (Ord a) => a -> a -> a
myMax1 x y =
    if x < y then
        y
    else
        x

myMax2 :: a -> a -> (a -> a-> Bool) -> a
myMax2 x y bf =
    if (bf x y) then
        y
    else
        x

main :: IO ()
main = do
    putStrLn "Max.hs"

    assert ((myMax1 (2::Int) 3) == 3) return ()
    assert ((  max  (2::Int) 3) == 3) return ()

    assert ((myMax1 (2.3::Float) 4) == 4) return ()
    assert ((  max  (2.3::Float) 4) == 4) return ()

    assert ((myMax1 "abc" "def") == "def") return ()
    assert ((  max  "abc" "def") == "def") return ()

    assert ((myMax1 (A 2) (A 3)) == (A 3)) return ()
    assert ((  max  (A 2) (A 3)) == (A 3)) return ()
    assert ((myMax1 (B 2) (B 3)) == (B 3)) return ()
--  assert ((  max  (B 2) (B 3)) == (B 3)) return ()
--  assert ((myMax1 (C 2) (C 3)) == (C 3)) return () -- No instance for (Ord C), (Eq C)
--  assert ((  max  (C 2) (C 3)) == (C 3)) return () -- No instance for (Ord C), (Eq C)

    assert ((myMax2 (A 2) (A 3) (\x y -> y < x)) == (A 2)) return ()
    assert ((myMax2 (B 2) (B 3) (\x y -> y < x)) == (B 2)) return ()
--  assert ((myMax2 (C 2) (C 3) (\x y -> y < x)) == (C 2)) return () -- -- No instance for (Ord C), (Eq C)

    putStrLn "Done."
