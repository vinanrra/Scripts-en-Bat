@ECHO OFF
SETLOCAL EnableDelayedExpansion
SET "pathToFolder=C:\FolderToEmpty"
SET "wordToSearch=ImportantWord"
FOR /F "tokens=*" %%F IN ('dir %pathToFolder% /b *.txt') DO (
    findstr /i %wordToSearch% "%pathToFolder%\%%F">nul
    IF !ERRORLEVEL!==1 (
        DEL /Q "%pathToFolder%\%%F"
    )
)
