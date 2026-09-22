// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Juego del TaTeTi utilizando matrices de 3x3

PROGRAMA TaTeTi
VAR Tab1[3, 3]: ENTERO
VAR Tab2[3, 3]: CADENA
VAR i, j, CantTurnos, Valor, Pos: ENTERO
VAR Objetivo, aux_i, aux_j, aux_d1, aux_d2: ENTERO
VAR Terminado, HayGanador: LOGICO
VAR Ficha: CADENA
INICIO
	VARIAR i DE 1 HASTA 3 PASO 1
		VARIAR j DE 1 HASTA 3 PASO 1
			Tab1[i, j] = 0
			Tab2[i, j] = " "
		FINVARIAR
	FINVARIAR

	Terminado = [F]
	HayGanador = [F]
	CantTurnos = 0

	MIENTRAS [NO] Terminado HACER
		// Dibujar el tablero
		LIMPIAR PANTALLA
		ESCRIBIR(" ")
		ESCRIBIR("      ||     ||     ")
		ESCRIBIR("   ", Tab2[1, 1], "  ||  ", Tab2[1, 2], "  ||  ", Tab2[1, 3])
		ESCRIBIR("     1||    2||    3")
		ESCRIBIR(" =====++=====++======")
		ESCRIBIR("      ||     ||     ")
		ESCRIBIR("   ", Tab2[2, 1], "  ||  ", Tab2[2, 2], "  ||  ", Tab2[2, 3])
		ESCRIBIR("     4||    5||    6")
		ESCRIBIR(" =====++=====++======")
		ESCRIBIR("      ||     ||     ")
		ESCRIBIR("   ", Tab2[3, 1], "  ||  ", Tab2[3, 2], "  ||  ", Tab2[3, 3])
		ESCRIBIR("     7||    8||    9")
		ESCRIBIR(" ")

		SI ([NO] HayGanador) [Y] (CantTurnos < 9) ENTONCES
			CantTurnos = CantTurnos + 1
			SI CantTurnos MOD 2 == 1 ENTONCES
				Ficha = "X"
				Valor = 1
				Objetivo = 1
				ESCRIBIR("Turno del jugador 1 (X)")
			SINO
				Ficha = "O"
				Valor = 2
				Objetivo = 8
				ESCRIBIR("Turno del jugador 2 (O)")
			FINSI

			ESCRIBIR("Ingrese la Posicion (1-9):")
			REPETIR
				LEER(Pos)
				SI (Pos < 1) [O] (Pos > 9) ENTONCES
					ESCRIBIR("Posicion incorrecta, ingrese nuevamente: ")
					Pos = 99
				SINO
					i = trunc((Pos - 1) / 3) + 1
					j = ((Pos - 1) MOD 3) + 1
					SI Tab1[i, j] <> 0 ENTONCES
						Pos = 99
						ESCRIBIR("Posicion ocupada, ingrese nuevamente: ")
					FINSI
				FINSI
			HASTA QUE Pos <> 99

			Tab1[i, j] = Valor
			Tab2[i, j] = Ficha

			// Verificar ganador
			aux_d1 = 1
			aux_d2 = 1
			VARIAR i DE 1 HASTA 3 PASO 1
				aux_i = 1
				aux_j = 1
				aux_d1 = aux_d1 * Tab1[i, i]
				aux_d2 = aux_d2 * Tab1[i, 4 - i]
				VARIAR j DE 1 HASTA 3 PASO 1
					aux_i = aux_i * Tab1[i, j]
					aux_j = aux_j * Tab1[j, i]
				FINVARIAR
				SI (aux_i == Objetivo) [O] (aux_j == Objetivo) ENTONCES
					HayGanador = [V]
				FINSI
			FINVARIAR

			SI (aux_d1 == Objetivo) [O] (aux_d2 == Objetivo) ENTONCES
				HayGanador = [V]
			FINSI
		SINO
			SI HayGanador ENTONCES
				SI CantTurnos MOD 2 == 1 ENTONCES
					ESCRIBIR("Hay ganador: Jugador 1!")
				SINO
					ESCRIBIR("Hay ganador: Jugador 2!")
				FINSI
			SINO
				ESCRIBIR("Empate!")
			FINSI
			Terminado = [V]
		FINSI
	FINMIENTRAS
FINPROGRAMA
