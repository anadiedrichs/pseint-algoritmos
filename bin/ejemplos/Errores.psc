// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Demostracion comentada de errores sintacticos comunes en la catedra

// El siguiente pseudocodigo muestra como corregir errores frecuentes:
// 1) Olvidar declarar variables (VAR)
// 2) Asignar valores a constantes (CONST)
// 3) Escribir instrucciones fuera de INICIO ... FINPROGRAMA
// 4) Usar sintaxis no permitida en bucles VARIAR o REPETIR

PROGRAMA ErroresComunes
CONST LIMITE = 10
VAR x, i: ENTERO
INICIO
	// Correcto:
	x = 5
	VARIAR i DE 1 HASTA LIMITE PASO 1
		ESCRIBIR("Valor: ", i)
	FINVARIAR
FINPROGRAMA
