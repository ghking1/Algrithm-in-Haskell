
getfromfront :: Eq a => a -> [a] -> [a] -> [a]
getfromfront k [] rs = rs 
getfromfront k xs rs = if (last xs) == k then getfromfront k (init xs) (k:rs)
                                         else rs

getfrombehind :: Eq a => a -> [a] -> [a] -> [a]
getfrombehind k [] rs = rs 
getfrombehind k xs rs = if (head xs) == k then getfrombehind k (tail xs) (k:rs)
                                          else rs

bsearch :: (Ord a) => a -> [a] -> [a] 
bsearch x [] = []
bsearch x xs = let (front, m:behind)=splitAt (length xs `div` 2) xs in
                   if x < m then bsearch x front
                            else if x > m then bsearch x behind
                                          else concat [getfromfront m front [], [m], getfrombehind m behind []]  

--test code
--bsearch 4 [1,2,3,4,4,4,5,6,7]
