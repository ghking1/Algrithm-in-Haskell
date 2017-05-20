
hanoi :: Int ->Int -> Int -> Int -> [(Int, Int)]
hanoi 1 a b c = [(a, b)]
hanoi n a b c = concat [(hanoi (n-1) a c b), [(a, b)], (hanoi (n-1) c b a)]

--test
--hanoi 5 1 2 3
