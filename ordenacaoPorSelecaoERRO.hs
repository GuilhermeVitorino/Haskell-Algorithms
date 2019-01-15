ordsel::Ord a->[a]->[a]
ordsel _ [] = []
ordsel xs = m: ordsel (remp m xs)
            where m = menor xs

menor :: Ord a => [a] -> a
menor [] = error "lista vazia"
menor [x] = x
menor (x:xs) = min x (menor xs)

min :: Ord a => a -> a -> a
min x y | x <= y = x
        | otherwise = y  