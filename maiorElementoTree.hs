data Tree a = Empty | Node (Tree a) a (Tree a)
maior::(Ord int) => Tree int -> int
maior (Node Empty x Empty) = x
maior (Node Empty x rt) = max x (maior rt)
maior (Node lt x Empty)  = max x (maior lt)
maior (Node lt x rt) = max x (max(maior rt) (maior lt))
