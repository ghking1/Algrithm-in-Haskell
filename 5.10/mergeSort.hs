
merge :: Ord a => [a] -> [a] -> [a] -> [a]
merge ss1 [] ds = (reverse ds) ++ ss1
merge [] ss2 ds = (reverse ds) ++ ss2
merge (x1:ss1) (x2:ss2) ds = if x1 < x2 then merge ss1 (x2:ss2) (x1:ds)
                                        else merge (x1:ss1) ss2 (x2:ds)

mergeSort :: Ord a => [a] -> [a]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge (mergeSort l) (mergeSort r) []
               where (l, r) = (take m xs, drop m xs)
                     m = (length xs) `div` 2

--test code
--mergeSort [3,2,7,5,4,8,6,4,3,7,9]
