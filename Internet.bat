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

:Internet-Opciones
cls
echo ----------------------------------------------
echo Elige una Opción
echo ----------------------------------------------
echo.
echo 1) Información general
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
echo Mostrando información general
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

:Salir
@exit
