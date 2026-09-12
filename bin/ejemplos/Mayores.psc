// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Busca los dos mayores de una lista de N datos

PROGRAMA Mayores
VAR datos[200]: REAL
VAR n, i: ENTERO
VAR may1, may2: REAL
INICIO
	ESCRIBIR("Ingrese la cantidad de datos (de 2 a 200):")
	LEER(n)

	VARIAR i DE 1 HASTA n PASO 1
		ESCRIBIR("Ingrese el dato ", i, ":")
		LEER(datos[i])
	FINVARIAR

	SI datos[1] > datos[2] ENTONCES
		may1 = datos[1]
		may2 = datos[2]
	SINO
		may1 = datos[2]
		may2 = datos[1]
	FINSI

	VARIAR i DE 3 HASTA n PASO 1
		SI datos[i] > may1 ENTONCES
			may2 = may1
			may1 = datos[i]
		SINO
			SI datos[i] > may2 ENTONCES
				may2 = datos[i]
			FINSI
		FINSI
	FINVARIAR

	ESCRIBIR("El mayor es: ", may1)
	ESCRIBIR("El segundo mayor es: ", may2)
FINPROGRAMA
