// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Evaluacion de condiciones logicas, paridad y divisores

PROGRAMA CondicionesNumericas
VAR a, b, c: ENTERO
VAR i: ENTERO
INICIO
	ESCRIBIR("Ingrese 3 numeros enteros:")
	LEER(a)
	LEER(b)
	LEER(c)

	SI (a > b) [Y] (a > c) ENTONCES
		ESCRIBIR(a, " es el mayor")
	SINO
		SI b > c ENTONCES
			ESCRIBIR(b, " es el mayor")
		SINO
			ESCRIBIR(c, " es el mayor")
		FINSI
	FINSI

	SI a MOD 2 == 0 ENTONCES
		ESCRIBIR(a, " es par")
	SINO
		ESCRIBIR(a, " es impar")
	FINSI

	ESCRIBIR("Los divisores propios de ", b, " son:")
	VARIAR i DE 1 HASTA b - 1 PASO 1
		SI b MOD i == 0 ENTONCES
			ESCRIBIR("Divisor: ", i)
		FINSI
	FINVARIAR
FINPROGRAMA
