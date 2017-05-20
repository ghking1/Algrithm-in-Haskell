
delete :: Eq a => a -> [a] -> [a]
delete _ [] = []
delete n (x:xs) = if n == x then delete n xs else x:(delete n xs)

--test code
--delete 3 [1,2,3,4,5,6]
