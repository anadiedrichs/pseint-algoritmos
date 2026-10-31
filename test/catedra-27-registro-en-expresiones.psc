PROGRAMA prueba_registro_en_expresiones
TIPO alumno = REGISTRO
    nombre: CADENA
    nota: ENTERO
FINREGISTRO

FUNCION es_aprobado(a: alumno): LOGICO
INICIO
    es_aprobado = a.nota >= 6
FINFUNCION

FUNCION obtener_nota(a: alumno): ENTERO
INICIO
    obtener_nota = a.nota
FINFUNCION

FUNCION promedio(alumnos[2]: alumno): REAL
INICIO
    promedio = (alumnos[1].nota + alumnos[2].nota) / 2.0
FINFUNCION

VAR alu1, alu2: alumno
VAR alus[2]: alumno
VAR suma: ENTERO

INICIO
    alu1.nombre = "Ana"
    alu1.nota = 8
    alu2.nombre = "Carlos"
    alu2.nota = 4

    alus[1].nombre = "Ana"
    alus[1].nota = 8
    alus[2].nombre = "Carlos"
    alus[2].nota = 4

    SI es_aprobado(alu1) ENTONCES
        ESCRIBIR("Ana aprobo con: ", obtener_nota(alu1))
    FINSI

    SI NO es_aprobado(alu2) ENTONCES
        ESCRIBIR("Carlos desaprobo con: ", obtener_nota(alu2))
    FINSI

    suma = obtener_nota(alu1) + obtener_nota(alu2)
    ESCRIBIR("Suma de notas: ", suma)

    ESCRIBIR("Promedio del curso: ", promedio(alus))
FINPROGRAMA
