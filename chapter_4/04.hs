dropLast :: [a] -> [a]
dropLast [] = []
dropLast [a] = []
dropLast (x : xs) = x : dropLast xs