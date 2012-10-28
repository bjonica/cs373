-- ------
-- Max.hs
-- ------

data A =
    A Int
    deriving (Eq, Ord, Show)

data B =
    B Int
    deriving (Show)

instance Eq B where
    B x == B y  =  x == y

instance Ord B where
    B x <  B y  =  x <  y

main :: IO ()
main = do
    putStrLn "Max.hs"

    putStrLn (show (max (A 2) (A 3)))
--  putStrLn (show (max (B 2) (B 3))) -- Stack space overflow: current size 8388608 bytes.

    putStrLn "Done."
