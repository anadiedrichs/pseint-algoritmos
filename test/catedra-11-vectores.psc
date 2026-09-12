PROGRAMA prueba_vectores
VAR notas[5]: ENTERO
VAR i, suma: ENTERO
INICIO
	suma = 0
	VARIAR i DE 1 HASTA 5 PASO 1
		notas[i] = i * 10
	FINVARIAR

	VARIAR i DE 1 HASTA 5 PASO 1
		suma = suma + notas[i]
		ESCRIBIR("Elemento ", i, " = ", notas[i])
	FINVARIAR

	ESCRIBIR("Suma total del vector: ", suma)
FINPROGRAMA
