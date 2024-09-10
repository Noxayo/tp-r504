import fonctions as f
print("Hello, World !")
def carre(x):
	return(x*x)
while(True):
	r = input("Donner un entier positif : ")
	print("Le carré de votre nombre est :", carre(int(r)))
	a = int(input("Donner le nombre A : "))
	b = int(input("Donner le nombre B : "))
	print("A à la puissance de B donne :", f.puissance(a,b))
