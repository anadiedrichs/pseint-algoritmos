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
* **Módulo (Resto)**: MOD o % en Pseudocódigo ![][image1] % en C++

### **Operadores Relacionales**

* **Igual**: \= en Pseudocódigo ![][image1] \== en C++  
* **Mayor**: \> (Ambos)  
* **Menor**: \< (Ambos)  
* **Mayor o Igual**: \>= (Ambos)  
* **Menor o Igual**: \<= (Ambos)  
* **Distinto**: \!= o \<\> en Pseudocódigo ![][image1] \!= en C++

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

VARIAR contador DE 1 HASTA 10 SALTO 1  
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
HASTA (numero \> 0 \[Y\] numero \< 100\)

**C++**

do {  
    cin \>\> numero;  
} while (numero \<= 0 || numero \>= 100); 

## **7\. Tipos de Datos Estructurados**

### **Arreglos Unidimensionales (Vectores)**

**ATENCIÓN AL ÍNDICE:**

* **Pseudocódigo**: Los índices comienzan en ![][image2]. El tamaño define el índice máximo.  
* **C++**: Los índices comienzan en ![][image3]. El tamaño define la cantidad total, el índice máximo es ![][image4].

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

alumno \= REGISTRO  
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

INICIO PROGRAMA  
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


[image1]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAYCAYAAAAVibZIAAABKElEQVR4Xp2QMY7CMBBFk0UcgGJXorEdJfU26ag5ABIlF4E77EW2gob7re3Y8UzmT2Ltk4Dhz5/vsZsm0MbvCVrXsOUvfc3JdbyLNpsB/SglvdQtt9ITQMaCbcfCw0O3DxPrLhCaEGbwwRTlIfh2eHT2aG0JcKaE8OM6d4GezEpLxVjzMsYc4h8R0GJNZ2r60LNz3V1YhdAAjQrp+hlrzY+19jQL24g0VO+cc7/+8xjHcV86uUpbqOOkzsIwDJ9+02ff91/cs3DjRqq598Nf/+1Dj0yVwOEC0X3Y1YfeiqKPTdCnEAtPQrh2eEfS5bcUcxV0rvvWJ2tTAsALJIl2nqjJUxC1EuAFUkTqUmHLgHbkf7umZHzASqTWqj5ZDK1Mlr5mEqsn2uYPQT0PWn/BtCwAAAAASUVORK5CYII=>

[image2]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAaCAYAAACO5M0mAAABEklEQVR4XpWSOw7CMAyGm4mFsSyoxKkEF+EEnITTcI8WVsTOzM4xEBILOHH8SAoDlpy4v7/YTpWmMeay14JoRbISypyzx1j7HYgAAH0Os0vKNV23WoYQduDhjODgYheG0oaLB79H6IbAAf0VQVskQQzzhtCjBDWfIoqdgqkSk2ZPM6UxGKQczSqmvSPo42VMF47kg2fEyw0yji1IEq0IPbz3o+g1yN+QQBirhn+AfCluHluH0B/LnhOj/4jgyc5t80narNczBJ/Y/lIydChW2aJfM/Qmhzv6edG2c6F58MmDEZvMq0I9XVmpmioufKlStZbzlMqBvihz2rwarYOiPmQ6TRjpHBvjauR6oQJi6YuI9gFp5CyoNakPcQAAAABJRU5ErkJggg==>

[image3]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAaCAYAAACO5M0mAAABkElEQVR4Xo1QsS5EQRR9U2xCKwpZM3dmbCGEZh+FQiS6VdFrJaKXKEgUWtGsgmSDRKPwDSqFdjs0Oo1/WOfOnTdvdi1xNzvz5txzzj0zRcGlwlptdakMUzkpLvwbU2qIHL5/iGNx0zk3Y8n2rKUnInrB955wKiVYs83mtHeuT5YOuDXXahki+w7xaeaqCmvtufe+L9kEdd7tw/2rXbYbKQOIH1A/VELegW3iP9DGrIsS2QgA9qsAMJHFRCXjIB8H2Bi9guAMdNMIxrVeBnkA8k2YAacNHsFEoUhBvBjxewGsXUNoVnYDEB8V5wU8E0e6C1Nwu3kejcZlegfFkcxSwMleBLyJNyRx7MmNY0ZjVnk08JMA/JvIDe/cG8DHyIlvSx3OjptvVZEKhD5DnlcV7AQE6RDiz3ZZNqK8YMcJNJ5xw20+a60nwxSi3USSUoU2esp7fwT3W+S6hnBHOjyBB8W91mSH1KuWnDgCCSUohuziqF9rDKEaW7vL9qePVOU1Is0cazAxxvkmbJiUP1ee+xsCo0zqc4GMcgAAAABJRU5ErkJggg==>

[image4]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAaCAYAAADxNd/XAAACuElEQVR4Xr2VMYtUMRDH3ylWciiCLMKa7NtdfJbigYVY+B0s5LAQrhBREATB3k+gINhYiiBXqYWIldhZWIl+Bps79bh6/edt3maSmcnL2wN/kEv4zz/zZpIsV1UrNsJyDUp2M48XmK6hGmkgm1RWHW1EyJNdC4SwZtT0JMAKGgDbq+Xx+hGK7kHbx4oTjII0FJfCGlu71XrphOJY7ZRssAfvd1NzodmcTCbXrbUv0cA+CSdsZALiOkaPVGLzDCGMwi+h8F8YrzF+YPxeBUtyRmS92aCA5tefB4p/HzXAUG+A4h2CkR5ICAtGAdkf7+1vQELPl0ischEtrOmU0IB+Sy3GmAcw/jTW7uINnjbGPsb8BuMrYi+m0+mpdM//oG3A8BsIN48/KPIixtPxeDxHAwts+o5x1cUxn8NYIH6XbBXwJ6SFKdRIJ2Gv1kAETE/qur6C+YYrFuNWF5vP52fjBmKEbyZQR1w0RZAqp5rlE/ojOlIJRT6D+WDr8taJLgrttmvA3U5ib+lywHMP41PheB4l6UgLAqEBSmIkRXxDwW+pDu2DteZLp5URn3p4HkKFjNhjlw38jcQOaq3regTjAh3f7zQ0M2k1Y+7AexzrV2RLCyuJCRqxUdvmb+DArbNngFq3XbH0qUC76bTZbHYe845rhO5Zh2wRAv7JHY5Go5OtQBPQPPilP0LB74hUNU2zic27KPwjYg8hHaNxh1YL06mgrT04xDPGms/49r47QD/2XDOo5Vrql3KsgXAqWTSjplN6TkAia2P5ev5ramibWP4ESRMpMQoe31NYJ6uj0ZeHdU8rYVWtdBoOMGGFFtF0TrmTMPSplLmDq8xPEE60BOaPBRb2aHoxPAFXlmj6ANoUQh5BYmQ92WCHYBKkoYQUwo2V5FeNkpZCPZrffyB8Rys0Tqal1j7zD/FfabaNx8wOAAAAAElFTkSuQmCC>