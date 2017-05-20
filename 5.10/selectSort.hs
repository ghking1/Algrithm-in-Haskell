
delete :: Eq a => a -> [a] -> [a]
delete _ [] = []
delete n (x:xs) = if n == x then delete n xs else x:(delete n xs)

selectSort :: Ord a => [a] -> [a] -> [a]
selectSort [] ds = ds
selectSort ss ds = selectSort dss (ma:ds) where ma = maximum ss
                                                dss = delete ma ss

--test code 
--selectSort [3,1,5,8,4,5] []
