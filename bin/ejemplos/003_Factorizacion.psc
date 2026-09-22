// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Descomposicion de un numero en sus factores primos

PROGRAMA Factorizacion
VAR num, div: ENTERO
VAR factorizar, factor_primo: LOGICO
INICIO
	ESCRIBIR("Ingrese el numero: ")
	LEER(num)
	ESCRIBIR("Factorizacion: ")
	factorizar = [V]

	MIENTRAS (factorizar) [Y] (num > 1) HACER
		div = 0
		SI num MOD 2 == 0 ENTONCES
			ESCRIBIR(2)
			num = trunc(num / 2)
		SINO
			div = 1
			factor_primo = [V]
			MIENTRAS (div <= rc(num)) [Y] (factor_primo) HACER
				div = div + 2
				SI num MOD div == 0 ENTONCES
					factor_primo = [F]
				FINSI
			FINMIENTRAS
			SI factor_primo ENTONCES
				ESCRIBIR(num)
				factorizar = [F]
			SINO
				ESCRIBIR(div)
				num = trunc(num / div)
				factor_primo = [V]
			FINSI
		FINSI
	FINMIENTRAS
FINPROGRAMA
