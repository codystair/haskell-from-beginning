evenElements :: [a] -> [a]
evenElements [] = []
evenElements [a] = []
evenElements (_ : x : xs) = x : evenElements xs