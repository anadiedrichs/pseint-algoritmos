// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Manejo de cadenas de caracteres y conteo de vocales

PROGRAMA ContarVocales
VAR frase, vocales: CADENA
VAR i, j, cantVocales: ENTERO
INICIO
	ESCRIBIR("Ingrese una frase:")
	LEER(frase)
	frase = Minusculas(frase)

	vocales = "aeiou"
	cantVocales = 0

	VARIAR i DE 1 HASTA Longitud(frase) PASO 1
		VARIAR j DE 1 HASTA Longitud(vocales) PASO 1
			SI Subcadena(frase, i, i) == Subcadena(vocales, j, j) ENTONCES
				cantVocales = cantVocales + 1
			FINSI
		FINVARIAR
	FINVARIAR

	ESCRIBIR("La frase contiene ", cantVocales, " vocales.")
FINPROGRAMA
