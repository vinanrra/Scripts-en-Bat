@echo off 
title Scripts creados por Vinanrra - Editado: 17/09/2019
color 0a
::UTF8
chcp 65001
::UTF8

:: Inicia la localización de las variables de entorno en un archivo por lotes.
SETLOCAL ENABLEEXTENSIONS
:: Inicia la localización de las variables de entorno en un archivo por lotes.

::Se limpia para que no salga el mensaje
cls
::Se limpia para que no salga el mensaje

:WiFi-Opciones
cls
echo ----------------------------------------------
echo ¿Qué quieres hacer con la red WiFi compartida?
echo ----------------------------------------------
echo.
echo 1) Iniciar
echo 2) Parar
echo 3) Estado
echo 4) Salir
echo.
set /p WiFi-mode=Opción seleccionada:
if "%WiFi-mode%"=="1" goto WiFi-Iniciar
if "%WiFi-mode%"=="2" goto WiFi-Parar
if "%WiFi-mode%"=="3" goto WiFi-Estado
if "%WiFi-mode%"=="4" goto Salir

:WiFi-Iniciar
cls
set /p SSID=Introduce el nombre deseado para la red WI-FI:
set /p PASS=Introduce la contraseña de la red (la pass debe tener entre 8 y 24 carateres):
if defined PASS if "%PASS:~7,1%"=="" (

    cls
    echo ------------------------------------------
    echo LA CONTRASEÑA DEBE TENER ENTRE 8 Y 24 CARACTERES
    echo ------------------------------------------
    timeout /t 3 /NOBREAK
    goto WiFi-Iniciar

) else (

    goto Pass-Correcta
)

::Si PASS COMPROBADA
:Pass-Correcta
echo Iniciando red compartida con nombre: "%SSID%"
netsh wlan set hostednetwork mode=allow ssid="%SSID%" key="%PASS%"
netsh wlan start hostednetwork
echo.
echo ---------------------------
echo SSID=%SSID%
echo CONTRASEÑA=%PASS%
echo ---------------------------
echo.
echo ---------------------------
echo Continuar o Salir
echo ---------------------------
echo.
echo 1) Continuar
echo 2) Salir
echo.
set /p WiFi-mode=Opción seleccionada:
if "%WiFi-mode%"=="1" goto WiFi-Opciones
if "%WiFi-mode%"=="2" goto Salir
::Si PASS COMPROBADA


:WiFi-Parar
cls
echo.
echo Parando red compartida
netsh wlan stop hostednetwork
echo.
echo ---------------------------
echo Continuar o Salir
echo ---------------------------
echo.
echo 1) Continuar
echo 2) Salir
echo.
set /p WiFi-mode=Opción seleccionada:
if "%WiFi-mode%"=="1" goto WiFi-Opciones
if "%WiFi-mode%"=="2" goto Salir

:WiFi-Estado
cls
netsh wlan show hostednetwork
echo.
echo ---------------------------
echo Continuar o Salir
echo ---------------------------
echo.
echo 1) Continuar
echo 2) Salir
echo.
set /p WiFi-mode=Opción seleccionada:
if "%WiFi-mode%"=="1" goto WiFi-Opciones
if "%WiFi-mode%"=="2" goto Salir

:Salir
@exit