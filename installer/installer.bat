@echo off
setlocal enabledelayedexpansion
title Installer di JustBat

:: ==========================================
:: 1. CONTROLLO PRIVILEGI AMMINISTRATORE
:: ==========================================
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo [!] Richiesta privilegi di Amministratore in corso...
    powershell -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)

:: ==========================================
:: 2. DEFINIZIONE PERCORSI SICURI
:: ==========================================
set "TARGET_DIR=%ProgramFiles%\justbat"
set "XD_DIR=%TARGET_DIR%\XD"

:: Preparazione percorso per autodistruzione
set "DEL_DIR=%~dp0"
if "!DEL_DIR:~-1!"=="\" set "DEL_DIR=!DEL_DIR:~0,-1!"

cls
echo =================================================================
echo                      INSTALLAZIONE JUSTBAT
echo =================================================================
echo.

:: ==========================================
:: 3. CREAZIONE CARTELLA PRINCIPALE
:: ==========================================
echo [*] Creazione cartella principale in Program Files...
if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%"

:: ==========================================
:: 4. COPIA DEL FILE BAT
:: ==========================================
echo [*] Ricerca di justbat.bat e copia in corso...
set "copiato=0"

if exist "%~dp0justbat.bat" (
    copy /y "%~dp0justbat.bat" "%TARGET_DIR%\justbat.bat" >nul
    set "copiato=1"
)

if "!copiato!"=="0" (
    echo.
    echo [!] ERRORE GRAVE: justbat.bat non trovato!
    echo.
    pause
    exit /b
)

:: ==========================================
:: 5. CREAZIONE CARTELLA NASCOSTA XD
:: ==========================================
echo [*] Creazione cartella nascosta XD...
if not exist "%XD_DIR%" mkdir "%XD_DIR%"
attrib +h "%XD_DIR%"

:: ==========================================
:: 6. CREAZIONE COLLEGAMENTO SUL DESKTOP
:: ==========================================
echo [*] Creazione del collegamento sul Desktop...
if exist "!DEL_DIR!\image.ico" (
    copy /y "!DEL_DIR!\image.ico" "%TARGET_DIR%\image.ico" >nul
    attrib +h "%TARGET_DIR%\image.ico"
)

powershell -Command "$wshell = New-Object -ComObject WScript.Shell; $s = $wshell.CreateShortcut('%USERPROFILE%\OneDrive\Desktop\JustBat.lnk'); $s.TargetPath = '%TARGET_DIR%\justbat.bat'; $s.WorkingDirectory = '%TARGET_DIR%'; $s.IconLocation = '%TARGET_DIR%\image.ico'; $s.Save()"

:: ==========================================
:: 7. AUTODISTRUZIONE TOTALE CARTELLA
:: ==========================================
:: Usciamo dalla cartella per sbloccarla dai processi di Windows
cd /d "%TEMP%"

:: Comando "nucleare": aspetta 2 secondi che si chiuda il terminale e poi disintegra l'intera cartella sorgente
start /b "" cmd /c "timeout /t 2 /nobreak >nul & rmdir /s /q "!DEL_DIR!""

exit