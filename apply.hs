apply::(Int->Int)->Int->(Int->Int)
apply f x 0 = x
apply f x n = f (apply f x (n-1))

dobra::Int->Int
dobra x = 2 * x

foo::Int->(Int->Int)
foo = apply dobra