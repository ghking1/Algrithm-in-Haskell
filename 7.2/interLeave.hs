
interLeave :: [a] -> [a] -> [a]
interLeave [] xs2 = xs2
interLeave xs1 [] = xs1
interLeave (x1:xs1) (x2:xs2) = x1:x2:(interLeave xs1 xs2)
