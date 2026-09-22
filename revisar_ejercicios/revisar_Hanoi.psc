// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Juego de las Torres de Hanoi con representacion matricial

PROGRAMA Hanoi
VAR torres[3, 10]: ENTERO
VAR cant_discos[3]: ENTERO
VAR discos, i, j, t1, t2, disco_a_mover, cant_movs: ENTERO
VAR puede_mover: LOGICO
INICIO
	// Pedir y validar cantidad de discos
	ESCRIBIR("Ingrese el nro de discos (1-8):")
	LEER(discos)
	MIENTRAS (discos < 1) [O] (discos > 8) HACER
		ESCRIBIR("El numero de discos debe estar entre 1 y 8:")
		LEER(discos)
	FINMIENTRAS

	// Inicializar torres
	cant_discos[1] = discos
	cant_discos[2] = 0
	cant_discos[3] = 0

	VARIAR i DE 1 HASTA discos PASO 1
		torres[1, i] = discos - i + 1
	FINVARIAR

	cant_movs = 0

	// Ciclo de juego
	MIENTRAS cant_discos[3] <> discos HACER
		LIMPIAR PANTALLA

		// Dibujar las tres torres
		VARIAR i DE 1 HASTA 3 PASO 1
			ESCRIBIR("Torre ", i)
			SI cant_discos[i] == 0 ENTONCES
				ESCRIBIR("")
			SINO
				VARIAR j DE cant_discos[i] HASTA 1 PASO -1
					SEGUN torres[i, j] HACER
						1: ESCRIBIR("                   XX")
						2: ESCRIBIR("                 XXXXXX")
						3: ESCRIBIR("               XXXXXXXXXX")
						4: ESCRIBIR("             XXXXXXXXXXXXXX")
						5: ESCRIBIR("           XXXXXXXXXXXXXXXXXX")
						6: ESCRIBIR("         XXXXXXXXXXXXXXXXXXXXXX")
						7: ESCRIBIR("       XXXXXXXXXXXXXXXXXXXXXXXXXX")
						8: ESCRIBIR("     XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
					FINSEGUN
				FINVARIAR
			FINSI
			ESCRIBIR("   ----------------------------------")
			ESCRIBIR("")
		FINVARIAR

		// Solicitar movimiento
		ESCRIBIR("Mover desde la torre: ")
		LEER(t1)
		ESCRIBIR("hacia la torre: ")
		LEER(t2)

		SI (t1 < 1) [O] (t1 > 3) [O] (t2 < 1) [O] (t2 > 3) ENTONCES
			ESCRIBIR("Movimiento invalido")
			ESPERAR TECLA
		SINO
			SI cant_discos[t1] == 0 ENTONCES
				ESCRIBIR("Movimiento invalido")
				ESPERAR TECLA
			SINO
				disco_a_mover = torres[t1, cant_discos[t1]]
				puede_mover = [V]
				SI cant_discos[t2] <> 0 ENTONCES
					SI torres[t2, cant_discos[t2]] < disco_a_mover ENTONCES
						puede_mover = [F]
					FINSI
				FINSI

				SI puede_mover ENTONCES
					cant_movs = cant_movs + 1
					cant_discos[t2] = cant_discos[t2] + 1
					torres[t2, cant_discos[t2]] = disco_a_mover
					cant_discos[t1] = cant_discos[t1] - 1
				SINO
					ESCRIBIR("Movimiento invalido")
					ESPERAR TECLA
				FINSI
			FINSI
		FINSI
	FINMIENTRAS

	LIMPIAR PANTALLA
	ESCRIBIR("Juego finalizado en ", cant_movs, " movimientos!")
FINPROGRAMA
