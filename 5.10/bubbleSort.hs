
swap :: Ord a => [a] -> [a]
swap [] = []
swap [x] = [x]
swap (x:y:xs) = if x < y then x:(swap (y:xs))
                         else y:(swap (x:xs))

bubbleSort :: Ord a => [a] -> [a]
bubbleSort [] = []
bubbleSort [x] = [x]
bubbleSort xs = (bubbleSort (init sxs)) ++ [last sxs] where sxs = swap xs 

--test code
--bubbleSort [1,6,4,6,4,2,3]
