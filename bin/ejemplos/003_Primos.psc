// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Calcula los primeros N numeros primos

PROGRAMA Primos
VAR cant_a_mostrar, n, cant_mostrados, i: ENTERO
VAR es_primo: LOGICO
INICIO
	ESCRIBIR("Ingrese la cantidad de numeros primos a mostrar:")
	LEER(cant_a_mostrar)

	ESCRIBIR("1: 2")
	cant_mostrados = 1
	n = 3

	MIENTRAS cant_mostrados < cant_a_mostrar HACER
		es_primo = [V]
		VARIAR i DE 3 HASTA trunc(rc(n)) PASO 2
			SI n MOD i == 0 ENTONCES
				es_primo = [F]
			FINSI
		FINVARIAR

		SI es_primo ENTONCES
			cant_mostrados = cant_mostrados + 1
			ESCRIBIR(cant_mostrados, ": ", n)
		FINSI
		n = n + 2
	FINMIENTRAS
FINPROGRAMA
