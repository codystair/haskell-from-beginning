elem' :: Eq t => t -> [t] -> Bool
elem' a [] = False
elem' a (x : xs) = x == a || elem' a xs