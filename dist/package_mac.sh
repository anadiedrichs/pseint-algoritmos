#!/bin/bash
set -e

# Script de empaquetado para macOS de PSeInt UTN-FRM-AyED
# Este script se ejecuta en un entorno macOS tras compilar con 'make ARCH=mac'

APP_DIR="dist/pseint-mac/PSeInt.app"
ARCH_NAME="${1:-$(uname -m)}"
CONTENTS="$APP_DIR/Contents"
MACOS="$CONTENTS/MacOS"
RESOURCES="$CONTENTS/Resources"
FRAMEWORKS="$CONTENTS/Frameworks"

echo "=== Creando estructura de PSeInt.app ==="
rm -rf dist/pseint-mac
mkdir -p "$MACOS" "$RESOURCES/Fonts" "$FRAMEWORKS"

echo "=== Copiando recursos y binarios ==="
cp -r bin/* "$RESOURCES/"

# Mover fuentes TTF a Resources/Fonts
if ls "$RESOURCES"/*.ttf 1> /dev/null 2>&1; then
  mv "$RESOURCES"/*.ttf "$RESOURCES/Fonts/"
fi

# Mover el binario GUI a Contents/MacOS/pseint
if [ -f "$RESOURCES/wxPSeInt" ]; then
  mv "$RESOURCES/wxPSeInt" "$MACOS/pseint"
elif [ -f "bin/wxPSeInt" ]; then
  cp "bin/wxPSeInt" "$MACOS/pseint"
fi
chmod +x "$MACOS/pseint"

# Asegurar permisos de ejecución en los binarios auxiliares de Resources
for b in pseint psterm pseval psexport psdraw3 psdrawE updatem; do
  if [ -f "$RESOURCES/$b" ]; then
    chmod +x "$RESOURCES/$b"
  fi
done

# Copiar Info.plist e ícono ICNS
cp dist/Info.plist "$CONTENTS/Info.plist"
if [ -f "bin/imgs/icon.icns" ]; then
  cp "bin/imgs/icon.icns" "$RESOURCES/pseint.icns"
fi

# Limpieza de archivos específicos de Windows o Linux dentro del bundle
rm -f "$RESOURCES"/*.exe
rm -f "$RESOURCES/README_install_windows.txt"
rm -f "$RESOURCES/README_install_linux.txt"
rm -rf "$RESOURCES/bin"
touch "$RESOURCES/config.here"

# Copiar README de macOS a la carpeta de distribución
cp bin/README_install_mac.txt dist/pseint-mac/README_install_mac.txt

echo "=== Resolviendo librerías dinámicas (wxWidgets dylibs) ==="
BIN_LIST="$MACOS/pseint $RESOURCES/psterm $RESOURCES/pseval $RESOURCES/psdrawE $RESOURCES/psdraw3"

# Identificar y copiar todas las dylibs de wxWidgets necesarias
for BINARY in $BIN_LIST; do
  if [ -f "$BINARY" ]; then
    echo "Inspeccionando $BINARY..."
    otool -L "$BINARY" | grep -E '(libwx|libpng|libjpeg|libtiff)' | awk '{print $1}' | while read -r DYLIB; do
      if [ -f "$DYLIB" ]; then
        LIB_NAME=$(basename "$DYLIB")
        if [ ! -f "$FRAMEWORKS/$LIB_NAME" ]; then
          echo "  Copiando $LIB_NAME a Frameworks..."
          cp "$DYLIB" "$FRAMEWORKS/"
          chmod 755 "$FRAMEWORKS/$LIB_NAME"
        fi
        echo "  Reenlazando $LIB_NAME en $BINARY..."
        install_name_tool -change "$DYLIB" "@executable_path/../Frameworks/$LIB_NAME" "$BINARY" || true
      fi
    done
  fi
done

# Reenlazar dependencias internas entre las dylibs copiadas en Frameworks
for DYLIB in "$FRAMEWORKS"/*.dylib; do
  if [ -f "$DYLIB" ]; then
    LIB_NAME=$(basename "$DYLIB")
    install_name_tool -id "@executable_path/../Frameworks/$LIB_NAME" "$DYLIB" || true
    otool -L "$DYLIB" | grep -E '(libwx|libpng|libjpeg|libtiff)' | awk '{print $1}' | while read -r DEP; do
      DEP_NAME=$(basename "$DEP")
      if [ -f "$FRAMEWORKS/$DEP_NAME" ]; then
        install_name_tool -change "$DEP" "@loader_path/$DEP_NAME" "$DYLIB" || true
      fi
    done
  fi
done

echo "=== Aplicando firma ad-hoc a PSeInt.app ==="
if command -v codesign &>/dev/null; then
  codesign --force --deep --sign - "$APP_DIR" || echo "Aviso: codesign no completado, se continuará con el empaquetado."
fi

echo "=== Generando paquete distribuible ==="
cd dist

# Generar ZIP
zip -r "pseint-utn-frm-ayed-macos-${ARCH_NAME}.zip" pseint-mac

# Si hdiutil está disponible, crear imagen DMG montable
if command -v hdiutil &>/dev/null; then
  echo "Creando imagen DMG..."
  hdiutil create -volname "PSeInt UTN-FRM-AyED" -srcfolder "pseint-mac" -ov -format UDZO "pseint-utn-frm-ayed-macos-${ARCH_NAME}.dmg" || true
fi

echo "=== Empaquetado para macOS finalizado con éxito ==="
ls -lh pseint-utn-frm-ayed-macos-${ARCH_NAME}.*
