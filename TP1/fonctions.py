import math
def puissance(a,b):
	if not type(a) is int and not type(a) is float:
		raise TypeError("Only integers and floats are allowed")
	if not type(b) is int and not type(b) is float:
		raise TypeError("Only integers and floats are allowed")
	
	if b != 0 and b < 1 and b > -1 and a < 0:
		raise TypeError("Impossible")
	
	if type(b) is float:
		r = math.exp((b)*math.log(a))
		return r
	
	if a == 0 and b < 0:
		raise TypeError("Impossible")
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
