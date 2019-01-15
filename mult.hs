mult::Int->(Int->Int)
mult 0 n = 0
mult m n = (mult (m-1) n) + n
