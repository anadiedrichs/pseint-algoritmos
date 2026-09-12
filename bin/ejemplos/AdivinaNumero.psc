// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Juego simple para adivinar un numero en 10 intentos

PROGRAMA Adivina_Numero
VAR intentos, num_secreto, num_ingresado: ENTERO
INICIO
	intentos = 10
	num_secreto = azar(100) + 1
	ESCRIBIR("Adivine el numero (de 1 a 100):")
	LEER(num_ingresado)
	MIENTRAS (num_secreto <> num_ingresado) [Y] (intentos > 1) HACER
		SI num_secreto > num_ingresado ENTONCES
			ESCRIBIR("Muy bajo")
		SINO
			ESCRIBIR("Muy alto")
		FINSI
		intentos = intentos - 1
		ESCRIBIR("Le quedan ", intentos, " intentos:")
		LEER(num_ingresado)
	FINMIENTRAS
	SI num_secreto == num_ingresado ENTONCES
		ESCRIBIR("Exacto! Usted adivino en ", 11 - intentos, " intentos.")
	SINO
		ESCRIBIR("El numero era: ", num_secreto)
	FINSI
FINPROGRAMA
