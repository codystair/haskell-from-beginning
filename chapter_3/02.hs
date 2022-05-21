sumMatch :: (Eq p, Num p) => p -> p
sumMatch 1 = 1
sumMatch n = n + sumMatch (n - 1)