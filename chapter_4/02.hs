countTrue :: Num p => [Bool] -> p
countTrue [] = 0
countTrue (x : xs) =
  if x == True then 1 + countTrue xs else countTrue xs