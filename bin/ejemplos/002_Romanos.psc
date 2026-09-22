// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Convierte numeros enteros a notacion romana utilizando vectores

PROGRAMA Romanos
VAR Numero: ENTERO
VAR SePuedeConvertir: LOGICO
VAR nu[10], nd[10], nc[10]: CADENA
VAR centenas, decenas, unidades: ENTERO
INICIO
	ESCRIBIR("Ingrese un numero entre 1 y 1000:")
	LEER(Numero)

	SePuedeConvertir = [V]
	SI Numero == 0 ENTONCES
		ESCRIBIR("No existe ningun simbolo para representar el 0")
		SePuedeConvertir = [F]
	FINSI
	SI Numero > 1000 ENTONCES
		ESCRIBIR("Muy alto")
		SePuedeConvertir = [F]
	FINSI
	SI Numero < 0 ENTONCES
		ESCRIBIR("Debe ser positivo")
		SePuedeConvertir = [F]
	FINSI

	SI SePuedeConvertir ENTONCES
		SI Numero == 1000 ENTONCES
			ESCRIBIR("M")
		SINO
			nu[1] = ""; nu[2] = "I"; nu[3] = "II"; nu[4] = "III"; nu[5] = "IV"
			nu[6] = "V"; nu[7] = "VI"; nu[8] = "VII"; nu[9] = "VIII"; nu[10] = "IX"

			nd[1] = ""; nd[2] = "X"; nd[3] = "XX"; nd[4] = "XXX"; nd[5] = "XL"
			nd[6] = "L"; nd[7] = "LX"; nd[8] = "LXX"; nd[9] = "LXXX"; nd[10] = "XC"

			nc[1] = ""; nc[2] = "C"; nc[3] = "CC"; nc[4] = "CCC"; nc[5] = "CD"
			nc[6] = "D"; nc[7] = "DC"; nc[8] = "DCC"; nc[9] = "DCCC"; nc[10] = "CM"

			centenas = trunc(Numero / 100) MOD 10
			decenas = trunc(Numero / 10) MOD 10
			unidades = Numero MOD 10

			ESCRIBIR("En romano: ", nc[centenas + 1], nd[decenas + 1], nu[unidades + 1])
		FINSI
	FINSI
FINPROGRAMA
