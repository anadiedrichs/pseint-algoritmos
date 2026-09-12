// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Menu de opciones con REPETIR ... HASTA QUE y SEGUN

PROGRAMA Menu_Recomendaciones
VAR OP: ENTERO
INICIO
	REPETIR
		ESCRIBIR("Menu de recomendaciones")
		ESCRIBIR("   1. Literatura")
		ESCRIBIR("   2. Cine")
		ESCRIBIR("   3. Musica")
		ESCRIBIR("   4. Videojuegos")
		ESCRIBIR("   5. Salir")
		ESCRIBIR("Elija una opcion (1-5): ")
		LEER(OP)

		SEGUN OP HACER
			1:
				ESCRIBIR("Lecturas recomendables:")
				ESCRIBIR(" + Esperandolo a Tito y otros cuentos de futbol (Eduardo Sacheri)")
				ESCRIBIR(" + El juego de Ender (Orson Scott Card)")
				ESCRIBIR(" + El suenio de los heroes (Adolfo Bioy Casares)")
			2:
				ESCRIBIR("Peliculas recomendables:")
				ESCRIBIR(" + Matrix (1999)")
				ESCRIBIR(" + El ultimo samurai (2003)")
				ESCRIBIR(" + Cars (2006)")
			3:
				ESCRIBIR("Discos recomendables:")
				ESCRIBIR(" + Despedazado por mil partes (La Renga, 1996)")
				ESCRIBIR(" + Bufalo (La Mississippi, 2008)")
				ESCRIBIR(" + Gaia (Mago de Oz, 2003)")
			4:
				ESCRIBIR("Videojuegos clasicos recomendables:")
				ESCRIBIR(" + Dia del tentaculo (LucasArts, 1993)")
				ESCRIBIR(" + Terminal Velocity (Terminal Reality/3D Realms, 1995)")
				ESCRIBIR(" + Death Rally (Remedy/Apogee, 1996)")
			5:
				ESCRIBIR("Gracias, vuelva pronto!")
			DE OTRO MODO:
				ESCRIBIR("Opcion no valida")
		FINSEGUN
	HASTA QUE OP == 5
FINPROGRAMA
