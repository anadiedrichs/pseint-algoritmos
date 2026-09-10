PROGRAMA prueba_segun_variantes
VAR opcion: ENTERO
VAR estado: CAR
INICIO
	opcion = 99
	SEGUN CASO opcion HACER
		1:
			ESCRIBIR("Uno")
		2:
			ESCRIBIR("Dos")
		DE OTRO MODO
			ESCRIBIR("Opcion no reconocida")
	FINSEGUN

	estado = "X"
	SEGÚN (estado) HACER
		"A":
			ESCRIBIR("Alta")
		"B":
			ESCRIBIR("Baja")
		DE OTRO MODO:
			ESCRIBIR("Estado desconocido")
	FINSEGUN
FINPROGRAMA
