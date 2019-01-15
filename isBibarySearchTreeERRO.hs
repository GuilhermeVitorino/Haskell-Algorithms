data Tree a = Empty | Node (Tree a) a (Tree a)
isbst::(Ord a) => Tree a -> Bool
isbst Empty = True
isbst (Node lt x rt) = (isbst lt) && (isbst rt) && (verifica lt x rt) 

verifica::(Ord a) => (Tree a) -> a -> (Tree a) -> Bool
verifica Empty _ Empty = True
verifica lt x Empty = (max lt) < x
verifica Empty x rt = x < (min rt)
verifica lt x rt = (max lt) < x && x < (min rt)
