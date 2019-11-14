@echo off & setlocal
title Script made by Vinanrra - Last modification: 14/11/2019
color 0a
echo String that file must contain
set /p MySearchString=
echo Directory to move (Complete path)
set /p Directory=
cls
============================================================================
for /f "delims=" %%i in ('dir /b /s /a-d ^| findstr /i "%MySearchString%"') do echo move "%%~i" %Directory%
============================================================================
echo Is this correct?
echo 1) Yes
echo 2) No
echo Choose an option
set /p op=
if "%op%"=="1" goto Continue
if "%op%"=="2" goto Exit
:Continue
mkdir %Directory%
for /f "delims=" %%i in ('dir /b /s /a-d ^| findstr /i "%MySearchString%"') do move "%%~i" %Directory%
echo Files moved to %Directory%
pause
:Exit
pause
@exit
