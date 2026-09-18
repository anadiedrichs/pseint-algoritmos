# PSeInt - Cátedra UTN-FRM-AyED

Distribución oficial de **PSeInt** adaptada específicamente para la cátedra de **Algoritmos y Estructuras de Datos (AyED)** de la **Universidad Tecnológica Nacional – Facultad Regional Mendoza (UTN FRM)**.

---

## 📦 Descargas (Versión actual: <span id="latest-version">v2026.09.18</span> <span id="latest-date" style="font-size:0.85em; color:#555;"></span>)

| Sistema Operativo | Paquete Portable | Instrucciones rápidas |
| :--- | :--- | :--- |
| **Microsoft Windows** (x64) | [📥 **Descargar Windows (.zip)**](https://github.com/anadiedrichs/pseint-algoritmos/releases/latest/download/pseint-utn-frm-ayed-windows-x64.zip) <span id="size-windows" style="font-size:0.85em; color:#555;"></span> | Descomprimir y ejecutar `PSeInt.exe` |
| **GNU/Linux** (x64) | [📥 **Descargar Linux (.tar.gz)**](https://github.com/anadiedrichs/pseint-algoritmos/releases/latest/download/pseint-utn-frm-ayed-linux-x64.tar.gz) <span id="size-linux" style="font-size:0.85em; color:#555;"></span> | Descomprimir y ejecutar `./pseint` |
| **macOS** (Apple Silicon / Intel) | <span id="mac-download-cell">*En preparación para próximas releases*</span> | Descomprimir `PSeInt.app` y abrir con Clic derecho $\rightarrow$ *Abrir* |

> 🔗 Puedes consultar el historial completo de versiones en la sección de [Releases en GitHub](https://github.com/anadiedrichs/pseint-algoritmos/releases).

---

## 📚 Material de Cátedra

* 📖 [**Guía Comparativa: Pseudocódigo PSeInt a C++**](guia-comparativa-c++.html): Documento de referencia con la equivalencia detallada entre las estructuras de control, tipos de datos y funciones de PSeInt hacia el lenguaje C++.

---

## ❓ Preguntas Frecuentes (FAQ)

### 1. ¿Qué diferencias tiene esta versión con el PSeInt original de SourceForge?
* **Perfil institucional fijo (`UTN-FRM-AyED`)**: Viene preconfigurada de fábrica con las reglas exigidas por la cátedra (obligatoriedad de definir tipos de variables, uso de subprocesos/funciones, arreglos base 1, operadores lógicos `Y`, `O`, `NO`, `MOD`, etc.).
* **Sintaxis uniforme**: Se bloqueó la modificación o carga de otros perfiles en la interfaz gráfica para que todos los estudiantes programen bajo los mismos criterios exigidos en clases y evaluaciones.
* **Ejemplos ordenados por nivel de dificultad**: Los ejercicios de muestra (`001_` a `006_`) están organizados pedagógicamente y se encuentran listos en el menú `Ayuda -> Ejemplos...`.
* **Inicio guiado**: Al iniciar el entorno sin archivos, se carga automáticamente el ejemplo inicial protegido `001_Suma.psc`.

---

### 2. ¿Cómo instalo y ejecuto PSeInt en Windows?
1. Descarga el paquete [**pseint-utn-frm-ayed-windows-x64.zip**](https://github.com/anadiedrichs/pseint-algoritmos/releases/latest/download/pseint-utn-frm-ayed-windows-x64.zip).
2. Haz clic derecho sobre el archivo `.zip` descargado y selecciona **Extraer todo...**.
3. Abre la carpeta resultante y ejecuta haciendo doble clic en **`PSeInt.exe`** (o `wxPSeInt.exe`).
4. **No requiere instalación ni permisos de administrador**: Es una versión 100% portable que puedes usar desde cualquier carpeta o pendrive.

---

### 3. ¿Cómo instalo y ejecuto PSeInt en GNU/Linux?
1. Descarga el paquete [**pseint-utn-frm-ayed-linux-x64.tar.gz**](https://github.com/anadiedrichs/pseint-algoritmos/releases/latest/download/pseint-utn-frm-ayed-linux-x64.tar.gz).
2. Descomprime el archivo en la terminal o mediante tu gestor de archivos:
   ```bash
   tar -xzf pseint-utn-frm-ayed-linux-x64.tar.gz
   ```
3. Ingresa al directorio descomprimido y ejecuta el programa:
   ```bash
   cd pseint-linux
   ./pseint
   ```

---

### 4. ¿Cómo instalo y ejecuto PSeInt en macOS?
1. Descarga el paquete para macOS y descomprime el archivo para obtener la aplicación **`PSeInt.app`** (puedes arrastrarla a tu carpeta `/Applications`).
2. **Primer inicio y Gatekeeper de Apple**:  
   Al tratarse de una distribución académica sin certificado comercial de Apple, macOS mostrará un aviso de seguridad (*"No se puede abrir porque proviene de un desarrollador no identificado"* o *"está dañado"*).
   * **Opción gráfica recomendada**: La primera vez que abras el programa, haz **clic derecho** (o presiona `Control` y haz clic) sobre `PSeInt.app`, selecciona **Abrir** en el menú contextual y confirma haciendo clic en **Abrir** en el diálogo de seguridad.
   * **Opción por Terminal**: Si macOS bloquea la ejecución por el atributo de cuarentena de descargas, abre la Terminal y ejecuta:
     ```bash
     xattr -cr /Applications/PSeInt.app
     ```

---

### 5. ¿Por qué no encuentro la opción para cambiar el perfil o personalizar la sintaxis?
En esta versión las opciones de perfiles han sido desactivadas deliberadamente. El objetivo de la cátedra es nivelar las condiciones de cursado y exámenes y evitar confusiones durante el desarrollo de trabajos prácticos. Todo algoritmo debe ser válido bajo el perfil estricto de la cátedra.

---

### 6. ¿Dónde puedo consultar los ejemplos de clase?
Puedes acceder a los ejemplos de dos formas:
1. Desde la barra de menú superior de PSeInt: ve a **Ayuda** $\rightarrow$ **Ejemplos...** y haz clic en el ejercicio que desees abrir.
2. Dentro de la carpeta de la aplicación, en el directorio `ejemplos/`, donde encontrarás los archivos con formato `.psc` clasificados por nivel de dificultad del `001_` al `006_` (`001_Suma.psc`, `002_Raices.psc`, `005_OrdenaLista.psc`, etc.).

---

### 7. ¿Cómo reporto un problema o me comunico con la cátedra?
* Para consultas técnicas sobre el funcionamiento del software o sugerencias para la cátedra, puedes enviar un correo a:  
  ✉️ **`ana.diedrichs@docentes.frm.utn.edu.ar`**
* También puedes abrir un reporte de problema en la sección de [Issues de GitHub](https://github.com/anadiedrichs/pseint-algoritmos/issues).

---

## ⚖️ Créditos y Licencia

* **PSeInt** es software libre creado originalmente por **Pablo Novara** bajo licencia **GNU General Public License (GPL v2)**.
* Adaptación y mantenimiento institucional para la **UTN Facultad Regional Mendoza** a cargo de la Prof. **Ana Laura Diedrichs**.

<script>
(function() {
  fetch('https://api.github.com/repos/anadiedrichs/pseint-algoritmos/releases/latest')
    .then(function(res) {
      if (!res.ok) throw new Error('API request failed');
      return res.json();
    })
    .then(function(data) {
      if (!data || !data.tag_name) return;

      var versionEl = document.getElementById('latest-version');
      if (versionEl) versionEl.textContent = data.tag_name;

      if (data.published_at) {
        var date = new Date(data.published_at);
        var dateEl = document.getElementById('latest-date');
        if (dateEl) dateEl.textContent = '(actualizada el ' + date.toLocaleDateString('es-AR') + ')';
      }

      if (data.assets && data.assets.length) {
        data.assets.forEach(function(asset) {
          var sizeMB = (asset.size / (1024 * 1024)).toFixed(1) + ' MB';
          if (asset.name.indexOf('windows') !== -1) {
            var winEl = document.getElementById('size-windows');
            if (winEl) winEl.textContent = '(' + sizeMB + ')';
          } else if (asset.name.indexOf('linux') !== -1) {
            var lnxEl = document.getElementById('size-linux');
            if (lnxEl) lnxEl.textContent = '(' + sizeMB + ')';
          } else if (asset.name.indexOf('macos') !== -1 || asset.name.indexOf('mac') !== -1) {
            var macCell = document.getElementById('mac-download-cell');
            if (macCell) {
              var ext = asset.name.indexOf('.dmg') !== -1 ? '.dmg' : '.zip';
              macCell.innerHTML = '<a href="' + asset.browser_download_url + '">📥 <strong>Descargar macOS (' + ext + ')</strong></a> <span style="font-size:0.85em; color:#555;">(' + sizeMB + ')</span>';
            }
          }
        });
      }
    })
    .catch(function(err) {
      // Si la API no responde, los enlaces directos /releases/latest/download/ continúan funcionando.
    });
})();
</script>
