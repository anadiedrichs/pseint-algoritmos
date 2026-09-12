// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Uso del operador modulo (MOD)

PROGRAMA Modulo
VAR N, M: ENTERO
INICIO
	ESCRIBIR("Ingrese el numero: ")
	LEER(N)
	ESCRIBIR("Ingrese el divisor: ")
	LEER(M)
	SI N MOD M == 0 ENTONCES
		ESCRIBIR(M, " es divisor exacto de ", N, ".")
	SINO
		ESCRIBIR("El resto de dividir ", N, " por ", M, " es: ", N MOD M)
	FINSI
FINPROGRAMA
