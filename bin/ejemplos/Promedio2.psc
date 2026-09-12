// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Subprogramas que reciben arreglos como argumento

PROGRAMA Principal

FUNCION Promedio(arreglo[100]: REAL, cantidad: ENTERO): REAL
VAR i: ENTERO
VAR suma: REAL
INICIO
	suma = 0
	VARIAR i DE 1 HASTA cantidad PASO 1
		suma = suma + arreglo[i]
	FINVARIAR
	Promedio = suma / cantidad
RETORNO

VAR i, n: ENTERO
VAR datos[100]: REAL
VAR prom: REAL

INICIO
	ESCRIBIR("Ingrese la cantidad de datos:")
	LEER(n)

	VARIAR i DE 1 HASTA n PASO 1
		ESCRIBIR("Ingrese el dato ", i, ":")
		LEER(datos[i])
	FINVARIAR

	prom = Promedio(datos, n)
	ESCRIBIR("El promedio es: ", prom)
FINPROGRAMA
