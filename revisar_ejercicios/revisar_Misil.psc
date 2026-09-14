// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Animacion con caracteres y la instruccion Esperar

PROGRAMA Misil
VAR cohete[9]: CADENA
VAR i, j: ENTERO
INICIO
	ESCRIBIR("Presione una tecla para iniciar el lanzamiento!")
	ESPERAR TECLA

	cohete[1] = "   /|\\   "
	cohete[2] = "   |B|   "
	cohete[3] = "   |O|   "
	cohete[4] = "   |M|   "
	cohete[5] = "   |B|   "
	cohete[6] = "  //|\\\\  "
	cohete[7] = " ******* "
	cohete[8] = "* * * * *"
	cohete[9] = " * * * * "

	// Cuenta regresiva
	VARIAR i DE 1 HASTA 11 PASO 1
		LIMPIAR PANTALLA
		VARIAR j DE 1 HASTA 15 PASO 1
			ESCRIBIR("")
		FINVARIAR
		VARIAR j DE 1 HASTA 6 PASO 1
			ESCRIBIR(cohete[j])
		FINVARIAR
		ESCRIBIR("")
		ESCRIBIR("Lanzamiento en ", 11 - i)
		ESPERAR 1 SEGUNDOS
	FINVARIAR

	// Ascenso del misil
	VARIAR i DE 1 HASTA 15 PASO 1
		LIMPIAR PANTALLA
		VARIAR j DE i HASTA 15 PASO 1
			ESCRIBIR("")
		FINVARIAR
		VARIAR j DE 1 HASTA 9 PASO 1
			ESCRIBIR(cohete[j])
		FINVARIAR
		SI i > 1 ENTONCES
			ESCRIBIR("    ***")
		FINSI
		SI i > 2 ENTONCES
			ESCRIBIR("     *")
		FINSI
		ESPERAR 100 MILISEGUNDOS
	FINVARIAR

	// Explosion
	LIMPIAR PANTALLA
	ESCRIBIR(" ******************* ")
	ESCRIBIR("  * * * * * * * * * ")
	ESCRIBIR("   *  L A N Z A D O  *")
	ESCRIBIR("  * * * * * * * * * ")
	ESCRIBIR(" ******************* ")
FINPROGRAMA
