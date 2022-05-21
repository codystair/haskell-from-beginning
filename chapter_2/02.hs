bothZero :: (Eq a1, Eq a2, Num a1, Num a2) => a1 -> a2 -> Bool
bothZero a b = a /= 0 && b /= 0