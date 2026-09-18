====================================================================
 PSeInt - Versión UTN-FRM-AyED (Para macOS)
 Cátedra de Algoritmos y Estructuras de Datos
 Facultad Regional Mendoza - Universidad Tecnológica Nacional
====================================================================

Esta versión de PSeInt está configurada y adaptada para la cátedra de
Algoritmos y Estructuras de Datos de la UTN Facultad Regional Mendoza.
Incluye el perfil institucional UTN-FRM-AyED preconfigurado y la suite
de ejemplos de cátedra clasificados y verificados.

INSTRUCCIONES DE USO:
---------------------
1. Al abrir la imagen de disco (.dmg) o descomprimir el archivo .zip,
   arrastre o copie "PSeInt.app" a su carpeta de Aplicaciones (/Applications).
2. PRIMER INICIO Y GATEKEEPER DE APPLE:
   Dado que esta es una distribución académica sin firma comercial paga
   de Apple Developer, macOS bloqueará la apertura directa la primera vez
   con un aviso de desarrollador no identificado.
   
   - Opción recomendada: La primera vez que abra PSeInt, haga CLIC DERECHO
     (o presione la tecla Control y haga clic) sobre "PSeInt.app", seleccione
     "Abrir" en el menú contextual y confirme haciendo clic en "Abrir" en el
     cartel de aviso. En los inicios siguientes abrirá normalmente con doble clic.
     
   - Opción alternativa (por Terminal): Si el sistema indica que la aplicación
     está dañada o en cuarentena, abra la aplicación Terminal y ejecute:
         xattr -cr /Applications/PSeInt.app

ESTRUCTURA INCLUIDA EN LA APLICACIÓN:
--------------------------------------
- PSeInt.app/Contents/MacOS/pseint      : Interfaz gráfica de usuario principal.
- PSeInt.app/Contents/Resources/pseint  : Intérprete y verificador en línea de comandos.
- PSeInt.app/Contents/Resources/psdraw3 : Editor interactivo de diagramas de flujo.
- PSeInt.app/Contents/Resources/psdrawE : Exportador de diagramas a imágenes PNG/JPG.
- PSeInt.app/Contents/Resources/psterm  : Terminal de ejecución de algoritmos.
- PSeInt.app/Contents/Resources/psexport: Conversor a lenguajes reales (C++, Python, etc.).

SOPORTE Y CONTACTO:
-------------------
Ante cualquier problema, duda, consulta o sugerencia sobre esta distribución
para la cátedra de Algoritmos y Estructuras de Datos, puede escribir a:

    Prof. Ana Laura Diedrichs
    Email: ana.diedrichs@docentes.frm.utn.edu.ar
    UTN - Facultad Regional Mendoza

CRÉDITOS Y LICENCIA:
--------------------
PSeInt es un proyecto de software libre creado y mantenido originalmente por:
    Pablo Novara (zaskar_84@yahoo.com.ar)
    Sitio web oficial: http://pseint.sourceforge.net/

Este programa se distribuye bajo Licencia Pública General de GNU (GPL v2).
Consulte el menú Ayuda para más detalles sobre la licencia y componentes.
