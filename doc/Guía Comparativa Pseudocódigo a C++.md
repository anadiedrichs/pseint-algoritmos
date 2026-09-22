# **Guía Comparativa: Pseudocódigo vs C++ (Cátedra de Algoritmos)**

Este documento es una referencia técnica y sintáctica que establece la equivalencia directa entre el **Pseudocódigo** utilizado en la cátedra de Algoritmos y Estructuras de Datos, y el lenguaje **C++**. Está optimizado para la lectura humana y el procesamiento mediante agentes de Inteligencia Artificial.

## **1\. Estructura Básica del Programa**

El pseudocódigo tiene una estructura descriptiva sin necesidad de importar librerías. En C++, la inclusión de librerías (\<iostream\>, \<string\>, \<cmath\>) es obligatoria según las operaciones que se realicen. Todo programa en C++ inicia su ejecución en la función main().

### **Formato General**

**Pseudocódigo**

PROGRAMA nombrePrograma  
// Declaración de variables  
INICIO  
  // Sentencias  
FINPROGRAMA

**C++**

\#include \<iostream\>  
using namespace std;

int main() {  
    // Declaración de variables  
    // Sentencias  
    return 0;  
}

## **2\. Tipos de Datos y Declaraciones**

### **Tipos de Datos Primitivos**

| Concepto | Pseudocódigo | C++ | Notas |
| :---- | :---- | :---- | :---- |
| **Número Entero** | ENTERO | int |  |
| **Número Real** | REAL | float |  |
| **Carácter** | CAR | char |  |
| **Cadena de texto** | CADENA | string | Requiere \#include \<string\> |
| **Lógico / Booleano** | LOGICO | bool | VERDADERO (1 / true), FALSO (0 / false) |

### **Variables, Constantes y Comentarios**

| Acción | Pseudocódigo | C++ |
| :---- | :---- | :---- |
| **Declarar Variables** | VAR nombre: TIPO | tipo nombre; |
| **Declarar Múltiples** | VAR nombre, apellido: CADENA | string nombre, apellido; |
| **Constantes** | CONST indice \= 2.65 | const float indice \= 2.65; |
| **Comentario de línea** | // Comentario | // Comentario |
| **Comentario bloque** | /\* Comentario \*/ | /\* Comentario \*/ |

## **3\. Operadores**

### **Operadores Aritméticos**

*Nota: Para la exponenciación en C++ se utiliza la función pow(base, exp) que requiere \#include \<cmath\>.*

* **Suma**: \+ (Ambos)  
* **Resta**: \- (Ambos)  
* **Multiplicación**: \* (Ambos)  
* **División**: / (Ambos)  
* **Potencia (Exponenciación)**: \^ en Pseudocódigo (con o sin espacios, ej: `3 ^ 2` o `3^2`) -> pow(base, exp) en C++  
* **Módulo (Resto)**: MOD o % en Pseudocódigo -> % en C++

### **Operadores Relacionales**

* **Igual**: \= en Pseudocódigo -> \== en C++  
* **Mayor**: \> (Ambos)  
* **Menor**: \< (Ambos)  
* **Mayor o Igual**: \>= (Ambos)  
* **Menor o Igual**: \<= (Ambos)  
* **Distinto**: \!= o \<\> en Pseudocódigo -> \!= en C++

### **Operadores Lógicos**

