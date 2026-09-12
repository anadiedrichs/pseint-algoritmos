// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Expresiones, operadores y funciones matematicas integradas

PROGRAMA Matematicas
VAR EligeSalir, EsPrimo: LOGICO
VAR N, Nu, r: REAL
VAR eleccion, f, Divisor: ENTERO
INICIO
	EligeSalir = FALSO
	ESCRIBIR("Ingresar un numero:")
	LEER(N)

	REPETIR
		ESCRIBIR(" ")
		ESCRIBIR("Elija una opcion:")
		ESCRIBIR("  1 - Seno, coseno, arcotangente")
		ESCRIBIR("  2 - Logaritmo natural, funcion exponencial")
		ESCRIBIR("  3 - Truncar, redondear")
		ESCRIBIR("  4 - Raiz cuadrada")
		ESCRIBIR("  5 - Valor absoluto")
		ESCRIBIR("  6 - Separar parte entera y decimal")
		ESCRIBIR("  7 - Hallar factorial")
		ESCRIBIR("  8 - Averiguar si es primo")
		ESCRIBIR("  9 - Ingresar otro numero")
		ESCRIBIR("  0 - Salir")
		ESCRIBIR(" ")
		LEER(eleccion)

		SEGUN eleccion HACER
			1:
				ESCRIBIR("Seno: ", sen(N))
				ESCRIBIR("Coseno: ", cos(N))
				ESCRIBIR("Arcotangente: ", atan(N))
			2:
				SI N <= 0 ENTONCES
					ESCRIBIR("El numero debe ser mayor a cero!")
				SINO
					ESCRIBIR("Logaritmo natural: ", ln(N))
					ESCRIBIR("Funcion exponencial: ", exp(N))
				FINSI
			3:
				ESCRIBIR("Truncar: ", trunc(N))
				ESCRIBIR("Redondear: ", redon(N))
			4:
				SI N >= 0 ENTONCES
					ESCRIBIR("Raiz Cuadrada: ", rc(N))
				SINO
					ESCRIBIR("No se puede calcular la raiz de un negativo")
				FINSI
			5:
				ESCRIBIR("Valor Absoluto: ", abs(N))
			6:
				ESCRIBIR("Parte Entera: ", trunc(N))
				ESCRIBIR("Parte Decimal: ", N - trunc(N))
			7:
				SI N <> trunc(N) ENTONCES
					ESCRIBIR("El numero debe ser entero!")
				SINO
					SI abs(N) > 50 ENTONCES
						ESCRIBIR("Resultado muy grande!")
					SINO
						r = 1
						f = 1
						MIENTRAS f <= abs(N) HACER
							SI N < 0 ENTONCES
								r = (-f) * r
							SINO
								r = f * r
							FINSI
							f = f + 1
						FINMIENTRAS
						ESCRIBIR("Factorial: ", r)
					FINSI
				FINSI
			8:
				SI N <> trunc(N) ENTONCES
					ESCRIBIR("El numero debe ser entero!")
				SINO
					SI N < 0 ENTONCES
						Nu = N * (-1)
					SINO
						Nu = N
					FINSI
					SI trunc(N) MOD 2 == 0 ENTONCES
						SI Nu == 2 ENTONCES
							ESCRIBIR("Numero Primo: VERDADERO")
						SINO
							ESCRIBIR("Numero Primo: FALSO (2 x ", N / 2, ")")
						FINSI
					SINO
						EsPrimo = (Nu <> 1)
						Divisor = 3
						MIENTRAS (Divisor <= rc(Nu)) [Y] (EsPrimo) HACER
							SI trunc(N) MOD Divisor == 0 ENTONCES
								EsPrimo = FALSO
							SINO
								Divisor = Divisor + 2
							FINSI
						FINMIENTRAS
						ESCRIBIR("Numero Primo: ", EsPrimo)
					FINSI
				FINSI
			9:
				ESCRIBIR("Ingrese un numero:")
				LEER(N)
			0:
				EligeSalir = VERDADERO
			DE OTRO MODO:
				ESCRIBIR("Opcion no valida!")
		FINSEGUN
	HASTA QUE EligeSalir
FINPROGRAMA
