quociente::Int->Int->Int
quociente m n | m < n = 0
			  |otherwise = 1 + quociente (m-n) n