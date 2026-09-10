PROGRAMA prueba_segun
VAR numero: ENTERO
VAR letra: CAR
INICIO
	numero = 3
	SEGÚN CASO (numero) HACER
		1, 3, 5:
			ESCRIBIR("Impar")
		2, 4, 6:
			ESCRIBIR("Par")
		DE OTRO MODO
			ESCRIBIR("Fuera de rango")
	FINSEGUN
	letra = "B"
	SEGUN CASO letra HACER
		"A", "E":
			ESCRIBIR("Vocal")
		"B", "C":
			ESCRIBIR("Consonante")
		DE OTRO MODO:
			ESCRIBIR("Otro caracter")
	FINSEGUN
FINPROGRAMA
