// Catedra Algoritmos y Estructuras de Datos - UTN FRM
// Ejemplo: Registro de ventas de 5 articulos en 4 sucursales usando matrices

PROGRAMA Sucursales
VAR Prec[5]: REAL
VAR Cant[4, 5]: ENTERO
VAR I, J, Suma, NumMayor, Suc2: ENTERO
VAR MayorRec, TotSuc, TotEmp: REAL
INICIO
	// Leer Precios
	VARIAR I DE 1 HASTA 5 PASO 1
		ESCRIBIR("Ingrese Precio Articulo ", I, ":")
		LEER(Prec[I])
	FINVARIAR

	// Leer Cantidades
	VARIAR J DE 1 HASTA 4 PASO 1
		VARIAR I DE 1 HASTA 5 PASO 1
			ESCRIBIR("Ingrese Cant. de Articulo ", I, ", en Sucursal ", J, ":")
			LEER(Cant[J, I])
		FINVARIAR
	FINVARIAR

	// Sumar cantidades por articulos
	ESCRIBIR("Cantidades por articulos:")
	VARIAR I DE 1 HASTA 5 PASO 1
		Suma = Cant[1, I] + Cant[2, I] + Cant[3, I] + Cant[4, I]
		ESCRIBIR("Total articulo ", I, ": ", Suma)
	FINVARIAR

	// Informar Total de Articulos Sucursal 2
	Suc2 = 0
	VARIAR I DE 1 HASTA 5 PASO 1
		Suc2 = Suc2 + Cant[2, I]
	FINVARIAR
	ESCRIBIR("Total Sucursal 2: ", Suc2)

	// Informar Sucursal 1, Articulo 3:
	ESCRIBIR("Sucursal 1, Articulo 3: ", Cant[1, 3])

	// Recaudacion por sucursal y total
	MayorRec = 0
	NumMayor = 0
	TotEmp = 0
	VARIAR J DE 1 HASTA 4 PASO 1
		TotSuc = 0
		VARIAR I DE 1 HASTA 5 PASO 1
			TotSuc = TotSuc + (Cant[J, I] * Prec[I])
		FINVARIAR
		ESCRIBIR("Recaudaciones Sucursal ", J, ": ", TotSuc)
		SI TotSuc > MayorRec ENTONCES
			MayorRec = TotSuc
			NumMayor = J
		FINSI
		TotEmp = TotEmp + TotSuc
	FINVARIAR
	ESCRIBIR("Recaudacion total de la empresa: ", TotEmp)
	ESCRIBIR("Sucursal de Mayor Recaudacion: ", NumMayor)
FINPROGRAMA
