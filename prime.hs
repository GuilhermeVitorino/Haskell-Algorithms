prime :: Integer -> Bool
prime n | (n == 1) = True
		   | (n == 2) = True
		   | (mod n 2 == 0) = False
           | (mod n 3 == 0) = False
           |  otherwise = True
		   