PROGRAMA validar
VAR numero: ENTERO
INICIO
	REPETIR
		ESCRIBIR("Ingresar numero (1-100): ")
		LEER(numero)
		SI (numero < 1 [O] numero > 100) ENTONCES
			ESCRIBIR("Fuera de rango, ingresarlo de nuevo")
		FINSI
	HASTA QUE (numero >= 1 [Y] numero <= 100)
FINPROGRAMA
