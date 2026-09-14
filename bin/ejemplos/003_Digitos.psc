// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Separa un numero entero en sus digitos

PROGRAMA Digitos
VAR i, digito, pot, n, aux, cont: ENTERO
INICIO
	ESCRIBIR("Ingrese un numero entero positivo:")
	LEER(n)

	// primero, contar cuantos digitos
	cont = 0
	aux = n
	MIENTRAS aux > 0 HACER
		cont = cont + 1
		aux = trunc(aux / 10)
	FINMIENTRAS
	ESCRIBIR("El numero tiene ", cont, " digitos")

	// luego, mostrarlos uno por uno
	aux = n
	VARIAR i DE 1 HASTA cont PASO 1
		pot = trunc(10^(cont - i))
		digito = trunc(aux / pot)
		aux = aux - digito * pot
		ESCRIBIR("El digito ", i, " es ", digito)
	FINVARIAR
FINPROGRAMA
