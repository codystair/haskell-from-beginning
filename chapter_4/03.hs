reverse' :: [a] -> [a]
reverse' [] = []
reverse' [a] = [a]
reverse' (x : xs) = reverse' xs ++ [x]

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [a] = True
isPalindrome arr = arr == reverse' arr

makePalindrome :: [a] -> [a]
makePalindrome [] = []
makePalindrome [a] = [a]
makePalindrome arr = arr ++ reverse' arr