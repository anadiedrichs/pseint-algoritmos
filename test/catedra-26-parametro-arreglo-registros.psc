PROGRAMA prueba_parametro_arreglo_registros
TIPO alumno = REGISTRO
    nombre: CADENA
    legajo: ENTERO
FINREGISTRO

PROCEDIMIENTO cargar(alumnos[2]: alumno)
INICIO
    alumnos[1].nombre = "Ana"
    alumnos[1].legajo = 101
    alumnos[2].nombre = "Beto"
    alumnos[2].legajo = 102
FINPROCEDIMIENTO

PROCEDIMIENTO mostrar(alumnos[]: alumno)
VAR i: ENTERO
INICIO
    VARIAR i DE 1 HASTA 2
        ESCRIBIR("Alumno ", i, ": ", alumnos[i].nombre, " - ", alumnos[i].legajo)
    FINVARIAR
FINPROCEDIMIENTO

VAR alus[2]: alumno

INICIO
    cargar(alus)
    mostrar(alus)
FINPROGRAMA
