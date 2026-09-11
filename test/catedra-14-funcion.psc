PROGRAMA test_funciones

FUNCION calcular_media(num1, num2): REAL
VAR resultado: REAL
INICIO
	resultado = (num1 + num2) / 2
	calcular_media = resultado
RETORNO

FUNCION factorial(n): ENTERO
INICIO
	SI n <= 1 ENTONCES
		factorial = 1
	SINO
		factorial = n * factorial(n - 1)
	FINSI
RETORNO

VAR media: REAL
VAR f: ENTERO

INICIO PROGRAMA
	media = calcular_media(14, 26)
	ESCRIBIR("La media de 14 y 26 es ", media)
	f = factorial(5)
	ESCRIBIR("El factorial de 5 es ", f)
FINPROGRAMA
