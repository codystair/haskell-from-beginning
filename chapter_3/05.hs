charCategory :: Num p => Char -> p
charCategory x
  | x >= 'a' && x <= 'z' = 0
  | x >= 'A' && x <= 'A' = 1
  | otherwise = 2