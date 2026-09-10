PROGRAMA prueba_variar_sin_salto
VAR i, acumulador: ENTERO
INICIO
	acumulador = 0
	VARIAR i DE 1 HASTA 5
		acumulador = acumulador + i
	FINVARIAR
	ESCRIBIR("Acumulador final: ", acumulador)
FINPROGRAMA
