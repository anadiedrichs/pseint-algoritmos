PROGRAMA saludo
VAR nombre: CADENA
VAR edad: ENTERO
INICIO
	ESCRIBIR("Como te llamas?")
	LEER(nombre)
	ESCRIBIR("Que edad tenes?")
	LEER(edad)
	SI edad > 20 ENTONCES
		ESCRIBIR("Hola ", nombre, ", sos mayor de 20 anios")
	SINO
		ESCRIBIR("Hola ", nombre, ", tenes 20 anios o menos")
	FINSI
FINPROGRAMA
