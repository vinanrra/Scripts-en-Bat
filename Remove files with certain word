# First try with the "echo" to check the files that will be removed
# Second remove "echo" to remove files

@echo off & setlocal
set "MySearchString=X"
for /f "delims=" %%i in ('dir /b /s /a-d ^| findstr /i "%MySearchString%"') do echo del "%%~i"
