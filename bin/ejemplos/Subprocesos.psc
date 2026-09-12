// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Declaracion e invocacion de Procedimientos y Funciones (por valor y por referencia)

PROGRAMA PruebaFunciones

PROCEDIMIENTO Saludar()
INICIO
	ESCRIBIR("Hola mundo!")
FINPROCEDIMIENTO

FUNCION CalcularDoble(num: REAL): REAL
INICIO
	CalcularDoble = num * 2
RETORNO

PROCEDIMIENTO Triplicar(porRef num: REAL)
INICIO
	num = num * 3
FINPROCEDIMIENTO

VAR x, doble: REAL

INICIO
	ESCRIBIR("Llamada al procedimiento Saludar:")
	Saludar()

	ESCRIBIR("Ingrese un valor numerico para x:")
	LEER(x)

	ESCRIBIR("Llamada a la funcion CalcularDoble (pasaje por valor):")
	doble = CalcularDoble(x)
	ESCRIBIR("El doble de ", x, " es ", doble)
	ESCRIBIR("El valor original de x se mantiene: ", x)

	ESCRIBIR("Llamada al procedimiento Triplicar (pasaje por referencia con porRef):")
	Triplicar(x)
	ESCRIBIR("El nuevo valor de x modificado es: ", x)
FINPROGRAMA
