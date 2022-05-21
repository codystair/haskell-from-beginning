power :: (Eq t1, Num t1, Num t2) => t2 -> t1 -> t2
power _ 0 = 1
power x 1 = x
power x n = x * power x (n - 1)