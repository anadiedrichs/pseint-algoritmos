// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Promedio de una lista de N datos

PROGRAMA Promedio
VAR i, n: ENTERO
VAR acum, dato, prom: REAL
INICIO
	ESCRIBIR("Ingrese la cantidad de datos:")
	LEER(n)
	acum = 0
	VARIAR i DE 1 HASTA n PASO 1
		ESCRIBIR("Ingrese el dato ", i, ":")
		LEER(dato)
		acum = acum + dato
	FINVARIAR
	prom = acum / n
	ESCRIBIR("El promedio es: ", prom)
FINPROGRAMA
