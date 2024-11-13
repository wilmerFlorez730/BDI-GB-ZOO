@echo off
chcp 65001
setlocal

:: Configura las variables de conexión
set "PGHOST=localhost"
set "PGPORT=5432"
set "PGUSER=adminzoo"
set "PGPASSWORD=wilmer12345"
set "PGDATABASE=zoologico"

:: Ejecuta cada archivo SQL en orden

echo Ejecutando FUNCTION-CalcularCostoTotal.sql ...
psql -h %PGHOST% -p %PGPORT% -U %PGUSER% -d %PGDATABASE% -f "C:\Users\USUARIO\Desktop\GIT\GITHUB\1093854401-UP-WilmerFlorez\BDI-GB-ZOO\scripts\functions\01_calcular_costo_total.sql"
if %errorlevel% neq 0 (
    echo Error ejecutando 01_calcular_costo_total.sql
    exit /b %errorlevel%
)

echo Ejecutando STOREPROCEDURE-RegistrarVisita.sql ...
psql -h %PGHOST% -p %PGPORT% -U %PGUSER% -d %PGDATABASE% -f "C:\Users\USUARIO\Desktop\GIT\GITHUB\1093854401-UP-WilmerFlorez\BDI-GB-ZOO\scripts\store_procedures\registrar_visita.sql"
if %errorlevel% neq 0 (
    echo Error ejecutando 01_registrar_visita.sql
    exit /b %errorlevel%
)

echo Script ejecutado correctamente.
endlocal
pause