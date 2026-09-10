PROGRAMA prueba_tipos_operadores
VAR entero1: ENTERO
VAR real1: REAL
VAR texto: CADENA
VAR caracter1: CAR
VAR bandera1, bandera2: LOGICO
INICIO
	entero1 = 15 MOD 4
	real1 = 7.5 / 2.0
	texto = "Hola Catedra"
	caracter1 = "Z"
	bandera1 = VERDADERO
	bandera2 = FALSO

	SI (bandera1 [Y] [NO] bandera2) ENTONCES
		ESCRIBIR("Logica Y y NO correcta")
	FINSI

	SI (bandera2 [O] entero1 = 3) ENTONCES
		ESCRIBIR("Logica O y MOD correcta, entero: ", entero1)
	FINSI

	SI real1 > 3.0 ENTONCES
		ESCRIBIR("Real correcto: ", real1)
	FINSI
	ESCRIBIR("Texto: ", texto, " Caracter: ", caracter1)
FINPROGRAMA
