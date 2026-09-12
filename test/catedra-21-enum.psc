PROGRAMA prueba_enum
TIPO semana = (lunes, martes, miercoles, jueves, viernes)

VAR dia: semana

INICIO
    dia = lunes
    ESCRIBIR("Dia lunes codigo: ", dia)
    
    SI dia == lunes ENTONCES
        ESCRIBIR("Correcto: es lunes")
    SINO
        ESCRIBIR("Error")
    FINSI

    dia = viernes
    ESCRIBIR("Dia viernes codigo: ", dia)

    SEGÚN CASO (dia) HACER
        lunes:
            ESCRIBIR("Caso lunes")
        viernes:
            ESCRIBIR("Caso viernes")
        DE OTRO MODO:
            ESCRIBIR("Caso otro")
    FINSEGUN
FINPROGRAMA
