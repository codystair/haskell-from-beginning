sum' :: (Eq p, Num p) => p -> p
sum' n =
  if n == 1 then 1 else n + sum' (n - 1)
