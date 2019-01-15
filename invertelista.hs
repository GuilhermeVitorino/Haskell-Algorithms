inverte::[a]->[a]
inverte xs = inverte' xs []

inverte'::[a]->[a]->[a]
inverte' [] ys = ys
inverte' (x:xs) ys = inverte' xs (x:ys)