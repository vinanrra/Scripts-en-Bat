@echo off & setlocal
title Script made by Vinanrra - Last modification: 14/11/2019
color 0a

echo String that file must contain
set /p MySearchString=

echo ============================================================================================
echo If you want to move to a directory inside this folder just type the name of the folder
echo otherwise put the complete path to the new folder
echo ============================================================================================
echo Directory to move
set /p Directory=

cls
============================================================================================
for /f "delims=" %%i in ('dir /b /s /a-d ^| findstr /i "%MySearchString%"') do echo move "%%~i" %Directory%
============================================================================================

set /p op=Is this correct? [Y/n]: 
if "%op%"=="Y" goto Continue
if "%op%"=="n" goto Exit

:Continue
mkdir %Directory%
for /f "delims=" %%i in ('dir /b /s /a-d ^| findstr /i "%MySearchString%"') do move "%%~i" %Directory%
echo Files moved to %Directory%
pause

:Exit
pause
@exit
