PROGRAMA test_error_io

FUNCION suma_invalida(a, b): ENTERO
INICIO
	ESCRIBIR("Calculando suma...")
	suma_invalida = a + b
RETORNO

INICIO PROGRAMA
	ESCRIBIR(suma_invalida(2, 3))
FINPROGRAMA
