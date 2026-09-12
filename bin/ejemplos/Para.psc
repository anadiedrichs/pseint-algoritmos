// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Recorrido y manipulacion de arreglos unidimensionales (vectores) con VARIAR

PROGRAMA RecorrerArreglo
VAR A[10]: ENTERO
VAR i: ENTERO
INICIO
	// Recorrer los 10 elementos asignandoles enteros aleatorios
	VARIAR i DE 1 HASTA 10 PASO 1
		A[i] = azar(100)
	FINVARIAR

	ESCRIBIR("Los elementos del arreglo son:")
	VARIAR i DE 1 HASTA 10 PASO 1
		ESCRIBIR("Posicion ", i, ": ", A[i])
	FINVARIAR

	ESCRIBIR("En orden inverso:")
	VARIAR i DE 10 HASTA 1 PASO -1
		ESCRIBIR("Posicion ", i, ": ", A[i])
	FINVARIAR
FINPROGRAMA
