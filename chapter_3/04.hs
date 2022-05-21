-- I think it is easier with pattern matching.  This
-- would be true as functions grow, I would think.
not' :: Bool -> Bool
not' x
  | x = False
  | otherwise = True

sumMatch :: (Eq p, Num p) => p -> p
sumMatch n
  | n == 1 = 1
  | otherwise = n + sumMatch (n - 1)

power :: (Eq t1, Num t1, Num t2) => t2 -> t1 -> t2
power x n
  | n == 1 = x
  | n == 2 = x * 2
  | otherwise = x * power x (n - 1)
