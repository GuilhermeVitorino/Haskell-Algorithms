--devolve o numero de elementos da arvore
data Tree a = Empty | Node (Tree a) a (Tree a)
cont::Tree a->Int
cont Empty = 0
cont (Node lt _ rt) = 1 + (cont lt) + (cont rt)
