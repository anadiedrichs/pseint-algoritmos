PROGRAMA prueba_matrices
VAR matriz[3][3]: ENTERO
VAR i, j, traza: ENTERO
INICIO
	traza = 0
	VARIAR i DE 1 HASTA 3 PASO 1
		VARIAR j DE 1 HASTA 3 PASO 1
			matriz[i][j] = i * 10 + j
		FINVARIAR
	FINVARIAR

	VARIAR i DE 1 HASTA 3 PASO 1
		traza = traza + matriz[i][i]
		VARIAR j DE 1 HASTA 3 PASO 1
			ESCRIBIR("M[", i, "][", j, "] = ", matriz[i][j])
		FINVARIAR
	FINVARIAR

	ESCRIBIR("Traza de la matriz: ", traza)
FINPROGRAMA
