// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Calcula las raices de una ecuacion de segundo grado (formula resolvente)

PROGRAMA Resolvente
VAR a, b, c, disc, preal, pimag, r, r1, r2: REAL
INICIO
	ESCRIBIR("Ingrese el coeficiente A:")
	LEER(a)
	ESCRIBIR("Ingrese el coeficiente B:")
	LEER(b)
	ESCRIBIR("Ingrese el coeficiente C:")
	LEER(c)

	disc = b^2 - 4 * a * c

	SI disc < 0 ENTONCES
		preal = (-b) / (2 * a)
		pimag = rc(-disc) / (2 * a)
		ESCRIBIR("Raiz 1: ", preal, "+", pimag, "i")
		ESCRIBIR("Raiz 2: ", preal, "-", pimag, "i")
	SINO
		SI disc == 0 ENTONCES
			r = (-b) / (2 * a)
			ESCRIBIR("Raiz 1 = Raiz 2: ", r)
		SINO
			r1 = ((-b) + rc(disc)) / (2 * a)
			r2 = ((-b) - rc(disc)) / (2 * a)
			ESCRIBIR("Raiz 1: ", r1)
			ESCRIBIR("Raiz 2: ", r2)
		FINSI
	FINSI
FINPROGRAMA
