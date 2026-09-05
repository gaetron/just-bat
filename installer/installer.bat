@echo off
title Installazione JustBat
color 0a

:: ==========================================
:: 1. CONTROLLO PRIVILEGI AMMINISTRATORE
:: ==========================================
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo [*] Richiesta permessi di Amministratore in corso...
    powershell -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)

:: ==========================================
:: 2. IMPOSTAZIONE VARIABILI E PERCORSI (LINK RAW AGGIORNATI)
:: ==========================================
set "TARGET_DIR=C:\Program Files\justbat"
set "BAT_URL=https://raw.githubusercontent.com/gaetron/just-bat/main/justbat.bat"
set "ICO_URL=https://raw.githubusercontent.com/gaetron/just-bat/main/installer/image.ico"

cls
echo =================================================================
echo                 INSTALLAZIONE DI JUSTBAT (ONLINE)
echo =================================================================
echo.

:: ==========================================
:: 3. CREAZIONE CARTELLE
:: ==========================================
echo [*] Creazione delle cartelle di sistema...
if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%"
if not exist "%TARGET_DIR%\XD" mkdir "%TARGET_DIR%\XD"
attrib +h "%TARGET_DIR%\XD"

:: ==========================================
:: 4. DOWNLOAD FILE DA GITHUB
:: ==========================================
echo [*] Download di justbat.bat da GitHub...
curl -s -L -o "%TARGET_DIR%\justbat.bat" "%BAT_URL%"

echo [*] Download dell'icona da GitHub...
curl -s -L -o "%TARGET_DIR%\image.ico" "%ICO_URL%"

:: Nasconde l'icona dopo averla scaricata
if exist "%TARGET_DIR%\image.ico" attrib +h "%TARGET_DIR%\image.ico"

:: ==========================================
:: 5. CREAZIONE COLLEGAMENTO SUL DESKTOP
:: ==========================================
echo [*] Creazione del collegamento sul Desktop...
powershell -Command "$wshell = New-Object -ComObject WScript.Shell; $s = $wshell.CreateShortcut('%USERPROFILE%\OneDrive\Desktop\JustBat.lnk'); $s.TargetPath = '%TARGET_DIR%\justbat.bat'; $s.WorkingDirectory = '%TARGET_DIR%'; $s.IconLocation = '%TARGET_DIR%\image.ico'; $s.Save()"

:: ==========================================
:: 6. CONCLUSIONE E AUTODISTRUZIONE
:: ==========================================
echo.
echo =================================================================
echo [OK] INSTALLAZIONE COMPLETATA CON SUCCESSO!
echo =================================================================
echo.
echo [!] Chiusura e pulizia dei file temporanei...
timeout /t 3 >nul

:: Autodistruzione dell'installer (si cancella da solo alla fine)
(goto) 2>nul & del "%~f0"
