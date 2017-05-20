
bsearch :: (Ord a) => a -> [a] -> Bool
bsearch x [] = False
bsearch x xs = let (front, m:behind)=splitAt (length xs `div` 2) xs in
                   if x < m then bsearch x front
                            else if x > m then bsearch x behind
                                          else True

--test code
--bsearch 3 [1,2,3,4,5,6,7,8]
