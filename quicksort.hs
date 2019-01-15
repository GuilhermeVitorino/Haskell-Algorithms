qsort::Ord a=>[a]->[a]
qsort [] = []
qsort (x:xs) = (x:qsort ls) ++ (x: qsort bs)
                    where (ls , bs) = partition x xs

partition::Ord a=>a->[a]->([a],[a])
partition _ [] = ([],[])
partition x (y:ys) | y <= x = (y:ls, bs)
                   | otherwise = (ls,y:bs)
                    where (ls , bs) = partition x ys
