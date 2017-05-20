
removeOne :: Eq a => a -> [a] -> [a]
removeOne n [] = [n]
removeOne n (x:xs) = if n == x then removeOne n xs else x:(removeOne n xs)

removeDup :: Eq a => [a] -> [a]
removeDup xs = foldr removeOne xs xs
