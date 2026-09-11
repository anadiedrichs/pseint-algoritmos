PROGRAMA prueba_caracteres
CONST CAR_ORIG: CAR = 'A'
VAR c1: CAR
VAR c2: CAR

INICIO
    c1 = CAR_ORIG
    c2 = "B"
    DEFINIR c3 COMO CAR;
    c3 = 'C'
    ESCRIBIR("c1 = ", c1)
    ESCRIBIR("c2 = ", c2)
    ESCRIBIR("c3 = ", c3)

    SI c1 == 'A' ENTONCES
        ESCRIBIR("c1 es A")
    FINSI
FINPROGRAMA
