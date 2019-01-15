potl::Int->Int->Int->Int
potl x 0 p = p
potl x y p | rem y 2 == 0 = potl (x*x) (div y 2) p
           | otherwise = potl x (y-1) (x*p)