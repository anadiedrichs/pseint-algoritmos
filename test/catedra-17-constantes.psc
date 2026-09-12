PROGRAMA prueba_constantes
CONST PI = 3.14159, TAM = 5
CONST INDICE: REAL = 2.65
CONST DOBLE_TAM = TAM * 2
CONST SALUDO: CADENA = "Hola mundo"
CONST SIGNO: CAR = '+'

PROCEDIMIENTO mostrar_signo()
INICIO
    ESCRIBIR("Signo es: ", SIGNO)
FINPROCEDIMIENTO

FUNCION calcular_doble(x: ENTERO): ENTERO
INICIO
    calcular_doble = x * 2
RETORNO

VAR v[TAM]: ENTERO
VAR radio, area: REAL
VAR i: ENTERO

INICIO
    ESCRIBIR(SALUDO)
    ESCRIBIR("Constante PI = ", PI)
    ESCRIBIR("Constante INDICE = ", INDICE)
    ESCRIBIR("Constante DOBLE_TAM = ", DOBLE_TAM)

    radio = 2.0
    area = PI * radio * radio
    ESCRIBIR("Area = ", area)

    VARIAR i DE 1 HASTA TAM
        v[i] = calcular_doble(i)
    FINVARIAR

    VARIAR i DE 1 HASTA TAM
        ESCRIBIR("v[", i, "] = ", v[i])
    FINVARIAR

    mostrar_signo()
FINPROGRAMA
