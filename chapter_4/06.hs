elem' :: Eq t => t -> [t] -> Bool
elem' a [] = False
elem' a (x : xs) = x == a || elem' a xs

makeSet [] = []
makeSet [a] = [a]
makeSet (x : xs) =
  if elem' x xs then makeSet xs else x : makeSet xs
