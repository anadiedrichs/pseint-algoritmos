// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Determina si tres lados forman un triangulo rectangulo y calcula su area

PROGRAMA TrianguloRectangulo
VAR l1, l2, l3: REAL
VAR cat1, cat2, hip, area: REAL
INICIO
	ESCRIBIR("Ingrese el lado 1:")
	LEER(l1)
	ESCRIBIR("Ingrese el lado 2:")
	LEER(l2)
	ESCRIBIR("Ingrese el lado 3:")
	LEER(l3)
	SI l1 > l2 ENTONCES
		cat1 = l2
		SI l1 > l3 ENTONCES
			hip = l1
			cat2 = l3
		SINO
			hip = l3
			cat2 = l1
		FINSI
	SINO
		cat1 = l1
		SI l2 > l3 ENTONCES
			hip = l2
			cat2 = l3
		SINO
			hip = l3
			cat2 = l2
		FINSI
	FINSI
	SI hip^2 == cat1^2 + cat2^2 ENTONCES
		area = (cat1 * cat2) / 2
		ESCRIBIR("El area es: ", area)
	SINO
		ESCRIBIR("No es un triangulo rectangulo.")
	FINSI
FINPROGRAMA
