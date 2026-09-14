// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Calculo de potencia mediante funcion recursiva

PROGRAMA DosALaDiezRecursivo

FUNCION Potencia(base: ENTERO, exponente: ENTERO): ENTERO
INICIO
	SI exponente == 0 ENTONCES
		Potencia = 1
	SINO
		Potencia = base * Potencia(base, exponente - 1)
	FINSI
RETORNO

VAR base, exponente, resultado: ENTERO

INICIO
	ESCRIBIR("Ingrese Base:")
	LEER(base)
	ESCRIBIR("Ingrese Exponente:")
	LEER(exponente)
	resultado = Potencia(base, exponente)
	ESCRIBIR("El resultado es: ", resultado)
FINPROGRAMA
