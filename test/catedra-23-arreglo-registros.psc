PROGRAMA prueba_arreglo_registros
TIPO alumno = REGISTRO
    nombre: CADENA
    legajo: ENTERO
    notas[2]: ENTERO
FINREGISTRO

VAR curso[3]: alumno
VAR i: ENTERO

INICIO
    curso[1].nombre = "Ana"
    curso[1].legajo = 101
    curso[1].notas[1] = 9
    curso[1].notas[2] = 10

    curso[2].nombre = "Beto"
    curso[2].legajo = 102
    curso[2].notas[1] = 7
    curso[2].notas[2] = 8

    curso[3].nombre = "Carla"
    curso[3].legajo = 103
    curso[3].notas[1] = 8
    curso[3].notas[2] = 9

    VARIAR i DE 1 HASTA 3
        ESCRIBIR("Estudiante ", i, ": ", curso[i].nombre, " (", curso[i].legajo, ")")
        ESCRIBIR("  Notas: ", curso[i].notas[1], " y ", curso[i].notas[2])
    FINVARIAR
FINPROGRAMA
