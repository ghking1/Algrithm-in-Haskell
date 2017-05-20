
insert :: Ord a => a -> [a] -> [a]
insert x [] = [x]
insert x (y:xs) = if x > y then y:(insert x xs)
                           else x:y:xs

insertSort :: Ord a => [a] -> [a] -> [a]
insertSort [] ds = ds
insertSort (x:ss) ds = insertSort ss (insert x ds)

--test code
--insertSort [2,5,3,1,8,3] []