| Operación | Pseudocódigo | C++ |
| :---- | :---- | :---- |
| **Conjunción (Y)** | Y o \[Y\] | && |
| **Disyunción (O)** | O o \[O\] | \` |
| **Negación (NO)** | NO o \[NO\] | \! |

## **4\. Entrada, Salida y Asignación**

### **Asignación**

La asignación siempre ocurre de derecha a izquierda.

* **Pseudocódigo**: variable \= valor  
* **C++**: variable \= valor;

### **Entrada de Datos (Lectura)**

* **Pseudocódigo**: LEER(variable)  
* **C++**: cin \>\> variable;

### **Salida de Datos (Escritura)**

Para concatenar texto y variables, C++ utiliza el operador de inserción \<\<. Para saltos de línea se usa \\n o endl.

**Pseudocódigo**:

ESCRIBIR("Mi nombre es ", nombre, " y tengo ", edad, " años.")

**C++**:

cout \<\< "Mi nombre es " \<\< nombre \<\< " y tengo " \<\< edad \<\< " años." \<\< endl;

## **5\. Estructuras Selectivas (Condicionales)**

### **SI ... SINO (if ... else)**

**Pseudocódigo**

SI condicion ENTONCES  
    // sentencias por verdadero  
SINO  
    // sentencias por falso  
FINSI

**C++**

if (condicion) {  
    // sentencias por verdadero  
} else {  
    // sentencias por falso  
}

### **SEGÚN CASO (switch)**

*Nota vital para IAs y humanos: En C++ es estrictamente necesario incluir break; al final de cada caso para evitar la ejecución en cascada (fall-through).*

**Pseudocódigo**

SEGÚN CASO (variable) HACER  
    1, 3, 5:  
        ESCRIBIR("Impar")  
    2, 4, 6:  
        ESCRIBIR("Par")  
    DE OTRO MODO  
        ESCRIBIR("Fuera de rango")  
FINSEGUN

**C++**

switch (variable) {  
    case 1: case 3: case 5:  
        cout \<\< "Impar";  
        break;  
    case 2: case 4: case 6:  
        cout \<\< "Par";  
        break;  
    default:  
        cout \<\< "Fuera de rango";  
        break;  
}

## **6\. Estructuras Iterativas (Bucles)**

### **VARIAR (for)**

Iteración controlada por un contador, límite inicial, final y un incremento (salto).

**Pseudocódigo**

VARIAR contador DE 1 HASTA 10 PASO 1  
    // sentencias  
FINVARIAR

**C++**

for (int contador \= 1; contador \<= 10; contador++) {  
    // sentencias  
}

### **MIENTRAS (while)**

Se ejecuta 0 o más veces. Valida la condición *antes* de entrar.

**Pseudocódigo**

MIENTRAS condicion HACER  
    // sentencias  
FINMIENTRAS

**C++**

while (condicion) {  
    // sentencias  
}

### **REPETIR (do-while)**

Se ejecuta al menos 1 vez. **ATENCIÓN:** Existe una diferencia lógica fundamental entre ambos lenguajes.

* En **Pseudocódigo**, iteramos **HASTA QUE** la condición sea VERDADERA (Condición de salida).  
* En **C++**, iteramos **MIENTRAS** la condición sea VERDADERA (Condición de permanencia).  
* *Por lo tanto, la condición de C++ suele ser la negación lógica de la condición del Pseudocódigo.*

**Pseudocódigo** (Ejemplo: Validar ingreso de 1 a 100\)

REPETIR  
    LEER(numero)  
HASTA QUE (numero \> 0 \[Y\] numero \< 100\)

**C++**

do {  
    cin \>\> numero;  
} while (numero \<= 0 || numero \>= 100); 

## **7\. Tipos de Datos Estructurados**

### **Arreglos Unidimensionales (Vectores)**

**ATENCIÓN AL ÍNDICE:**

* **Pseudocódigo**: Los índices comienzan en 1. El tamaño define el índice máximo.  
* **C++**: Los índices comienzan en 0. El tamaño define la cantidad total, el índice máximo es tamaño - 1.

**Declaración**:

* Pseudocódigo: VAR notas\[5\]: ENTERO  
* C++: int notas\[5\]; (Acceso válido de notas\[0\] a notas\[4\])

### **Arreglos Bidimensionales (Matrices)**

Se comportan igual que los vectores respecto a los índices. Requieren bucles anidados para su recorrido.

**Declaración**:

* Pseudocódigo: VAR matriz\[10\]\[10\]: ENTERO  
* C++: int matriz\[10\]\[10\];

### **Registros (struct)**

Agrupan variables (campos) de distintos tipos de datos bajo un mismo nombre.

**Pseudocódigo**

TIPO alumno \= REGISTRO  
    nombre: CADENA  
    legajo: ENTERO  
    notas\[3\]: ENTERO  
FINREGISTRO

VAR alu1: alumno  
alu1.nombre \= "Marcos"

**C++**

struct alumno {  
    string nombre;  
    int legajo;  
    int notas\[3\];  
};

alumno alu1;  
alu1.nombre \= "Marcos";

### **Tipos Enumerados**

Definen un nuevo tipo basado en un conjunto finito de valores.

**Pseudocódigo**

TIPO semana \= (lunes, martes, miercoles, jueves, viernes)  
VAR dia: semana

**C++**

typedef enum {lunes, martes, miercoles, jueves, viernes} semana;  
semana dia;

## **8\. Subprogramas**

### **Procedimientos**

No retornan un valor en su nombre. Pueden modificar variables globales o devolver múltiples resultados mediante **pasaje de parámetros por referencia**.

**Pseudocódigo**

PROCEDIMIENTO mostrar\_datos (param1, param2)  
INICIO  
    // sentencias  
FINPROCEDIMIENTO

INICIO  
    mostrar\_datos(x, y)  
FINPROGRAMA

**C++ (Uso de void)**

void mostrar\_datos(int param1, int param2) {  
    // sentencias  
}

int main() {  
    mostrar\_datos(x, y);  
    return 0;  
}

*Nota: Para pasaje por referencia en C++, se añade & (e.g., void modificar(int \&param)).*

### **Funciones**

Retornan estrictamente un solo valor del tipo especificado y se invocan desde expresiones o asignaciones.

**Pseudocódigo**

FUNCION calcular\_media (num1, num2): REAL  
VAR resultado: REAL  
INICIO  
    resultado \= (num1 \+ num2) / 2  
    calcular\_media \= resultado  
RETORNO

**C++**

float calcular\_media(int num1, int num2) {  
    float resultado;  
    resultado \= (num1 \+ num2) / 2.0;  
    return resultado;  
}
