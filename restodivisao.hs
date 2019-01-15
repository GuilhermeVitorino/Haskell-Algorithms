resto::Int->Int->Int
resto m n |	 m < n = m
          |otherwise = resto (m-n) n
