@echo off & setlocal

title Script made by Vinanrra - Last modification: 14/11/2019
color 0a

echo What do you want to do?
echo ============================
echo 1 - Move (Recommended)
echo 2 - Remove
echo ============================
echo Choose between 1 or 2
set /p op=
if "%op%"=="1" goto Move
if "%op%"=="2" goto Delete

:Delete
cls

set Action=del

echo String that file must contain
set /p MySearchString=

============================================================================================
for /f "delims=" %%i in ('dir /b /s /a-d ^| findstr /i "%MySearchString%"') do echo %Action% "%%~i"
============================================================================================

set /p correct=Is this correct? [Y/n]: 
if "%correct%"=="Y" goto Delete-Continue
if "%correct%"=="n" goto Exit

:Delete-Continue
for /f "delims=" %%i in ('dir /b /s /a-d ^| findstr /i "%MySearchString%"') do %Action% "%%~i"
echo Files removed.
pause
goto Exit

:Move
cls
set Action=move

echo String that file must contain
set /p MySearchString=

echo ============================================================================================
echo If you want to move to a directory inside this folder, just type the name of the folder
echo otherwise put the complete path to the new folder.
echo ============================================================================================
echo Directory to move
set /p Directory=

cls
============================================================================================
for /f "delims=" %%i in ('dir /b /s /a-d ^| findstr /i "%MySearchString%"') do echo %Action% "%%~i" %Directory%
============================================================================================

set /p correct=Is this correct? [Y/n]: 
if "%correct%"=="Y" goto Move-Continue
if "%correct%"=="n" goto Exit

:Move-Continue
mkdir %Directory%
for /f "delims=" %%i in ('dir /b /s /a-d ^| findstr /i "%MySearchString%"') do %Action% "%%~i" %Directory%
echo Files moved to %Directory%
goto Exit

:Exit
pause
@exit
