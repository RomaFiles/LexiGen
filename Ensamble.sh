#!/bin/bash
# Corregir finales de línea en caso de que el script haya sido editado en Windows
sed -i '' 's/\r$//' "$0"
# Argumentos para los nombres de los archivos
ARCHIVO_CPP=$1
EJECUTABLE=$2
# Compilar C++ a archivo objeto
g++ -c -o "${EJECUTABLE}.o" $ARCHIVO_CPP
# Generar código ensamblador (opcional, no compilar a .o)
gcc -S $ARCHIVO_CPP -o "${ARCHIVO_CPP%.cpp}.s"
# Vincular archivo objeto a un ejecutable final
g++ -o $EJECUTABLE "${EJECUTABLE}.o"
# Estableciendo permisos
chmod +x $EJECUTABLE
# Abre una nueva ventana de Terminal y ejecuta el programa compilado
osascript -e "tell application \"Terminal\" to do script \"$EJECUTABLE\""
# Limpia la terminal después de ejecutar los comandos