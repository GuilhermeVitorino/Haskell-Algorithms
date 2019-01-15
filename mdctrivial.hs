mdc::Int->Int->(Int,Int,Int)
mdc a 0  = (1, 0, a)
mdc a b | a >=b = adjust (mdc (a-b) b)
        | otherwise = adinv (mdc b a)

adjust::(Int, Int, Int) -> (Int, Int, Int)
adjust (m, n, d) = (m, n-m, d)

adinv::(Int, Int, Int) -> (Int, Int, Int)
adinv (m, n, d) = (n, m, d)