@echo off

chcp 65001

:: Verificar si el archivo C++ existe antes de intentar compilarlo.
if not exist "%1.cpp" (
    echo Error: El archivo %1.cpp no existe.
    pause
    exit /b
)

:: Generar el código ensamblador a partir del código C++.
echo Generando código ensamblador para %1.cpp...
gcc -S "%1.cpp" -o "%1.s"

:: Verificar si la generación del código ensamblador fue exitosa.
if not exist "%1.s" (
    echo Error: La generación del código ensamblador falló, %1.s no se pudo crear.
    pause
    exit /b
)

:: Compilar el archivo C++ utilizando GCC.
echo Compilando %1.cpp...
g++ -o "%1.exe" "%1.cpp"

:: Verificar si la compilación fue exitosa y el archivo ejecutable fue creado.
if not exist "%1.exe" (
    echo Error: La compilación falló, %1.exe no se pudo crear.
    pause
    exit /b
)
cls

:: Ejecutar el programa compilado.
echo Ejecución de %1.exe...
"%1.exe"

:: Pausar el script para que la ventana de la consola no se cierre automáticamente después de la ejecución.
pause
exit