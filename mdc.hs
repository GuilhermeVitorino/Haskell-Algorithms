mdc::Int->Int->Int
mdc a 0 = a
mdc a b | b > a = mdc b a
        | otherwise = mdc (a-b) b