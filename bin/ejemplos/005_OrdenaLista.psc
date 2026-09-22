// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Ingresa una lista de nombres, evita repetidos y la ordena alfabeticamente

PROGRAMA OrdenaLista
VAR lista[200]: CADENA
VAR nombre, aux: CADENA
VAR se_repite: LOGICO
VAR cant, i, j, pos_menor: ENTERO
INICIO
	ESCRIBIR("Ingrese los nombres (enter en blanco para terminar):")

	// leer la lista
	cant = 0
	LEER(nombre)
	MIENTRAS nombre <> "" HACER
		cant = cant + 1
		lista[cant] = nombre
		REPETIR
			LEER(nombre)
			se_repite = [F]
			VARIAR i DE 1 HASTA cant PASO 1
				SI nombre == lista[i] ENTONCES
					se_repite = [V]
				FINSI
			FINVARIAR
		HASTA QUE [NO] se_repite
	FINMIENTRAS

	// ordenar
	VARIAR i DE 1 HASTA cant - 1 PASO 1
		pos_menor = i
		VARIAR j DE i + 1 HASTA cant PASO 1
			SI lista[j] < lista[pos_menor] ENTONCES
				pos_menor = j
			FINSI
		FINVARIAR
		aux = lista[i]
		lista[i] = lista[pos_menor]
		lista[pos_menor] = aux
	FINVARIAR

	// mostrar como queda la lista
	ESCRIBIR("La lista ordenada es:")
	VARIAR i DE 1 HASTA cant PASO 1
		ESCRIBIR("   ", lista[i])
	FINVARIAR
FINPROGRAMA
