PROGRAMA prueba_registro
TIPO alumno = REGISTRO
    nombre: CADENA
    legajo: ENTERO
    notas[3]: ENTERO
FINREGISTRO

VAR alu1: alumno
VAR alu2: alumno

INICIO
    alu1.nombre = "Marcos"
    alu1.legajo = 12345
    alu1.notas[1] = 8
    alu1.notas[2] = 9
    alu1.notas[3] = 10

    ESCRIBIR("Nombre: ", alu1.nombre)
    ESCRIBIR("Legajo: ", alu1.legajo)
    ESCRIBIR("Nota 1: ", alu1.notas[1])
    ESCRIBIR("Nota 2: ", alu1.notas[2])
    ESCRIBIR("Nota 3: ", alu1.notas[3])

    // Asignacion completa de registro
    alu2 = alu1
    ESCRIBIR("Alu2 nombre: ", alu2.nombre)
    ESCRIBIR("Alu2 legajo: ", alu2.legajo)
    ESCRIBIR("Alu2 nota 1: ", alu2.notas[1])
FINPROGRAMA
