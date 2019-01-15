pot::Int->Int->Int
pot x 0 = 1
pot x n = x * pot x (n-1)