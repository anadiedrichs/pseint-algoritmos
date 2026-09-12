PROGRAMA prueba_parametro_arreglo

PROCEDIMIENTO procesar(b[5]: REAL)
VAR i: ENTERO
INICIO
	VARIAR i DE 1 HASTA 5 PASO 1
		b[i] = b[i] * 2
	FINVARIAR
FINPROCEDIMIENTO

VAR vec[5]: REAL
VAR k: ENTERO

INICIO
	VARIAR k DE 1 HASTA 5 PASO 1
		vec[k] = k
	FINVARIAR

	procesar(vec)
	ESCRIBIR("vec[1]: ", vec[1])
	ESCRIBIR("vec[5]: ", vec[5])
FINPROGRAMA
