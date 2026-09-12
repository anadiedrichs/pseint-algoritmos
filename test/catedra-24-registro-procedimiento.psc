PROGRAMA prueba_registro_procedimiento
TIPO alumno = REGISTRO
    nombre: CADENA
    legajo: ENTERO
FINREGISTRO

PROCEDIMIENTO cargar(porRef a: alumno, nom: CADENA, leg: ENTERO)
INICIO
    a.nombre = nom
    a.legajo = leg
FINPROCEDIMIENTO

PROCEDIMIENTO mostrar(a: alumno)
INICIO
    ESCRIBIR("Datos alumno: ", a.nombre, " - ", a.legajo)
FINPROCEDIMIENTO

VAR alu: alumno

INICIO
    cargar(alu, "Daniela", 5555)
    mostrar(alu)
FINPROGRAMA
