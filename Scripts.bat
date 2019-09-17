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

echo.Selecciona que hacer
echo.
echo 1) Configurar WiFi compartida
echo 2) Opciones internet
echo 3) Conjuntas Steam
echo.
echo 0) Salir
echo.
set /p op=Opción seleccionada:
if "%op%"=="1" goto WiFi-Opciones
if "%op%"=="2" goto Internet-Opciones
if "%op%"=="3" goto Steam-Inicio
if "%op%"=="0" goto Salir

::
::INICIO WiFi
::


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

::
::FIN WiFi
::

::
::OPCIONES INTERNET
::


:Internet-Opciones
cls
echo ----------------------------------------------
echo Elige una Opción
echo ----------------------------------------------
echo.
echo 1) Informacion general
echo 2) Limpiar DNS
echo 3) Liberar IP
echo 4) Salir
echo.

echo.
set /p Internet-mode=Opción seleccionada:
if "%Internet-mode%"=="1" goto Internet-General
if "%Internet-mode%"=="2" goto Internet-DNS
if "%Internet-mode%"=="3" goto Internet-IP
if "%Internet-mode%"=="4" goto Salir

:Internet-General
cls
echo.
echo ---------------------------
echo Mostrando informacion general
echo ---------------------------
ipconfig /all
echo.
echo ---------------------------
echo Continuar o Salir
echo ---------------------------
echo.
echo 1) Continuar
echo 2) Salir
echo.
set /p Internet-mode=Opción seleccionada:
if "%Internet-mode%"=="1" goto Internet-Opciones
if "%Internet-mode%"=="2" goto Salir

:Internet-DNS
cls
echo.
echo ---------------------------
echo Limpiando cache DNS
echo ---------------------------
ipconfig /flushdns
echo.
echo ---------------------------
echo Continuar o Salir
echo ---------------------------
echo.
echo 1) Continuar
echo 2) Salir
echo.
set /p Internet-mode=Opción seleccionada:
if "%Internet-mode%"=="1" goto Internet-Opciones
if "%Internet-mode%"=="2" goto Salir

:Internet-IP
cls
echo.
echo ---------------------------
echo Renovando IP
echo ---------------------------
ipconfig /Renew
echo.
echo ---------------------------
echo Continuar o Salir
echo ---------------------------
echo.
echo 1) Continuar
echo 2) Salir
echo.
set /p Internet-mode=Opción seleccionada:
if "%Internet-mode%"=="1" goto Internet-Opciones
if "%Internet-mode%"=="2" goto Salir

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

::
::INICIO ADAPTADORES
::

:Steam-DisableNetwork
echo Deshabilitando adaptador de red 
::Donde pone "Ethernet" teneis que poner vuestro nombre de la conexion a interntet, en mi caso le he puesto este nombre
netsh interface set interface "Ethernet" Disable
timeout /t 2 /NOBREAK
goto Steam-Cuentas

:Steam-EnableNetworkWithTimeOut
::Le he puesto 20 segundos, es el tiempo que va a esperar para habilitar el adaptador, esto depende de lo que tardeis en confirmar en Steam que si quereis entrar en modo desactivado
timeout /t 20 /NOBREAK
goto Steam-EnableNetwork

:Steam-EnableNetwork
echo Habilitando adaptador de red
::Donde pone "Ethernet" teneis que poner vuestro nombre de la conexion a interntet, en mi caso le he puesto este nombre
netsh interface set interface "Ethernet" Enable
timeout /t 2 /NOBREAK
goto Steam-Cuentas

::
::FIN ADAPTADORES
::

::
::INICIO FIREWALL
::

:Steam-FirewallUnblock
::Si vuestro steam está instalado en otra carpeta, cambiar ruta en "program"
echo.
echo Eliminando bloqueo Steam por Firewall
netsh advfirewall firewall add rule name="_01 Block steam(Program)" dir=in remoteip=0.0.0.0-192.168.1.1 program="C:\Program Files (x86)\Steam\steam.exe" action=block
netsh advfirewall firewall add rule name="_01 Block steam(Program)" dir=in remoteip=192.168.2.1-254.254.254.253 program="C:\Program Files (x86)\Steam\steam.exe" action=block
netsh advfirewall firewall add rule name="_01 Block steam(Program)" dir=out remoteip=0.0.0.0-192.168.1.1 program="C:\Program Files (x86)\Steam\steam.exe" action=block
netsh advfirewall firewall add rule name="_01 Block steam(Program)" dir=out remoteip=192.168.2.1-254.254.254.253 program="C:\Program Files (x86)\Steam\steam.exe" action=block
netsh advfirewall firewall set rule name=\"_01 Block steam(Program)\" new enable=no
timeout /t 2 /NOBREAK
goto Steam-Cuentas

:Steam-FirewallBlock
::Si vuestro steam está instalado en otra carpeta, cambiar ruta en "program"
echo.
echo Activando bloqueo Steam por Firewall
netsh advfirewall firewall add rule name="_01 Block steam(Program)" dir=in remoteip=0.0.0.0-192.168.1.1 program="C:\Program Files (x86)\Steam\steam.exe" action=block
netsh advfirewall firewall add rule name="_01 Block steam(Program)" dir=in remoteip=192.168.2.1-254.254.254.253 program="C:\Program Files (x86)\Steam\steam.exe" action=block
netsh advfirewall firewall add rule name="_01 Block steam(Program)" dir=out remoteip=0.0.0.0-192.168.1.1 program="C:\Program Files (x86)\Steam\steam.exe" action=block
netsh advfirewall firewall add rule name="_01 Block steam(Program)" dir=out remoteip=192.168.2.1-254.254.254.253 program="C:\Program Files (x86)\Steam\steam.exe" action=block
timeout /t 2 /NOBREAK
goto Steam-Cuentas

::
::FINAL FIREWALL
::

::
::FIN STEAM
::

:Salir
@exit
