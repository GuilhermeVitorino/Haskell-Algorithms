pot::Int->Int->Int
pot x 0 = 1
pot x n | rem n 2 == 0 = n * n
        | otherwise = x * (pot x (n-1))
		  where r = pot x (div n 2)