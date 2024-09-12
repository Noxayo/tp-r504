def puissance(a,b):
	if not type(a) is int:
		raise TypeError("Only integers are allowed")
	if not type(b) is int:
		raise TypeError("Only integers are allowed")
	
	if a == 0 and b < 0:
		x = 0/0
	if b == 0:
		return 1
	if a == 0:
		return 0
	
	r = a
	
	if b < 0:
		for i in range((-b)-1):
			r = (r)*(a)
		return 1/r
	r = a
	for i in range(b-1):
		r = (r)*(a)
	return r
