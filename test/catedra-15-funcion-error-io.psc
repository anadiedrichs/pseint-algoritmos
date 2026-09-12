PROGRAMA test_error_io

FUNCION suma_invalida(a: ENTERO, b: ENTERO): ENTERO
INICIO
	ESCRIBIR("Esto no se permite dentro de una funcion")
	suma_invalida = a + b
RETORNO

INICIO
	ESCRIBIR(suma_invalida(5, 3))
FINPROGRAMA
