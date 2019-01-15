ordins::(Ord a)=>[a]->[a]
ordins(x:xs) = insere x (ordins xs)

insere::(Ord a)=>a->[a]->[a]
insere x [] = [x]
insere x (y:ys) | x < y = x:y:ys
                | otherwise = y: insere x ys
