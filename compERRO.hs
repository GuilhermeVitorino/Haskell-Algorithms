data List a = Empty | Cons a(List a)

comp:: List a -> int
comp Empty = 0
comp (Cons _ xs) = 1 + comp xs