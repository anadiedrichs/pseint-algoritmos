PROGRAMA multiplicacion
VAR numero, resultado, veces: ENTERO
INICIO
	ESCRIBIR("Ingresar numero: ")
	LEER(numero)
	resultado = numero
	veces = 1
	MIENTRAS resultado < 1000 HACER
		resultado = resultado * numero
		veces = veces + 1
	FINMIENTRAS
	ESCRIBIR("Se puede multiplicar ", veces, " veces sin llegar a 1000")
FINPROGRAMA
