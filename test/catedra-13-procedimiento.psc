PROGRAMA test_proc

PROCEDIMIENTO mostrar_mensaje(nombre: CADENA)
INICIO
	ESCRIBIR("Hola ", nombre, ", bienvenido al sistema")
FINPROCEDIMIENTO

PROCEDIMIENTO duplicar(porRef valor: ENTERO)
INICIO
	valor = valor * 2
FINPROCEDIMIENTO

PROCEDIMIENTO sumar_y_mostrar(a: ENTERO, b: ENTERO)
INICIO
	ESCRIBIR("La suma de ", a, " y ", b, " es ", a + b)
FINPROCEDIMIENTO

VAR x: ENTERO

INICIO
	mostrar_mensaje("Estudiante")
	sumar_y_mostrar(15, 27)
	x = 21
	duplicar(x)
	ESCRIBIR("El doble de 21 es ", x)
FINPROGRAMA
