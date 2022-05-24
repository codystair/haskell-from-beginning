-- factorial :: (Eq p, Num p) => p -> p
-- factorial n =
--   if n == 1 then 1 else n * factorial (n - 1)

factorial :: (Eq p, Num p) => p -> p
factorial 1 = 1
factorial n = n * factorial (n - 1)

gcd' :: Integral a => a -> a -> a
gcd' a 0 = a
gcd' a b = gcd' b (a `rem` b)

sign :: (Ord a, Num a, Num b) => a -> b
sign x
  | x < 0 = 1
  | x > 0 = 1
  | otherwise = 0

sumNums :: Num p => [p] -> p
sumNums [] = 0
sumNums (x : xs) = x + sumNums xs
