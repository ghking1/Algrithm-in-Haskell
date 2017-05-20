
mydrop :: Int -> [a] -> [a]
mydrop _ [] = []
mydrop n (x:xs) = if n == 1 then xs else mydrop (n-1) xs

--test code 
--mydrop 3 [9,8,7,6,5,4,3,2,1]
