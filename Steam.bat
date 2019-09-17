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

::
::INICIO STEAM
::

:Steam-Inicio
cls
echo -----------------------------------------
echo CREADO POR: XMLD
echo EDITADO POR: Vinanrra
echo -----------------------------------------
echo.
echo.Selecciona un modo para Steam
echo.
echo 1.Modo Online	
echo 2.Modo Offline
echo.
set /p Steam-mode=Opción seleccionada:
if "%Steam-mode%"=="1" goto Steam-Cuentas
if "%Steam-mode%"=="2" goto Steam-DisableNetwork

:Steam-Cuentas
cls
echo.Selecciona una cuenta
echo.
echo -----------------------------------------
echo CUENTAS PERSONALES
echo -----------------------------------------
echo.
echo 1) CUENTA 1
echo 2) CUENTA 2
echo 3) CUENTA 3
echo 4) CUENTA 4
echo.
echo -----------------------------------------
echo OPCIONES DE RED
echo -----------------------------------------
echo.
echo 96) Desactivar Red	
echo 97) Activar Red
echo.
echo 98) Desbloquear Steam por Firewall
echo 99) Bloquear Steam por Firewall
echo.
echo 0) Salir
echo.
set /p Steam-op=Opción seleccionada:
if "%Steam-op%"=="0" goto Salir
if "%Steam-op%"=="1" goto Steam-Op1
if "%Steam-op%"=="2" goto Steam-Op2
if "%Steam-op%"=="3" goto Steam-Op3
if "%Steam-op%"=="4" goto Steam-Op4
if "%Steam-op%"=="96" goto Steam-DisableNetwork
if "%Steam-op%"=="97" goto Steam-EnableNetwork
if "%Steam-op%"=="98" goto Steam-FirewallUnblock
if "%Steam-op%"=="99" goto Steam-FirewallBlock

::
::INICIO CUENTAS STEAM
::

::
:: INICIO CUENTAS PERSONALES
::



:: Teneis que poner la ruta de donde teneis instalado el ejecutable de Steam, donde pone nombre "NombreUsuarioMiCuenta" el nombre de la cuenta y en "PasswordUsuarioMiCuenta" el password, estos dos parametros van entre comillas
:: Podeis añadir más cuentas copiando y pegando el ejemplo a continuacion sin los :: y sustituyendo la X por el número que queráis
:: Si vuesto STEAM está en otra ruta cambiar la ruta dejandola entre comillas

::
::  :Steam-OpX 
::  taskkill/F /IM Steam.exe
::  start "" "C:\Program Files (x86)\Steam\Steam.exe" -login "NombreUsuarioMiCuenta" "PasswordUsuarioMiCuenta"
::  timeout /t 2 /NOBREAK
::  if "%Steam-mode%"=="1" goto Steam-Cuentas
::  if "%Steam-mode%"=="2" goto Steam-EnableNetworkWithTimeOut
::

:Steam-Op1
taskkill/F /IM Steam.exe
start "" "C:\Program Files (x86)\Steam\Steam.exe" -login "NombreUsuarioMiCuenta" "PasswordUsuarioMiCuenta"
timeout /t 2 /NOBREAK
if "%Steam-mode%"=="1" goto Steam-Cuentas
if "%Steam-mode%"=="2" goto Steam-EnableNetworkWithTimeOut

:Steam-Op2
taskkill/F /IM Steam.exe
start "" "C:\Program Files (x86)\Steam\Steam.exe" -login "NombreUsuarioMiCuenta" "PasswordUsuarioMiCuenta"
timeout /t 2 /NOBREAK
if "%Steam-mode%"=="1" goto Steam-Cuentas
if "%Steam-mode%"=="2" goto Steam-EnableNetworkWithTimeOut

:Steam-Op3
taskkill/F /IM Steam.exe
start "" "C:\Program Files (x86)\Steam\Steam.exe" -login "NombreUsuarioMiCuenta" "PasswordUsuarioMiCuenta"
timeout /t 2 /NOBREAK
if "%Steam-mode%"=="1" goto Steam-Cuentas
if "%Steam-mode%"=="2" goto Steam-EnableNetworkWithTimeOut

:Steam-Op4
taskkill/F /IM Steam.exe
start "" "C:\Program Files (x86)\Steam\Steam.exe" -login "NombreUsuarioMiCuenta" "PasswordUsuarioMiCuenta"
timeout /t 2 /NOBREAK
if "%Steam-mode%"=="1" goto Steam-Cuentas
if "%Steam-mode%"=="2" goto Steam-EnableNetworkWithTimeOut

::
:: FIN CUENTAS PERSONALES
::

::
::FIN CUENTAS STEAM
::
