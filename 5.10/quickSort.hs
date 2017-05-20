
filterSplit :: (a -> Bool) -> [a] -> ([a], [a])
filterSplit f [] = ([], [])
filterSplit f (x:xs) = if (f x) then ((x:l), r) 
                                else (l, (x:r)) 
                       where (l, r) = filterSplit f xs

quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort [x] = [x]
quickSort (x:xs) = quickSort l ++ [x] ++ quickSort r
                 where (l, r) = filterSplit (<x) xs

--test code
--quickSort [2,3,1,9,2,9,8,2]
