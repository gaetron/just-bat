:: ctrl+k+0 per chiudere tutte le funzioni (vs c)
@echo off

::#region chaos control
if "%~1"=="spawn_chaos" (
    setlocal enabledelayedexpansion
    chcp 65001 >nul
    mode con: cols=80 lines=25
    title CHAOS_ANIMATION_%~2
    goto animation_%~2
)
::#endregion

::#region boot 
setlocal enabledelayedexpansion
chcp 65001 >nul
mode con: cols=100 lines=30
title :D

set "G=[92m"  &:: Verde Neon
set "B=[94m"  &:: Blu Cyber
set "W=[97m"  &:: Bianco
set "R=[0m"   &:: Reset

set "XDdebug=%~d0\justbat\XD"
set "XD=C:\Program Files\justbat\XD"

:boot
cls
echo %G%[ SYSTEM INITIALIZING ]%R%
echo.
echo %B%  NODE: %COMPUTERNAME%
echo %B%  USER: %USERNAME%
echo %B%  ARCH: %PROCESSOR_ARCHITECTURE%
echo.
echo %W%Loading neural modules...%R%

set /a "rdm=(%RANDOM% %% 3) + 1"
timeout /t %rdm% /nobreak >nul

:animation
for /l %%i in (1,1,3) do (
    cls

    set /a "toggle=%%i %% 2"
    if !toggle!==0 (
        echo %G%           ██╗██╗   ██╗███████╗████████╗    ██████╗  █████╗ ████████╗
        echo %G%           ██║██║   ██║██╔════╝╚══██╔══╝    ██╔══██╗██╔══██╗╚══██╔══╝
        echo %G%           ██║██║   ██║███████╗   ██║       ██████╔╝███████║   ██║   
        echo %G%      ██   ██║██║   ██║╚════██║   ██║       ██╔══██╗██╔══██║   ██║   
        echo %G%      ╚█████╔╝╚██████╔╝███████║   ██║       ██████╔╝██║  ██║   ██║   
        echo %G%       ╚════╝  ╚═════╝ ╚══════╝   ╚═╝       ╚═════╝ ╚═╝  ╚═╝   ╚═╝   %R%
    ) else (
        echo %W%           ██╗██╗   ██╗███████╗████████╗    ██████╗  █████╗ ████████╗
        echo %W%           ██║██║   ██║██╔════╝╚══██╔══╝    ██╔══██╗██╔══██╗╚══██╔══╝
        echo %W%           ██║██║   ██║███████╗   ██║       ██████╔╝███████║   ██║   
        echo %W%      ██   ██║██║   ██║╚════██║   ██║       ██╔══██╗██╔══██║   ██║   
        echo %W%      ╚█████╔╝╚██████╔╝███████║   ██║       ██████╔╝██║  ██║   ██║   
        echo %W%       ╚════╝  ╚═════╝ ╚══════╝   ╚═╝       ╚═════╝ ╚═╝  ╚═╝   ╚═╝   %R%
    )
    timeout /t 1 /nobreak >nul
)
::#endregion

::#region menu
:menu
cls
color 0a
echo /=================================================================\
echo \      ##### #   # ##### #######     @@@@@   @@@@@@ @@@@@@@       /
echo /         #  #   # #        #        @    @  @    @    @          \
echo \         #  #   #  ###     #        @@@@@   @@@@@@    @          /
echo /         #  #   #     #    #        @    @  @    @    @          \
echo \     ####   ##### #####    #        @@@@@   @    @    @          /
echo /                                                                 \
echo \=================================================================/
echo.
echo   ################################################################
echo   ^|1-wifi grab    ^| 6-Convertor   ^|11-roborename   ^|16-win fix   ^|
echo   ^|2-deep clean   ^| 7-QR generator^|12-YT DLP       ^|17-null      ^|
echo   ^|3-NeoFetch     ^| 8-Truth check ^|13-format conv  ^|18-null      ^|
echo   ^|4-Flush DNS    ^| 9-File logger ^|14-ascii recolor^|19-download  ^|
echo   ^|5-Robocopy     ^|10-crypter     ^|15-ssh          ^|20-animation ^|
echo   ################################################################
echo.

set "scelta="
set /p "scelta=Seleziona (1-20) o scrivi 'exit': "

if /I "%scelta%"=="exit" exit

if "%scelta%"=="" goto menu

if /I "%scelta%"=="XD" explorer "!XD!"
if /I "%scelta%"=="XDdebug" explorer "!XDdebug!"
if /I "%scelta%"=="XD" goto menu
if /I "%scelta%"=="xdinfo" start "" "https://docs.google.com/spreadsheets/d/1rO2zTJnVQIvOnXyJDLLDBaHUqzN-_hCKgND_QGHfDSA/edit?usp=sharing" & goto menu

if /I "%scelta%"=="XD1" goto super_utility_1
if /I "%scelta%"=="XD2" goto super_utility_2
if /I "%scelta%"=="XD3" goto super_utility_3
if /I "%scelta%"=="XD4" goto super_utility_4
if /I "%scelta%"=="XD5" goto super_utility_5
if /I "%scelta%"=="XD6" goto super_utility_6
if /I "%scelta%"=="XD7" goto super_utility_7
if /I "%scelta%"=="XD8" goto super_utility_8
if /I "%scelta%"=="XD9" goto super_utility_9
if /I "%scelta%"=="XD10" goto super_utility_10
if /I "%scelta%"=="XD11" goto super_utility_11
if /I "%scelta%"=="XD12" goto super_utility_12
if /I "%scelta%"=="XD13" goto super_utility_13
if /I "%scelta%"=="XD14" goto super_utility_14
if /I "%scelta%"=="XD15" goto super_utility_15
if /I "%scelta%"=="XD16" goto super_utility_16
if /I "%scelta%"=="XD17" goto super_utility_17
if /I "%scelta%"=="XD18" goto super_utility_18
if /I "%scelta%"=="XD19" goto super_utility_19
if /I "%scelta%"=="XD20" goto super_utility_20

echo %scelta%| findstr /r "^[0-9]*$" >nul
if errorlevel 1 goto menu

if %scelta%==1 goto utility_1
if %scelta%==2 goto utility_2
if %scelta%==3 goto utility_3
if %scelta%==4 goto utility_4
if %scelta%==5 goto utility_5
if %scelta%==6 goto utility_6
if %scelta%==7 goto utility_7
if %scelta%==8 goto utility_8
if %scelta%==9 goto utility_9
if %scelta%==10 goto utility_10
if %scelta%==11 goto utility_11
if %scelta%==12 goto utility_12
if %scelta%==13 goto utility_13
if %scelta%==14 goto utility_14
if %scelta%==15 goto utility_15
if %scelta%==16 goto utility_16
if %scelta%==17 goto utility_17
if %scelta%==18 goto utility_18
if %scelta%==19 goto utility_19
if %scelta%==20 goto utility_20

goto menu
::#endregion

::#region update
:update
cls
echo [*] Ricerca aggiornamenti da GitHub in corso...
echo.

:: Link RAW esatto alla tua repository
set "GITHUB_URL=https://raw.githubusercontent.com/gaetron/just-bat/main/justbat.bat"
set "TEMP_FILE=%TEMP%\justbat_update.bat"

:: Scarica la nuova versione in modo silenzioso
curl -s -L -o "%TEMP_FILE%" "%GITHUB_URL%"

:: Controlla se il file e' stato scaricato
if exist "%TEMP_FILE%" (
    :: Tenta di sovrascrivere lo script attuale
    copy /y "%TEMP_FILE%" "%~f0" >nul
    
    :: Controlla se la copia e' fallita (es. mancano permessi admin)
    if %errorlevel% neq 0 (
        echo [!] ERRORE: Impossibile sovrascrivere il file. 
        echo [*] Assicurati di aver avviato justbat come Amministratore!
        del "%TEMP_FILE%" >nul
        pause
        goto menu
    )
    
    del "%TEMP_FILE%" >nul
    
    echo [OK] Aggiornamento completato con successo!
    echo [*] Riavvio di justbat in corso...
    timeout /t 3 >nul
    
    :: Riavvia il programma nella nuova versione e chiude questo vecchio
    start "" "%~f0"
    exit
) else (
    echo [!] ERRORE: Impossibile scaricare l'aggiornamento. Controlla la connessione.
    pause
    goto menu
)
::#endregion

::#region utility 1
:utility_1 :: wifi grab
cls
for /f "tokens=2 delims=:" %%a in ('netsh wlan show interface ^| findstr /c:" SSID" ^| findstr /v "BSSID"') do (
    set ssid=%%a
    set ssid=!ssid:~1!
)

if "%ssid%"=="" (
    echo [!] Errore: Non risulta alcuna connessione Wi-Fi attiva. 
    pause
    goto menu
)

echo ==================================================================================================== 
for /f "tokens=1,2 delims=:" %%i in ('netsh wlan show profile name^="%ssid%" key^=clear') do (
    set "label=%%i"
    set "value=%%j"
    echo %%i:%%j
    echo !label! | findstr /i "Contenuto Content" >nul
    if !errorlevel! equ 0 (
        echo
        echo ============================================================================================
        echo  PASSWORD TROVATA --^>!value!
        echo ============================================================================================
        echo
    )
)
echo ==================================================================================================== 
echo Operazione completata. Premere un tasto per tornare al menu. 
pause >nul
goto menu
::#endregion

::#region utility 2
:utility_2 :: Deep Clean
cls

echo ====================================================================================================
echo [ SYSTEM MAINTENANCE ] - Esecuzione Pulizia Profonda
echo ====================================================================================================
echo.

echo [*] Svuotamento Temp Utente...
del /s /f /q "%temp%\*.*" >nul 2>&1
for /d %%i in ("%temp%\*") do rd /s /q "%%i" >nul 2>&1
timeout /t 1 >nul

echo [*] Svuotamento Temp di Sistema...
del /s /f /q "C:\Windows\Temp\*.*" >nul 2>&1
for /d %%i in ("C:\Windows\Temp\*") do rd /s /q "%%i" >nul 2>&1
timeout /t 1 >nul

echo [*] Svuotamento Prefetch...
del /s /f /q "C:\Windows\Prefetch\*.*" >nul 2>&1
for /d %%i in ("C:\Windows\Prefetch\*") do rd /s /q "%%i" >nul 2>&1
timeout /t 1 >nul

echo [*] Svuotamento screenshot...
del /S /f /q "C:\Users\82B100BRIX\OneDrive\Immagini\Catture di schermata\*">nul 2>&1
for /d %%i in ("C:\Users\82B100BRIX\OneDrive\Immagini\Catture di schermata\*") do rd /s /q "%%i" >nul 2>&1
timeout /t 1 >nul

echo [*] Svuotamento Cestino...
rd /s /q %systemdrive%\$Recycle.bin >nul 2>&1
timeout /t 1 >nul

echo.
echo ====================================================================================================
echo        OPERAZIONE COMPLETATA - Sistema pulito
echo ====================================================================================================
echo.
echo Premere un tasto per tornare al menu.
pause >nul
goto menu

::#endregion

::#region utility 3
:utility_3 :: System Info (NeoFetch)
cls

set "P_BLUE=powershell -NoProfile -Command "Write-Host ' "
set "P_END= ' -ForegroundColor Cyan -NoNewline""

echo %G%[ SYSTEM INFORMATION ]%R%
echo.

%P_BLUE%                        ....,,:;+ccllll%P_END% & echo    USER:    %USERNAME%
%P_BLUE%         ...,,+:;  cllllllllllllllllll%P_END% & echo     HOST:    %COMPUTERNAME%
%P_BLUE%  ,ccclllllllllll  llllllllllllllllll%P_END% & echo    ---------------------------------------

%P_BLUE% lllllllllllllll  llllllllllllllllll%P_END% & <nul set /p ="        OS:     " & powershell -NoProfile -command "(Get-CimInstance Win32_OperatingSystem).Caption"

%P_BLUE% lllllllllllllll  llllllllllllllllll%P_END% & <nul set /p ="    CPU:    " & powershell -NoProfile -command "(Get-CimInstance Win32_Processor).Name.Trim()"

%P_BLUE% lllllllllllllll  llllllllllllllllll%P_END% & <nul set /p ="    GPU:    " & powershell -NoProfile -command "$g = Get-CimInstance Win32_VideoController; $v = [math]::Round(($g.AdapterRAM | Measure-Object -Sum).Sum / 1GB); $g.Name + ' (' + $v + ' GB)'"

%P_BLUE% lllllllllllllll  llllllllllllllllll%P_END% & <nul set /p ="    RAM:    " & powershell -NoProfile -command "$os = Get-CimInstance Win32_OperatingSystem; $total = [math]::Round($os.TotalVisibleMemorySize / 1MB, 0); $used = [math]::Round(($os.TotalVisibleMemorySize - $os.FreePhysicalMemory) / 1MB, 2); '' + $used + ' GB / ' + $total + ' GB'"

%P_BLUE% lllllllllllllll  llllllllllllllllll%P_END% & echo    ---------------------------------------

echo.
%P_BLUE% lllllllllllllll  llllllllllllllllll%P_END% & echo.
%P_BLUE% lllllllllllllll  llllllllllllllllll%P_END% & echo.
%P_BLUE% lllllllllllllll  llllllllllllllllll%P_END% & echo.
%P_BLUE% lllllllllllllll  llllllllllllllllll%P_END% & echo.
%P_BLUE% lllllllllllllll  llllllllllllllllll%P_END% & echo.
%P_BLUE% ''ccclllllllllll  llllllllllllllllll%P_END% & echo.
%P_BLUE%         '' '' *::  :cclllllllllllllll%P_END% & echo.
%P_BLUE%                        ''''''''''*::cll%P_END% & echo.
%P_BLUE%                                  ''''%P_END% & echo.
3

pause >nul
goto menu
::#endregion

::#region utility 4
:utility_4
cls
echo [ SYSTEM ] - PULIZIA CACHE DNS (FLUSH DNS)
echo --------------------------------------------------

echo [1/2] Svuotamento della cache DNS in corso...
ipconfig /flushdns >nul 2>&1

timeout /t 1 >nul

if %errorlevel% equ 0 (
    echo [ OK ] Cache DNS svuotata correttamente.
) else (
    echo [ ERRORE ] Impossibile svuotare la cache.
)

timeout /t 1 >nul

echo.
echo [2/2] Rinnovo configurazione IP...

ipconfig /release >nul 2>&1
ipconfig /renew >nul 2>&1

timeout /t 1 >nul

echo [ OK ] Configurazione di rete aggiornata.
echo.
echo ==================================================
echo    OPERAZIONE COMPLETATA!                       
echo ==================================================
echo.
echo Premi un tasto per tornare al menu.

pause >nul
goto menu
::#endregion

::#region utility 5
:utility_5
cls
color
echo =================================================================
echo               BACKUP E SYNC CON ROBOCOPY
echo =================================================================
echo.
echo Trascina qui il FILE o la CARTELLA sorgente:
set /p "source="

set "source=!source:"=!"
if "!source!"=="" goto menu
if "!source:~-1!"=="\" set "source=!source:~0,-1!"

echo.
echo Trascina qui la cartella DESTINAZIONE:
set /p "destination="

set "destination=!destination:"=!"
if "!destination!"=="" goto menu
if "!destination:~-1!"=="\" set "destination=!destination:~0,-1!"

echo.

if exist "!source!\" (
    echo [*] Modalità CARTELLA
    robocopy "!source!" "!destination!" /MIR /E /FFT /Z /MT:8 /R:2 /W:2 /V /ETA /XD "System Volume Information" "$RECYCLE.BIN"
) else if exist "!source!" (
    echo [*] Modalità FILE SINGOLO
    xcopy /Y /Z "!source!" "!destination!\"
) else (
    echo [!] Percorso non trovato: !source!
    pause
    goto menu
)

echo.
echo =================================================================
echo [OK] OPERAZIONE COMPLETATA!
echo =================================================================
pause
goto menu
::#endregion

::#region utility 6
:utility_6
cls
echo /=================================================================\
echo \      ##### #   # ##### #######     @@@@@   @@@@@@ @@@@@@@       /
echo /         #  #   # #        #        @    @  @    @    @          \
echo \         #  #   #  ###     #        @@@@@   @@@@@@    @          /
echo /         #  #   #     #    #        @    @  @    @    @          \
echo \     ####   ##### #####    #        @@@@@   @    @    @          /
echo /                                                                 \
echo \=================================================================/
echo /      _____ _____ _   _ _   _ ___________ _____ ___________      \
echo \     /  __ \  _  ^| \ ^| ^| ^| ^| ^|  ___^| ___ \_   _^|  ___^| ___ \     /
echo /     ^| /  \/ ^| ^| ^|  \^| ^| ^| ^| ^| ^|__ ^| ^|_/ / ^| ^| ^| ^|__ ^| ^|_/ /     \
echo \     ^| ^|   ^| ^| ^| ^| . ` ^| ^| ^| ^|  __^|^|    /  ^| ^| ^|  __^|^|    /      /
echo /     ^| \__/\ \_/ / ^|\  \ \_/ / ^|___^| ^|\ \  ^| ^| ^| ^|___^| ^|\ \      \
echo \     \_____/\___/\_^| \_/\___/\____/\_^| \_^| \_/ \____/\_^| \_^|     /
echo /                                                                 \
echo \=================================================================/
echo.
echo   ################################################################
echo   ^|1-Binario      ^| 2-Decimale     ^| 3-Esadecimale  ^| 4-BACK     ^|
echo   ################################################################
echo.

set "scelta="
set "formato_in="
set "formato_out="
set "valore="
set "risultato="

set /p "scelta=Inserisci conversione (es. da/a): "

if "%scelta%"=="4" goto menu
if "%scelta%"=="" goto utility_6

:: Estrae i due numeri separati dalla barra (/)
for /f "tokens=1,2 delims=/" %%A in ("%scelta%") do (
    set "formato_in=%%A"
    set "formato_out=%%B"
)

if "%formato_in%"=="" goto utility_6
if "%formato_out%"=="" goto utility_6

set /p "valore=Inserisci il valore da convertire: "

echo.
echo ========================================

if "%formato_in%"=="1" if "%formato_out%"=="2" (
    for /f %%R in ('powershell -NoProfile -Command "[Convert]::ToInt32('%valore%', 2)" 2^>nul') do set "risultato=%%R"
)

if "%formato_in%"=="2" if "%formato_out%"=="1" (
    for /f %%R in ('powershell -NoProfile -Command "[Convert]::ToString(%valore%, 2)" 2^>nul') do set "risultato=%%R"
)

if "%formato_in%"=="2" if "%formato_out%"=="3" (
    for /f %%R in ('powershell -NoProfile -Command "'{0:X}' -f %valore%" 2^>nul') do set "risultato=%%R"
)

if "%formato_in%"=="3" if "%formato_out%"=="2" (
    for /f %%R in ('powershell -NoProfile -Command "[Convert]::ToInt32('%valore%', 16)" 2^>nul') do set "risultato=%%R"
)

if "%formato_in%"=="1" if "%formato_out%"=="3" (
    for /f %%R in ('powershell -NoProfile -Command "'{0:X}' -f [Convert]::ToInt32('%valore%', 2)" 2^>nul') do set "risultato=%%R"
)

if "%formato_in%"=="3" if "%formato_out%"=="1" (
    for /f %%R in ('powershell -NoProfile -Command "[Convert]::ToString([Convert]::ToInt32('%valore%', 16), 2)" 2^>nul') do set "risultato=%%R"
)

if defined risultato (
    echo Risultato: %risultato%
) else (
    echo [!] Errore: Input non valido.
)
echo ========================================
echo.
pause
goto utility_6
::#endregion

::#region utility 7
:utility_7
cls
echo ============================
echo      GENERATORE QR CODE     
echo ============================
echo.
echo Inserisci il link che vuoi trasformare in QR Code.
echo L'immagine verra salvata nella stessa cartella di questo script.
echo.

set /p "qr_data=Dati (URL/Testo): "
set /p "qr_name=Nome file (senza estensione, es. mio_qr): "

echo.
echo Generazione in corso...

powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=%qr_data%' -OutFile '%~dp0%qr_name%.png'"

if exist "%~dp0%qr_name%.png" (
    echo.
    echo =================================================================
    echo  QR CODE GENERATO CON SUCCESSO!
    echo  Salvato in: %~dp0%qr_name%.png
    echo =================================================================
    start "" "%~dp0%qr_name%.png"
) else (
    echo [!] Errore durante la generazione. Controlla la connessione.
)

echo.
pause
goto menu
::#endregion

::#region utility 8
:utility_8
cls
echo ===================================
echo      TRUTH CHECK ^& SPEED TEST
echo ===================================
echo.
echo Questo strumento verifica le unita USB testandone la vera velocita
echo e tentando un'allocazione massiva dello spazio per scovare le FAKE.
echo.

set "ps_script=%temp%\usb_tester.ps1"
if exist "%ps_script%" del "%ps_script%"

echo $drives = @(Get-WmiObject Win32_LogicalDisk -Filter "DriveType=2") > "%ps_script%"
echo if ($drives.Count -eq 0) { Write-Host "[!] Nessuna chiavetta USB trovata."; exit } >> "%ps_script%"
echo Write-Host "Dispositivi USB rilevati:" >> "%ps_script%"
echo $i = 1 >> "%ps_script%"
echo foreach ($d in $drives) { >> "%ps_script%"
echo     $sizeGB = if ($d.Size) { [math]::Round($d.Size / 1GB, 2) } else { 0 } >> "%ps_script%"
echo     Write-Host ("[{0}] Lettera: {1} - Nome: {2} - Capacita: {3} GB" -f $i, $d.DeviceID, $d.VolumeName, $sizeGB) >> "%ps_script%"
echo     $i++ >> "%ps_script%"
echo } >> "%ps_script%"
echo Write-Host "" >> "%ps_script%"
echo $sel = Read-Host "Inserisci il numero da testare (o premi Invio per uscire)" >> "%ps_script%"
echo if ([string]::IsNullOrWhiteSpace($sel)) { exit } >> "%ps_script%"
echo $idx = [int]$sel - 1 >> "%ps_script%"
:: Controllo corretto per la selezione dell'array
echo if ($idx -lt 0 -or $idx -ge $drives.Count) { Write-Host "[] Selezione non valida."; exit } >> "%ps_script%"
echo $letter = $drives[$idx].DeviceID >> "%ps_script%"
echo Write-Host "`n========================================" >> "%ps_script%"
echo Write-Host "[*] Inizio test su $letter" >> "%ps_script%"
echo Write-Host "========================================" >> "%ps_script%"
echo $path = $letter + "\speed_test.tmp" >> "%ps_script%"
echo $testSize = 200 >> "%ps_script%"
echo Write-Host "[*] 1/3 Scrittura dati reali in corso ($testSize MB)..." >> "%ps_script%"
echo try { >> "%ps_script%"
echo     $buf = New-Object byte[] 1048576 >> "%ps_script%"
echo     $rnd = New-Object Random >> "%ps_script%"
echo     $rnd.NextBytes($buf) >> "%ps_script%"
echo     $fs = [System.IO.File]::Create($path) >> "%ps_script%"
echo     $sw = [System.Diagnostics.Stopwatch]::StartNew() >> "%ps_script%"
echo     for ($k=0; $k -lt $testSize; $k++) { $fs.Write($buf,0,$buf.Length) } >> "%ps_script%"
echo     $fs.Close() >> "%ps_script%"
echo     $sw.Stop() >> "%ps_script%"
echo     $wSpd = [math]::Round($testSize / $sw.Elapsed.TotalSeconds, 2) >> "%ps_script%"
echo     Write-Host "    -^> Velocita Scrittura: $wSpd MB/s" >> "%ps_script%"
echo } catch { Write-Host "[-] Errore critico! Chiavetta protetta o guasta."; if ($fs) { $fs.Close() }; exit } >> "%ps_script%"
echo Write-Host "[*] 2/3 Lettura dati reali in corso..." >> "%ps_script%"
echo try { >> "%ps_script%"
echo     $fs = [System.IO.File]::OpenRead($path) >> "%ps_script%"
echo     $sw = [System.Diagnostics.Stopwatch]::StartNew() >> "%ps_script%"
echo     while ($fs.Read($buf,0,$buf.Length) -gt 0) { } >> "%ps_script%"
echo     $fs.Close() >> "%ps_script%"
echo     $sw.Stop() >> "%ps_script%"
echo     $rSpd = [math]::Round($testSize / $sw.Elapsed.TotalSeconds, 2) >> "%ps_script%"
echo     Write-Host "    -^> Velocita Lettura: $rSpd MB/s" >> "%ps_script%"
echo } catch { Write-Host "[-] Errore in lettura!"; if ($fs) { $fs.Close() } } >> "%ps_script%"
echo Write-Host "[*] 3/3 Test Allocazione Spazio (Fake Check)..." >> "%ps_script%"
echo $free = (Get-WmiObject Win32_LogicalDisk -Filter "DeviceID='$letter'").FreeSpace >> "%ps_script%"
echo $fakePath = $letter + "\fake_check.tmp" >> "%ps_script%"
echo if ($free -gt 52428800) { >> "%ps_script%"
echo     $alloc = $free - 52428800 >> "%ps_script%"
echo     Write-Host ("    - Tento di allocare " + [math]::Round($alloc/1GB, 2) + " GB...") >> "%ps_script%"
echo     $p = Start-Process -FilePath "fsutil" -ArgumentList "file createnew $fakePath $alloc" -Wait -NoNewWindow -PassThru >> "%ps_script%"
echo     if ($p.ExitCode -eq 0) { Write-Host "    -^> Allocazione OK. Il file system regge." } else { Write-Host "    -^> ERRORE! Possibile chiavetta FAKE o rovinata." } >> "%ps_script%"
echo } >> "%ps_script%"
echo Write-Host "[*] 4/4 Pulizia dei file di test..." >> "%ps_script%"
echo Remove-Item $path -Force -ErrorAction SilentlyContinue >> "%ps_script%"
echo Remove-Item $fakePath -Force -ErrorAction SilentlyContinue >> "%ps_script%"
echo Write-Host "========================================" >> "%ps_script%"
echo Write-Host "Test concluso!" >> "%ps_script%"

powershell -NoProfile -ExecutionPolicy Bypass -File "%ps_script%"
del "%ps_script%"

echo.
pause
goto menu
::#endregion

::#region utility 9
:utility_9
cls
echo ==========================
echo      FILE TREE LOGGER     
echo ==========================
echo.
echo Inserisci il percorso della cartella da scansionare:
set /p "target_dir=Percorso: "

set "target_dir=%target_dir:"=%"
if not exist "%target_dir%" (echo [!] Percorso non valido. & pause & goto utility_9)

for %%I in ("%target_dir%") do set "folder_name=%%~nxI"
set "output_file=%~dp0%folder_name%.txt"

set "ps_logger=%temp%\file_logger.ps1"
if exist "%ps_logger%" del "%ps_logger%"

echo $target = "%target_dir%" > "%ps_logger%"
echo $outFile = "%output_file%" >> "%ps_logger%"
echo "" > $outFile >> "%ps_logger%"
echo. >> "%ps_logger%"
echo function Get-Tree($path, $level) { >> "%ps_logger%"
echo     $indent = "    " * $level >> "%ps_logger%"
echo     $items = Get-ChildItem -Path $path -ErrorAction SilentlyContinue >> "%ps_logger%"
echo. >> "%ps_logger%"
echo     # Scrittura Cartelle >> "%ps_logger%"
echo     foreach ($item in $items ^| Where-Object { $_.PSIsContainer }) { >> "%ps_logger%"
echo         Add-Content $outFile ("$indent" + $item.Name + ":") >> "%ps_logger%"
echo         Get-Tree $item.FullName ($level + 1) >> "%ps_logger%"
echo         Add-Content $outFile ""  # Riga vuota dopo il contenuto della cartella >> "%ps_logger%"
echo     } >> "%ps_logger%"
echo. >> "%ps_logger%"
echo     # Scrittura File >> "%ps_logger%"
echo     foreach ($item in $items ^| Where-Object { -not $_.PSIsContainer }) { >> "%ps_logger%"
echo         Add-Content $outFile ("$indent" + $item.Name) >> "%ps_logger%"
echo     } >> "%ps_logger%"
echo } >> "%ps_logger%"
echo. >> "%ps_logger%"
echo Add-Content $outFile "LOG DIRECTORY: $target" >> "%ps_logger%"
:: Separatore con simboli di uguale come richiesto
echo Add-Content $outFile "================================================================================================" >> "%ps_logger%"
echo Get-Tree $target 0 >> "%ps_logger%"

echo.
echo [*] Generazione log in corso...
powershell -NoProfile -ExecutionPolicy Bypass -File "%ps_logger%"

if exist "%output_file%" (
    echo.
    echo =================================================================
    echo LOG COMPLETATO!
    echo Salvato come: %folder_name%.txt
    echo =================================================================
    echo.
)
del "%ps_logger%"
pause
goto menu
::#endregion

::#region utility 10
:utility_10
cls
color 0a
echo /=================================================================\
echo \      ##### #   # ##### #######     @@@@@   @@@@@@ @@@@@@@       /
echo /         #  #   # #        #        @    @  @    @    @          \
echo \         #  #   #  ###     #        @@@@@   @@@@@@    @          /
echo /         #  #   #     #    #        @    @  @    @    @          \
echo \     ####   ##### #####    #        @@@@@   @    @    @          /
echo /                                                                 \
echo \=================================================================/
echo /            _____ ________   _______ _____ ___________           \
echo \           /  __ \^| ___ \ \ / / ___ \_   _^|  ___^| ___ \          /
echo /           ^| /  \/^| ^|_/ /\ V /^| ^|_/ / ^| ^| ^| ^|__ ^| ^|_/ /          \
echo \           ^| ^|    ^|    /  \ / ^|  __/  ^| ^| ^|  __^|^|    /           /
echo /           ^| \__/\^| ^|\ \   ^| ^| ^| ^|     ^| ^| ^| ^|___^| ^|\ \           \
echo \            \____/\_^| \_\  \_/ \_^|     \_/ \____/\_^| \_\          /
echo /                                                                 \
echo \=================================================================/
echo /                        ^|                        ^|               \
echo \      1-Encrypting      ^|      2-Decrypting      ^|    3-BACK     /
echo /                        ^|                        ^|               \
echo \=================================================================/

echo.
set /p "mode=Scegli opzione: "

:: Gestione opzioni e suffissi
if "%mode%"=="1" (set "suffix=-encrypted") else (
    if "%mode%"=="2" (set "suffix=-decrypted") else (
        if "%mode%"=="3" (goto menu) else (goto utility_10)
    )
)

echo.
echo Trascina qui il file da elaborare:
set /p "target_file="
:: Pulizia virgolette per il trascinamento
set "target_file=%target_file:"=%"

if not exist "%target_file%" (
    echo [!] ERRORE: File non trovato.
    pause
    goto utility_10
)

:: Estrazione nome per il file di output nella cartella del .bat
for %%F in ("%target_file%") do (
    set "fname=%%~nF"
    set "fext=%%~xF"
)
set "output_file=%~dp0%fname%%suffix%%fext%"

:: Creazione Script PowerShell temporaneo
set "ps_crypt=%temp%\aes_engine.ps1"
if exist "%ps_crypt%" del "%ps_crypt%"

echo $file = '%target_file%' > "%ps_crypt%"
echo $out = '%output_file%' >> "%ps_crypt%"
echo $in = [IO.File]::ReadAllBytes($file) >> "%ps_crypt%"
echo $pass = 'JustBatSecretKey2024!' >> "%ps_crypt%"
echo $salt = [Text.Encoding]::UTF8.GetBytes('Salt_12345678') >> "%ps_crypt%"
echo $p = New-Object Security.Cryptography.RijndaelManaged >> "%ps_crypt%"
echo $db = New-Object Security.Cryptography.Rfc2898DeriveBytes($pass, $salt, 1000) >> "%ps_crypt%"
echo $p.Key = $db.GetBytes(32); $p.IV = $db.GetBytes(16) >> "%ps_crypt%"
echo if (%mode% -eq 1) { $e = $p.CreateEncryptor() } else { $e = $p.CreateDecryptor() } >> "%ps_crypt%"
echo $res = $e.TransformFinalBlock($in, 0, $in.Length) >> "%ps_crypt%"
echo [IO.File]::WriteAllBytes($out, $res) >> "%ps_crypt%"
echo Write-Host 'OPERAZIONE COMPLETATA CON SUCCESSO!' >> "%ps_crypt%"

echo.
echo [*] Elaborazione in corso...
powershell -NoProfile -ExecutionPolicy Bypass -File "%ps_crypt%"
del "%ps_crypt%"

echo.
echo Il file e stato creato in:
echo %output_file%
pause

goto menu
::#endregion

::#region utility 11
:utility_11

cls

echo ================ Roborename ================

echo Trascina qui o scrivi il percorso del file da rinominare:
set /p "target_file="
:: Pulizia virgolette
set "target_file=%target_file:"=%"

:: Controllo esistenza file
if not exist "%target_file%" (
    echo [!] ERRORE: File non trovato.
    pause
    goto utility_11
)

:: Smonta il file per estrarre l'estensione (%%~xF), la cartella (%%~dpF) e il nome (%%~nF)
for %%F in ("%target_file%") do (
    set "fext=%%~xF"
    set "fdir=%%~dpF"
    set "oldname=%%~nxF"
)

echo.
echo [*] File selezionato: %oldname%
echo [*] Estensione rilevata: %fext%
echo.
echo Inserisci il nuovo nome (l'estensione verra' aggiunta in automatico)
set /p "new_name=Nuovo nome: "

:: Controllo anti-crash se premi INVIO per sbaglio lasciando vuoto
if "%new_name%"=="" (
    echo.
    echo [!] Operazione annullata: nome non valido.
    pause
    goto utility_11
)

:: Rinomina il file. La sintassi di ren richiede: ren "percorso\vecchio_file" "nuovo_nome_con_estensione"
ren "%target_file%" "%new_name%%fext%"

:: Verifica se il comando ren ha avuto successo (errorlevel 0)
if not errorlevel 1 (
    echo.
    echo [OK] SUCCESSO! Il file e' stato rinominato in: %new_name%%fext%
) else (
    echo.
    echo [!] ERRORE: Impossibile rinominare il file. Forse il nome contiene caratteri speciali non validi?
)

echo.
pause
goto menu
::#endregion

::#region utility 12
:utility_12
cls
echo ============================
echo     YT-DLP MP3 DOWNLOADER
echo ============================
echo.
echo [*] Controllo presenza di yt-dlp...

where yt-dlp >nul 2>&1
if %errorlevel% equ 0 goto ytdlp_ready

echo [!] yt-dlp non trovato. Download in corso...
echo.
curl -L "https://github.com/yt-dlp/yt-dlp/releases/download/2026.03.17/yt-dlp.exe" -o "%~dp0yt-dlp.exe"

if not exist "%~dp0yt-dlp.exe" (
    echo [!] Download fallito. Controlla la connessione.
    pause >nul
    goto menu
)

echo [ OK ] yt-dlp scaricato nella cartella dello script.
echo [*] Riavvio dello script...
timeout /t 2 /nobreak >nul
start "" "%~f0"
exit

:ytdlp_ready
echo [ OK ] yt-dlp trovato.
echo.

:: --- NUOVA SEZIONE: SCELTA CARTELLA ---
echo Inserisci il percorso
echo [Premi INVIO per usare la cartella Download di default]:
set "dl_path="
set /p "dl_path="

:: Se non viene inserito nulla usa Download, altrimenti pulisce le virgolette e lo slash
if "!dl_path!"=="" (
    set "dl_path=%USERPROFILE%\Downloads"
    echo [*] Uso la cartella di default: !dl_path!
) else (
    set "dl_path=!dl_path:"=!"
    if "!dl_path:~-1!"=="\" set "dl_path=!dl_path:~0,-1!"
    echo [*] Cartella impostata: !dl_path!
)
echo.
:: --------------------------------------

set "ytlink="
set /p "ytlink=Incolla il link da scaricare: "

if "!ytlink!"=="" (
    echo [!] Nessun link inserito. Operazione annullata.
    pause >nul
    goto menu
)

echo.
echo [*] Download in corso...
:: Aggiornato il percorso di output (-o) per usare la variabile !dl_path!
yt-dlp -x --audio-format mp3 --audio-quality 0 --postprocessor-args "-acodec libmp3lame" -o "!dl_path!\%%(title)s.%%(ext)s" --no-warnings --progress --console-title -q "!ytlink!"

title :D

color 0a

echo.
echo.
echo premere un tasto per continuare . . .
echo.
pause >nul
goto menu
::#endregion

::#region utility 13
:utility_13
cls
echo /=================================================================\
echo \                     BATCH FORMAT STREAM                         /
echo \=================================================================/
echo.
echo Inserisci il percorso della CARTELLA:
set /p "target_dir="
:: Pulizia virgolette
set "target_dir=%target_dir:"=%"

:: Controllo esistenza cartella
if not exist "%target_dir%\" (
    echo [!] ERRORE: Cartella non trovata.
    pause
    goto utility_13
)

echo.
echo Inserisci la nuova estensione
set /p "new_ext=Estensione: "

:: Logica per rimuovere il punto se l'utente lo ha inserito
if "%new_ext:~0,1%"=="." set "new_ext=%new_ext:~1%"

if "%new_ext%"=="" (
    echo [!] Estensione non valida.
    pause
    goto utility_13
)

echo.
echo [*] Conversione di tutti i file in .%new_ext% in corso...
echo.

:: Ciclo for per elaborare tutti i file nella cartella
for %%F in ("%target_dir%\*") do (
    if not "%%~nxF"=="%~nx0" (
        ren "%%F" "%%~nF.%new_ext%"
        echo [OK] Rinominato: %%~nxF -^> %%~nF.%new_ext%
    )
)

echo.
echo Operazione completata!
pause
goto menu
::#endregion

::#region utility 14
:utility_14
cls
color 0a

:: Forza la codifica UTF-8 per leggere correttamente i caratteri speciali
chcp 65001 >nul

echo =======================================================
echo [UTILITY 14] - ASCII Recolor (da File TXT)
echo =======================================================
echo.
echo Trascina qui il file .txt contenente il tuo disegno ASCII:
set /p "ascii_file="

:: Pulisce il percorso dalle virgolette generate dal trascinamento
set "ascii_file=%ascii_file:"=%"

:: Controlla se il file esiste davvero
if not exist "%ascii_file%" (
    echo.
    echo [!] ERRORE: File non trovato. Assicurati di averlo trascinato correttamente.
    pause
    goto utility_14
)

echo.
echo -------------------------------------------------------
echo SCEGLI IL COLORE DEL TESTO (sfondo+testo)
echo -------------------------------------------------------
echo 0 = Nero      8 = Grigio scuro      
echo 1 = Blu scuro      9 = Blu chiaro    
echo 2 = Verde          A = Verde chiaro    
echo 3 = Acqua          B = Acqua chiaro   
echo 4 = Rosso          C = Rosso chiaro   
echo 5 = Viola          D = Viola chiaro   
echo 6 = Giallo         E = Giallo chiaro      
echo 7 = Grigio chiaro  F = Bianco puro
echo -------------------------------------------------------
set /p "asc_color=Digita la lettera o il numero del colore: "

:: Pulisce l'input da eventuali spazi
set "asc_color=%asc_color: =%"

:: Applica il colore: '0' per lo sfondo nero, la variabile per il testo
cls
color 0%asc_color%

:: Stampa a schermo il contenuto del file TXT
echo.
type "%ascii_file%"
echo.
echo =======================================================
echo Premi un tasto qualsiasi per tornare al menu e ripristinare il terminale.
pause >nul

:: Ripristina il classico Sfondo Nero (0) / Testo Verde (a)
color 0a
goto menu
::#endregion

::#region utility 15
:utility_15
cls
echo /=================================================================\
echo \                     AVVIO CONNESSIONE SSH                       /
echo /=================================================================\
echo.

set "default_user=admin"
set /p "ssh_user=Inserisci utente [Default: !default_user!]: "
if "!ssh_user!"=="" set "ssh_user=!default_user!"

set "ip_base="
for /f "tokens=3 delims=: " %%i in ('netsh interface ip show config ^| findstr "Indirizzo IP" ^| findstr /v "127.0.0.1"') do (
    for /f "tokens=1-3 delims=." %%a in ("%%i") do (
        set "ip_base=%%a.%%b.%%c."
    )
)

if "!ip_base!"=="" set "ip_base=192.168.1."

echo.
set /p "last_octet=Inserisci l'ultima cifra dell'IP:!ip_base!"

if "!last_octet!"=="" goto menu

set "ssh_host=!ip_base!!last_octet!"

echo.
echo [!] Connessione a !ssh_user!@!ssh_host! in corso...
echo [!] Digita 'exit' nel terminale Linux per chiudere e tornare qui.
echo.

ssh !ssh_user!@!ssh_host!

echo.
echo [!] Connessione SSH terminata.
pause
goto menu
::#endregion

::#region utility 16
:utility_16
cls
echo [*] Controllo dei permessi in corso...
net session >nul 2>&1
if %errorlevel% neq 0 goto utility_16_admin

echo [*] Permessi di Amministratore rilevati. Avvio scansione...
echo.
sfc /scannow
pause
goto menu

:utility_16_admin
echo [!] Richiesta permessi di Amministratore (UAC)...
echo [*] La scansione si aprira' in una nuova finestra!
powershell -Command "Start-Process cmd -ArgumentList '/c sfc /scannow & pause' -Verb RunAs"
goto menu
::#endregion

::#region utility 17
:utility_17
cls
echo utility helloworld
pause >nul
goto menu
::#endregion

::#region utility 18
:utility_18
cls
echo utility helloworld
pause >nul
goto menu
::#endregion

::#region utility 19
:utility_19
goto menu_download

:menu_download
cls
color 0a
echo /=================================================================\
echo \      ##### #   # ##### #######     @@@@@   @@@@@@ @@@@@@@       /
echo /         #  #   # #        #        @    @  @    @    @          \
echo \         #  #   #  ###     #        @@@@@   @@@@@@    @          /
echo /         #  #   #     #    #        @    @  @    @    @          \
echo \     ####   ##### #####    #        @@@@@   @    @    @          /
echo /                                                                 \
echo \=================================================================/
echo /      ______ _____  _    _ _   _  _     _____  ___ ______        \
echo \      ^|  _  \  _  ^|^| ^|  ^| ^| \ ^| ^|^| ^|   ^|  _  ^|/ _ \^|  _  \       /
echo /      ^| ^| ^| ^| ^| ^| ^|^| ^|  ^| ^|  \^| ^|^| ^|   ^| ^| ^| / /_\ \ ^| ^| ^|       \
echo \      ^| ^| ^| ^| ^| ^| ^|^| ^|/\^| ^| . ` ^|^| ^|   ^| ^| ^| ^|  _  ^| ^| ^| ^|       /
echo /      ^| ^|/ /\ \_/ /\  /\  / ^|\  ^|^| ^|___\ \_/ / ^| ^| ^| ^|/ /        \
echo \      ^|___/  \___/  \/  \/\_^| \_/\_____/\___/\_^| ^|_/___/         /
echo /                                                                 \                        
echo \=================================================================/
echo.
echo    ################################################################
echo    ^|1-Discord      ^| 6-CTT winutil  ^|11-null         ^|16-null     ^|
echo    ^|2-Steam        ^| 7-null         ^|12-null         ^|17-null     ^|
echo    ^|3-Chrome       ^| 8-null         ^|13-null         ^|18-null     ^|
echo    ^|4-Vencord      ^| 9-null         ^|14-null         ^|19-null     ^|
echo    ^|5-Paint3D      ^|10-null         ^|15-null         ^|20-BACK     ^|
echo    ################################################################
echo.

set "scelta_down="
set /p "scelta_down=Seleziona (1-19) o '20' per tornare: "

if /I "%scelta_down%"=="exit" exit
if "%scelta_down%"=="" goto menu_download

echo %scelta_down%| findstr /r "^[0-9]*$" >nul
if errorlevel 1 goto menu_download

if "%scelta_down%"=="20" goto menu

set "download=%scelta_down%"
goto download_%download%
::#endregion

::#region utility 20
:utility_20
goto menu_animation

:menu_animation
cls
color 0a
echo /=================================================================\
echo \      ##### #   # ##### #######     @@@@@   @@@@@@ @@@@@@@       /
echo /         #  #   # #        #        @    @  @    @    @          \
echo \         #  #   #  ###     #        @@@@@   @@@@@@    @          /
echo /         #  #   #     #    #        @    @  @    @    @          \
echo \     ####   ##### #####    #        @@@@@   @    @    @          /
echo /                                                                 \
echo \=================================================================/
echo /      ___   _   _ ________  ___  ___ _____ _____ _____ _   _     \
echo \     / _ \ ^| \ ^| ^|_   _^|  \/  ^| / _ \_   _^|_   _^|  _  ^| \ ^| ^|    /
echo /    / /_\ \^|  \^| ^| ^| ^| ^| .  . ^|/ /_\ \^| ^|   ^| ^| ^| ^| ^| ^|  \^| ^|    \
echo \    ^|  _  ^|^| . ` ^| ^| ^| ^| ^|\/^| ^|^|  _  ^|^| ^|   ^| ^| ^| ^| ^| ^| . ` ^|    /
echo /    ^| ^| ^| ^|^| ^|\  ^|_^| ^|_^| ^|  ^| ^|^| ^| ^| ^|^| ^|  _^| ^|_\ \_/ / ^|\  ^|    \
echo \    \_^| ^|_/\_^| \_/\___/\_^|  ^|_/\_^| ^|_/\_/  \___/ \___/\_^| \_/    /
echo /                                                                 \
echo \=================================================================/
echo.
echo    ################################################################
echo    ^|1-parrot       ^| 6-batman run   ^|11-null         ^|16-null     ^|
echo    ^|2-earth        ^| 7-spider man   ^|12-null         ^|17-null     ^|
echo    ^|3-nyan cat     ^| 8-run          ^|13-null         ^|18-null     ^|
echo    ^|4-rick roll    ^| 9-dir/s        ^|14-null         ^|19-null     ^|
echo    ^|5-core knot    ^|10-null         ^|15-null         ^|20-BACK     ^|
echo    ################################################################
echo.

set "scelta_anim="
set /p "scelta_anim=Seleziona (1-19) o '20' per tornare: "

if defined scelta_anim set "scelta_anim=!scelta_anim: =!"

if /I "!scelta_anim!"=="exit" exit
if "!scelta_anim!"=="" goto menu_animation

set "prefix=!scelta_anim:~0,2!"
if /I "!prefix!"=="XD" (
    set "num_scelto=!scelta_anim:~2!"
    if "!num_scelto!"=="" goto menu_animation
    for /f "delims=0123456789" %%a in ("!num_scelto!") do goto menu_animation
    if !num_scelto! GEQ 1 if !num_scelto! LEQ 19 goto super_animation
    goto menu_animation
)
if "!scelta_anim!"=="20" goto menu

echo !scelta_anim!| findstr /r "^[0-9]*$" >nul
if errorlevel 1 goto menu_animation

set "animation=!scelta_anim!"
goto animation_!animation!
::#endregion



::#region super utility 1
:super_utility_1
cls

set "report_file=!XD!\info_reti.txt"

echo [PROFILI WIRELESS MEMORIZZATI] > "%report_file%" 
echo. >> "%report_file%" 

for /f "tokens=2 delims=:" %%A in ('netsh wlan show profiles ^| findstr /c ":"') do (
    for /f "tokens=*" %%B in ("%%A") do (
        if not "%%B"=="I profili utente corrispondono al criterio" if not "%%B"=="Profili utente" (

            :: Esegui netsh e controlla se l'output contiene errori
            netsh wlan show profile name="%%B" key=clear 2>nul | findstr /i "sull'interfaccia" >nul
            if not errorlevel 1 (
                echo. >> "%report_file%"
                echo ======================================================= >> "%report_file%"

                for /f "tokens=*" %%L in ('netsh wlan show profile name^="%%B" key^=clear 2^>nul') do (
                    set "line=%%L"
                    setlocal enabledelayedexpansion

                    :: Riga col nome rete → rimuove "Profilo " senza aggiungere la seconda riga di ===
                    echo !line! | findstr /i "sull'interfaccia" >nul
                    if not errorlevel 1 (
                        set "line=!line:Profilo =!"
                        echo !line! >> "%report_file%"
                    ) else (
                        :: Salta righe indesiderate: intestazioni, separatori netsh, righe di errore
                        echo !line! | findstr /i "Applicato/a: Tutti\|Informazioni profilo\|^---\|Impossibile\|non trovato\|^======" >nul
                        if errorlevel 1 (
                            echo !line! >> "%report_file%"
                        )
                    )
                    endlocal
                )
            )
        )
    )
)

echo.

pause
goto menu
::#endregion

::#region super utility 2
:super_utility_2
cls
echo super animation hello world 2
pause >nul
goto menu
::#endregion

::#region super utility 3
:super_utility_3
cls
echo super animation hello world 3
pause >nul
goto menu
::#endregion

::#region super utility 4
:super_utility_4
cls
echo super animation hello world 4
pause >nul
goto menu
::#endregion

::#region super utility 5
:super_utility_5
cls
set "ps_mtp=%temp%\phone_extractor.ps1"
if exist "%ps_mtp%" del "%ps_mtp%"
set "XD_TARGET=!XD!"
echo $Shell = New-Object -ComObject Shell.Application > "%ps_mtp%"
echo $PC = $Shell.NameSpace(17) >> "%ps_mtp%"
echo $Devices = @() >> "%ps_mtp%"
echo foreach($item in $PC.Items()){ if($item.Path.StartsWith('::')) { $Devices += $item } } >> "%ps_mtp%"
echo if($Devices.Count -eq 0){ Write-Host '[!] Nessun cellulare MTP rilevato.' -ForegroundColor Red; exit } >> "%ps_mtp%"
echo Write-Host 'Cellulari trovati:' -ForegroundColor Cyan >> "%ps_mtp%"
echo $i = 1 >> "%ps_mtp%"
echo foreach($dev in $Devices){ Write-Host "$i - $($dev.Name)"; $i++ } >> "%ps_mtp%"
echo Write-Host '' >> "%ps_mtp%"
echo $scelta = Read-Host 'Scrivi il NUMERO del cellulare da usare' >> "%ps_mtp%"
echo if([string]::IsNullOrWhiteSpace($scelta)){ exit } >> "%ps_mtp%"
echo $sceltaInt = [int]$scelta >> "%ps_mtp%"
echo if($sceltaInt -lt 1 -or $sceltaInt -gt $Devices.Count){ Write-Host '[!] Numero non valido.' -ForegroundColor Red; exit } >> "%ps_mtp%"
echo $Phone = $Devices[$sceltaInt - 1] >> "%ps_mtp%"
echo Write-Host '' >> "%ps_mtp%"
echo Write-Host "Hai selezionato: $($Phone.Name)" -ForegroundColor Green >> "%ps_mtp%"
echo $XD = $env:XD_TARGET >> "%ps_mtp%"
echo $DestPath = Join-Path $env:TEMP ('Backup_' + $Phone.Name) >> "%ps_mtp%"
echo if(-not (Test-Path $DestPath)){ New-Item -ItemType Directory -Path $DestPath ^| Out-Null } >> "%ps_mtp%"
echo $DestFolder = $Shell.NameSpace($DestPath) >> "%ps_mtp%"
echo $StorageItems = $Phone.GetFolder.Items() >> "%ps_mtp%"
echo $Trovato = $false >> "%ps_mtp%"
echo foreach($storage in $StorageItems){ >> "%ps_mtp%"
echo     $FoldersInside = $storage.GetFolder.Items() >> "%ps_mtp%"
echo     foreach($folder in $FoldersInside){ >> "%ps_mtp%"
echo         if($folder.Name -match '^(DCIM^|Download)$'){ >> "%ps_mtp%"
echo             Write-Host "Avvio copia della cartella: $($folder.Name)" -ForegroundColor Yellow >> "%ps_mtp%"
echo             $DestFolder.CopyHere($folder, 16) >> "%ps_mtp%"
echo             $Trovato = $true >> "%ps_mtp%"
echo         } >> "%ps_mtp%"
echo     } >> "%ps_mtp%"
echo } >> "%ps_mtp%"
echo Write-Host '' >> "%ps_mtp%"
echo if(-not $Trovato){ Write-Host 'Cartelle DCIM / Download non trovate.' -ForegroundColor Red; exit } >> "%ps_mtp%"
echo Write-Host 'Copia in corso! Attendi che la finestra di Windows si chiuda da sola.' -ForegroundColor Green >> "%ps_mtp%"
echo Read-Host 'Quando la copia e'' terminata, premi INVIO per continuare' >> "%ps_mtp%"
echo $ZipPath = Join-Path $env:TEMP ('Backup_' + $Phone.Name + '.zip') >> "%ps_mtp%"
echo if(Test-Path $ZipPath){ Remove-Item $ZipPath -Force } >> "%ps_mtp%"
echo Write-Host 'Compressione in corso...' -ForegroundColor Yellow >> "%ps_mtp%"
echo Compress-Archive -Path (Join-Path $DestPath '*') -DestinationPath $ZipPath -Force >> "%ps_mtp%"
echo if(-not (Test-Path $XD)){ New-Item -ItemType Directory -Path $XD ^| Out-Null } >> "%ps_mtp%"
echo $FinalZip = Join-Path $XD ('Backup_' + $Phone.Name + '.zip') >> "%ps_mtp%"
echo Write-Host 'Copia dello zip su XD in corso...' -ForegroundColor Yellow >> "%ps_mtp%"
echo Copy-Item -Path $ZipPath -Destination $FinalZip -Force >> "%ps_mtp%"
echo Remove-Item $ZipPath -Force >> "%ps_mtp%"
echo Remove-Item $DestPath -Recurse -Force >> "%ps_mtp%"
echo Write-Host '' >> "%ps_mtp%"
echo Write-Host "Fatto! Backup salvato in: $FinalZip" -ForegroundColor Cyan >> "%ps_mtp%"
powershell -NoProfile -ExecutionPolicy Bypass -File "%ps_mtp%"
del "%ps_mtp%"
pause
goto menu
::#endregion

::#region super utility 6
:super_utility_6
cls
echo super animation hello world 6
pause >nul
goto menu
::#endregion

::#region super utility 7
:super_utility_7
cls
echo super animation hello world 7
pause >nul
goto menu
::#endregion

::#region super utility 8
:super_utility_8
cls
echo super animation hello world 8
pause >nul
goto menu
::#endregion

::#region super utility 9
:super_utility_9
cls
echo super animation hello world 9
pause >nul
goto menu
::#endregion

::#region super utility 10
:super_utility_10
cls

set /p "target_file="

set "target_file=%target_file:"=%"

if not exist "%target_file%" (
    echo [!] ERRORE: File non trovato.
    pause
    goto menu
)

for %%F in ("%target_file%") do (
    set "fname=%%~nF"
    set "fext=%%~xF"
)

set "output_file=!XD!\%fname%-scrambled%fext%"

set "ps_scramble=%temp%\scramble_engine.ps1"
if exist "%ps_scramble%" del "%ps_scramble%"

echo $file = '%target_file%' > "%ps_scramble%"
echo $out = '%output_file%' >> "%ps_scramble%"
echo $in = [IO.File]::ReadAllBytes($file) >> "%ps_scramble%"
echo $res = New-Object byte[] $in.Length >> "%ps_scramble%"
echo (New-Object Random).NextBytes($res) >> "%ps_scramble%"
echo [IO.File]::WriteAllBytes($out, $res) >> "%ps_scramble%"

echo.
powershell -NoProfile -ExecutionPolicy Bypass -File "%ps_scramble%"

del "%ps_scramble%"

echo.
pause

goto menu
::#endregion

::#region super utility 11
:super_utility_11
cls
echo =================================================================
echo          RINOMINA FILE NUMERICI -^> ALFABETICI (a, b, c...)
echo =================================================================
echo.
echo Trascina qui la cartella da elaborare (con sottocartelle):
set /p "target_dir="
set "target_dir=!target_dir:"=!"
if "!target_dir!"=="" goto menu
if "!target_dir:~-1!"=="\" set "target_dir=!target_dir:~0,-1!"

if not exist "!target_dir!\" (
    echo [!] Cartella non valida.
    pause
    goto menu
)

set "ps_rename=%temp%\alpha_renamer.ps1"
if exist "%ps_rename%" del "%ps_rename%"

echo param([string]$root) > "%ps_rename%"
echo function ToAlpha($n) { >> "%ps_rename%"
echo     if ($n -lt 26) { return [string][char](97 + $n) } >> "%ps_rename%"
echo     $cycle = [math]::Floor($n / 26) >> "%ps_rename%"
echo     $rem = $n %% 26 >> "%ps_rename%"
echo     $prefix = 'z' * $cycle >> "%ps_rename%"
echo     return $prefix + [string][char](97 + $rem) >> "%ps_rename%"
echo } >> "%ps_rename%"
echo $allDirs = @($root) + (Get-ChildItem -Path $root -Recurse -Directory ^| Select-Object -ExpandProperty FullName) >> "%ps_rename%"
echo foreach ($dir in $allDirs) { >> "%ps_rename%"
echo     $files = Get-ChildItem -Path $dir -File >> "%ps_rename%"
echo     if ($files.Count -eq 0) { continue } >> "%ps_rename%"
echo     $cover = $files ^| Where-Object { $_.BaseName -ieq 'cover' } ^| Select-Object -First 1 >> "%ps_rename%"
echo     $others = $files ^| Where-Object { $_.BaseName -ine 'cover' } >> "%ps_rename%"
echo     $numbered = $others ^| Where-Object { $_.BaseName.Trim() -match '^^\d+' } ^| Sort-Object { [int]([regex]::Match($_.BaseName.Trim(), '^^\d+').Value) } >> "%ps_rename%"
echo     $nonNumbered = $others ^| Where-Object { $_.BaseName.Trim() -notmatch '^^\d+' } ^| Sort-Object Name >> "%ps_rename%"
echo     $ordered = @() >> "%ps_rename%"
echo     if ($cover) { $ordered += $cover } >> "%ps_rename%"
echo     $ordered += $numbered >> "%ps_rename%"
echo     $ordered += $nonNumbered >> "%ps_rename%"
echo     Write-Host "Cartella: $dir" -ForegroundColor Cyan >> "%ps_rename%"
echo     $idx = 0 >> "%ps_rename%"
echo     $tempNames = @() >> "%ps_rename%"
echo     foreach ($f in $ordered) { >> "%ps_rename%"
echo         $tempName = [guid]::NewGuid().ToString() + $f.Extension >> "%ps_rename%"
echo         Rename-Item -LiteralPath $f.FullName -NewName $tempName -ErrorAction SilentlyContinue >> "%ps_rename%"
echo         $tempNames += [PSCustomObject]@{ TempPath = (Join-Path $dir $tempName); Ext = $f.Extension; OrigName = $f.Name } >> "%ps_rename%"
echo     } >> "%ps_rename%"
echo     foreach ($t in $tempNames) { >> "%ps_rename%"
echo         $letter = ToAlpha $idx >> "%ps_rename%"
echo         $ext = $t.Ext >> "%ps_rename%"
echo         $newName = $letter + $ext >> "%ps_rename%"
echo         $newPath = Join-Path $dir $newName >> "%ps_rename%"
echo         if (Test-Path -LiteralPath $newPath) { >> "%ps_rename%"
echo             $rnd = Get-Random -Minimum 100 -Maximum 999 >> "%ps_rename%"
echo             $newName = $letter + $rnd + $ext >> "%ps_rename%"
echo         } >> "%ps_rename%"
echo         Rename-Item -LiteralPath $t.TempPath -NewName $newName >> "%ps_rename%"
echo         Write-Host "  rinominato:" $t.OrigName "-^>" $newName >> "%ps_rename%"
echo         $idx++ >> "%ps_rename%"
echo     } >> "%ps_rename%"
echo } >> "%ps_rename%"
echo Write-Host '' >> "%ps_rename%"
echo Write-Host 'Completato!' -ForegroundColor Green >> "%ps_rename%"

powershell -NoProfile -ExecutionPolicy Bypass -File "%ps_rename%" -root "!target_dir!" 2> "%temp%\alpha_error.log"
type "%temp%\alpha_error.log"
del "%ps_rename%"

echo.
echo =================================================================
echo [OK] OPERAZIONE COMPLETATA!
echo =================================================================
pause
goto menu
::#endregion

::#region super utility 12
:super_utility_12
cls
echo ==========================
echo    ULTRA DLP DOWNLOADER   
echo ========================== 
echo.

:: --- Controllo e Auto-Download di FFmpeg ---
echo Controllo presenza di FFmpeg...
set "FFMPEG_PARAM="
where ffmpeg >nul 2>nul
if errorlevel 1 (
    if exist "%~dp0ffmpeg.exe" (
        set FFMPEG_PARAM=--ffmpeg-location "%~dp0ffmpeg.exe"
        echo FFmpeg is ready ^(local^)
    ) else (
        echo FFmpeg non trovato. Download in corso ^(circa 50-90 MB^)...
        curl -# -L -o "%~dp0ffmpeg.zip" "https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.zip"
        if not exist "%~dp0ffmpeg.zip" (
            echo ERRORE: Impossibile scaricare FFmpeg.
            pause
            exit /b 1
        )
        echo Estrazione in corso...
        powershell -Command "Expand-Archive -Path '%~dp0ffmpeg.zip' -DestinationPath '%~dp0ffmpeg_temp' -Force"
        for /r "%~dp0ffmpeg_temp" %%i in (ffmpeg.exe) do move "%%i" "%~dp0" >nul
        del "%~dp0ffmpeg.zip" >nul 2>nul
        rmdir /s /q "%~dp0ffmpeg_temp" >nul 2>nul
        if exist "%~dp0ffmpeg.exe" (
            set FFMPEG_PARAM=--ffmpeg-location "%~dp0ffmpeg.exe"
            echo FFmpeg installed successfully
        ) else (
            echo ERRORE: Estrazione di FFmpeg fallita.
            pause
            exit /b 1
        )
    )
) else (
    echo FFmpeg is ready ^(system^)
)

:: --- Controllo e Auto-Download di yt-dlp ---
set "YTDLP_CMD=yt-dlp"
where yt-dlp >nul 2>nul
if errorlevel 1 (
    if exist "%~dp0yt-dlp.exe" (
        set "YTDLP_CMD=%~dp0yt-dlp.exe"
    ) else (
        echo.
        echo Controllo presenza di yt-dlp...
        echo yt-dlp non trovato. Download in corso...
        curl -# -L -o "%~dp0yt-dlp.exe" "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe"
        if not exist "%~dp0yt-dlp.exe" (
            echo ERRORE: Impossibile scaricare yt-dlp.
            pause
            exit /b 1
        )
        set "YTDLP_CMD=%~dp0yt-dlp.exe"
        echo yt-dlp installed successfully
    )
)

:: --- Aggiorna automaticamente yt-dlp all'ultima versione ---
echo.
echo Controllo aggiornamenti di yt-dlp...
"%YTDLP_CMD%" -U
echo.

:: --- Individua il file txt (drag&drop oppure richiesta manuale) ---
if "%~1"=="" (
    echo Trascina il file .txt sopra questo script,
    echo oppure incolla qui il percorso completo del file .txt e premi INVIO:
    echo.
    set /p "TXTFILE=Percorso file txt: "
) else (
    set "TXTFILE=%~1"
)

set "TXTFILE=%TXTFILE:"=%"

if not exist "%TXTFILE%" (
    echo.
    echo ERRORE: file non trovato: "%TXTFILE%"
    echo.
    pause
    goto menu
)

:: cartella di destinazione = cartella del file txt
for %%F in ("%TXTFILE%") do set "DEST_DIR=%%~dpF"

echo.
echo ==============================================
echo   File links: %TXTFILE%
echo   Cartella di destinazione: %DEST_DIR%
echo ==============================================
echo.

set /a COUNT=0

for /f "usebackq delims=" %%L in ("%TXTFILE%") do (
    set "URL=%%L"
    if not "!URL!"=="" (
        set /a COUNT+=1
        echo.
        echo --- [!COUNT!] Scarico: !URL!
        echo.
        
        "%YTDLP_CMD%" !FFMPEG_PARAM! -f "bestvideo[height<=480]+bestaudio/best[height<=480]" ^
            -o "%DEST_DIR%%%(title)s.%%(ext)s" ^
            --merge-output-format mp4 ^
            "!URL!"
    )
)

echo.
echo ==============================================
echo   Download completati: !COUNT!
echo ==============================================
echo.

pause
goto menu
::#endregion

::#region super utility 13
:super_utility_13
cls
echo super animation hello world 13
pause >nul
goto menu
::#endregion

::#region super utility 14
:super_utility_14
cls
echo super animation hello world 14
pause >nul
goto menu
::#endregion

::#region super utility 15
:super_utility_15
cls
echo super animation hello world 15
pause >nul
goto menu
::#endregion

::#region super utility 16
:super_utility_16
cls
echo super animation hello world 16
pause >nul
goto menu
::#endregion

::#region super utility 17
:super_utility_17
cls
echo super animation hello world 17
pause >nul
goto menu
::#endregion

::#region super utility 18
:super_utility_18
cls
echo super animation hello world 18
pause >nul
goto menu
::#endregion

::#region super utility 19
:super_utility_19
cls
echo super animation hello world 19
pause >nul
goto menu
::#endregion

::#region super utility 20
:super_utility_20
cls
echo super animation hello world 20
pause >nul
goto menu
::#endregion



::#region download 1
:download_1
cls
echo [ SYSTEM ] - AVVIO INSTALLER DISCORD
echo --------------------------------------------------

set "DURL=https://discord.com/api/download?platform=win"
set "DFILE=%TEMP%\DiscordSetup.exe"

echo download in corso...
echo.

curl -L "%DURL%" -o "%DFILE%"

if exist "%DFILE%" goto :launch_discord
echo.
echo Errore: Download fallito.
pause
goto menu_utility

:launch_discord
echo.
echo Avvio installer...

start "" "%DFILE%"

echo Installer partito correttamente.
echo Premi un tasto quando hai finito.
echo.
echo Pulizia registro in corso...

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Discord" /f >nul 2>&1

echo.
echo Operazione completata.

pause >nul
goto menu_download
::#endregion

::#region download 2
:download_2
cls
echo [ SYSTEM ] - AVVIO INSTALLER STEAM
echo --------------------------------------------------

:: Configurazione percorsi in TEMP
set "SURL=https://cdn.fastly.steamstatic.com/client/installer/SteamSetup.exe"
set "SFILE=%TEMP%\SteamSetup.exe"

echo download in corso...
echo.

:: Scarica l'installer di Steam 
curl -L "%SURL%" -o "%SFILE%"

:: Controllo se il file esiste
if exist "%SFILE%" goto launch_steam
echo.
echo Errore: Download fallito.
pause
goto menu_download

:launch_steam
echo.
echo Avvio installer...

start /wait "" "%SFILE%"

echo Installazione terminata o chiusa.
echo.
echo Rimozione di Steam dall'avvio automatico...

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Steam" /f >nul 2>&1

echo Operazione completata.
echo Premere un tasto per tornare al menu.
pause >nul
goto menu_download
::#endregion

::#region download 3
:download_3
cls
echo [ SYSTEM ] - AVVIO INSTALLER GOOGLE CHROME
echo --------------------------------------------------

:: Link statico ufficiale MSI per sistemi automatizzati (Non scade mai)
set "CURL=https://dl.google.com/chrome/install/GoogleChromeStandaloneEnterprise64.msi"
set "CFILE=%TEMP%\chrome_installer.msi"

echo Download in corso (Installer Offline 64-bit)...
echo.

curl -L "%CURL%" -o "%CFILE%"

if exist "%CFILE%" goto launch_chrome
echo.
echo Errore: Download fallito.
pause
goto menu_download

:launch_chrome
echo.
echo Avvio installer...

:: Utilizza msiexec per installare il pacchetto MSI. 
:: /passive mostra la barra di avanzamento ma non richiede click.
start /wait msiexec /i "%CFILE%" /passive /norestart

echo.
echo Pulizia processi di update inutili e file temporanei...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Google Update" /f >nul 2>&1
del "%CFILE%" >nul 2>&1

echo Operazione completata
echo Premere un tasto per tornare al menu.
pause >nul
goto menu_download
::#endregion

::#region download 4
:download_4
cls
echo %G%[ SYSTEM ] - INIEZIONE VENCORD IN CORSO...%R%
echo %G%--------------------------------------------------%R%

echo %G%[1/4] Chiusura Discord in corso...%R%
taskkill /F /IM Discord.exe /T >nul 2>&1

echo %G%[2/4] Scaricamento componenti Vencord...%R%
curl -L "https://github.com/Vencord/Installer/releases/latest/download/VencordInstaller.exe" -o "%TEMP%\VencordInstaller.exe"

echo %G%[3/4] Apertura Installer...%R%
echo %G%[!] Clicca su 'Install' nella finestra che si e' aperta.%R%
start /wait "" "%TEMP%\VencordInstaller.exe"

echo.
echo %G%[4/4] Pulizia e riavvio sistema...%R%
del "%TEMP%\VencordInstaller.exe" >nul 2>&1

echo.
echo %G%INIEZIONE COMPLETATA.%R%
echo %G%Ora puoi riaprire Discord e troverai Vencord nelle impostazioni.%R%
pause
goto menu_download
::#endregion

::#region download 5
:download_5
cls
echo INSTALLER PAINT 3D
echo.

set "url=https://github.com/thedoggybrad/Paint3DArchive/releases/download/b2/2024.2410.13017.0.AppxBundle"
set "file=%temp%\Paint3D_Offline.AppxBundle"

powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%file%' -UseBasicParsing"

echo.
echo [2] Download completato! Installazione nel sistema...
echo -----------------------------------------------------------------

powershell -Command "Add-AppxPackage -Path '%file%'"

if %errorlevel% equ 0 (
    echo.
    echo [+] INSTALLAZIONE COMPLETATA CON SUCCESSO!
    echo [+] Puoi trovare Paint 3D nel tuo menu Start.
) else (
    echo.
    echo [-] ERRORE DURANTE L'INSTALLAZIONE.
    echo [-] Assicurati di aver avviato lo script .bat come Amministratore.
)

del "%file%" >nul 2>&1

echo.
pause
goto menu_download
::#endregion

::#region download 6
:download_6
cls
echo [*] Avvio del tool di Chris Titus in una nuova finestra...
start powershell -NoProfile -ExecutionPolicy Bypass -Command "irm christitus.com/win | iex"
goto menu_download
::#endregion

::#region download 7
:download_7
cls & echo Download hello world 7 & pause & goto menu_download
::#endregion

::#region download 8
:download_8
cls & echo Download hello world 8 & pause & goto menu_download
::#endregion

::#region download 9
:download_9
cls & echo Download hello world 9 & pause & goto menu_download
::#endregion

::#region download 10
:download_10
cls & echo Download hello world 10 & pause & goto menu_download
::#endregion

::#region download 11
:download_11
cls & echo Download hello world 11 & pause & goto menu_download
::#endregion

::#region download 12
:download_12
cls & echo Download hello world 12 & pause & goto menu_download
::#endregion

::#region download 13
:download_13
cls & echo Download hello world 13 & pause & goto menu_download
::#endregion

::#region download 14
:download_14
cls & echo Download hello world 14 & pause & goto menu_download
::#endregion

::#region download 15
:download_15
cls & echo Download hello world 15 & pause & goto menu_download
::#endregion

::#region download 16
:download_16
cls & echo Download hello world 16 & pause & goto menu_download
::#endregion

::#region download 17
:download_17
cls & echo Download hello world 17 & pause & goto menu_download
::#endregion

::#region download 18
:download_18
cls & echo Download hello world 18 & pause & goto menu_download
::#endregion

::#region download 19
:download_19
cls & echo Download hello world 19 & pause & goto menu_download
::#endregion



::#region animation 1
:animation_1
cls
curl parrot.live

goto menu
::#endregion

::#region animation 2
:animation_2
cls
echo Premere CTRL+C e poi 'N' (se richiesto) per tornare al menu.
echo.
timeout /t 3 >nul

:earth_loop
cls

:earth
ping localhost -n 1 >nul
cls                                           
echo                                         .-/+ossooooooo+/:.                                         
echo                                   `:osydhyo++:     :yyyyydN@ho:`                                   
echo                                :sho:``.       .+o``d@h./N@@@@@@@@s:                                
echo                             -s@dd-           :--@s@@@@@@@@@@@@@@@@@Ny:                             
echo                           /dho`.              ///N@yy::@@@@N+y@dNhd@N@@+`                          
echo                         /ho`                 `@@@/-   `:::sdosNdd@@@o@@@N+                         
echo                       .h+                   :o@@@@@@@@/:---:::::o@@@@@@@@@@-                       
echo                      /h.                 `+s@@@@@@@@@@@@@@@@@@@@dy@@@@Nd@@@@o                      
echo                     oy`                  :@@@@@@@@@@@@@@@@@@@@@@Nyyo@@@yNdsh@s                     
echo                    +h:                 -od@@@@@@@@@@@@@@@@@@@@@@@@N.y@@@@@:`+@s                    
echo                   -@``                 y@@@@@@@@@@@@@@@@@@@@@@@@@@@N@-d@@N-``o@:                   
echo                   h/                   y@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@h--.```.s@                   
echo                  .NN@y.`                 hh@@@@@@dhhhN@@@@@@@@@@@@@@@@@@@s````-N:                  
echo                  /dN@@@o`                 `yyyyyy    syN@@@@@@@@@@@@@@@@h+`````so                  
echo                  o@@@@@@s//                            h@@@@@@@@@@@@@Nd+-``````oy                  
echo                  +N@@@@@@@No++                         h@@@@@@@@@@@@@d:.```````ss                  
echo                  .N@@@@@@@@@@@`                        /+N@@@@@@@@@@@s`````````d:                  
echo                   dh@@@@@@@@N/`                          @@@@@@@@@@@@/````````:@                   
echo                   -@o@@@@@@@@-                         yh@@@@@@@@@@@N.ydy````.d/                   
echo                   oy:@@@@@NNs                         ./@@@@@@@@@N-.:@N:````sy                    
echo                     syh@@@@d`                           o@@@@@@@Nd+``y+`````oy                     
echo                      +hh@@@N-                           oh@@@@Nd/`````````.ys                      
echo                       -hhN@@`                            oN+++:-`````````/d:                       
echo                         +ddd.                            ..````````````:yo`                        
echo                          `+@d:                             ``````````/yo`                          
echo                             :yh/                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                  ./oss+:-`   `-::::///++oyyso/.                                   
echo                                        `-:+oooyhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                                                                                                                    
echo                                         .-/+ossooooooo+/:.                                         
echo                                   `:osydhhs++/.    ./hsyyh@@ho:`                                   
echo                                :sdy:` .`       .+o .@@y.o@@@@@@@@s:                                
echo                             -sNh@o`           ::.@y@@@@@@@@@@@@@@@@Ny:                             
echo                           /dds-``              -//@Nyy+-N@@@N+h@@Nh@N@@+`                          
echo                         /ds.                   d@@s:   `:::odssNd@@@hy@@N+                         
echo                       .ho`                   -:N@@@@@@@y:---::::/o@@@NN@@@@-                       
echo                      /d.                   :o@@@@@@@@@@@@@@@@@@@@@y@@@@N@@@@o                      
echo                     oh`                    d@@@@@@@@@@@@@@@@@@@@@@yho@@@y@hyNs                     
echo                    +h-`                  +o@@@@@@@@@@@@@@@@@@@@@@@@@-o@@@@@.:@s                    
echo                   -@``                  `@@@@@@@@@@@@@@@@@@@@@@@@@@@N@:h@@d.`-@:                   
echo                   h/ `                  .d@@@@@@@@@@@@@@@@@@@@@@@@@@@@@d--.```/@                   
echo                  .Ny@@+.`                 :h@@@@@@Nhhhd@@@@@@@@@@@@@@@@@@@o````@:                  
echo                  /hh@@@@+`                  -yyyyyo   `yh@@@@@@@@@@@@@@@@h/````so                  
echo                  oh@@@@@@s//                            `@@@@@@@@@@@@@@@o-`````oy                  
echo                  +h@@@@@@@@@o++.                        `@@@@@@@@@@@@@N/.``````ss                  
echo                  .N@@@@@@@@@@@@+                        `+s@@@@@@@@@@@d````````d:                  
echo                   doN@@@@@@@@@+-                          :@@@@@@@@@@@o```````:@                   
echo                   -@-@@@@@@@@@+                         :h@@@@@@@@@@@@-s@s```.d/                   
echo                    oy d@@@@@@Nd                         `.d@@@@@@@@@/.:N@-```sy                    
echo                     sy+@@@@@d`                           `N@@@@@@@ds``s/````oy                     
echo                      +h+N@@@@-                           -yN@@@Ndo````````.ys                      
echo                       -hod@@h                             -@s++/-````````/d:                       
echo                         +hy@o                             `-```````````:yo`                        
echo                          `+h@+                             ``````````/yo`                          
echo                             :yd+`                        `````````:sy/                             
echo                               `/ss+- `                 ```````-+ss/`                               
echo                                   ./osyo:-`   ``:::////++osyso/.                                   
echo                                        `-:+oooyhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                                                                                                                  
echo                                        .-/+osysoooooo+/:.                                         
echo                                   `:osyhdhy+++:`    -sdyhh@@ho:`                                   
echo                                :odd/` `.        -oo -N@o.y@@@@@@@s:                                
echo                             -sN@h@:            -:`Ny@@@@@@@@@@@@@@@Ny:                             
echo                           /dNyo .               .//h@yyo-d@@@Nod@@@hNN@+`                          
echo                         /@y:                    +@@d:`  `-//+dyoNd@@Nyd@N+                         
echo                       .dy.                    `:y@@@@@@@@:---::::/o@@@@@@@@-                       
echo                      /d-                    `oy@@@@@@@@@@@@@@@@@@@NyN@@@@N@@o                      
echo                     oh.                     :@@@@@@@@@@@@@@@@@@@@@@yhoN@NhNy@s                     
echo                    +h`/                   .oh@@@@@@@@@@@@@@@@@@@@@@@@/o@@@@o.hs                    
echo                   -@```                   o@@@@@@@@@@@@@@@@@@@@@@@@@@N@/h@@s`.@:                   
echo                   ho ``                   odN@@@@@@@@@@@@@@@@@@@@@@@@@@@@--.``:@                   
echo                  .N/@@@:.`                  ohN@@@@@@hhh@@@@@@@@@@@@@@@@@@@/```d:                  
echo                  /h/@@@@@+.                   +yyyyy:   /yd@@@@@@@@@@@@@@Ny:```so                  
echo                  oyd@@@@@@y//.                            +@@@@@@@@@@@@@@o-````oy                  
echo                  +hh@@@@@@@@@y++/                         +@@@@@@@@@@@@@/.`````ss                  
echo                  .No@@@@@@@@@@@@d                         -+d@@@@@@@@@@@```````d:                  
echo                   d/y@@@@@@@@@@y:                           h@@@@@@@@@@y``````:@                   
echo                   -@`o@@@@@@@@@y                          shN@@@@@@@@@@:s@+``.d/                   
echo                    oy -@@@@@@@@N.                         ./@@@@@@@@@+.:Nd.``sy                    
echo                     sy.@@@@@@@`                            s@@@@@@@@y``s:```oy                     
echo                      +h-d@@@@@-                            s@@@@@ds```````.ys                      
echo                       -h/o@@@s                             `@h++/-```````/d:                       
echo                         +h+d@:                             `-``````````:yo`                        
echo                          `+ydy.                            ``````````/yo`                          
echo                             :sdo.                        `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooyo/-`    `.:::///++ooyso/.                                   
echo                                        `-:+oooshhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                                                                                                                     
echo                                         .-/+osyyoooooo+/:.                                         
echo                                   `:osyydhhs++/.     :hhhhd@ho:`                                   
echo                                :odN+.  ``        -o+ /NN/-@@@@@@@s:                                
echo                             -s@Nydy.            -:`Ny@@@@@@@@@@@@@@Ny:                             
echo                           /dNhs: .               `//s@hys-d@@@No@NNd@N@+`                          
echo                         /@do`                    .@@@/.  `-//+dysNhN@dhNN+                         
echo                       .dd:                      -/@@@@@@@@/---::://o@@@@@@@-                       
echo                      /@:                      :oN@@@@@@@@@@@@@@@@@@NyN@@@@@@o                      
echo                     oy-                       h@@@@@@@@@@@@@@@@@@@@@hhoN@d@dds                     
echo                    +d --                    /oN@@@@@@@@@@@@@@@@@@@@@@@+o@@@N-ys                    
echo                   -@` .                     @@@@@@@@@@@@@@@@@@@@@@@@@@@@/h@@:.d:                   
echo                   hs ```                    d@@@@@@@@@@@@@@@@@@@@@@@@@@@@d--.`:@                   
echo                  .N.d@@N--`                   hh@@@@@@dhhdN@@@@@@@@@@@@@@@@N-``d:                  
echo                  /h`d@@@@@o.                    yyyyyy`   shN@@@@@@@@@@@@@@y-``so                  
echo                  oy+@@@@@@@h//-                             @@@@@@@@@@@@@@o.```oy                  
echo                  +h/@@@@@@@@@@@+++`                         @@@@@@@@@@@@@/.````ss                  
echo                  .N.@@@@@@@@@@@@@@:                         +o@@@@@@@@@@N``````d:                  
echo                   d/:@@@@@@@@@@@@/.                          -@@@@@@@@@@y`````:@                   
echo                   -@`.@@@@@@@@@@N`                         -h@@@@@@@@@@@:y@:`.d/                   
echo                    oy  s@@@@@@@@@/                         `.d@@@@@@@@o./Ny``sy                    
echo                     sy +@@@@@@N.                            .@@@@@@@@y`.y.``oy                     
echo                      +h`/@@@@@@:                            /h@@@@ds``````.ys                      
echo                       -h/-@@@@o                              yd++/-``````/d:                       
echo                         +h:oNh-                             `-.````````:yo`                        
echo                          `+ysdo                            ``````````/yo`                          
echo                             :shs-                        `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooys/-`    ``-::///++oosso/.                                   
echo                                        `-:+oooshhhhhyso+/-`                                     
ping localhost -n 1 >nul
cls                                                                                               
echo                                         .-/+osyyoooooo+/:.                                         
echo                                   `:ossyyhyy+++-`    `o@ydddho:`                                   
echo                                :oyNy.   .`        -o+`+@@:/N@@@@@s:                                
echo                             -s@Nhy@+`            -:`@y@@@@@@@@@@@@@Ny:                             
echo                           /d@@ss```                //o@dys:h@@@@oNNNdN@+`                          
echo                         /@Ns-                      d@@s-   -+/+dysNh@Nh@N+                         
echo                       .dN+.                      `:d@@@@@@@s---::://s@@@@@@-                       
echo                      /@s                       `oy@@@@@@@@@@@@@@@@@@@h@@@NN@o                      
echo                     oy-`                       -@@@@@@@@@@@@@@@@@@@@@hhs@@hNhs                     
echo                    +@  +`                    `oy@@@@@@@@@@@@@@@@@@@@@@@+s@@@oys                    
echo                   -N.  .                     :@@@@@@@@@@@@@@@@@@@@@@@@@@@/@@d.d:                   
echo                   hs.````                    :d@@@@@@@@@@@@@@@@@@@@@@@@@@@h--`:@                   
echo                  .N /@@@N--`                   -hd@@@@@Nhhd@@@@@@@@@@@@@@@@@d``d:                  
echo                  /h /@@@@@@s-                    .yyyyys   -hd@@@@@@@@@@@@@@s.`so                  
echo                  oy @@@@@@@@@///                             :@@@@@@@@@@@@@+.``oy                  
echo                  +h @@@@@@@@@@@@o++:                         :@@@@@@@@@@@@/.```ss                  
echo                  .N y@@@@@@@@@@@@@@h                         .+d@@@@@@@@@N`````d:                  
echo                   d/`y@@@@@@@@@@@@o:                           h@@@@@@@@@y````:@                   
echo                   -@``/@@@@@@@@@@@+                          sh@@@@@@@@@@-hd..d/                   
echo                    oy  `d@@@@@@@@@h                          .o@@@@@@@@o.o@/`sy                    
echo                     sy  h@@@@@@@-                             d@@@@@@@y`.s``oy                     
echo                      +h``h@@@@@@/                            .y@@@@ds`````.ys                      
echo                       -h/ o@@@@o                             `o@++/-`````/d:                       
echo                         +h:-dNy.                            ``-.```````:yo`                        
echo                          `+y/sd-                           ``````````/yo`                          
echo                             :syy/`                       `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oosy+-`     `.::///++oosso/.                                   
echo                                        `-:+ooosyhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                               
echo                                         .-/+osyysooooo+/:.                                         
echo                                   `:osshohhhs++/.     :dddddho:`                                   
echo                                :os@@:`  `.         :o/`s@h-s@@@@@s:                                
echo                             -sNNdyy@/             -: @y@@@@@@@@@@@@Ny:                             
echo                           /dN@d++ ``                :/+@@yy:h@@@dsNN@@@+`                          
echo                         /@@d+`                      o@@d:   .+++dys@d@@dN+                         
echo                       .d@h-                        -o@@@@@@@d:--::://y@@N@@-                       
echo                      /@d.                        :oN@@@@@@@@@@@@@@@@@Nh@@@N@o                      
echo                     oy`:                         y@@@@@@@@@@@@@@@@@@@@yhy@@@@s                     
echo                    +d.  o                      :o@@@@@@@@@@@@@@@@@@@@@@@/h@@@ys                    
echo                   -@-   `                      y@@@@@@@@@@@@@@@@@@@@@@@@N@/N@/d:                   
echo                   h+/ ````                     odN@@@@@@@@@@@@@@@@@@@@@@@@@s-.:@                   
echo                  .N `y@@@N--.                    +h@@@@@@@hddN@@@@@@@@@@@@@@@+`d:                  
echo                  /h `y@@@@@@h:`                    /yyyyy/  `ohN@@@@@@@@@@@@d/`so                  
echo                  oy /@@@@@@@@@+//-                             h@@@@@@@@@@@@/``oy                  
echo                  +h :@@@@@@@@@@@@h+++`                         d@@@@@@@@@@@/```ss                  
echo                  .N `@@@@@@@@@@@@@@@@:                         /s@@@@@@@@@@````d:                  
echo                   d/ -N@@@@@@@@@@@@d/.                          /@@@@@@@@@o```:@                   
echo                   -@` `s@@@@@@@@@@@@                          :h@@@@@@@@@N:@o.d/                   
echo                    oy   .N@@@@@@@@@@.                         `-N@@@@@@@+.yh.sy                    
echo                     sy  .N@@@@@@@+`                            o@@@@@@ds`:/`oy                     
echo                      +h` -N@@@@@No                            `sN@@@ds````.ys                      
echo                       -h/ .d@@@@s`                            `/N++/-````/d:                       
echo                         +h: +N@y`                           ```..``````:yo`                        
echo                          `+y/:@y`                          ``````````/yo`                          
echo                             :sss+:                       `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oooys:.     ``::///++oosso/.                                   
echo                                        `-:+ooooshhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                                                                                                                   
echo                                         .-/+osyyyooooo+/:.                                         
echo                                   `:osshsohhho++..    `sNd@dyo:`                                   
echo                                :osh@s.   .`         :o/-yNs:d@@@@s:                                
echo                             -s@Nddyhd-             -:`dy@@@@@@@@@@@Ny:                             
echo                           /d@@@y+/ `                 ./+NNyy/h@@@hh@@d@+`                          
echo                         /@@@s:                       -@@N/`  .o++dshdNNd@+                         
echo                       .d@N/.                        .:N@@@@@@@:-:::://d@@@@-                       
echo                      /@ho                         `oh@@@@@@@@@@@@@@@@@Nd@@NNo                      
echo                     oy`-`                         .@@@@@@@@@@@@@@@@@@@@yhd@dNs                     
echo                    +h:  .o                       os@@@@@@@@@@@@@@@@@@@@@@:@@Nds                    
echo                   -N+`  ``                       N@@@@@@@@@@@@@@@@@@@@@@@Ndo@yd:                   
echo                   h//.`````                      d@@@@@@@@@@@@@@@@@@@@@@@@@N/-:@                   
echo                  .N  :d@@@@:--                     yh@@@@@@ddd@@@@@@@@@@@@@@@N.d:                  
echo                  /h  -d@@@@@@N:.                     syyyyy` `.hd@@@@@@@@@@@@h.so                  
echo                  oy  h@@@@@@@@@y///                             :@@@@@@@@@@@h-`oy                  
echo                  +h  y@@@@@@@@@@@@@+++/                         :@@@@@@@@@@@:``ss                  
echo                  .N  +@@@@@@@@@@@@@@@@@                         -o@@@@@@@@@y```d:                  
echo                   d/ `/@@@@@@@@@@@@@@+/                         ``N@@@@@@@@/``:@                   
echo                   -@`  .h@@@@@@@@@@@@/                         `hd@@@@@@@@d/@-d/                   
echo                    oy    -@@@@@@@@@@@s                         `-h@@@@@@@/-d+sy                    
echo                     sy   /@@@@@@@@h`                           `-@@@@@@d+`+.oy                     
echo                      +h`  /@@@@@@@s`                          ``+@@@@do```.ys                      
echo                       -h/  :N@@@@s`                          ```:@+//.```/d:                       
echo                         +h: .h@@y`                         `````..`````:yo`                        
echo                          `+y/`sN+                          ``````````/yo`                          
echo                             :ss/o+.                      `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooooy/.      `.:///++oosso/.                                   
echo                                        `-:+oooosyhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                                                                                                                    
echo                                         .-/+osyyysoooo+/:.                                         
echo                                   `:ossyh/shhy++/``   `:d@ddyo:`                                   
echo                                :sysdh/`  ```         /o::d@o+N@@@s:                                
echo                             -s@@@ddsdh.             -/`dyN@@@@@@@@@Ny:                             
echo                           /d@@Nd+o- `                 `/+@@hy/h@@@y@N@d+`                          
echo                         /@@@@o.                       `@@@+`  .o+ododdN@d+                         
echo                       .d@@h-`                         :y@@@@@NN/:::::/+NN@@-                       
echo                      /@hh.                          :o@@@@@@@@@@@@@@@@@N@@@No                      
echo                     od` /                           s@@@@@@@@@@@@@@@@@@@yhN@Ns                     
echo                    +@:`  -o                       -sd@@@@@@@@@@@@@@@@@@@@N/@@Ns                    
echo                   -@s.   ``                       /@@@@@@@@@@@@@@@@@@@@@@@NydNd:                   
echo                  h/`o ``````                     -d@@@@@@@@@@@@@@@@@@@@@@@@d-/@                   
echo                  .N   /@@@@@+--`                    -hd@@@@@NhddN@@@@@@@@@@@@@+d:                  
echo                  /h   :N@@@@@@@+:                     .yyyhho ``ohN@@@@@@@@@@N/so                  
echo                  oy   N@@@@@@@@@N///-                             @@@@@@@@@@Ns.oy                  
echo                  +h   @@@@@@@@@@@@@@h+++.                       ``@@@@@@@@@@h-`ss                  
echo                  .N   h@@@@@@@@@@@@@@@@@o                       ``+h@@@@@@@@+``d:                  
echo                   d/  .o@@@@@@@@@@@@@@d/-                        ``y@@@@@@@N.`:@                   
echo                   -@`   .@@@@@@@@@@@@@@                        ` odN@@@@@@@syod/                   
echo                    oy     :@@@@@@@@@@@@`                       ``-o@@@@@@N-+hsy                    
echo                     sy    o@@@@@@@@N-`                        ```.@@@@@@h:./oy                     
echo                      +h`   s@@@@@@@h-                         ```/d@@@h/``.ys                      
echo                       -h/   o@@@@@y.                         ````:@+/:.``/d:                       
echo                         +h:  -@@dy.                        ``````..````:yo`                        
echo                          `+y/ .@@:                         ``````````/yo`                          
echo                             :ss:/s/                      `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+ss-`     ``:///++oosso/.                                   
echo                                        `-:+oooosyhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                                                                                                                     
echo                                         .-/+osyyysoooo+/:.                                         
echo                                   `:osssh+:ydhs++-.   `.sN@dyo:`                                   
echo                                :shoshy-   ``         `/o:+@d+y@@@s:                                
echo                             -s@@@dNhsdy`             -/`hyN@@N@@@@@Ny:                             
echo                           /d@N@Nh/o. `                  /+@@hy+d@@@hN@d+`                          
echo                         /@@@@h+`                        y@@s. `.ooodod@N@+                         
echo                       .d@@No.                          .+@@@@NNN+:-:::/s@N@-                       
echo                      /Ndyy                           `od@@@@@@@@@@@@@@@@@N@No                      
echo                     oN- .:                           `N@@@@@@@@@@@@@@@@@@hhNNs                     
echo                    +N-/   :o                        +sN@@@@@@@@@@@@@@@@@@@hs@@s                    
echo                   -@s:`   ``                        h@@@@@@@@@@@@@@@@@@@@@@@s@N:                   
echo                   h/`:/ ````.`                      odN@@@@@@@@@@@@@@@@@@@@@@o/@                   
echo                  .N   `oN@@@@y--.                     +h@@@@@@ddd@@@@@@@@@@@@@dd:                  
echo                  /h    :@@@@@@@@h:`                     /yhhhh- .:h@@@@@@@@@@@hso                  
echo                  oy   .@@@@@@@@@@@s///                           ``o@@@@@@@@@@:oy                  
echo                  +h   `@@@@@@@@@@@@@@@o+++                       ``s@@@@@@@@@o`ss                  
echo                  .N    @@@@@@@@@@@@@@@@@@@.                      ``/s@@@@@@@@.`d:                  
echo                   d/   -s@@@@@@@@@@@@@@@s/`                      ```/@@@@@@@h`:@                   
echo                   -@`   `-@@@@@@@@@@@@@@+                      ` `:dN@@@@@@@+hd/                   
echo                    oy      -@@@@@@@@@@@@s                      ```./@@@@@@h.hhy                    
echo                     sy     s@@@@@@@@@o.                       `````h@@@@Ny./sy                     
echo                      +h`    h@@@@@@@do                        ````-d@@Ny-`.ys                      
echo                       -h/    y@@@@@h:                        `````:d//:.`/d:                       
echo                         +h:   +N@dh.                       ```````..```:yo`                        
echo                          `+y/  /@d-                        ``````````/yo`                          
echo                             :ss:.os-                     `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+/y/`     ``.://++oosso/.                                   
echo                                        `-:+oooooyhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                                                                                                                     
echo                                        .-/+osyyyyoooo+/:.                                         
echo                                   `:osyysy-+ddh++/ .  `./@Ndyo:`                                   
echo                                :sds+yds`   ``         `++:s@y+@@@s:                                
echo                             -s@NNd@Nyo@y`             -:`hyN@NN@@@@Ny:                             
echo                           /d@@d@@h:o. `                  /+d@hyo@@@dd@@+`                          
echo                         /@@@@@s/                         +@@h-``-soshyd@N+                         
echo                       .d@@@@/.                          `:N@@NNNNo:-:://d@@-                       
echo                      /Ndhy+                            /s@@@@@@@@@@@@@@@@@@@o                      
echo                     o@+  -.                            o@@@@@@@@@@@@@@@@@hd@Ns                     
echo                    +No--   :s                        `sh@@@@@@@@@@@@@@@@@@@oN@s                    
echo                   -@/y.    ``                        `@@@@@@@@@@@@@@@@@@@@@Ndd@:                   
echo                   h/  o- ```..`                       d@@@@@@@@@@@@@@@@@@@@@@@/@                   
echo                  .N    `oN@@@@@---                      yh@@@@@Nddd@@@@@@@@@@@N@:                  
echo                  /h    `:@@@@@@@@@/:                      shhhhs ..yd@@@@@@@@@Nho                  
echo                  oy    :@@@@@@@@@@@N///:                         ```-@@@@@@@@@soy                  
echo                  +h    -@@@@@@@@@@@@@@@@+++/                     ```-@@@@@@@@N-ss                  
echo                  .N    `N@@@@@@@@@@@@@@@@@@d                     ```-oN@@@@@@y`d:                  
echo                   d/    -y@@@@@@@@@@@@@@@N/:                     ````-@@@@@@@/:@                   
echo                   -@`    `-@@@@@@@@@@@@@@N`                     ``..h@@@@@@@dy@/                   
echo                    oy      `.N@@@@@@@@@@@@.                     ```.-N@@@@@++@y                    
echo                     sy      y@@@@@@@@@@.`                     ``````y@@@@@o.hy                     
echo                      +h`    `d@@@@@@@Ny`                       ````-d@@@s..ys                      
echo                       -h/    `h@@@@@@/                       ``````:h//-`/d:                       
echo                         +h:    s@@dh-                       ```````.```:yo`                        
echo                          `+y/   s@d.                       ``````````/yo`                          
echo                             :ss: :yo`                    `````````:sy/                             
echo                               `/ss+-`                  ```````-+ss/`                               
echo                                   ./ooo+/os.      `.://++oosso/.                                   
echo                                        `-:+ososoyyhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                                                                                                                    
echo                                         .-/+osyyyysooo+/:.                                         
echo                                   `:oyyysy/`yNdy++-`` `.:yNdyo:`                                   
echo                                :sdh/+hh+    ``         `++/y@sy@@s:                                
echo                             -sN@@@dNNso@s              -:.hy@@NN@@@Ny:                             
echo                           /d@@N@@dy-o. `                  :+d@dyoN@NhN@+`                          
echo                         /@@@@@No:                         :@@@-``-soyyhNN+                         
echo                       .d@@@Nd-`                           -h@@NNNNo--::/s@@-                       
echo                      /N@hyh:                            .o@@@@@@@@@@@@@@@NN@o                      
echo                     oNd`  /`                            `N@@@@@@@@@@@@@@@@hd@s                     
echo                    +dd`+`   -y`                        /sN@@@@@@@@@@@@@@@@@@y@s                    
echo                   -@.s+.    ``                         +@@@@@@@@@@@@@@@@@@@@@y@:                   
echo                   h/   h````....                       :@@@@@@@@@@@@@@@@@@@@@Ns@                   
echo                  .N     `oN@@@@@/--.                     -h@@@@@@dd@N@@@@@@@@@@@:                  
echo                  /h     `:N@@@@@@@@h:.                     -hhhhh-`-+h@@@@@@@@@@o                  
echo                  oy     :@@@@@@@@@@@@y///.                       `````@@@@@@@@@sy                  
echo                  +h     -@@@@@@@@@@@@@@@@y+++-                   ```.`N@@@@@@@sss                  
echo                  .N     `@@@@@@@@@@@@@@@@@@@@+                   ````.+@@@@@@@-d:                  
echo                   d/     :y@@@@@@@@@@@@@@@@h/-                  ``````.N@@@@@d:@                   
echo                   -@`     `-d@@@@@@@@@@@@@@s                    `````y@@@@@@@sN/                   
echo                    oy       `.@@@@@@@@@@@@@h                  ` ```..-@@@@@@:@y                    
echo                     sy       s@@@@@@@@@@+.                     ``````s@@@@h-hy                     
echo                      +h`     `d@@@@@@@@h/                    ` `````.d@@d/.ys                      
echo                       -h/     `d@@@@@@+`                      ``````/y/:./d:                       
echo                         +h:    `y@@dd:                      ```````````:yo`                        
echo                          `+y/   `d@h`                      ``````````/yo`                          
echo                             :ss:  +h+                    `````````:sy/                             
echo                               `/ss+-``                 ```````-+ss/`                               
echo                                   ./ooo+::y/`     ``-//++oosso/.                                   
echo                                        `-:+osssosyhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                                                                                                                       
echo                                         .-/+osyyyyyooo+/:.                                         
echo                                   `:oyhysss.-@@ho+/`. `.:o@@yo:`                                   
echo                                :sd@+:sdh:    `          .++ohdsN@s:                                
echo                             -sNN@@h@NNoo@s              ::-yh@NN@@@Ny:                             
echo                           /d@@@@N@ds.o. `                  -+d@dyyN@@@@+`                          
echo                         /@@@@@@N+-                         .N@@:``:sshs@N+                         
echo                       .d@@@@Nh.`                           .o@@NNN@o--:/+@@-                       
echo                      /N@hhsh.                             /y@@@@@@@@@@@@@@N@o                      
echo                     o@N/   /`                             s@@@@@@@@@@@@@@@@dNs                     
echo                    +hd+`o    .h.                        `sh@@@@@@@@@@@@@@@@@yNs                    
echo                   -@`/h:`     `                          @@@@@@@@@@@@@@@@@@@@hN:                   
echo                   h/   `d```.....`                       y@N@@@@@@@@@@@@@@@@@@d@                   
echo                  .N      `o@@@@@@y---`                     ohN@@@@Nd@@@@@@@@@@@@:                  
echo                  /h      `:@@@@@@@@@@+:                      ohhhho`-/hN@@@@@@@No                  
echo                  oy      -@@@@@@@@@@@@@+///                       `````h@@@@@@@hy                  
echo                  +h      -@@@@@@@@@@@@@@@@@++++`                  `````d@@@@@@@ys                  
echo                  .N      `N@@@@@@@@@@@@@@@@@@@@.                ` `````+d@@@@@sd:                  
echo                   d/      :s@@@@@@@@@@@@@@@@@o/`                ````````@@@@@@+@                   
echo                   -@`      `-y@@@@@@@@@@@@@@@-                  ```.``s@@@@@@hN/                   
echo                    oy         .h@@@@@@@@@@@@@:                 ``.``.`.@@@@@ohy                    
echo                     sy        o@@@@@@@@@@@..                   ```````s@@@@oyy                     
echo                      +h`       h@@@@@@@@dy                    ```````-@@@y-ys                      
echo                       -h/      `d@@@@@@s:                     ```````oo:-/d:                       
echo                         +h:     `h@@dd/`                    ```````````:yo`                        
echo                          `+y/    .@@h`                     ``````````/yo`                          
echo                             :ss:  `sd:                   `````````:sy/                             
echo                               `/ss+-``                 ```````-+ss/`                               
echo                                   ./ooo+:-oy.      `.:/++oosso/.                                   
echo                                        `-:+osssooyyhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                               
echo                                         .-/+osyyyyyooo+/:.                                         
echo                                   `:oyhhsss: oN@h++- .`.:+h@yo:`                                   
echo                                :sd@y::h@y.`  ``          -oosdyh@s:                                
echo                             -sN@dNNhN@@oo@s              :-:yd@NN@@Ny:                             
echo                           /d@@@N@@@hs.o. `                  -+@@dyh@Nd@+`                          
echo                         /@@@@@@@@+-                         `@@N:``+ssydN+                         
echo                       .d@@@@@@y.`                           `/@@NNN@+-::/y@-                       
echo                      /@N@hysh.                             -o@@@@@@@@@@@@@NNo                      
echo                     o@d@`   /`                             .@@@@@@@@@@@@@@@d@s                     
echo                    +hoN..o     y/                         :sN@@@@@@@@@@@@@@@d@s                    
echo                   -@`.oh.`     `                          /@@@@@@@@@@@@@@@@@@@@:                   
echo                   h/    `d```......                       .@@@@@@@@@@@@@@@@@@@N@                   
echo                  .N       `+d@@@@@@:--.                     .hd@@@@@d@@@@@@@@@@@:                  
echo                  /h        :h@@@@@@@@@d:-                     .hhhhh`.-h@@@@@@@@o                  
echo                  oy       .@@@@@@@@@@@@@d///:                     ``````y@@@@@@Ny                  
echo                  +h       `@@@@@@@@@@@@@@@@@@+++/               ` ``````y@@@@@@hs                  
echo                  .N        @@@@@@@@@@@@@@@@@@@@@@               ` ``````/d@@@@@d:                  
echo                   d/       -+@@@@@@@@@@@@@@@@@@//               `````````@@@@@h@                   
echo                   -@`        -o@@@@@@@@@@@@@@@@                 ```````o@@@@@@@/                   
echo                    oy          .+@@@@@@@@@@@@@N                ````````-@@@@dyy                    
echo                     sy         /@@@@@@@@@@@+-`                 ````````y@@@yyy                     
echo                      +h`        y@@@@@@@@Ny:                  ````````-N@@+ys                      
echo                       -h/       `d@@@@@@d+                   ````````.s/:/d:                       
echo                         +h:      `h@@@@o.                  ````````````:yo`                        
echo                          `+y/     -N@h`                    ``````````/yo`                          
echo                             :ss:   -hd-                  `````````:sy/                             
echo                               `/ss+- ``                ```````-+ss/`                               
echo                                   ./ooo+:-:s+      `.-/++oosso/.                                   
echo                                        `-:+ossssoyyyyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                     
echo                                         .-/+oosyyyysoo+/:.                                         
echo                                   `:oyhdss+o``d@dy+/`...:+sdyo:`                                   
echo                                :sd@@/.+@@s.`  ``          :ssydyds:                                
echo                             -sN@Nd@ddN@@oo@s              /-/y@N@@@Ny:                             
echo                           /d@@@@@N@@ho.s.                    -o@@dy@@@d+`                          
echo                         /@@@@@@@@@/-                         `d@N-`.ssyhN+                         
echo                       .d@@@@@@@y`                            `:N@NN@@/.:/sd-                       
echo                      /dh@dyssy.                             `+@@@@@@@@@@@@@No                      
echo                     ods@s    /`                              h@@@@@@@@@@@@@@@s                     
echo                    +h-@h :+     os                         `sd@@@@@@@@@@@@@@Nds                    
echo                   -@` -yh.`     `                           d@@@@@@@@@@@@@@@@NN:                   
echo                   h/     .d```......`                       o@N@@@@@@@@@@@@@@@@@                   
echo                  .N        `+y@@@@@@y---`                     +dN@@@@@d@@@@@@@@@:                  
echo                  /h         :o@@@@@@@@@@s:`                     ohhhh:.-y@@@@@@@o                  
echo                  oy         N@@@@@@@@@@@@@s///.                   ```````s@@@@@@y                  
echo                  +h         @@@@@@@@@@@@@@@@@@y+++-              ````````y@@@@@Ns                  
echo                  .N         h@@@@@@@@@@@@@@@@@@@@@o              ````````/d@@@@N:                  
echo                   d/        -/N@@@@@@@@@@@@@@@@@h/-              ````````.N@@@N@                   
echo                   -@`         .:@@@@@@@@@@@@@@@@o              ` ```````o@@@@@N/                   
echo                    oy           `-@@@@@@@@@@@@@@o              ```.`````-N@@Nhy                    
echo                     sy          .@@@@@@@@@@@@-.`              `````````.d@@@dy                     
echo                      +h`         o@@@@@@@@@dy                 `````````/@@shs                      
echo                       -h/         y@@@@@@N+.                 `````````-s:+d:                       
echo                         +h:       `h@@@@h.                 ````````````:yo`                        
echo                          `+y/      -N@h`                   ``````````/yo`                          
echo                             :ss:    :dd.                 `````````:sy/                             
echo                               `/ss+-  ``               ```````-+ss/`                               
echo                                   ./ooo+:--+s-     `../++oosso/.                                   
echo                                        `-:+osyssosyyyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oosyyyysoo+/:.                                         
echo                                   `:oyddy+o+: :NNdo+- -.:+shyo:`                                   
echo                                :sd@@y-`y@do``  ``         `+ysdhhs:                                
echo                             -sN@@@@@h@@@@o+@y             `+-+yN@@@Ny:                             
echo                           /d@@@@@@N@@ho`o-                   `:oNNhyNNd+`                          
echo                         /@@@@@@@@@@/-                         `h@N-`-ysh@+                         
echo                       .d@@@@@@@@y`                             -@@N@@d--:od-                       
echo                      /d+@Nhyssy-                              /h@@@@@@@@@NNNo                      
echo                     oyod@:    /.                              /@@@@@@@@@@@@N@s                     
echo                    +h`o@+ :o     :d.                         /y@@@@@@@@@@@@@@Ns                    
echo                   -@` `-yh``      `                          :@@@@@@@@@@@@@@@@@:                   
echo                   h/      `d-``.......                       `@@@@@@@@@@@@@@@@@@                   
echo                  .N         `:oN@@@@@@:---                     .d@@@@@@d@@@@@@@@:                  
echo                  /h          -/@@@@@@@@@@N/:                     -hhhh+`-y@@@@@@o                  
echo                  oy          y@@@@@@@@@@@@@@+///`                ``.``````s@@@@@y                  
echo                  +h          y@@@@@@@@@@@@@@@@@@o+++.            `````````y@@@@@s                  
echo                  .N          o@@@@@@@@@@@@@@@@@@@@@@-            `````````/@@@@@:                  
echo                   d/         ./d@@@@@@@@@@@@@@@@@@o/`            `````````-@@@@@                   
echo                   -@`          .-d@@@@@@@@@@@@@@@@.            ``````````sN@@@@/                   
echo                    oy            `.h@@@@@@@@@@@@@@.            ``````````/@@@Ny                    
echo                     sy            @@@@@@@@@@@@o-``            ``````````-@@N@y                     
echo                      +h`          :@@@@@@@@@Ny:               ``````````s@dds                      
echo                       -h/          s@@@@@@@s/                ``````````/++d:                       
echo                         +h:         y@@N@@-`                ```````````:yo`                        
echo                          `+y/       :N@d`                  ``````````/yo`                          
echo                             :ss:     /@d.                `````````:sy/                             
echo                               `/ss+-  `.`              ```````-+ss/`                               
echo                                   ./ooo+:-.:oo      ..:++oosso/.                                   
echo                                        `-:+osyyssoysyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+oosyyyyyoo+/:.                                         
echo                                   `:oy@dhoo/+. y@@h+/`.-:+osyo:`                                   
echo                                :sdN@@/..d@d+``  `         `.syydys:                                
echo                             -sN@@@hNNhN@@@++dy             `+:odNN@Ny:                             
echo                           /d@@@@@N@N@@hs`o:                  ``:sNNhd@@+`                          
echo                         /@@@@@@@@@@N/-                        `.h@@.`+yh@+                         
echo                       .h@@@@@@@@@y`                            `-d@N@@y.:oh-                       
echo                      /h-d@@yysoy:                              -y@@@@@@@@NN@o                      
echo                     oy:s@N.    :-                              .N@@@@@@@@@@@Ns                     
echo                    +h -y@: :s     `do                         .s@@@@@@@@@@@@@@s                    
echo                   -@`  .:yd.`      `                           @@@@@@@@@@@@@@@@:                   
echo                   h/        d/ ``.......                       s@@@@@@@@@@@@@@@@                   
echo                  .N          `.od@@@@@@d---.                     sd@@@@N@@@@@@@@:                  
echo                  /h           `:h@@@@@@@@@@d:-                   ``yhhho`-yN@@@@o                  
echo                  oy           /@@@@@@@@@@@@@@d////               ``````````h@@@@y                  
echo                  +h           :@@@@@@@@@@@@@@@@@@N++++           ``````````h@@@@s                  
echo                  .N           -@@@@@@@@@@@@@@@@@@@@@@N           ``````````+@@@@:                  
echo                   d/           /o@@@@@@@@@@@@@@@@@@N//           ``````````/@@@@                   
echo                   -@`            -o@@@@@@@@@@@@@@@@d            ``````````yN@@@/                   
echo                    oy              ./@@@@@@@@@@@@@@h            ```.``````s@@@y                    
echo                     sy             o@@@@@@@@@@@N:-`           ```````````/@@Ny                     
echo                      +h`           `N@@@@@@@@@hy               `````````.@NNs                      
echo                       -h/           /@@@@@@@d+`              ``````````.+od:                       
echo                         +h:          s@@N@@/.               ```````````:yo`                        
echo                          `+y/        :N@@`                 ``````````/yo`                          
echo                             :ss:      oNh`               `````````:sy/                             
echo                               `/ss+-   `.`             ```````-+ss/`                               
echo                                   ./ooo+:-../o:     `.-/+oosso/.                                   
echo                                        `-:+osyyssossyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oossyyyyso+/:.                                         
echo                                   `:oy@Nhs/o// .@@@y+-`::+osyo:`                                   
echo                                :sdNNNh- /@Ny+`` ``        ``:yy@ys:                                
echo                             -sN@@@Ny@Nd@@@@++dh             .+/o@@@Ny:                             
echo                           /d@@@@@@NNN@@hs`+/                 ```/y@@hN@+`                          
echo                         /@N@@@@@@@@@N+:                       ``.d@h`.yy@+                         
echo                       .hyN@@@@@@@@h.                           ``-d@@@d+-+h-                       
echo                      /h-:@@@yyooy/                              .s@@@@@@@NN@o                      
echo                     oy`sy@@`    ::                              `d@@@@@@@@@@@s                     
echo                    +h `:@@- :y      od`                         oh@@@@@@@@@@@@s                    
echo                   -@`   ./yd.`                                  o@@@@@@@@@@@@@@:                   
echo                   h/         ss ``.......`                      -@N@@@@@@@@@@@@@                   
echo                  .N            `+s@@@@@@@o---`                    :dN@@@N@@@@@@@:                  
echo                  /h             :+@@@@@@@@@@@s:.                 ```+hhhs`-h@@@@o                  
echo                  oy            `@@@@@@@@@@@@@@@y///-             ```````````@@@@y                  
echo                  +h             N@@@@@@@@@@@@@@@@@@h+++:         ```````````N@@@s                  
echo                  .N             d@@@@@@@@@@@@@@@@@@@@@@s         ``````````.s@@@:                  
echo                   d/            -/N@@@@@@@@@@@@@@@@@@h/-        ````````````y@@@                   
echo                   -@`             -:@@@@@@@@@@@@@@@@@+          ``````````.d@@@/                   
echo                    oy               `.@@@@@@@@@@@@@@@/          `.````````.d@@y                    
echo                     sy              -N@@@@@@@@@@@y:.`          ```````````y@@y                     
echo                      +h`             h@@@@@@@@@@h:            ```````````/@@s                      
echo                       -h/            .N@@@@@@@o:              ``````````:sd:                       
echo                         +h:           /@@@@@s-              ```````````:yo`                        
echo                          `+y/         :@@N.                ``````````/yo`                          
echo                             :ss:       sNh`              `````````:sy/                             
echo                               `/ss+-    `.`            ```````-+ss/`                               
echo                                   ./ooo+:-..:+/.    `.-:+oosso/.                                   
echo                                        `-:+osyyyyosssso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+ooosyyyyso+/:.                                         
echo                                   `:oy@@dy+/++- +N@do:.-/+osso:`                                   
echo                                :sd@NNNo` o@Ns/`` ``       ``.ohdds:                                
echo                             -sN@@@@@y@@d@@@@++hd            `://y@@Ny:                             
echo                           /hN@@@@@@NNN@@hs`/+                ```.+d@d@@+`                          
echo                         /hdN@@@@@@@@@@+:                      ```-d@o`+hd+                         
echo                       .hod@@@@@@@@@d-                          ```-d@@dh-+h-                       
echo                      /h..y@@dysooy+`                            `.o@@@@@@@N@o                      
echo                     oy`:o@@d`    ./                             ``y@@@@@@@@@@s                     
echo                    +h  .:N@. .h.     .d+                         /y@@@@@@@@@@@s                    
echo                   -@`   `.:yd-`                                 `.N@@@@@@@@@@@@:                   
echo                   h/          /d```........                       h@@@@@@@@@@@@@                   
echo                  .N             `:o@@@@@@@N:---                   ``h@@@@N@@@@@@:                  
echo                  /h              .:d@@@@@@@@@@@/:                 ```:hhhs`:d@@@o                  
echo                  oy              s@@@@@@@@@@@@@@@+///`            ``````````-@@@y                  
echo                  +h              o@@@@@@@@@@@@@@@@@@@s+++.      ` ``````````:@@@s                  
echo                  .N              +@@@@@@@@@@@@@@@@@@@@@@@-      ` ``````````-@@@:                  
echo                   d/             `/y@@@@@@@@@@@@@@@@@@@o/`      ````````````.N@@                   
echo                   -@`              `:s@@@@@@@@@@@@@@@@@`        ```````````/N@@/                   
echo                    oy                `.+@@@@@@@@@@@@@@N        ``.``.``````:@@y                    
echo                     sy                h@@@@@@@@@@@@::`         ```````````-N@y                     
echo                      +h`              /@@@@@@@@@@hy           ```````````.@@s                      
echo                       -h/              d@@@@@@@h+`            ``````````.sd:                       
echo                         +h:            -@@@@@d-`           ````````````:yo`                        
echo                          `+y/          -@@@:               ``````````/yo`                          
echo                             :ss:        sNh`             `````````:sy/                             
echo                               `/ss+-     .-`           ```````-+ss/`                               
echo                                   ./ooo+:-.`.:o:`   `.-:+oosso/.                                   
echo                                        `-:+osyhyysossso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                 
echo                                         .-/+ososyyyyso+/:.                                         
echo                                   `:oy@@Nys/++/``h@Nh+-./+osso:`                                   
echo                                :sd@NN@@: `yNNs/`` ``      ```:hdds:                                
echo                             -sN@@@@@dh@@@@@@N++y@           ``+/+d@Ny:                             
echo                           /hdN@@@@@@N@N@@dy.-s               ````-oNNd@+`                          
echo                         /hy@@@@@@@@@@@@s:`                    ````:@N:-yd+                         
echo                       .h++@@@@@@@@@Nd:                         ````-@Nddo+h-                       
echo                      /h.`.@@@dsso+ss-                           ```o@@@@@@N@o                      
echo                     oy` soN@d     `/`                           ```o@@@@@@@@@s                     
echo                    +h   -/@@- `h:      od`                       `-yN@@@@@@@@@s                    
echo                   -@`    `.:yd+``                                ``d@@@@@@@@@@@:                   
echo                   h/           .@/ ``.......`                    ``o@@@@@@@@@@@@                   
echo                  .N              ``+s@@@@@@@h----                 ```s@@@@N@N@@@:                  
echo                  /h                :+@@@@@@@@@@@@::               ````.hhhs.+@@@o                  
echo                  oy               `@@@@@@@@@@@@@@@@////           ```````````o@@y                  
echo                  +h               `@@@@@@@@@@@@@@@@@@@N++++     ` ```````````s@@s                  
echo                  .N                N@@@@@@@@@@@@@@@@@@@@@@@     `````````````+@@:                  
echo                   d/               :/N@@@@@@@@@@@@@@@@@@@/:     `````````````o@@                   
echo                   -@`                -:N@@@@@@@@@@@@@@@@y        ```````````y@@/                   
echo                    oy                  ..@@@@@@@@@@@@@@@o      ```.````````.h@y                    
echo                     sy                 /N@@@@@@@@@@@h:.        ````````````y@y                     
echo                      +h`               `N@@@@@@@@@@h:         ````````````o@s                      
echo                       -h/               o@@@@@@@N+:          ````````````o@:                       
echo                         +h:             `N@@N@@/.          ````````````:yo`                        
echo                          `+y/           -h@@+              ``````````/yo`                          
echo                             :ss:         yNd.            `````````:sy/                             
echo                               `/ss+-      .-           ```````-+ss/`                               
echo                                   ./ooo+:-.``://:   ``--/oosso/.                                   
echo                                        `-:+osyhhysossso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+ooosyyyyso+/:.                                         
echo                                   `:oydN@hy+:o+: /d@@s:-:oosoo:`                                   
echo                                :sd@@NN@h- .dN@o/`` ``     ```.sdhs:                                
echo                             -s@@@@@@@hh@d@@@@N++yN          ``.+/yNNy:                             
echo                           /yyd@@@@@@@N@N@@@y-.s`             `````:y@@d+`                          
echo                         /h+h@@@@@@@@@@@@h:.                   `````+Nh.oh+                         
echo                       .h+`d@@@@@@@N@Ndo                        `````:@@dhoh-                       
echo                      /h. .:@@@dsso+ss/                          ````+@@@@@N@o                      
echo                     oy` `ysN@@`     :-                          ````/@@@@@@@@s                     
echo                    +h    :/@@:  ss      .do                     ```.sN@@@@@@@@s                    
echo                   -@`     ``-ydy``                               ```y@@@@@@@@@@:                   
echo                   h/             yh ``........`                  ```:@N@@@@@@@@@                   
echo                  .N                `:od@@@@@@@o---.              `````+d@@@N@@@@:                  
echo                  /h                 .:h@@@@@@@@@@@y:.            ``.````yhh+.s@@o                  
echo                  oy                 s@@@@@@@@@@@@@@@h///-        `````````````N@y                  
echo                  +h                 o@@@@@@@@@@@@@@@@@@@d+++-    ``.``````````N@s                  
echo                  .N                 +@@@@@@@@@@@@@@@@@@@@@@@+    ````````````.d@:                  
echo                   d/                ./s@@@@@@@@@@@@@@@@@@@y/.    ````````````.N@                   
echo                   -@`                 `:o@@@@@@@@@@@@@@@@@:    ` ```````````-N@/                   
echo                    oy                   `./@@@@@@@@@@@@@@N`    ```.`````````/@y                    
echo                     sy                   dN@@@@@@@@@@@/:`     `````````````:Ny                     
echo                      +h`                 s@@@@@@@@@@hy        ````````````-Ns                      
echo                       -h/                -@@@@@@@@s+         ````````````+@:                       
echo                         +h:               h@@N@@s-`        ````````````:yo`                        
echo                          `+y/            .y@@y             ``````````/yo`                          
echo                             :ss:          yNd.           `````````:sy/                             
echo                               `/ss+-       .-          ```````-+ss/`                               
echo                                   ./ooo+:-.``.:o.-  ``.-:+osso/.                                   
echo                                        `-:+osyhhyyossso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                      
echo                                         .-/+oosoyyyyso+/:.                                         
echo                                   `:oydN@@yo::o/-`sN@d+::ossoo:`                                   
echo                                :sd@@NN@Ns` -@Ndo:`` ``    ```./dhs:                                
echo                             -shN@@@@@@yh@dN@@@@o+sN`        ```:++@Ny:                             
echo                           /yosN@@@@@@@N@N@@Ny:`s-            `````.+@Nd+`                          
echo                         /h/+N@@@@@@@@@@@@@:-                  `````.sN/+h+                         
echo                       .h+ /N@@@@@@@N@@dy`                      ``````/Nddyh-                       
echo                      /h.  -+@@@dsss+os+`                        `````o@@@@N@o                      
echo                     oy`  -ysN@N.     ./                          ````/@@@@@@@s                     
echo                    +h    `:/@@+  /d`      od.                   `````o@@@@@@@@s                    
echo                   -@`      ```shd.``                             ````+@@@@@@@@@:                   
echo                   h/              :@: ``........                 ```..@N@@@@@@@@                   
echo                  .N                 `.+o@@@@@@@@:---`            ``````/d@@@@N@@:                  
echo                  /h                   :/@@@@@@@@@@@@+:`          ````````yhh::@@o                  
echo                  oy                   N@@@@@@@@@@@@@@@o///.      `````````````o@y                  
echo                  +h                   N@@@@@@@@@@@@@@@@@@@s+++`  `````````````o@s                  
echo                  .N                   @@@@@@@@@@@@@@@@@@@@@@@N`  `````````````o@:                  
echo                   d/                  :/@@@@@@@@@@@@@@@@@@@N+/   `````````````y@                   
echo                   -@`                   -:d@@@@@@@@@@@@@@@@d    `````````````y@/                   
echo                    oy                     ..h@@@@@@@@@@@@@@o   ````.````````.@y                    
echo                     sy                    /N@@@@@@@@@@@d:.    `````````````.dy                     
echo                      +h`                  .@@@@@@@@@@@h:       ```````````.ds                      
echo                       -h/                  d@@@@@@@d+-       ````````````/d:                       
echo                         +h:                +@@@@@d-.        ```````````:yo`                        
echo                          `+y/             .o@@@            ``````````/yo`                          
echo                             :ss:           yN@.          `````````:sy/                             
echo                               `/ss+-        .-         ```````-+ss/`                               
echo                                   ./ooo+:-````:/+.. ``.-:+osso/.                                   
echo                                        `-:+osyhhhysosoo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                                                                                                                     
echo                                         .-/+oososyyyso+/:.                                         
echo                                   `:oyhNN@hs+:/+:.-h@Ny/:+ssoo:`                                   
echo                                :sd@@NNN@@+` :N@ho:`````   ```.:yhs:                                
echo                             -syd@@@@@@@yd@dN@@@@o+oN.       ```.+/hNy:                             
echo                           /y+/d@@@@@@@@N@N@@@y+ o:           ``````:yNd+`                          
echo                         /h/.h@@@@@@@@@@@@@@+:                 ``````-dd/h+                         
echo                       .h+  yN@@@@@@@@N@@h-                     ``````.s@h@d-                       
echo                      /h.  `-s@@@@sss++oo:                       ``````s@@@@@o                      
echo                     oy`   :yyN@@-      :.                        `````/@@@@@@s                     
echo                    +h     `-:@@y  `d+      `dy                  ``````+@@@@@@@s                    
echo                   -@`       ```+h@+```                          ` ```./@@@@@@@@:                   
echo                   h/                hh ``.........               ``````dN@@@@@@@                   
echo                  .N                   `:oh@@@@@@@d----           ```.```:@@@@@@@:                  
echo                  /h                    .:s@@@@@@@@@@@N::         `````````yhh.s@o                  
echo                  oy                    /@@@@@@@@@@@@@@@N+///     `````````````.@y                  
echo                  +h                    /@@@@@@@@@@@@@@@@@@@N+++: `````````````.@s                  
echo                  .N                    :@@@@@@@@@@@@@@@@@@@@@@@o `````````````-@:                  
echo                   d/                   `/o@@@@@@@@@@@@@@@@@@@h/. `````````````+@                   
echo                   -@`                    `:/@@@@@@@@@@@@@@@@@:  `````````````/@/                   
echo                    oy                       .:@@@@@@@@@@@@@@N`  ```.`````````hy                    
echo                     sy                      dN@@@@@@@@@@@+: ` ``````````````yy                     
echo                      +h`                    y@@@@@@@@@@hs      ```````````.hs                      
echo                       -h/                   +@@@@@@@@o/      ````````````/d:                       
echo                         +h:                 .@@@N@@/.       ```````````:yo`                        
echo                          `+y/              `+N@@`          ``````````/yo`                          
echo                             :ss:            yNN.         `````````:sy/                             
echo                               `/ss+-        `.-        ```````-+ss/`                               
echo                                   ./ooo+:-````.:+-:```.-:/osso/.                                   
echo                                        `-:+osyhhhysosoo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                                                                                                                     
echo                                         .-/+oossoyyyso+/:.                                         
echo                                   `:oyd@N@@so/:+/:`+d@Ns/+ssoo:`                                   
echo                                :od@@@NN@@h/ `+N@yo-````   ```.:shs:                                
echo                             -sss@@@@@@@@yh@dN@@@@s+oN.      ````:+s@y:                             
echo                           /y+.s@@@@@@@@@N@N@@@ho ++          ``````.+@@+`                          
echo                         /h/ /N@@@@@@@@@@@@@@y:`               ```````+@sh+                         
echo                       .h+  .dN@@@@@@@@N@Nh+                    ```````-hhNd-                       
echo                      /h.   .-s@@@Nsss++os+`                     ```````h@@@@o                      
echo                     oy`    /yyN@@+      -:                       ``````o@@@@@s                     
echo                    +h      `--N@N`  sh       /d/                 ``````+N@@@@@s                    
echo                   -@`         ``:ydd```                         ```.``.:@@@@@@@:                   
echo                   h/                 :d/ ``........`              ```.``dN@@@@@@                   
echo                  .N                    `.+o@@@@@@@@s---.          ```````:@@@NN@:                  
echo                  /h                      -:d@@@@@@@@@@@h:.        `````````hho:No                  
echo                  oy                      h@@@@@@@@@@@@@@@h///-   ``````````````dy                  
echo                  +h                      h@@@@@@@@@@@@@@@@@@@h+o+``````````````ds                  
echo                  .N                      y@@@@@@@@@@@@@@@@@@@@@@N``````````````@:                  
echo                   d/                     -/h@@@@@@@@@@@@@@@@@@@+/`````````````:@                   
echo                   -@`                      .:y@@@@@@@@@@@@@@@@d `````````````.N/                   
echo                    oy                        `.s@@@@@@@@@@@@@@+``.``.````````sy                    
echo                     sy                       :N@@@@@@@@@@@h/.` `````````````oy                     
echo                      +h`                     -@@@@@@@@@@dy-   ````````````.ys                      
echo                       -h/                    `@@@@@@@@y+`     ```````````/d:                       
echo                         +h:                   @@@N@@s-`     ```````````:yo`                        
echo                          `+y/                +d@@:         ``````````/yo`                          
echo                             :ss:             s@N-`       `````````:sy/                             
echo                               `/ss+-         `--       ```````-+ss/`                               
echo                                   ./ooo+:-. ```::+`:```-:/osso/.                                   
echo                                        `-:+osyhhhhyoooo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                                                                                                                    
echo                                         .-/+ooosoyyyso+/:.                                         
echo                                   `:oydd@NNhs+::o:--y@@do+ssoo:`                                   
echo                                :oh@@@@@N@@y: `oN@so-````  ```.:ohs:                                
echo                             -ss+y@@@@@@@@sh@dN@@@@y++N-     ````.+sdy:                             
echo                           /y+`-d@@@@@@@@@N@@N@@ds`:o         ``````./y@+`                          
echo                         /h/ `y@@@@@@@@@@@@@@@@:.              ```````-ydh+                         
echo                       .h+   :@N@@@@@@@@N@@dh                   ````````/dN@-                       
echo                      /h.    .-s@@@@ysoo+ooo:                    ```````.@@@@o                      
echo                     oy`     /ys@@@h      `:.                    ````````y@@@@s                     
echo                    +h       `-.d@@:  -d/       yd                ```````oN@@@@s                    
echo                   -@`          ```yh@/ ``                        ``.````:@@@@@@:                   
echo                   h/                   yd``..........             ```````d@@@@@@                   
echo                  .N                      .-os@@@@@@@@/---`        ````````/@@@@@:                  
echo                  /h                        :/@@@@@@@@@@@@o:`      `````````-hh:@o                  
echo                  oy                       `@@@@@@@@@@@@@@@@o/+/   `````````````oy                  
echo                  +h                       `@@@@@@@@@@@@@@@@@@@@ooo:````````````ys                  
echo                  .N                       `@@@@@@@@@@@@@@@@@@@@@@@+````````````d:                  
echo                   d/                       /+N@@@@@@@@@@@@@@@@@@y+.```````````:@                   
echo                   -@`                        ::N@@@@@@@@@@@@@@@@-````````````.d/                   
echo                    oy                          .-N@@@@@@@@@@@@@@`.``.````````sy                    
echo                     sy                         hN@@@@@@@@@@N+:``````````````oy                     
echo                      +h`                       h@@@@@@@@@Ny+  ````````````.ys                      
echo                       -h/                      y@@@@@@@@+:    ```````````/d:                       
echo                         +h:                    o@@N@@d-.   ````````````:yo`                        
echo                          `+y/                 /h@@o        ``````````/yo`                          
echo                             :ss:              o@@-`      `````````:sy/                             
echo                               `/ss+-          `--      ```````-+ss/`                               
echo                                   ./ooo+:-. ```.:/:.:``.:/osso/.                                   
echo                                        `-:+osyhhhhysooo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+ooosossyso+/:.                                         
echo                                   `:oy@@d@Ndyo/-:+:-/hNNy+ssso:`                                   
echo                                :oyN@@@N@@@Ns- `sNNso.```` ```.:oys:                                
echo                             -ss//N@@@@@@@@yh@dN@@@@h++@-    `````:shy:                             
echo                           /y+` +N@@@@@@@@@N@@N@@Ny.-s`       ```````:sd+`                          
echo                         /h/  .d@@@@@@@@@@@@@@@@/-             ````````+@d+                         
echo                       .h+    /@N@@@@@@@@@@@@h:                 ````````.yN@-                       
echo                      /h.     .-o@@@@hooo++oo+`                  ````````/@@@o                      
echo                     oy`      /ys@@@N.      -:                   ````````.d@@@s                     
echo                    +h        `-.s@@y   sd       -do              ````````s@@@@s                    
echo                   -@`           ```+y@d````                      ```.````/@@@@@:                   
echo                   h/                    .do `..........          ``.``````@@@@@@                   
echo                  .N                       `./oh@@@@@@@@----       `````````oN@N@:                  
echo                  /h                         .:o@@@@@@@@@@@N::     ``````````/hoyo                  
echo                  oy                         /@@@@@@@@@@@@@@@@/++- `````````````oy                  
echo                  +h                         /@@@@@@@@@@@@@@@@@@@hoo+```````````ss                  
echo                  .N                         /@@@@@@@@@@@@@@@@@@@@@@d```````````d:                  
echo                   d/                        ./s@@@@@@@@@@@@@@@@@@N+:``````````:@                   
echo                   -@`                         `:o@@@@@@@@@@@@@@@@s```````````.d/                   
echo                    oy                           `-+@@@@@@@@@@@@@@:.``````````sy                    
echo                     sy                          -N@@@@@@@@@@@y/.````````````oy                     
echo                      +h`                        -@@@@@@@@@@hy`````````````.ys                      
echo                       -h/                       -@@@@@@@@o+  ````````````/d:                       
echo                         +h:                     -@@@@@@:.  ````````````:yo`                        
echo                          `+y/                  :s@@h       ``````````/yo`                          
echo                             :ss:               +@@:`     `````````:sy/                             
echo                               `/ss+-           `--     ```````-+ss/`                               
echo                                   ./ooo+:-.`````-:+.-.`.:/osso/.                                   
echo                                        `-:+ooyhhhhysooo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+ooossossso+/:.                                         
echo                                   `:oy@@ddN@hy+:://:-sd@@sosso:`                                   
echo                                :os@@@@@@N@@@s- .yN@oo.`..````.:oss:                                
echo                             -ss/.y@@@@@@@@@yy@dN@@@@dood:   `````-oyy:                             
echo                           /y+` `y@@@@@@@@@@@@@N@@@y:`s.      ```````-oh+`                          
echo                         /h/   :N@@@@@@@@@@@@@@@@s:            ````````-h@+                         
echo                       .h+     +@N@@@@@@@@@N@@ho                `````````/@@-                       
echo                      /h.      .:+N@@@Nooo++ooo:                 `````````y@@o                      
echo                     oy`       :ysd@@@+      `:.                 `````````:N@@s                     
echo                    +h          -./@@@`  -d+       o@-           `````````.h@@@s                    
echo                   -@`             ``.yh@+ ``                     ```.`````s@@@@:                   
echo                   h/                      od-``.........`        `````````.N@@@@                   
echo                  .N                         `.+o@@@@@@@@s---.    ```````````y@@N:                  
echo                  /h                           -:h@@@@@@@@@@@y:.  ````````````shyo                  
echo                  oy                           h@@@@@@@@@@@@@@@y+++`````````````oy                  
echo                  +h                           y@@@@@@@@@@@@@@@@@@Nooo.`````````ss                  
echo                  .N                           y@@@@@@@@@@@@@@@@@@@@@@.`````````d:                  
echo                   d/                          :/d@@@@@@@@@@@@@@@@@@o/`````````:@                   
echo                   -@`                           .:h@@@@@@@@@@@@@@@@`.````````.d/                   
echo                    oy                             .-d@@@@@@@@@@@@@o``````````sy                    
echo                     sy                            yN@@@@@@@@@@@+-```````````oy                     
echo                      +h`                          h@@@@@@@@@@y:```````````.ys                      
echo                       -h/                         d@@@@@@@y+.````````````/d:                       
echo                         +h:                       @@@N@@+-`````````````:yo`                        
echo                          `+y/                   -+N@N`     ``````````/yo`                          
echo                             :ss:                /N@/. `  `````````:sy/                             
echo                               `/ss+-            `--   ````````-+ss/`                               
echo                                   ./ooo+:-.` ````::/`:..:/osso/.                                   
echo                                        `-:+ooyhhhhhsooo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooosossso+/:.                                         
echo                                   `:oy@@dh@Ndds+-://:/h@@hssso:`                                   
echo                                :osyN@@@@@N@@ds.`-y@doo``..```.:oss:                                
echo                             -ss/`-N@@@@@@@@@yy@dN@@@@dood:  `````.+ys:                             
echo                           /y+`  .d@@@@@@@@@@@@@N@@@h/`s- `   ```````.+y+`                          
echo                         /h/    +@@@@@@@@@@@@@@@@@@:`          ````````.s@+                         
echo                       .h+      +d@@@@@@@@@@N@@dh.              `````````-d@-                       
echo                      /h.       .:/d@@@@sooo++ooo                `````````-N@o                      
echo                     oy`        -sshN@@@       -:                 `````````s@@s                     
echo                    +h           .-.@@@s   sd`      `dh          ``````````-N@@s                    
echo                   -@`              `` +h@@` ``                   ````.`````h@@@:                   
echo                   h/                        dh``..........       ``````````/N@@@                   
echo                  .N                           .-osN@@@@@@@:---   ```````````.@@@:                  
echo                  /h                             :/N@@@@@@@@@@N/: ````````````-hdo                  
echo                  oy                            `N@@@@@@@@@@@@@@N+++-```````````oy                  
echo                  +h                            `N@@@@@@@@@@@@@@@@@@yoo:````````ss                  
echo                  .N                             N@@@@@@@@@@@@@@@@@@@@@:````````d:                  
echo                   d/                            /+N@@@@@@@@@@@@@@@@@h+````````:@                   
echo                   -@`                             ::N@@@@@@@@@@@@@@@-.```````.d/                   
echo                    oy                               .:@@@@@@@@@@@@@h`````````sy                    
echo                     sy                             .N@@@@@@@@@@@o/``````````oy                     
echo                      +h`                           -@@@@@@@@@Ny+``````````.ys                      
echo                       -h/                          /@@@@@@@d+:```````````/d:                       
echo                         +h:                        s@@N@@y-````````````:yo`                        
echo                          `+y/                    `+@@@.    `````````./yo`                          
echo                             :ss:                 :N@/. ` `````````:sy/                             
echo                               `/ss+-             `--  ````````-+ss/`                               
echo                                   ./ooo+:-.` ````-:/-.:.-/osso/.                                   
echo                                        `-:+osshhhhhyooo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooosossso+/:.                                         
echo                                   `:oy@NdhyN@hd+/::+/:od@@ysso:`                                   
echo                                :osod@@@@N@@@@hs.`:h@ho+``.```.:oss:                                
echo                             -ss/` o@@@@@@@@@@hs@@N@@@@@ooh- `````./ys:                             
echo                           /y+`   :N@@@@@@@@@@@@@N@@@do`o: `  ```````.+y+`                          
echo                         /h/     o@@@@@@@@@@@@@@@@@@/.         `````````+d+                         
echo                       .h+       +d@@@@@@@@@@@N@Nh+             `````````.s@-                       
echo                      /h.        `/:h@@@@dooo++o+o:              ``````````h@o                      
echo                     oy`         -oyy@@@@/      `:-               `````````-@@s                     
echo                    +h            .-.o@@@`  `ds       /@/        ```````````o@@s                    
echo                   -@`                  `yh@s ```                ` ```.`````-N@@:                   
echo                   h/                         :do``.........`      ``````````s@@@                   
echo                  .N                            `-/sy@@@@@@@d-:-. ````````````oN@:                  
echo                  /h                              `:+@@@@@@@@@@@h/.````````````o@o                  
echo                  oy                              :@@@@@@@@@@@@@@@y++/``````````oy                  
echo                  +h                              :@@@@@@@@@@@@@@@@@@@oo/```````ss                  
echo                  .N                              :@@@@@@@@@@@@@@@@@@@@@+```````d:                  
echo                   d/                             ./s@@@@@@@@@@@@@@@@@d+.``````:@                   
echo                   -@`                              `:s@@@@@@@@@@@@@@@+.``````.d/                   
echo                    oy                                `-y@@@@@@@@@@@@@````````sy                    
echo                     sy                               sN@@@@@@@@@@y/`````````oy                     
echo                      +h`                             d@@@@@@@@@ys`````````.ys                      
echo                       -h/                           `N@@@@@@N+/``````````/d:                       
echo                         +h:                         -@@N@@d-.``````````:yo`                        
echo                          `+y/                      +h@@/   ``````````/yo`                          
echo                             :ss:                  -N@+.```````````:sy/                             
echo                               `/ss+-              `--  ```````-+ss/`                               
echo                                   ./ooo+:-.`  ````::/.-:-/osso/.                                   
echo                                        `-:+ossyhhhhysoo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oooossosso+/:.                                         
echo                                   `:oy@N@hyd@@dy+:::+//h@@hsso:`                                   
echo                                :ososN@@@@@N@@@ys``/h@yo+`..``.:oss:                                
echo                             -ss/` `h@@@@@@@@@@do@@N@@@@@ooh-`````./ys:                             
echo                           /y+`    /N@@@@@@@@@@@@@@@@@Ns`+/ ` ```````.+y+`                          
echo                         /h/      s@@@@@@@@@@@@@@@@@@y:        `````````/h+                         
echo                       .h+        /dd@@@@@@@@@@N@@dy            ``````````+d-                       
echo                      /h.          /:s@@@@@sooo++o+o`            ``````````/@o                      
echo                     oy`          `/yydN@@d       -:`             ``````````s@s                     
echo                    +h             `-..N@@s   +d-       hd        ``````````.@@s                    
echo                   -@`                    /hd@: ``               ```.``.`````o@@:                   
echo                   h/                           od:``.........     ``````````.N@@                   
echo                  .N                              .-+sd@@@@@@@+::-````````````.@@:                  
echo                  /h                                .:y@@@@@@@@@@@/:```````````-@o                  
echo                  oy                                s@@@@@@@@@@@@@@@+++`````````oy                  
echo                  +h                                s@@@@@@@@@@@@@@@@@Noo/``````ss                  
echo                  .N                                s@@@@@@@@@@@@@@@@@@@@o``````d:                  
echo                   d/                               -/d@@@@@@@@@@@@@@@@N+.`````:@                   
echo                   -@`                                -:d@@@@@@@@@@@@@@o.`````.d/                   
echo                    oy                                  .-N@@@@@@@@@@@@.``````sy                    
echo                     sy                                `N@@@@@@@@@@h/.```````oy                     
echo                      +h`                              :@@@@@@@@@hy.```````.ys                      
echo                       -h/                             s@@@@@@@o+`````````/d:                       
echo                         +h:                           N@@@@@:-`````````:yo`                        
echo                          `+y/                       /s@@o  ``````````/yo`                          
echo                             :ss:                   .N@+.``````````:sy/                             
echo                               `/ss+-               `-- ```````-+ss/`                               
echo                                   ./ooo+:-``` ````-:::`/:/osso/.                                   
echo                                        `-:+ossyhhhhhsoo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+ooooososso+/:.                                         
echo                                   `:oy@N@hysN@hNoo:::o/odN@soo:`                                   
echo                                :oso/d@@@@@@N@@@so``+dNso/`-.`.:oss:                                
echo                             -ss/`  -@@@@@@@@@@@do@@N@@@@@ooy-````./ss:                             
echo                           /y+`     +@@@@@@@@@@@@@@@N@@@y./+`````````.+y+`                          
echo                         /h/       y@@@@@@@@@@@@@@@@@@@:`      `````````:h+                         
echo                       .h+         :ddN@@@@@@@@@@N@Nh:          ``````````/h-                       
echo                      /h.           ::od@@@@hooo++o+o:           ``````````-@o                      
echo                     oy`            :syh@@@@/      `:-           ```````````:Ns                     
echo                    +h               ...s@@@.   hd       :@+      ```````````o@s                    
echo                   -@`                      yh@d` ``      `       ``.````````.N@:                   
echo                   h/                             dd``..........  `````.``````o@@                   
echo                  .N                                -:osN@@@@@@@-::..``````````o@:                  
echo                  /h                                  ::@@@@@@@@@@@y+.``````````do                  
echo                  oy                                  @@@@@@@@@@@@@@@o++.```````oy                  
echo                  +h                                  @@@@@@@@@@@@@@@@@@ss/`````ss                  
echo                  .N                                  @@@@@@@@@@@@@@@@@@@@s`````d:                  
echo                   d/                                 /+@@@@@@@@@@@@@@@@N+.````:@                   
echo                   -@`                                  :+@@@@@@@@@@@@@@s`````.d/                   
echo                    oy                                   `.s@@@@@@@@@@@@.`````sy                    
echo                     sy                                  s@@@@@@@@@@@+.``````oy                     
echo                      +h`                                @@@@@@@@@dy.``````.ys                      
echo                       -h/                              -@@@@@@@s+.```````/d:                       
echo                         +h:                            y@@@@@/-````````:yo`                        
echo                          `+y/                        /o@@s ``````````/yo`                          
echo                             :ss:                    .N@o.`````````:sy/                             
echo                               `/ss+-                `--``.````-+ss/`                               
echo                                   ./ooo+:-``` `````:::.-+/osso/.                                   
echo                                        `-:+ossshhhhhsoo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+ooooososso+/:.                                         
echo                                   `:oy@N@hysd@@d@++::+o+h@Nyoo:`                                   
echo                                :oys/+N@@@@@d@@@Nso``+d@oo:.-..:oss:                                
echo                             -ss/`   +@@@@@@@@@@@@+N@N@@@@Noos.```./ss:                             
echo                           /y+`      o@@@@@@@@@@@@@@@N@@@h./+````````.+y+`                          
echo                         /h/        s@@@@@@@@@@@@@@@@@@@/.     `````````:h+                         
echo                       .h+          .hd@@@@@@@@@@@N@@ds         ``````````/h-                       
echo                      /h.            -//y@@@@@oooo++o+o`         ``````````.do                      
echo                     oy`             -+yyd@@@@       -:`         ```````````.ds                     
echo                    +h                `...N@@h   :d+       yd`    ```````````-Ns                    
echo                   -@`                       -hd@o ```      `     ```.````````s@:                   
echo                   h/                              :do``.........```.``.``````.N@                   
echo                  .N                                 `-/sy@@@@@@@+:::``````````:@:                  
echo                  /h                                   `:+@@@@@@@@@@@/-`````````yo                  
echo                  oy                                   -@@@@@@@@@@@@@@y++-``````oy                  
echo                  +h                                   -@@@@@@@@@@@@@@@@@ys/````ss                  
echo                  .N                                   -@@@@@@@@@@@@@@@@@@@o````d:                  
echo                   d/                                  ./s@@@@@@@@@@@@@@@N+.```:@                   
echo                   -@`                                   .:h@@@@@@@@@@@@@s````.d/                   
echo                    oy                                     .-N@@@@@@@@@N@.````sy                    
echo                     sy                                   .N@@@@@@@@@@+.`````oy                     
echo                      +h`                                 +@@@@@@@@ds-`````.ys                      
echo                       -h/                                @@@@@@@y+.``````/d:                       
echo                         +h:                             +@@@@@+-```````:yo`                        
echo                          `+y/                         :oN@h``````````/yo`                          
echo                             :ss:                     `@@o...``````:sy/                             
echo                               `/ss+-                 `--``.```-+ss/`                               
echo                                   ./ooo+:-` `` ````-/::./+osso/.                                   
echo                                        `-:+osyshhhhhyoo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+ooooossoso+/:.                                         
echo                                   `:oy@@Ndyss@@dNyo::-yosdNhso:`                                   
echo                                :oyy/:y@@@@@N@@@@@so`.+@doo--..:oss:                                
echo                             -ss/.    oN@@@@@@@@@@N+@@N@@@@@ooo.``./ss:                             
echo                           /y+`       o@@@@@@@@@@@@@@@N@@@d-:o..`````.+y+`                          
echo                         /h/         s@@@@@@@@@@@@@@@@@@@s.    `````````:h+                         
echo                       .h+           `yhd@@@@@@@@@@N@@@h.       ``````````/h-                       
echo                      /h.             `+/oN@@@@hooo++o+o:        ``````````.ho                      
echo                     oy`              .:yyd@@@@/       :-        ````````````ys                     
echo                    +h                  ..`o@@@:   sd.      -d/  `````````````ds                    
echo                   -@`                         oh@@- ``      ``   ```.````````:@:                   
echo                   h/                                od:``.........````````````y@                   
echo                  .N                                   .:os@@@@@@@d:::`.```````.N:                  
echo                  /h                                     .:h@@@@@@@@@@+:````````so                  
echo                  oy                                     o@@@@@@@@@@@@@d++-`````oy                  
echo                  +h                                     o@@@@@@@@@@@@@@@@ys:```ss                  
echo                  .N                                     s@@@@@@@@@@@@@@@@@@/```d:                  
echo                   d/                                    -/@@@@@@@@@@@@@@@N/.``:@                   
echo                   -@`                                     -/@@@@@@@@@@@@@o```.d/                   
echo                    oy                                       .y@@@@@@@@@Nd.```sy                    
echo                     sy                                     y@@@@@@@@@@+.````oy                     
echo                      +h`                                  `N@@@@@@@@s-````.ys                      
echo                       -h/                                 s@@@@@@h+.`````/d:                       
echo                         +h:                              -@@N@@+-``````:yo`                        
echo                          `+y/                          -o@@h.````````/yo`                          
echo                             :ss:                      `@@o-.``````:sy/                             
echo                               `/ss+-                  .--`..``-+ss/`                               
echo                                   ./ooo+:-` `` ````.:/:-:oosso/.                                   
echo                                        `-:+osysyhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooososo+/:.                                         
echo                                   `:oy@@@dhssh@@dNoo::/yoh@dso:`                                   
echo                                :oyy+:/@@@@@@@@@@@ds+`-oNyo+--.:oss:                                
echo                             -ss/.    `yN@@@@@@@@@@@o@@N@@@@@oo+``./ss:                             
echo                           /y+`        o@@@@@@@@@@@@@@@N@@@@::+..````.+y+`                          
echo                         /h/          +@@@@@@@@@@@@@@@@@@@h-   `````````:h+                         
echo                       .h+             ohhN@@@@@@@@@@N@@h/      ``````````+h-                       
echo                      /h.               //+h@@@@@oooo+oo++       ``````````.ho                      
echo                     oy`                :+yhdN@@N       -/`       ```````````ss                     
echo                    +h                   `...@@@@   .dy       yh `````````````ys                    
echo                   -@`                          `hh@h  ``     `` `````.```````.@:                   
echo                   h/                                 `dh``.......--```````````+@                   
echo                  .N                                     -:sy@@@@@@@/::..```````d:                  
echo                  /h                                       :/N@@@@@@@@@s/```````so                  
echo                  oy                                       @@@@@@@@@@@@@@++-````oy                  
echo                  +h                                       @@@@@@@@@@@@@@@@ys-``ss                  
echo                  .N                                       N@@@@@@@@@@@@@@@@@-``d:                  
echo                   d/                                      /o@@@@@@@@@@@@@@@/``:@                   
echo                   -@`                                      `:h@@@@@@@@@@@@/``.d/                   
echo                    oy                                        .:@@@@@@@@@Ny```sy                    
echo                     sy                                      -@@@@@@@@@@/.```oy                     
echo                      +h`                                    h@@@@@@@ds.```.ys                      
echo                       -h/                                  :@@@@@@h/.````/d:                       
echo                         +h:                               `@@N@d+.`````:yo`                        
echo                          `+y/                           .od@h.```````/yo`                          
echo                             :ss:                       .@N+-.`````:sy/                             
echo                               `/ss+-                   .-...``-+ss/`                               
echo                                   ./ooo+:-` ``  ````-/:::+ssso/.                                   
echo                                        `-:+osyyyhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oooooosooo+/:.                                         
echo                                   `:oyd@@@yy+yd@d@do+:-ssyddyo:`                                   
echo                                :oyyo:-oN@@@@@@N@@@hs+`:o@so+:.:oss:                                
echo                             -ss/``    `yN@@@@@@@@@@@od@N@@@@doo:`./ss:                             
echo                           /y+`         +@@@@@@@@@@@@@@@@@@@@//+-.```.+y+`                          
echo                         /h/           :@@@@@@@@@@@@@@@@@@@@:  `````````:h+                         
echo                       .h+              :hh@@@@@@@@@@@N@@@s     ``````````/h-                       
echo                      /h.                .+/oN@@@@hooo++o+o-     ``````````.ho                      
echo                     oy`                 .:yyd@@@@o      `/-      ```````````ss                     
echo                    +h                     ..`/@@@o   +@:      /d-````````````ys                    
echo                   -@`                            :hd@+ ```     ````.``.``````.d:                   
echo                   h/                                   :@o``......--.`````````:@                   
echo                  .N                                      `:+sd@@@@@@s::-.``````d:                  
echo                  /h                                        `:s@@@@@@@@@h/``````so                  
echo                  oy                                        :@@@@@@@@@@@@N++.```oy                  
echo                  +h                                        :@@@@@@@@@@@@@@@yo``ss                  
echo                  .N                                        /@@@@@@@@@@@@@@@@d``d:                  
echo                   d/                                       ./d@@@@@@@@@@@@@h:`:@                   
echo                   -@`                                        -/@@@@@@@@@@@N-`.d/                   
echo                    oy                                         `.@@@@@@@@NNo``sy                    
echo                     sy                                       `@@@@@@@@@d/```oy                     
echo                      +h`                                     /@@@@@@@ds.``.ys                      
echo                       -h/                                   .N@@@@@y/.```/d:                       
echo                         +h:                                `d@Ndd+.````:yo`                        
echo                          `+y/                            .sd@h.``````/yo`                          
echo                             :ss:                        .@N+-.````:sy/                             
echo                               `/ss+-                   `.-...`-+ss/`                               
echo                                   ./ooo+:-`  `` ````.//://ssso/.                                   
echo                                        `-:+ooyyyyhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+oooooossoo+/:.                                         
echo                                   `:oydN@@hyssddNdNys::/hshdyo:`                                   
echo                                :osyo:--y@@@@@@d@@@@yo/`/ydoo/-:oss:                                
echo                             -ss/``     .hN@@@@@@@@@@@sd@N@@@@ho+-./ss:                             
echo                           /y+`          /@@@@@@@@@@@@@@@@@@@N//+-```.+y+`                          
echo                         /h/            .N@@@@@@@@@@@@@@@@@@N/``````````:h+                         
echo                       .h+               `hhh@@@@@@@@@@@@@Nh.   ``````````/h-                       
echo                      /h.                  +/oh@@@@@oooo+oo+/    ``````````.ho                      
echo                     oy`                   :+yhdN@@@`      -/    ````````````ss                     
echo                    +h                      `..`h@@@.   dh      `do```````````ys                    
echo                   -@`                              sh@@. ``     ```.``.``````.d:                   
echo                   h/                                     y@.`.....---.````````:@                   
echo                  .N                                        -/sy@@@@@@h::-.`````d:                  
echo                  /h                                          -:N@@@@@@@@h/`````so                  
echo                  oy                                          y@@@@@@@@@@@N++.``oy                  
echo                  +h                                          h@@@@@@@@@@@@@@s/`ss                  
echo                  .N                                          d@@@@@@@@@@@@@@@+`d:                  
echo                   d/                                         /o@@@@@@@@@@@@@o.:@                   
echo                   -@`                                         `:d@@@@@@@@@@d..d/                   
echo                    oy                                          `-s@@@@@@@N@-`sy                    
echo                     sy                                         s@@@@@@@@h:``oy                     
echo                      +h`                                      .N@@@@@@ho``.ys                      
echo                       -h/                                    `d@@@@@s/```/d:                       
echo                         +h:                                ``y@Ndd/.```:yo`                        
echo                          `+y/                             .sh@y.`````/yo`                          
echo                             :ss:                         -@@/-.```:sy/                             
echo                               `/ss+-                   ``--.`.-+ss/`                               
echo                                   ./ooo+:-`  ``  ```.-/://syso/.                                   
echo                                        `-:+oosyyyhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+ooosoossoo+/:.                                         
echo                                   `:oydN@Nhyy+hh@@@dy+::shyhyo:`                                   
echo                                :osy+/--:d@@@@@@d@@@@so:.+hyoo/:oss:                                
echo                             -ss/``      -hN@@@@@@@@@@@yh@N@@@@yo/./ss:                             
echo                           /y+`           -@@@@@@@@@@@@@@@@@@@N/+/-``.+y+`                          
echo                         /h/              d@@@@@@@@@@@@@@@@@@@o`````````:h+                         
echo                       .h+                 shh@@@@@@@@@@@@@@d:` ``````````/h-                       
echo                      /h.                   -++oN@@@@dooo+oo/+`  ``````````.ho                      
echo                     oy`                    .:yyd@@@@y      `/.  ````````````ss                     
echo                    +h                        ..`-@@@h   /@/      sh``````````ys                    
echo                   -@`                               .hd@y````    `...````````.d:                   
echo                   h/                                      .@s``..------```````:@                   
echo                  .N                                         `/+yd@@@@@@::-`````d:                  
echo                  /h                                           `:s@@@@@@@@d/````so                  
echo                  oy                                           .@@@@@@@@@@@N+/``oy                  
echo                  +h                                           -@@@@@@@@@@@@@@s.ss                  
echo                  .N                                           :@@@@@@@@@@@@@@N`d:                  
echo                   d/                                          ./@@@@@@@@@@@@N::@                   
echo                   -@`                                           -s@@@@@@@@@@+.d/                   
echo                    oy                                          ``-+@@@@@@@Ny`sy                    
echo                     sy                                         `:@@@@@@@@o.`oy                     
echo                      +h`                                      ``@@@@@@@y/`.ys                      
echo                       -h/                                    ``y@@@@@o:``/d:                       
echo                         +h:                                ``.s@@dh:```:yo`                        
echo                          `+y/                              .sh@s.````/yo`                          
echo                             :ss:                         `:@d:.```:sy/                             
echo                               `/ss+-                   ```--.`-+ss/`                               
echo                                   ./ooo+:-`  ``` ```..///+oyso/.                                   
echo                                        `-:+oosyhyhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+ooosooosoo+/:.                                         
echo                                   `:oyd@@Ndysyo@hNdNhy//+dyhyo:`                                   
echo                                :oss+/:-./@@@@@@N@@@@Nso--ohsoo/oss:                                
echo                             -ss/` `      -hN@@@@@@@@@@@yh@N@@@Ns/:/ss:                             
echo                           /y+`            .N@@@@@@@@@@@@@@@@@@N/o/.`.+y+`                          
echo                         /h/               s@@@@@@@@@@@@@@@@@@@s.```````:h+                         
echo                       .h+                  :hhh@@@@@@@@@@@@@@o```````````/h-                       
echo                      /h.                     ++oh@@@@@oooo+o/+- ``````````.ho                      
echo                     oy`                      :/yhdN@@@.      :: ````````````ss                     
echo                    +h                         `...o@@@:   hh     `/d.````````ys                    
echo                   -@`                                 /h@@:``.   ``..````````.d:                   
echo                   h/                                        o@-`..------``````:@                   
echo                  .N                                           -/sy@@@@@N::-````d:                  
echo                  /h                                             -/N@@@@@@@h:```so                  
echo                  oy                                             y@@@@@@@@@@@+-`oy                  
echo                  +h                                             h@@@@@@@@@@@@h/ss                  
echo                  .N                                             d@@@@@@@@@@@@@+d:                  
echo                   d/                                            /s@@@@@@@@@@@y:@                   
echo                   -@`                                          ` -/@@@@@@@@@@.d/                   
echo                    oy                                          ```.:N@@@@@N@:sy                    
echo                     sy                                        ```.N@@@@@@@/`oy                     
echo                      +h`                                      ```h@@@@@No-.ys                      
echo                       -h/                                    ```s@@@@N/-`/d:                       
echo                         +d:                                ```.s@@dy-``:yo`                        
echo                          `+y/                              `.sdNo````/yo`                          
echo                             :ss:                         ``/Ny-.``:sy/                             
echo                               `/ss+-                   ```.--`-+ss/`                               
echo                                   ./ooo+:-`   ``  ``..://+oyso/.                                   
echo                                        `-:+oooyhyyhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooosoosso+/:.                                         
echo                                   `:osh@NN@yshohdd@@dho//yhyyo:`                                   
echo                                :oso+:+-..+N@@@@@N@@@@@oo.:syosooss:                                
echo                             -ss/`         -y@@@@@@@@@@@@yh@N@@@@o/+ss:                             
echo                           /y+`             `@@@@@@@@@@@@@N@@@@@@/o:`.+y+`                          
echo                         /h/                /@@@@@@@@@@@@@@@@@@@y.``````:h+                         
echo                       .h+                   `hhhN@@@@@@@@@@@@Ny.`````````/h-                       
echo                      /h.                      -++oN@@@@hooo+oo//``````````.ho                      
echo                     oy`                       .:shd@@@@y      -/````````````ss                     
echo                    +h                           ....@@@@   :d/  ```-d-```````ys                    
echo                   -@`                                  `yd@d``.. ```-.```````.d:                   
echo                   h/                                         .@s`..------`````:@                   
echo                  .N                                            `/oyN@@@@N::.```d:                  
echo                  /h                                              ./h@@@@@@@y-``so                  
echo                  oy                                              -@@@@@@@@@@h+`oy                  
echo                  +h                                              :@@@@@@@@@@@@sss                  
echo                  .N                                              +@@@@@@@@@@@@dd:                  
echo                   d/                                             -+@@@@@@@@@@N+@                   
echo                   -@`                                          ```.:@@@@@@@@@+d/                   
echo                    oy                                          ```..-@@@@@@Nysy                    
echo                     sy                                        `````d@@@@@@h-oy                     
echo                      +h`                                      ````s@@@@@d+.ys                      
echo                       -h/`                                   ````o@@@@d:./d:                       
echo                         +d:                                 ```.s@dhs.`:yo`                        
echo                          `+y/                              ``-yd@/```/yo`                          
echo                             :ss:                         ```+@s-.`:sy/                             
echo                               `/ss+-                   ````.-.-+ss/`                               
echo                                   ./ooo+:-`   ``` ``..-//+ssso/.                                   
echo                                        `-:+oooshhyhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooosoooso+/:.                                         
echo                                   `:oshd@NNhssh+@d@d@hho+odyso:`                                   
echo                                :oso/:+:..-oN@@@@@@N@@@doo.+ssososs:                                
echo                             -ss/`  `       -y@@@@@@@@@@@@hh@@@@Nh/oss:                             
echo                           /y+`               h@@@@@@@@@@@@N@@@@@d:o..+y+`                          
echo                         /h/                 `N@@@@@@@@@@@@@@@@@@y.`````:h+                         
echo                       .h+                     +hhd@@@@@@@@@@@@@h-.```````/h-                       
echo                      /h.                        ++oh@@@@Nooooos/+`````````.ho                      
echo                     oy`                         :/yd@N@@@.     ./.``````````ss                     
echo                    +h                             .../@@@+   hy ```..h:``````ys                    
echo                   -@`                                    :h@@/`.-````-.``````.d:                   
echo                   h/                                           s@-..-----.````:@                   
echo                  .N                                              :+yd@@@@N::.``d:                  
echo                  /h                                              ``/s@@@@@@@o.`so                  
echo                  oy                                              ``@@@@@@@@@@s:oy                  
echo                  +h                                              ``@@@@@@@@@@@dhs                  
echo                  .N                                              `.N@@@@@@@@@@@@:                  
echo                   d/                                             `./@@@@@@@@@@y@                   
echo                   -@`                                           ````:h@@@@@@@dd/                   
echo                    oy                                           ```..-d@@@@@dyy                    
echo                     sy                                        ``````h@@@@@N+sy                     
echo                      +h`                                       ````o@@@@@s:ys                      
echo                       -h/`                                   `````o@@@Ns-/d:                       
echo                         +h/                                 ````.s@hh+`:yo`                        
echo                          `+y/                              ```-ydd:``/yo`                          
echo                             :ss:                         ```.sd+.`:sy/                             
echo                               `/ss+-                   `````.--+ss/`                               
echo                                   ./ooo+:-`    `` ``..-/++ssso/.                                   
echo                                        `-:+oooshhyyhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oooosooooo+/:.                                         
echo                                   `:oshdd@Ndsshsy@d@dddhoohyso:`                                   
echo                                :oso:::o-..:s@@@@@@@N@@@yo+-osoysss:                                
echo                             -ss/`           :y@@@@@@@@@@@@hh@@@@@soys:                             
echo                           /y+`                o@@@@@@@@@@@@N@@@@@y/+.+y+`                          
echo                         /h/                   h@@@@@@@@@@@@@@@@@@y`````:h+                         
echo                       .h+                      .hhhN@@@@@@@@@@@@d:.``````/h-                       
echo                      /h.                         -+ooN@@@@hoooos/+.```````.ho                      
echo                     oy`                          .:oh@@@@@y     `+:`````````ss                     
echo                    +h                              `...d@@N   +d.````.y:`````ys                    
echo                   -@`                                    ``sd@h`.-..``-.`````.d:                   
echo                   h/                                            -@o.------.```:@                   
echo                  .N                                               -+yh@@@@@:-``d:                  
echo                  /h                                              ```-+@@@@@@N/`so                  
echo                  oy                                              ```s@@@@@@@@@+oy                  
echo                  +h                                              ```s@@@@@@@@@Nds                  
echo                  .N                                              ```h@@@@@@@@@@@:                  
echo                   d/                                            ````/h@@@@@@@@@@                   
echo                   -@.                                           `````-y@@@@@@N@/                   
echo                    oy                                         ```.``.`-d@@@@@@y                    
echo                     sy                                         ``````y@@@@@ysy                     
echo                      +h`                                      ``````o@@@@@+ys                      
echo                       -h/                                     `````o@@@@//d:                       
echo                         +h+`                                `````.yNhy-:yo`                        
echo                          `+h+                              ````:y@y.`/yo`                          
echo                             :ss:                         ````-yh/.:sy/                             
echo                               `/ss+-                   ``````-:+ss/`                               
echo                                   ./ooo+:-`    ``` `..-:++ssss/.                                   
echo                                        `-:+ooosyhhyyyso+/-`                                        
ping localhost -n 1 >nul
cls
echo                                        .-/+ooooosoooo+/:.                                         
echo                                   `:oshdhd@@hssdod@dd@h@yoyhso:`                                   
echo                                :oso:.:+/..`:y@@@@@@@@@@Nso//osyhss:                                
echo                             -ss/`            :sd@@@@@@@@@@@hh@@@Ndshs:                             
echo                           /y+`                 :@@@@@@@@@@@@N@@@@@oo-+y+`                          
echo                         /h/                    +@@@@@@@@@@@@@@@@@@s````:h+                         
echo                       .h+                        shhd@@@@@@@@@@@@@:.`````/h-                       
echo                      /h.                           +ooh@@@@@ossos++-``````.ho                      
echo                     oy`                            ::yd@N@@@.   ``/:````````ss                     
echo                    +h                                ...:@@@+  .d+`````y:````ys                    
echo                   -@`                                    ```-d@@:.--``...````.d:                   
echo                   h/                                              hh.-----..``:@                   
echo                  .N                                               ``+sh@@@@d:.`d:                  
echo                  /h                                               ```./N@@@@@h.so                  
echo                  oy                                               ```:@@@@@@@@ysy                  
echo                  +h                                             ` ```/@@@@@@@@@@s                  
echo                  .N                                             ` ```o@@@@@@@@@@:                  
echo                   d/                                            `````:s@@@@@@@@@                   
echo                   -@.                                           ```.``-s@@@@@@@/                   
echo                    oy                                          ``.``.``-d@@@NNy                    
echo                     sy                                         ```````y@@@@@hy                     
echo                      +h`                                      ```````o@@@@shs                      
echo                       -h/                                     ``````s@@Ns+d:                       
echo                         +h/.                               ```````-h@yo:yo`                        
echo                          `+ho`                             `````+yd+./yo`                          
echo                             :ss:                         `````/hs-:sy/                             
echo                               `/ss+-                   ``````.:+ss/`                               
echo                                   ./ooo+:-`     `` `..--/+osss/.                                   
echo                                        `-:+ooosyhhyyyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+ooooosoooo+/:.                                         
echo                                   `:oyhdhy@@dsshhsd@ddd@@sshso:`                                   
echo                                :oso:-./o-.`./yN@@@@@@@@@@oo:ooydys:                                
echo                             -ss/`             -sd@@@@@@@@@@@yhN@@@hhs:                             
echo                           /y+`                  .@@@@@@@@@@@@N@@@@N/++y+`                          
echo                         /h/                     .@@@@@@@@@@@@@@@@@@+```:h+                         
echo                       .h+                         :hhh@@@@@@@@@@@@@:.````/h-                       
echo                      /h.                            -+ss@@@@@sssos++-`````.ho                      
echo                     oy`                             .:oy@@@@@o  ```//```````ss                     
echo                    +h                                 `...h@@@   yy`````y-```ys                    
echo                   -@`                                      ```yd@y.--```-.```.d:                   
echo                   h/                                             ``o@-.--....`:@                   
echo                  .N                                               ```/oyN@@@s:`d:                  
echo                  /h                                               ```.`/@@@@@@/so                  
echo                  oy                                               ````.N@@@@@@@yy                  
echo                  +h                                             ` ```..@@@@@@@@Ns                  
echo                  .N                                             ``````:@@@@@@@@@:                  
echo                   d/                                            ``````-o@@@@@@@@                   
echo                   -@.                                            ``````.s@@@@@@/                   
echo                    oy                                          ```.````.-@@@@@y                    
echo                     sy                                         ````````h@@@@@y                     
echo                      +h`                                      ````````y@@@d@s                      
echo                       -h/                                    ```````.h@@dod:                       
echo                         +h:-`                              ```````.:@hy/yo`                        
echo                          `+ys`                             `````.ohh:/yo`                          
echo                             :ss:                         `````.+y+:sy/                             
echo                               `/ss+-                   ``````.:+ss/`                               
echo                                   ./ooo+:-`     ````..--/oosss/.                                   
echo                                        `-:+ooosshhyyyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+ooooosoooo+/:.                                         
echo                                   `:oyhhhyhddhssdsy@dd@dNhsyyo:`                                   
echo                                :oso:-`:+o.``./hN@@@@N@@@@ho+/oydhs:                                
echo                             -ss/`              -sd@@@@@@@@@@@yd@@@Nhy:                             
echo                           /y+`                    @@@@@@@@@@@NN@@@@yooy+`                          
echo                         /h/                       d@@@@@@@@@@@@@@@@N-``:h+                         
echo                       .h+                          `hhh@@@@@@@@@@@@@:.```/h-                       
echo                      /h.                              +sod@@@@dsssyo/-````.ho                      
echo                     oy`                               ::yd@N@@d ````:/``````ss                     
echo                    +h                                   ...:@@@:``+d.```.y.``ys                    
echo                   -@`                                       ```/d@@--:```-.``.d:                   
echo                   h/                                             ```:@:......`:@                   
echo                  .N                                              ``.``:ohN@@@:.d:                  
echo                  /h                                              ``.````/d@@@@hso                  
echo                  oy                                              ```````@@@@@@@hy                  
echo                  +h                                              ``.````N@@@@@@@s                  
echo                  .N                                              ``````-@@@@@@@@:                  
echo                   d/                                             ``````.o@@@@@@@                   
echo                   -@`.                                         ` ```````.y@@@@@/                   
echo                    oy                                          ```.`````.:N@@@y                    
echo                     sy                                        `````````.d@@@@y                     
echo                      +h`                                      ````````.d@@NNs                      
echo                       -h/                                    ````````-@@@hd:                       
echo                         +h:`:                              ````````.+dysyo`                        
echo                          `+yo-                             ``````-yho/yo`                          
echo                             :ss:                         ``````-ss+sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+:-`      ````.--:+osso/.                                   
echo                                        `-:+ooossyhhsyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                 
echo                                         .-/+oooooosooo+/:.                                         
echo                                   `:oyhhyysdddysydsh@dd@N@ysyo:`                                   
echo                                :oso::.`/o/```-+hN@@@@NN@@@so++sdds:                                
echo                             -ss/`               -od@@@@@@@@@@Ny@@N@dy:                             
echo                           /y+`                     h@@@@@@@@@@NN@@@Noyy+`                          
echo                         /h/                        o@@@@@@@@@@@@@@@@d.`:h+                         
echo                       .h+                            ohhd@@@@@@@@@@@@-```/h-                       
echo                      /h.                               -osy@@@@@sysyo/.```.ho                      
echo                     oy`                                .:+h@@@@@-````:/`````ss                     
echo                    +h                                    `...h@@y``:d-```-o``ys                    
echo                   -@`                                        ```.h@N/-:```-``.d:                   
echo                   h/                                             ```..@+......:@                   
echo                  .N                                              ``````-ohN@@h-d:                  
echo                  /h                                              ````````:d@@@Nho                  
echo                  oy                                              ````````@@@@@@Ny                  
echo                  +h                                              ````````@@@@@@@s                  
echo                  .N                                              ```````.@@@@@@@:                  
echo                   d/                                             ```````.o@@@@@@                   
echo                   -@`.`                                        ``````````.h@@@@/                   
echo                    oy                                          ````.`````.o@@@y                    
echo                     sy`                                       ``````````-N@@@y                     
echo                      +d.                                       ````````-@@@@s                      
echo                       -h/                                    `````````/NN@d:                       
echo                         +h: -.                              ````````-yhhho`                        
echo                          `+y+:`                            ```````/yyoyo`                          
echo                             :ss:                         ``````./sssy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+:-`      ````.--:+osso/.                                   
echo                                        `-:+ooossyhhysso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooosooo+/:.                                         
echo                                   `:oyddyssyd@hssdho@@d@@@hsso:`                                   
echo                                :syo::- `+o:```-+dN@@@@@N@@@o+oshds:                                
echo                             -sy/.                -odN@@@@@@@@@@yN@@@s:                             
echo                           /y+`                      o@@@@@@@@@@N@@@@hyh+`                          
echo                         /h/                         -@@@@@@@@@@@@@@@@o`:h+                         
echo                       .h+                             -hhhN@@@@@@@@@@d.``/h-                       
echo                      /h.                                `+ssN@@@@yysy+/.``.ho                      
echo                     oy`                                  ::y@@N@@+````::````ss                     
echo                    +h                                      ...+@@N...d:```/:`ys                    
echo                   -@`                                          ```sd@o--``.-`.d:                   
echo                   h/                                             ``````d+.....:@                   
echo                  .N                                              ```.```-oh@@@/@:                  
echo                  /h                                              `````````:@@@@@o                  
echo                  oy                                              `````````@@@@@@y                  
echo                  +h                                              `````````@@@@@@s                  
echo                  .N                                              ````````.@@@@@@:                  
echo                   d/                                             ````````.s@@@@@                   
echo                   -@` -                                         ``````````-@@@@/                   
echo                    oy                                         ` ```.``````-h@@y                    
echo                     sh.                                       ```````````/@@@y                     
echo                      +@-                                       `````````+@@@s                      
echo                       -d/                                    `````````.s@N@:                       
echo                         +h:  /`                             `````````/yh@o`                        
echo                          `+y/:-                            ```````.oyyyo`                          
echo                             :ss:                         ```````-+yyy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+:-`       ```.--:/osso/.                                   
echo                                        `-:+ooossyyhysso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@dyosod@@ysydyyN@d@@@sso:`                                   
echo                                :syo/:-` .so.```:+d@@@@@@@@@h+oyhds:                                
echo                             -sy+.                 -+dN@@@@@@@@@hh@@Ns:                             
echo                           /y+`                       /@@@@@@@@@@N@@@@hh+`                          
echo                         /h/                           @@@@@@@@@@@@@@@N-:h+                         
echo                       .h+                              `yhd@@@@@@@@@@@s.`/h-                       
echo                      /h.                                  :ssd@@@@yyyy//``.ho                      
echo                     oy`                                   ./od@N@@y````/-```ss                     
echo                    +h                                       `-.-N@@:`.h:```+.ys                    
echo                   -@`                                           `../d@s--``...d:                   
echo                   h/                                              ```.``h+....:@                   
echo                  .N                                               ```````-oh@@y@:                  
echo                  /h                                               `````````/@@@@o                  
echo                  oy                                              ``````````N@@@@y                  
echo                  +h                                              ``````````N@@@@s                  
echo                  .N                                               ````````-@@@@@:                  
echo                   d/                                            ``````````-h@@@@                   
echo                   -@` `.                                        ```````````/@@@/                   
echo                    oh`                                         ``.``.`````./N@y                    
echo                     s@-                                        ```````````h@@y                     
echo                      +N+                                      ``````````.h@@s                      
echo                       -d+                                     `````````:@@@:                       
echo                         +h:  `/`                            `````````.odNo`                        
echo                          `+y/./`                           ````````:shho`                          
echo                             :ss:                         ```````./ydy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+:-`       ````.-:/osso/.                                   
echo                                        `-:+ooossyyhysso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                 
echo                                         .-/+ooooooosoo+/:.                                         
echo                                   `:oy@@yo+oy@@dsshdo@NdNNNyso:`                                   
echo                                :ohs/:-.  :s+````/+@@@@@N@@@Nooyhds:                                
echo                             -sy+-`                 -+dN@@@@@@@@NyN@Ny:                             
echo                           /y+`                        -@@@@@@@@@@N@@@@d+`                          
echo                         /h/                            s@@@@@@@@@@@@@@y:h+                         
echo                       .h+                                +ddd@@@@@@@@@N/`/h-                       
echo                      /h.                                   .+hy@@@@hyyy::`.ho                      
echo                     oy`                                    `//h@N@@d````+.``ss                     
echo                    +h                                         ---y@@+`.y:``-/ys                    
echo                   -@`                                            `.-:d@y--``-.d:                   
echo                   h/                                             `````.``d/...:@                   
echo                  .N                                               ```.````-sd@N@:                  
echo                  /h                                               `````````.o@@@o                  
echo                  oy                                               `````````.@@@@y                  
echo                  +d`                                            ` `````````-@@@@s                  
echo                  .@`                                            ` `````````/@@@@:                  
echo                   d/                                            ```````````-N@@@                   
echo                   -@`  ..                                       ```````````.y@@/                   
echo                    o@.                                         ``.`````````-h@y                    
echo                     sN+                                        ```````````:N@y                     
echo                      +@h`                                     ```````````/N@s                      
echo                       -@h                                    ``````````.s@@:                       
echo                         +h:   `+                           ```````````/hNo`                        
echo                          `+y/ ::                           ````````.oddo`                          
echo                             :ss:                         ````````-ody/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+:-`       ``.`.-:/osso/.                                   
echo                                        `-:+oooosyyyhsso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@Nhs++od@@ysydysNN@N@hso:`                                   
echo                                :ohy+:--`  +s+````/o@@@@@NN@@hoyhhs:                                
echo                             -ss+-`                  -+hN@@@@@@@@dh@Ny:                             
echo                           /y+`                         .N@@@@@@@@N@@@Nd+`                          
echo                         /h/                             /@@@@@@@@@@@@@@+h+                         
echo                       .h+                                 :ddd@@@@@@@@@d./h-                       
echo                      /h.                                     +hyN@@@dhyy:-.ho                      
echo                     oy`                                      ::y@N@@@.``.+``ss                     
echo                    +h                                          .--o@@s`.y-``/ys                    
echo                   -@`                                            ``.--h@y--`..d:                   
echo                   h/                                             ``.``..``d-../@                   
echo                  .N                                              ``.```````:yN@N:                  
echo                  /h                                               ``````````.h@@o                  
echo                  oy                                               ``````````/@@@y                  
echo                  +@-                                            ` ``````````+@@@s                  
echo                  .@:                                            ````````````y@@@:                  
echo                   do                                            ````````````+@@@                   
echo                   -N.   -`                                       ```````````-N@/                   
echo                    o@/                                         ```.````````.+@y                    
echo                     s@y.                                       ````````````y@y                     
echo                      +@N:                                     ```````````.h@s                      
echo                       -@N.                                   ```````````:@@:                       
echo                         +d/    .+                          ```````````-sNo`                        
echo                          `+h/ `/-                          `````````/h@o`                          
echo                             :ss:                         ````````.ody/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+:-`        `.`.-:/osso/.                                   
echo                                        `-:+oooosyyyhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@Nds+:os@@dsshdodN@NN@so:`                                   
echo                                :oyd+:--.   ss/```./oN@@@@@N@Nsydys:                                
echo                             -ss/-.                   -ohN@@@@@@@@hNNy:                             
echo                           /h+`                          `d@@@@@@@@@@@@@+`                          
echo                         /h/                              .N@@@@@@@@@@@@hh+                         
echo                       .h+                                  `hddN@@@@@@@@++h-                       
echo                      /h.                                      :yy@@@@dhyo:.ho                      
echo                     oy`                                       ./odNN@@.``::`ss                     
echo                    +h                                           .::/@@s`.y.`-hs                    
echo                   -@`                                            ```---y@s-.`-d:                   
echo                   h/                                             ``````....d../@                   
echo                  .N                                              ```````````+h@@:                  
echo                  /h                                              ``.`````````:@@o                  
echo                  oy                                              ````````````y@@y                  
echo                  +N+                                             ````````````h@@s                  
echo                  .N+                                             ```````````.N@@:                  
echo                   ds                                             ```````````.d@@                   
echo                   -@/    :`                                    ` ````````````y@/                   
echo                    o@y`                                        ```.`````````-@y                    
echo                     s@N/                                      `````````````/Ny                     
echo                      +@@h`                                    ````````````+Ns                      
echo                       -@@o                                   ```````````.y@:                       
echo                         +@+`    -+                         ```````````.o@o`                        
echo                          `+h/  ./.                         `````````-y@o`                          
echo                             :ss:                         `````````/hh/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+/-`        `...-:/osso/.                                   
echo                                        `-:+oooosyyyyyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@N@s+::oh@@hss@hyNN@N@yo:`                                   
echo                                :osds/--.`   yo:```.+oN@@@NN@@hydys:                                
echo                             -sy/-.`                   -ohN@@@@@@N@dNy:                             
echo                           /hs.                           `h@@@@@@@NN@@@+`                          
echo                         /h/                               `@@@@@@@@@@@@Nh+                         
echo                       .h+                                   `yddN@@@@@@@d+h-                       
echo                      /h.                                       .sh@@@@dhh/:ho                      
echo                     oy`                                        `/+dNN@d.``/.ss                     
echo                    +h                                           ``:::N@s`-o``ds                    
echo                   -@`                                            ````---y@o-.-d:                   
echo                   h/                                             ```.```...:s./@                   
echo                  .N                                              ```````````.sN@:                  
echo                  /h                                              ````````````.h@o                  
echo                  oh                                              ````````````.@@y                  
echo                  +ds.                                            ````````````-@@s                  
echo                  .No.                                            ````````````+@@:                  
echo                   ds-                                            ````````````/@@                   
echo                   -No     :`                                    ``.``````````/@/                   
echo                    o@N-                                         ```.````````.yy                    
echo                     s@@y-                                     `````````````.dy                     
echo                      +@@@/                                     ```````````-@s                      
echo                       -dN@`                                  ```````````.o@:                       
echo                         +ds.     -+                         ```````````/do`                        
echo                          `+h/   :/`                        `````````.odo`                          
echo                             :ss:                         `````````:yy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+/-`        `...-:/osso/.                                   
echo                                        `-:+oooooyyyyyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@Nho/-+s@@dyshdy@NNN@yo:`                                   
echo                                :osyy+--..   `ho-```-+sN@@@NN@@hdhs:                                
echo                             -sd+.-.                    -ohN@@@@@@@@Ny:                             
echo                           /hy:                            `h@@@@@@@@@@@+`                          
echo                         /h/                                 h@@@@@@@@@@@@+                         
echo                       .h+                                    `od@N@@@@@@Nyh-                       
echo                      /h.                                        `odd@@@dhs:ho                      
echo                     oy`                                          //hNN@h``-:ss                     
echo                    +h                                           ```:::@@o`/:`hs                    
echo                   -@`                                           `````..--y@/-.d:                   
echo                   h/                                              ```````...s-/@                   
echo                  .N                                              ````````````:d@:                  
echo                  /h                                              ```.`````````/@o                  
echo                  oy.                                             `````````````s@y                  
echo                  +hs+                                            `````````````y@s                  
echo                  .N:o`                                           `````````````@@:                  
echo                   dy+                                           `````````````.@@                   
echo                   -@s:     :.                                   `````````````.N/                   
echo                    o@@s`                                        ```.`````````sy                    
echo                     s@@N/`                                    ``````````````yy                     
echo                      +@@@@.                                    ```````````.hs                      
echo                       -d@Ns                                   ```````````/d:                       
echo                         +hy:      .o                        ```````````:ho`                        
echo                          `+y+    /:`                       `````````.+ho`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oooo+-.         `..-:/osso/.                                   
echo                                        `-:+oooooyyysyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                 
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@Nds/:-oh@@hss@hhNNN@ho:`                                   
echo                                :osyho:-..`   .do.```:+sN@@@N@Nddhs:                                
echo                             -s@s`.-`                    :odN@@@@@NN@y:                             
echo                           /hy/                             `y@@@@@@NN@@+`                          
echo                         /h/                                  y@@@@@@@@@@N+                         
echo                       .ho                                     `+@@N@@@@@@@d-                       
echo                      /h.                                        ``+dd@@@hh/do                      
echo                     oy`                                          `//yNN@s``/ss                     
echo                    +h                                            ```-::@@/`o.ys                    
echo                   -@`                                           ```.``..--hd-.d:                   
echo                   h/                                              ````````...s:@                   
echo                  .N                                               ```````````.s@:                  
echo                  /h                                               ````````````.No                  
echo                  oy-                                              ````````````-@y                  
echo                  +h+o:                                            ````````````:@s                  
echo                  .N.s:                                          ` ````````````o@:                  
echo                   dh/:                                          ` ````````````s@                   
echo                   -@ys      -.                                  `````````````.d/                   
echo                    o@@N:`                                      ``.``.````````sy                    
echo                     s@@@d:`                                    `````````````oy                     
echo                      +@@@@h`                                  ````````````.ys                      
echo                       -dy@N:                                  ```````````/d:                       
echo                         +hs/.      .o                       ```````````:yo`                        
echo                          `+y+`   `+-                       ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oooo+:.         `...:/osso/.                                   
echo                                        `-:+ooooosyyssso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@dh+:-:sd@@ysh@h@@N@ho:`                                   
echo                                :syysh+-...`   .@+````/oy@@@NN@N@ds:                                
echo                             -sNh-`:.                     :odN@@@@N@@y:                             
echo                           /dho.                            `.y@@@@@@N@@+`                          
echo                         /h/                                   s@@@@@@@@@N+                         
echo                       .hs                                      ./@@N@@@@@Nd-                       
echo                      /h.                                        ```+d@@@Nhsdo                      
echo                     oy`                                         ```:/yNN@/`-ys                     
echo                    +h                                            ````-::@N--/ys                    
echo                   -@`                                            ``.````.-:ds.d:                   
echo                   h/                                             ``.```````..+/@                   
echo                  .N                                               ````````````/N:                  
echo                  /h                                               `````````````ho                  
echo                  od -                                             `````````````dy                  
echo                  +h`ho.                                         ` `````````````@s                  
echo                  .N /s.                                         ` ````````````-@:                  
echo                   ds+s                                          ``````````````/@                   
echo                   -NN/+      --                                 `````````````.d/                   
echo                    o@@@@.     `                                ``.```````````sy                    
echo                     s@@@@y-                                    `````````````oy                     
echo                      +@@@@@s                                  ````````````.ys                      
echo                       -dohN@.                                ````````````/d:                       
echo                         +h/o/       `s`                    ````````````:yo`                        
echo                          `+y/.    .+-                      ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oooo+/-`        `...:/osso/.                                   
echo                                        `-:+ooooooyyssso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                 
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@hs::.+y@@hsy@dd@N@ho:`                                   
echo                                :syhohs/...`    :d+```.+oh@@@NN@Nds:                                
echo                             -sN@+ .:`                     /sd@@@@@@Ny:                             
echo                           /dds/                             `.h@@@@@N@@+`                          
echo                         /d+`                                  `s@@@@@@@@N+                         
echo                       .hy.                                     `./@@N@@@@@@-                       
echo                      /h.                                        ````/d@@@@hdo                      
echo                     oy`                                         ````-/sNN@..hs                     
echo                    +h                                            `````-//Nd./ys                    
echo                   -@`                                            ```.````-:+d-d:                   
echo                   h/                                             ``````````...s@                   
echo                  .N                                              ``.``````````.N:                  
echo                  /h`                                              `````````````yo                  
echo                  oy.-`                                            `````````````yy                  
echo                  +h oso`                                        ```````````````ys                  
echo                  .N .oo.                                        ```````````````@:                  
echo                   d/y-s                                          `````````````:@                   
echo                   -NNsy.      .:                               ` ````````````.d/                   
echo                    o@@@@y`     `                               ```.``.```````sy                    
echo                     s@@@@@s-                                  ``````````````oy                     
echo                      +@@@@@@+                                 ````````````.ys                      
echo                       -do+N@h`                               ````````````/d:                       
echo                         +h:/o-        s.                   ````````````:yo`                        
echo                          `+y/.`    .+-                     ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./osso+/-`        ``.--/osso/.                                   
echo                                        `-:+ooooooyyssso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@Nhy+::.sh@@ysd@dN@@ho:`                                   
echo                                :shhsod+-..``    /d/```-+o@@@NN@Nds:                                
echo                             -sN@y. --                     `+s@@@@@@Ny:                             
echo                           /dNyo.                             `-d@@@@N@@+`                          
echo                         /dy.                                  ``s@@@@@@@N+                         
echo                       .hs:                                     ``-/@NN@@@@@-                       
echo                      /d.                                        `````+dN@@d@o                      
echo                     oh`                                         `````-+yN@s`ys                     
echo                    +h`                                          ```````-/+@o-hs                    
echo                   -N`                                            ```.`````-:yod:                   
echo                   h/                                             ```````````..s@                   
echo                  .N                                              ``````````````@:                  
echo                  /h.                                             ``````````````so                  
echo                  oy: :                                           ``````````````oy                  
echo                  +d  do+`                                        ``.```````````ss                  
echo                  .N  :y+`                                        ``````````````d:                  
echo                   d/+o//                                         `````````````:@                   
echo                   -@d@-d       `/.                             ` ````````````.d/                   
echo                    o@@@@No`     `                              ```.``````````sy                    
echo                     s@@@@@@+-                                 ``````````````oy                     
echo                      +@@@@@@@+                                ````````````.ys                      
echo                       -do-d@@y                               ````````````/d:                       
echo                         +h:`so`        o:                  ````````````:yo`                        
echo                          `+y/`-     -+-                    ``````````/yo`                          
echo                             :ss:     ``                  `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./osso+/:.        ``.--/osso/.                                   
echo                                        `-:+osoooosyssso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@dyy::--yd@dsy@@@N@yo:`                                   
echo                                :sdhy+sh/..```    +d:```:osN@@N@@@s:                                
echo                             -sN@@+  :.                     `oyN@@@@Ny:                             
echo                           /dNho+                             `.:@@@@@@@+`                          
echo                         /dd:                                  ``.s@@@@@@N+                         
echo                       .ho+`                                    ```-+@N@@@@@-                       
echo                      /@:                                        ``````o@N@@@o                      
echo                     od`                                          `````:/hNN:ss                     
echo                    +h.                                          ````````:/s@-ds                    
echo                   -N-                                           ` ```.````.:/hd:                   
echo                   h/                                             ````````````.+@                   
echo                  .N                                              ```.``````````d:                  
echo                  /@``                                            ``````````````so                  
echo                  od-``-                                          ``````````````oy                  
echo                  +d` .@++`                                       ``````````````ss                  
echo                  .N   /h+`                                       ``````````````d:                  
echo                   d/`h:s:                                        `````````````:@                   
echo                   -@+@d-h        ::                             `````````````.d/                   
echo                    oN@@N@N+`      `                             ```.`````````sy                    
echo                     s@@@@@@@+-                                ``````````````oy                     
echo                      +@@@@@@@@+                                ```````````.ys                      
echo                       -do.+N@@s                              ````````````/d:                       
echo                         +h: :y+         /+                  ```````````:yo`                        
echo                          `+y/ `.     -+-                   ``````````/yo`                          
echo                             :ss:      ``                 `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./osys+//.`       ``.--/osso/.                                   
echo                                        `-:+osssoooyssso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@@yyo::.+h@@yy@@@N@yo:`                                   
echo                                :sd@ys/hs:.```    `sh-``./oy@@NN@@s:                                
echo                             -sN@@h. `/`                    `-shN@@@Ny:                             
echo                           /dN@ss-                            ``./@@@@@@+`                          
echo                         /@do`                                 ```.y@@@@@N+                         
echo                       .ds//                                    ```.-oNN@@@@-                       
echo                      /No                                        ```````y@@@@o                      
echo                     o@.                                          ``````:/@Nsss                     
echo                    +h.                                           ````````//dohs                    
echo                   -@/                                           ```.``.````.:y@:                   
echo                   h/                                              ```````````./@                   
echo                  .N`                                              `````````````d:                  
echo                  /N`.                                            ``````````````so                  
echo                  oN-/ .-                                         ``````````````oy                  
echo                  +h-  /d++`                                      ``````````````ss                  
echo                  .N   `+h+.                                      ``````````````d:                  
echo                   d/ /h`y-                                      ``````````````:@                   
echo                   -@-d@s/y        ./`                           `````````````.d/                   
echo                    ohN@@N@N+       `                          ` ```.`````````sy                    
echo                     sN@@@@@@@+-                                `````````````oy                     
echo                      +N@@@@@@@@o                               ```````````.ys                      
echo                       -ds.-y@@@s                              ```````````/d:                       
echo                         +h:  oh/         .y                 ```````````:yo`                        
echo                          `+y/  -`     -+-                  ``````````/yo`                          
echo                             :ss:       ``                `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./osys+//:`       ``.-:/osso/.                                   
echo                                        `-:+osssooosssoo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@Nhsh+::`yh@dydN@@@ho:`                                   
echo                                :sdNhy+/do-````    `yh.``.+sh@NN@@s:                                
echo                             -sN@@No` ./                     `/yd@@@Ny:                             
echo                           /d@@d+s`                           ```-oN@@@@+`                          
echo                         /@dh-                                 ````-d@@@@N+                         
echo                       .dh:o`                                   ````.-sN@@@@-                       
echo                      /Nh`                                       ```````.dN@No                      
echo                     o@o                                          ```````/+Ndys                     
echo                    +d-`                                          ````````./odys                    
echo                   -@/`                                          ```.``.`````:/@:                   
echo                   h/                                              ```````````./@                   
echo                  .N`                                              `````````````d:                  
echo                  /d/``                                            `````````````so                  
echo                  oN+-- -.                                         `````````````oy                  
echo                  +d-   oh++.                                      `````````````ss                  
echo                  .N    .+h+.                                    ` `````````````d:                  
echo                   d/  sy h-                                     ``````````````:@                   
echo                   -@`oN@/+y         :-                          `````````````.d/                   
echo                    oyh@@@N@No       ``                         ``.``.````````sy                    
echo                     sdN@@@@@@@o-                               `````````````oy                     
echo                      +@N@@@@@@@@s                             ````````````.ys                      
echo                       -dy--:@@@@s`                            ```````````/d:                       
echo                         +h:  `yh:          y.               ```````````:yo`                        
echo                          `+y/   :`     .+-`                ``````````/yo`                          
echo                             :ss:        ``               `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./osyyo///.       ```-:/osso/.                                   
echo                                        `-:+ossssoosssoo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@NNdsyy/:--hddhh@NNdho:`                                   
echo                                :sd@@ys:sho.````    `hy.`.:os@@@@@s:                                
echo                             -sN@@@@:  -:                    `.+y@@@Ny:                             
echo                           /d@N@y+o                           ```.:y@@@@+`                          
echo                         /@Ndo                                 `````:@@@@N+                         
echo                       .dN/-o                                   `````.:hN@@@-                       
echo                      /N@/                                       ````````:@@No                      
echo                     oNh`                                        ````````.+yNds                     
echo                    +@--                                          `````````-/hds                    
echo                   -@./                                           ```.```````.:N:                   
echo                   h/                                             ``.``````````/@                   
echo                  .N`                                              `````````````d:                  
echo                  /ds .`                                           `````````````so                  
echo                  o@y./` --                                        `````````````oy                  
echo                  +h--   sd++-                                   ` `````````````ss                  
echo                  .N     -+h+-`                                  ```````````````d:                  
echo                   d/  `ys h:                                    ``````````````:@                   
echo                   -@`.h@@:+h         ./`                        `````````````.d/                   
echo                    oy:@@@@N@Ns        `                        ``````````````sy                    
echo                     syd@@@@@@@@y-`                             `````````````oy                     
echo                      +hh@@@@@@@@@d                            ````````````.ys                      
echo                       -hy:--+N@@@s`                          ````````````/d:                       
echo                         +h:   -hd-          o/             ````````````:yo`                        
echo                          `+y/    /      .+-`               `````````./yo`                          
echo                             :ss:         ``              `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooyhs///-`      ```-:/osso/.                                   
echo                                        `-:+osyssooossoo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@NN@yshs::.+hddh@NNdho:`                                   
echo                                :sd@Nys+-hy+`````    .ds.../syN@@@s:                                
echo                             -sN@@@@h-  :-                   ``-shN@Ny:                             
echo                           /d@@@d++/                          ````-/@@@@+`                          
echo                         /@@hd:                                ``````oN@@N+                         
echo                       .d@s-//                                  ``````-/@@@@-                       
echo                      /NNy`                                       ````````yN@o                      
echo                     o@h+                                        `````````-+NNs                     
echo                    +@+.`                                        ```````````/oNs                    
echo                   -N-/.                                          ```.````````:@:                   
echo                   hs                                             `````````````:@                   
echo                  .N `                                            ``.```````````d:                  
echo                  /h/+ -                                          ``````````````so                  
echo                  ohd+`o  --                                       `````````````oy                  
echo                  +h-:`   sd++/                                   ``````````````ss                  
echo                  .N      -+ho/`                                  ``````````````d:                  
echo                   d/   -ys y+                                    `````````````:@                   
echo                   -@` /d@@:/@          /:                      ` ````````````.d/                   
echo                    oy d@@@NN@Nh        ``                      ```.``````````sy                    
echo                     sy+@@@@@@@@@@-`                           ``````````````oy                     
echo                      +h+N@@@@@@@@@N`                          ````````````.ys                      
echo                       -ho+--:o@@@@y-                         ````````````/d:                       
echo                         +h:    :hd-          :s            ````````````:yo`                        
echo                          `+y/    `/      `+:`              ``````````/yo`                          
echo                             :ss:          .``            `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oosyy+//:.      ```.:/osso/.                                   
echo                                        `-:+osyysooossoo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@N@dsyho::`yddhdNNdyo:`                                   
echo                                :sd@@@ss:-dy/````     -@+..-oyd@@@s:                                
echo                             -sN@@@@@s`  /.                  ``./yd@Ny:                             
echo                           /d@@Ndh/o:                         `````:sN@@+`                          
echo                         /@@Nhh`                               ``````.y@@N+                         
echo                       .d@@/`o-                                 ```````:s@@@-                       
echo                      /N@@+                                      `````````-@@o                      
echo                     o@Nh.                                        `````````/y@s                     
echo                    +@y.-                                        ```````````.+@s                    
echo                   -@+`s                                          ````.```````-d:                   
echo                   hd                                             ```.`````````:@                   
echo                  .N `                                            ``````````````d:                  
echo                  /d-y` -                                         ``````````````so                  
echo                  ohyy:`o  -:                                     ``````````````oy                  
echo                  +d-./    +N+++`                                 ``````````````ss                  
echo                  .N       .+hs+``                                ``````````````d:                  
echo                   d/    :ys oy                                   `````````````:@                   
echo                   -@`  o@@@::@.         ./.                    ``````````````.d/                   
echo                    oy -@@@@N@@N@.        ``                    ````.`````````sy                    
echo                     sy.@@@@@@@@@@@:.                          ``````````````oy                     
echo                      +h-d@@@@@@@@@@@:                         ````````````.ys                      
echo                       -h/+:-::s@@@@d:                        ````````````/d:                       
echo                         +h:    `/d@:          `y.           ```````````:yo`                        
echo                          `+y/     `/      `+:.             `````````./yo`                          
echo                             :ss:           .``           `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oosyyo//:-`     ```.-/osso/.                                   
echo                                        `-:+osyyssoossoo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@N@@yshs+:-:hdddNN@yo:`                                   
echo                                :od@@@hso-/dy-````    `/@/.-/syN@@s:                                
echo                             -s@@N@@@No`  /.                 ``.-ohNNy:                             
echo                           /d@@@@dh:s-                        `````./d@@+`                          
echo                         /@@@hdo                               ```````/@@N+                         
echo                       .d@@y-`s.                                ```````./d@@-                       
echo                      /N@@h-                                     `````````.yNo                      
echo                     o@@hy                                        `````````.o@s                     
echo                    +Nh/`-                                       ````````````/hs                    
echo                   -@h`.o                                        ` ```.```````.d:                   
echo                   hN-                                            `````````````:@                   
echo                  .@. .                                           ```.``````````d:                  
echo                  /d-:h `-                                        ``````````````so                  
echo                  od/@o-.o  ./                                    ``````````````oy                  
echo                  +d.:.:    :@o++-`                               ``````````````ss                  
echo                  .N        `+yh+-`                               ``````````````d:                  
echo                   d/     :yy`/@`                                 `````````````:@                   
echo                   -@`  `s@@@+`N/          :/                    `````````````.d/                   
echo                    oy  s@@@@@@@N@/        ``                    ```.`````````sy                    
echo                     sy +@@@@@@@@@@@o.`                        ``````````````oy                     
echo                      +h`/@@@@@@@@@@@@s                         ```````````.ys                      
echo                       -h/-s-:::y@@@@@/                       ````````````/d:                       
echo                         +h:     `/d@:           o/          ```````````:yo`                        
echo                          `+y/      ./       +/-            ``````````/yo`                          
echo                             :ss:            `.`          `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oossys+/::.     ```.-/osso/.                                   
echo                                        `-:+osyhysooosoo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@N@@dsyhs/:.oh@d@N@yo:`                                   
echo                                :sd@@@Nys+.+hy.````    `o@--:oyd@@s:                                
echo                             -s@NN@@@@N+   /.                ```./y@Ny:                             
echo                           /d@@@@dhy-s-                       ``````:sN@+`                          
echo                         /@@@@s@/                              ```````.y@N+                         
echo                       .d@@N/.`y.                               ````````-s@@-                       
echo                      /N@@Ny`                                    `````````./No                      
echo                     o@@Ns+                                       ``````````/@s                     
echo                    +@yy-..                                       ```````````-ys                    
echo                   -@@- //                                       ```.``.``````.d:                   
echo                   h@y                                             ```.````````:@                   
echo                  .N: ``                                           `````````````d:                  
echo                  /d:-oo `:                                       ``````````````so                  
echo                  oh:yd+..o  `/.                                  ``````````````oy                  
echo                  +h/.---    `@y+++`                              ``````````````ss                  
echo                  .N          +odo+``                             ``````````````d:                  
echo                   d/      :yy.`@/                               ``````````````:@                   
echo                   -@`   .s@@@s dh          `/-                  `````````````.d/                   
echo                    oy  `d@@@@@@N@@y         ``                  `.``.````````sy                    
echo                     sy `d@@@@@@@@@@@d.`                        `````````````oy                     
echo                      +h``h@@@@@@@@@@@@N`                      ````````````.ys                      
echo                       -h/ o+:::/y@@@@@+.                      ```````````/d:                       
echo                         +h:      `/dN/`          :s         ```````````:yo`                        
echo                          `+y/       .+       //-           ``````````/yo`                          
echo                             :ss:             `.`         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./osssyyo/::-`    ```.-/osso/.                                   
echo                                        `-:+osyhyyooosoo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@N@@@hshys::-y@@@N@ho:`                                   
echo                                :sd@@@@@so:.syy`````    .sh--/shN@s:                                
echo                             -sNNN@@@@@@/   /.               ```.:odNy:                             
echo                           /d@@@@@dhs.s.                      ``````.+d@+`                          
echo                         /@@@@Ns@:                             ````````/@N+                         
echo                       .d@@@@:`.y.                              ````````.+@@-                       
echo                      /N@@@ds                                    ``````````:@o                      
echo                     o@@@dy/                                     ```````````-hs                     
echo                    +@@h+`-`                                      ```````````.ys                    
echo                   -N@y. o/                                       ``.`````````.d:                   
echo                   hyN-                                            ````````````:@                   
echo                  .N/  ``                                          `````````````d:                  
echo                  /d+.:h/ `:                                       `````````````so                  
echo                  oy+/@h+..s`  ::                                  `````````````oy                  
echo                  +h:.:.:-     d@+++-`                           ` `````````````ss                  
echo                  .N           :+hy+-`                           ` `````````````d:                  
echo                   d/       -yy/ yh                              ``````````````:@                   
echo                   -@`    -sd@@d o@`          -/`                `````````````.d/                   
echo                    oy   .@@@@@@@N@@@.        ``                ``.``.````````sy                    
echo                     sy  -N@@@@@@@@@@@N:.                       `````````````oy                     
echo                      +h` -N@@@@@@@@@@@@@/                     ````````````.ys                      
echo                       -h/ .y/:://s@@@@@s:                     ```````````/d:                       
echo                         +h:       `/dNo`          `y.      ````````````:yo`                        
echo                          `+y/        `+       :+-`         ``````````/yo`                          
echo                             :ss:              `.`        `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ossssys/:::.    ```.-/osso/.                                   
echo                                        `-:+osyhhysooooo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@N@@@@yshs+:-+dN@N@ho:`                                   
echo                                :sdN@@@@hso-.ysy`````   `-hs-:oyd@s:                                
echo                             -sNNNN@@@@@@:   /`              ````-/h@y:                             
echo                           /d@@@@@@hhs.s-                     ``````./y@+`                          
echo                         /@@@@@ds@-                            ````````-yN+                         
echo                       .d@@@@h. .y.                             `````````:y@-                       
echo                      /N@@@@ho                                   ``````````-ho                      
echo                     o@@@@hy:                                    ```````````.hs                     
echo                    +@@sd: -`                                     ````````````ys                    
echo                   -@@@:` s/                                      ```.````````.d:                   
echo                   h+@d                                           ``.``.```````:@                   
echo                  .N:-  ``                                         `````````````d:                  
echo                  /h-/-:d:  :`                                     `````````````so                  
echo                  oy/:+Ny/.`s.  ./`                                `````````````oy                  
echo                  +h`/`/`/-     +@s+++``                         ` `````````````ss                  
echo                  .N            .+ydo+``                         ```````````````d:                  
echo                   d/        `yyo /@-                            ``````````````:@                   
echo                   -@`     -sh@@@..@o           //                ````````````.d/                   
echo                    oy    .N@@@@@N@@N@o         ``              ```.``.```````sy                    
echo                     sy   /@@@@@@@@@@@@Ny.`                     `````````````oy                     
echo                      +h`  +@@@@@@@@@@@@@@d                    ````````````.ys                      
echo                       -h/  :h::///s@@@@@d+                   ````````````/d:                       
echo                         +h:        `:dNy.           s/     ````````````:yo`                        
echo                          `+y/         `o`      -+-`        ``````````/yo`                          
echo                             :ss:               `.`       `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./osysssyo:::-    ```.-/osso/.                                   
echo                                        `-:+osyhhysooooo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@N@dN@hsyys/::yNNN@ho:`                                   
echo                                :sdN@@@@@yo+..yss````    ./d+:/yhds:                                
echo                             -sNN@N@@@@@@@:   /.            `````.:sdy:                             
echo                           /d@@@@@@Nhho`s-                    ```````-sd+`                          
echo                         /@@@@@@hs@.                           ````````.o@+                         
echo                       .d@@@@@y. `y-                            `````````-sd-                       
echo                      /N@@@@@h+                                  ``````````-ho                      
echo                     o@@@@@sy:                                   ````````````ys                     
echo                    +dN@sy: -`                                   `````````````ys                    
echo                   -@s@@.  s/                                     ```.````````.d:                   
echo                   h/sNo                                          `````````````:@                   
echo                  .N`o   .`                                       ``````````````d:                  
echo                  /h.+.::@:  -.                                   ``.```````````so                  
echo                  oy.+-s@s/- o:   /-                              ``````````````oy                  
echo                  +h :: + ::     `Nd+++:`                         ``.```````````ss                  
echo                  .N              +ody+:`                         ``````````````d:                  
echo                   d/          syy. dy                            `````````````:@                   
echo                   -@`      -ohN@@o hN           ./-            ` ````````````.d/                   
echo                    oy     -N@@@@@N@N@@d`        ```            ```.``````````sy                    
echo                     sy    o@@@@@@@@@@@@@N-.                   ``````````````oy                     
echo                      +h`   s@@@@@@@@@@@@@@@-                  ````````````.ys                      
echo                       -h/   oh:////o@@@@@N+-                 ````````````/d:                       
echo                         +h:         `-dN@-           /o    ````````````:yo`                        
echo                          `+y/          `o.      .+:.       ``````````/yo`                          
echo                             :ss:                `.``     `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./osysooys/:::.   ```.-/osso/.                                   
echo                                        `-:+osyhhhyooooo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@N@d@@@yshss::odNN@ho:`                                   
echo                                :sdNN@@@@Nso/.-yyo````   `.od//shhs:                                
echo                             -sN@@NN@@@@@@N-   /.           ``````:ohy:                             
echo                           /d@@@@@@@Nhys`o:                   ```````.oh+`                          
echo                         /@@@@@@@ys@.                          `````````/d+                         
echo                       .d@@@@@@s. `s/                           `````````.+d-                       
echo                      /N@@@@@@y+                                 ``````````.ho                      
echo                     o@@@@@@sy/                                   ```````````ss                     
echo                    +dh@yhs- -`                                  `````````````ys                    
echo                   -@-N@y.  so                                    ````.```````.d:                   
echo                   h/.NN/                                         `````````````:@                   
echo                  .N`/:   .`                                      ``````````````d:                  
echo                  /h`:o`::@/  --                                  ``````````````so                  
echo                  oy //:y@s+: /o   -/`                            ``````````````oy                  
echo                  +h  +- o :/      s@o+++.`                       ``````````````ss                  
echo                  .N               -+ydo+.`                       ``````````````d:                  
echo                   d/           /yy+ /@-                          `````````````:@                   
echo                   -@`       .oh@@@@ -@o           :+`          ``````````````.d/                   
echo                    oy      .@@@@@@@@@@N@o         ``           ````.`````````sy                    
echo                     sy     y@@@@@@@@@@@@@Ny``                 ``````````````oy                     
echo                      +h`    h@@@@@@@@@@@@@@@y                  ```````````.ys                      
echo                       -h/    yy/////+N@@@@@y/                ````````````/d:                       
echo                         +h:          `.h@@:`          .y`   ```````````:yo`                        
echo                          `+y/            +-      `+:-      ``````````/yo`                          
echo                             :ss:                  .``    `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./osyyoosyo::::   ```.-/osso/.                                   
echo                                        `-:+osyhhhysoooo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@N@@@N@dsyyso/+hNN@ho:`                                   
echo                                :sd@@@@@@@Nso:`:yh+````   .:yy/+hys:                                
echo                             -sN@N@N@@@@@@@N-   /.           `````-+ys:                             
echo                           /d@@@@@@@@Nhys`o/                  ```````.+y+`                          
echo                         /@@@@@@@@ysN-                         `````````/h+                         
echo                       .d@@@@@@@o.  oo                          ``````````+h-                       
echo                      /N@@@@@@@y+                                ``````````.ho                      
echo                     o@@@@@@@os+                                  ```````````ss                     
echo                    +No@@+do- .`                                 `````````````ys                    
echo                   -N-y@@o.  +y                                  ` ```.```````.d:                   
echo                   h/ oN@-                                         ````````````:@                   
echo                  .N` s.   ..                                     ```.``````````d:                  
echo                  /h -:+`::do  `:`                                ``````````````so                  
echo                  oy `o::y@y+/ -s.   /:                           ``````````````oy                  
echo                  +h  .+.`o`-o      `@@+++/``                     ``````````````ss                  
echo                  .N                 +odh+/``                     ``````````````d:                  
echo                   d/            .yyy` dh                         `````````````:@                   
echo                   -@`        `oyd@@@/ h@`          `+/          `````````````.d/                   
echo                    oy       `@N@@@@@N@N@@d.         ``        ` ```.`````````sy                    
echo                     sy      y@@@@@@@@@@@@@NN-`                ``````````````oy                     
echo                      +h`    `d@@@@@@@@@@@@@@@@.                ```````````.ys                      
echo                       -h/    `hy////++d@@@@@d+.              ````````````/d:                       
echo                         +h:           `.y@@o.          `y-  ```````````:yo`                        
echo                          `+y/             //       //-     ``````````/yo`                          
echo                             :ss:                   ..`   `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./osyyoooys+:::.  ```.-/osso/.                                   
echo                                        `-:+osyhhhhsoooo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@NN@@N@@yshss++s@N@ho:`                                   
echo                                :sd@NN@@@@@@oo-`/sh/````  `-+ho+yys:                                
echo                             -sN@@@NN@@@@@@@N-   /.          `.```./ys:                             
echo                           /d@@@@@@@@@Nyys`++                 ```````.+y+`                          
echo                         /@@@@@@@@@yoN:                        `````````:h+                         
echo                       .d@@@@@@@@o.  /y                         ``````````/h-                       
echo                      /N@@@@@@@@yo                               ``````````.ho                      
echo                     o@@@@@@@@oso                                 ```````````ss                     
echo                    +@sh@N/@o- ..                                 ````````````ys                    
echo                   -@/.N@No`  :d`                                ```.``.``````.d:                   
echo                   h+  d@@.                                        ```.````````:@                   
echo                  .N: .s`   `.                                     `````````````d:                  
echo                  /h `:+/`::hd   :-                                `````````````so                  
echo                  oy  :+::y@yo/` s/   -/.                         ``````````````oy                  
echo                  +h   -/. o.`o.      o@y+++-``                   ``````````````ss                  
echo                  .N                  -+sds+:.`                  ` `````````````d:                  
echo                   d/              oyy+ :@+                      ``````````````:@                   
echo                   -@`          /shN@@@ -@s           -+-        `````````````.d/                   
echo                    oy        `hN@@@@@@@@@Nds         `.`       ``.``.````````sy                    
echo                     sy       y@@@@@@@@@@@@@@Nh``               `````````````oy                     
echo                      +h`     `d@@@@@@@@@@@@@@@@y              ````````````.ys                      
echo                       -h/     `dy///+++y@@@@@@o/              ```````````/d:                       
echo                         +h:     `       .+@Nh-           o/ ```````````:yo`                        
echo                          `+y/              :o       :+:    ``````````/yo`                          
echo                             :ss:                    ..`  `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./osyhs+osso/:::` ```.-/osso/.                                   
echo                                        `-:+osyhhhhyoooo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@@N@@@N@dsyyssoshN@ho:`                                   
echo                                :sd@@@@@@@@@doo.`+sd:````  .:sy+sys:                                
echo                             -sN@@@dN@@@@@@@@N-   /.         ``.``./ss:                             
echo                           /d@@@@@@@@@@@yyy`:o                ```````.+y+`                          
echo                         /@@@@@@@@@@y+N/                       `````````:h+                         
echo                       .d@@@@@@@@@s.  -h.                       ``````````/h-                       
echo                      /N@@@@@@@@@hs`                             ``````````.ho                      
echo                     o@@@@@@@@@sos`                              ````````````ss                     
echo                    +@d/N@N:@o- `-                                ````````````ys                    
echo                   -@y`+@@No`  .@:                                ``.`````````.d:                   
echo                   hy  .N@@.                                      `````````````:@                   
echo                  .No  /o`   `-                                    ```.`````````d:                  
echo                  /h  .:o:`::s@`  .:`                              `````````````so                  
echo                  oy   ++::sNds/- :s`   //                         `````````````oy                  
echo                  +h    :/. +- +/       @@++++..                 ` `````````````ss                  
echo                  .N                    /+hdo+..                 ` `````````````d:                  
echo                   d/               -yyy. y@`                    ``````````````:@                   
echo                   -@`           -ohd@@@/ y@-           /+       `````````````.d/                   
echo                    oy          s@N@@@@@NdN@@d-         ``      ``.```````````sy                    
echo                     sy        o@@@@@@@@@@@@@@@N/`              `````````````oy                     
echo                      +h`       d@@@@@@@@@@@@@@@@@.            ````````````.ys                      
echo                       -h/      `dy//++++o@@@@@@h+`           ````````````/d:                       
echo                         +h:      `       .:@NN-`          /o```````````:yo`                        
echo                          `+y/               .o`      :+:`  ``````````/yo`                          
echo                             :ss:                     `.` `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./osyhyoooss+:::. ```.-/osso/.                                   
echo                                        `-:+osyhhhhysooo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@@N@@@N@@hshsyysy@@ho:`                                   
echo                                :sd@@N@@@@@@@ho+.`+sd-```  `-+ysoss:                                
echo                             -sN@@@N@@@@@@@@@@N:   /.        ``.``./ss:                             
echo                           /d@@@@@@@@@@@@yyy.-s               ```````.+y+`                          
echo                         /@@@@@@@@@@@h/Ns                      `````````:h+                         
echo                       .d@@@@@@@@@@y.  `y/                      ``````````/h-                       
echo                      /N@@@@@@@@@@ds.                            ``````````.ho                      
echo                     o@@@@@@@@@@y+y:                             ````````````ss                     
echo                    +@@o+@@@:@s-``-`                              ````````````ys                    
echo                   -@N- h@@Ns`   ys                               ```.````````.d:                   
echo                   hy`  :N@@-                                     `````.```````:@                   
echo                  .Ny` `++`    -`                                 ``.```````````d:                  
echo                  /h   -:o/ ::/@/   :-                             `````````````so                  
echo                  oy    o/:-s@@s+/  s+   ./-                       `````````````oy                  
echo                  +h     //- // :o`      :@d+++/.`                 `````````````ss                  
echo                  .N                     `+odh+/..                ``````````````d:                  
echo                   d/                 oyyo .@y                    `````````````:@                   
echo                   -@`            `oyhN@@N `@d           .+:      ````````````.d/                   
echo                    oy           /@N@@@@@@@d@@dh         `.`    ```.``.```````sy                    
echo                     sy         /@@@@@@@@@@@@@@@Nd``            `````````````oy                     
echo                      +h`        y@@@@@@@@@@@@@@@@@y           ````````````.ys                      
echo                       -h/       `dh/++++++@@@@@@N+:          ````````````/d:                       
echo                         +h:       `       .-dN@+.          -y.`````````:yo`                        
echo                          `+y/                `o-      -+:` ``````````/yo`                          
echo                             :ss:                      `.``````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./osyhys+ooss/:::````.-/osso/.                                   
echo                                        `-:+osyhhhhhsooo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@@N@@@@@@dyyyyhyyd@ho:`                                   
echo                                :sd@@@@N@@@@@@ho+..+sd-``` `.:sysss:                                
echo                             -sN@@@@@@@@@@@@@@@N/   /-       ```.`./ss:                             
echo                           /d@@@@@@@@@@@@@hyy-.y.             ```````.+y+`                          
echo                         /@@@@@@@@@@@@d/dh                     `````````:h+                         
echo                       .d@@@@@@@@@@@d-   os                     ``````````/h-                       
echo                      /N@@@@@@@@@@@@s:                           ``````````.ho                      
echo                     o@@@@@@@@@@@d/so                            ````````````ss                     
echo                    +N@@/s@@N:hh-` ..                            `````````````ys                    
echo                   -@@s``@@@Ny`   /@.                             ```.````````.d:                   
echo                   ho/   /N@@/                                    `````````````:@                   
echo                  .N/o  `o+.    .-                                ``````````````d:                  
echo                  /h    ::o/ :::@d   .:`                          ``.```````````so                  
echo                  oy     s/:-sd@yo/- :s.   -/.                    ``.```````````oy                  
echo                  +h      /+- -o``o:       y@y+++:.`              ``.```````````ss                  
echo                  .N                       :+yds+:.`              ``````````````d:                  
echo                   d/                  -yss- +@/                  `````````````:@                   
echo                   -@`              /ohd@@@o +@o           /+`  ` ````````````.d/                   
echo                    oy            `dNN@@@@@Nd@@Nd/         `.   ```.``````````sy                    
echo                     sy          -@@@@@@@@@@@@@@@@N+.          ``````````````oy                     
echo                      +h`         o@@@@@@@@@@@@@@@@@@.         ````````````.ys                      
echo                       -h/         h@+++++++y@@@@@@s+         ````````````/d:                       
echo                         +h:        `       `-s@@y-`        `.y.````````:yo`                        
echo                          `+y/                  +/      .o/.``````````/yo`                          
echo                             :ss:                       `..````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./osyhyy+++sso:::-```.-/osso/.                                   
echo                                        `-:+osyhhhhhyooo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@@NN@@@N@@hshyhhyhdho:`                                   
echo                                :sd@@@@dN@@@@@@yo/.-/yh.`.```:+yyss:                                
echo                             -sN@@@@@dN@@@@@@@@@N+   /-      ```.../ss:                             
echo                           /d@@@@@@@@@@@@@@dyy:`s-            ```````.+y+`                          
echo                         /@@@@@@@@@@@@@N/yN`                   `````````:h+                         
echo                       .d@@@@@@@@@@@@N:`  -h.                   ``````````+h-                       
echo                      /N@@@@@@@@@@@@@s+                          ``````````.ho                      
echo                     oN@@@@@@@@@@@N/oy.                           ```````````ss                     
echo                    +dN@y:h@@N:yN-. `.                           `````````````ys                    
echo                   -@yN- .N@@@d``  `@o                            ````.```````.d:                   
echo                   h/s`   /N@@s                                   `````````````:@                   
echo                  .N`d.  `oo.    `-`                              ``````````````d:                  
echo                  /h     ::oo -::s@:   ::                         ``````````````so                  
echo                  oy      s+/-+y@ds//  so    //                   ``````````````oy                  
echo                  +h       :+:``o- /o`       N@o+++-.             ``````````````ss                  
echo                  .N                         ++hdo+-.`            ``````````````d:                  
echo                   d/                    +sss` h@`                `````````````:@                   
echo                   -@`               .oyhN@@@. d@.          `o: ``````````````.d/                   
echo                    oy              s@N@@@@@@@dN@@d`        ``` ````.`````````sy                    
echo                     sy            @@@@@@@@@@@@@@@@N@.`        ``````````````oy                     
echo                      +h`          :@@@@@@@@@@@@@@@@@@y        ````````````.ys                      
echo                       -h/          sN+++++++o@@@@@@d+-       ````````````/d:                       
echo                         +h:         .        ./@NN-.        `.y-```````:yo`                        
echo                          `+y/                   /o      `o/.`````````/yo`                          
echo                             :ss:                        `..```````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooyhyys/o+ss+:::```.-/osso/.                                   
echo                                        `-:+osyhhhhhyooo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@@@N@@@@@@dyyhhddhhho:`                                   
echo                                :sd@@@@Nd@@@@@@@yo/`:/hy...``-/shss:                                
echo                             -sN@@@@@Nd@@@@@@@@@@No   /-     ````../ss:                             
echo                           /d@@@@@@@@@@@@@@@@yy+ o/           ```````.+y+`                          
echo                         /@@@@@@@@@@@@@@@+o@:                  `````````:h+                         
echo                       .d@@@@@@@@@@@@@@/.  `y+                  ``````````+h-                       
echo                      /N@@@@@@@@@@@@@@ho.                        ``````````.ho                      
echo                     o@@@@@@@@@@@@@@o/y+                          ```````````ss                     
echo                    +hy@@+:h@@@/+@/-  .`                         `````````````ys                    
echo                   -@:@h. .@@@@@-`   o@`                         ` ```````````.d:                   
echo                   h/-o    /@@@d                                  `````````````:@                   
echo                  .N +h   `os-     -.                             ``````````````d:                  
echo                  /h      ::+y .:::Nd   `:-                       ``````````````so                  
echo                  oy       o+/-/s@@so/- -s/   `/:                 ``````````````oy                  
echo                  +h        -o:. /o `o/       :@@++++..           ``````````````ss                  
echo                  .N                          .+odh++..           ``````````````d:                  
echo                   d/                     `sss+ .@y               `````````````:@                   
echo                   -@`                 /ohh@@@d .@d           /o``````````````.d/                   
echo                    oy               -@NN@@@@@@d@@Nds         `. `````````````sy                    
echo                     sy             s@@@@@@@@@@@@@@@@No.       ``````````````oy                     
echo                      +h`           `N@@@@@@@@@@@@@@@@@@.       ```````````.ys                      
echo                       -h/           /@o+++++++d@@@@@@o/      ````````````/d:                       
echo                         +h:          .`       .-dN@/-       ``.s-``````:yo`                        
echo                          `+y/                    -s`     `o/-````````/yo`                          
echo                             :ss:                         `..``````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooyhyys+/ooss/::-``.-/osso/.                                   
echo                                        `-:+osyhhhhhhsoo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@@@NNN@@N@@hshhd@hyyo:`                                   
echo                                :sd@@@@@@d@@@@@@@so:`/:ds...`.:ohys:                                
echo                             -sN@@@@@@Nd@@@@@@@@@@@s   /-    ````../ss:                             
echo                           /d@@@@@@@@@@@@@@@@Nyys /o          ```````.+y+`                          
echo                         /@@@@@@@@@@@@@@@@s:Ns                 `````````:h+                         
echo                       .d@@@@@@@@@@@@@@@s-   +y                 ``````````/h-                       
echo                      /N@@@@@@@@@@@@@@@@o:                       ``````````.ho                      
echo                     odN@@@@@@@@@@@@@h/sy`                        ```````````ss                     
echo                    +h:@@N/:d@@@o-Ny-` ..                         ````````````ys                    
echo                   -@`h@o` .N@@@No`   .@o                        ```.``.``````.d:                   
echo                   h/ y.    -@@@@-                                 ````````````:@                   
echo                  .N  ho   `/y-`    `-`                            `````````````d:                  
echo                  /h       :::h- :::s@:   -:`                     ``````````````so                  
echo                  oy        +o/--sh@hs//` +s.   -/.               ``````````````oy                  
echo                  +h         .o/- .o- :o.       s@y+++/.`         ``````````````ss                  
echo                  .N                            :+ydy+/..         ``````````````d:                  
echo                   d/                       :sss- +@/   `        ``````````````:@                   
echo                   -@`                  .osh@@@@+ o@+          .o:````````````.d/                   
echo                    oy                 h@N@@@@@@@dN@@d-        `.`.```````````sy                    
echo                     sy              -N@@@@@@@@@@@@@@@@N.`      `````````````oy                     
echo                      +h`             h@@@@@@@@@@@@@@@@@@s     ````````````.ys                      
echo                       -h/            .@y+++++++s@@@@@@h+.     ```````````/d:                       
echo                         +h:           .`       `-yN@y-`     ```.s-`````:yo`                        
echo                          `+y/                     `s-     `o+-```````/yo`                          
echo                             :ss:                         `...`````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooshyyys/++sso:::``.-/osso/.                                   
echo                                        `-:+osyhhhhhhsoo+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                     
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@@@@@@NN@@@N@@dyydd@@yyo:`                                   
echo                                :sd@@@@@@@@@@@@@@@so-`+/@o.-``:+yhs:                                
echo                             -sN@@@@@@@@d@@@@@@@@@@@y   /.   ````../ss:                             
echo                           /d@@@@@@@@@@@@@@@@@@yyy`:s         ```````.+y+`                          
echo                         /@@@@@@@@@@@@@@@@@h:d@                `````````:h+                         
echo                       .d@@@@@@@@@@@@@@@@d:`  -h:               ``````````/h-                       
echo                      /N@@@@@@@@@@@@@@@@@so                      ``````````.ho                      
echo                     odd@@@@@@@@@@@@@@@//y/                      ````````````ss                     
echo                    +h h@@@::h@@@h-hN-. `.`                       ````````````ys                    
echo                   -@`-@@/` `N@@@N@`    o@.                       ``.`````````.d:                   
echo                   h/ `d`    `@@@@s                                ````````````:@                   
echo                  .N  :d/   `:h:.     --                           `````````````d:                  
echo                  /h        -::y+ .:::N@    ::                     `````````````so                  
echo                  oy         :s/:-+sN@so/:  ss    :/`              `````````````oy                  
echo                  +h           o+:` +o  o+        @@o+++-.`      ` `````````````ss                  
echo                  .N                              /+h@o+:-``     ` `````````````d:                  
echo                   d/                         osss` h@`  ```     ``````````````:@                   
echo                   -@`                    /oyhN@@@` @@`          +o```````````.d/                   
echo                    oy                  :dNN@@@@@@dd@@dh        `..``.````````sy                    
echo                     sy                d@@@@@@@@@@@@@@@@Ns.     `````````````oy                     
echo                      +h`              /@@@@@@@@@@@@@@@@@@N`   ````````````.ys                      
echo                       -h/              @@++++++++N@@@@@@+:    ```````````/d:                       
echo                         +h:            `.        ./@@@-.   `````.s-````:yo`                        
echo                          `+y/                       o:     `o+-``````/yo`                          
echo                             :ss:                         ``...````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oooyyyyso:o+ss+:/-`.-/osso/.                                   
echo                                        `-:+osyhhhhhhyoo+/-`                                        
ping localhost -n 1 >nul
cls
echo                                        .-/+oooooooooo+/:.                                         
echo                                   `:oy@N@@@@@NNN@@N@@hydd@Nhso:`                                   
echo                                :sd@@@@@@@dN@@@@@@@so-.++@+-.`-/shs:                                
echo                             -sN@@@@@@@@@@@@@@@@@@@@@h   /.  `````-/ss:                             
echo                           /d@@@@@@@@@@@@@@@@@@@hyy..y`       ```````.+y+`                          
echo                         /@@@@@@@@@@@@@@@@@@N:s@-              `````````:h+                         
echo                       .d@@@@@@@@@@@@@@@@@@/.   ss              ``````````/h-                       
echo                      /N@@@@@@@@@@@@@@@@@@do-                    ``````````.ho                      
echo                     ods@@@@@@@@@@@@@@@@y/sy`                    ````````````ss                     
echo                    +@`-@@@@:-s@@@N-/@o.` ..                      ````````````ys                    
echo                   -@. y@@-`  @@@@@N/    `@y                      ```.````````.d:                   
echo                   h/  :y`     dN@@d`                             ``.``.```````:@                   
echo                  .N   od:   ``h+-     `-.                         `````````````d:                  
echo                  /h         -::+y` :::o@o   `:-                   `````````````so                  
echo                  oy          .s+/--sh@ds+/- -s/   `//             `````````````oy                  
echo                  +h            :o:- .o: -o:       .@N++++-.     ` `````````````ss                  
echo                  .N                               `+o@d++--``   ```````````````d:                  
echo                   d/                          .sss+ .@y  ````   ``````````````:@                   
echo                   -@`                     `oshd@@@h -@y          :s.`````````.d/                   
echo                    oy                    ydNN@@@@@Nd@@Nd/      ``.-``.```````sy                    
echo                     sy                 /N@@@@@@@@@@@@@@@@N-`   `````````````oy                     
echo                      +h`               `N@@@@@@@@@@@@@@@@@@/  ````````````.ys                      
echo                       -h/               s@o+++++++h@@@@@@o+  ````````````/d:                       
echo                         +h:             `.`       `-@N@:-  ``````.o.```:yo`                        
echo                          `+y/                        /+    `.o+.`````/yo`                          
echo                             :ss:                         ```..````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooosyyyss/++sss//:..-/osso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls
echo                                        .-/+oooooooooo+/:.                                         
echo                                   `:oy@N@@@@@NN@@@N@@dyhd@Ndso:`                                   
echo                                :sd@@@@@@@@hN@@@@@@Nso--/sh/-../oys:                                
echo                             -sN@@@@@@@@@d@@@@@@@@@@@@h   +. `````./ss:                             
echo                           /d@@@@@@@@@@@@@@@@@@@@dyy:`y.      ```````.+y+`                          
echo                         /@@@@@@@@@@@@@@@@@@@@o/No             `````````:h+                         
echo                       .d@@@@@@@@@@@@@@@@@@@s:   :h.            ``````````/h-                       
echo                      /N@@@@@@@@@@@@@@@@@@@@o+                   ``````````.ho                      
echo                     o@sh@@@@@@@@@@@@@@@@N//y+                   ````````````ss                     
echo                    +N- o@@@@:-+@@@@o-@@..  .`                   `````````````ys                    
echo                   -N- `@@@-`  y@@@@Nh     /@/                    ```.````````.d:                   
echo                   h/   os`     o@@@do                            `````````````:@                   
echo                  .N    yd:    `oy-.     .-`                      ``````````````d:                  
echo                  /h          .:::y/ .:::d@-   -:`                ``````````````so                  
echo                  oy            oo/:-+s@@ys//` /s-   ./-          ``````````````oy                  
echo                  +h             `o+:` /o` /s`       +@h+++/-`    ``.```````````ss                  
echo                  .N                                 -+y@y+/:-``  ``````````````d:                  
echo                   d/                            /sss- +@/  ```   `````````````:@                   
echo                   -@`                       -oyh@@@@/ y@:      ` `.s:````````.d/                   
echo                    oy                     -d@N@@@@@@@dN@@d     ```..`````````sy                    
echo                     sy                   @N@@@@@@@@@@@@@@@@s. ``````````````oy                     
echo                      +h`                 s@@@@@@@@@@@@@@@@@@h ````````````.ys                      
echo                       -h/                -@h+++++++o@@@@@@h+.````````````/d:                       
echo                         +h:               .`        -yN@o-````````.o.``:yo`                        
echo                          `+y/                         -o   ``.s+.````/yo`                          
echo                             :ss:                         ````..```:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooooyyyyso:o+sso//-.-/osso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@NNNN@@@NNN@@N@dhh@@N@so:`                                   
echo                                :sd@@@@@@@@Nh@@@@@@@No+-::yy:-.:oss:                                
echo                             -sN@@@@@@@@@@dN@@@@@@@@@@@h  `+``````./ss:                             
echo                           /dN@@@@@@@@@@@@@@@@@@@@Nyy+`s:     ```````.+y+`                          
echo                         /dN@@@@@@@@@@@@@@@@@@@h:dd            `````````:h+                         
echo                       .dNN@@@@@@@@@@@@@@@@@@@:.  `h+           ``````````/h-                       
echo                      /N@@@@@@@@@@@@@@@@@@@@@ho.                 ``````````.ho                      
echo                     oNosN@@@@@@@@@@@@@@@@@y:oy.                  ```````````ss                     
echo                    +@s `h@@@N:-:@@@@@.+@o.` `.                  `````````````ys                    
echo                   -@+  .@@@-`  +N@@@@N:     h@`                  ````.```````.d:                   
echo                   h+    yo`     .@N@@d`                          `````````````:@                   
echo                  .@`    hd/    `:h/-      --                     ``````````````d:                  
echo                  /h            :::oy  :::/@@    ::               ``````````````so                  
echo                  oy             :s//--sy@Nso//  ss`   :/`        ``````````````oy                  
echo                  +h               /o/: `o+  oo        d@s+++--   ``````````````ss                  
echo                  .N                                   /+d@o+::.. ``````````````d:                  
echo                   d/                              osss` d@` ```` `````````````:@                   
echo                   -N`                         +oyh@@@N``N@      ````o/```````.d/                   
echo                    oh                       sdNN@@@@@@d@@N@/    ```...```````sy                    
echo                     sy                    +N@@@@@@@@@@@@@@@@@-``````````````oy                     
echo                      +h`                  .@@@@@@@@@@@@@@@@@@N.```````````.ys                      
echo                       -h/                  @@++++++++@@@@@@@+:```````````/d:                       
echo                         +h:                ..        .+@@h-````````-+``:yo`                        
echo                          `+y/                          .o` ```-s/.```/yo`                          
echo                             :ss:                         `````.```:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oooosyyyss+/ooss+/:.-/osso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oosooooooo+/:.                                         
echo                                   `:oy@NNNNN@@NN@@@N@ddhd@N@yo:`                                   
echo                                :sd@@@@@@@@@Nh@@@@@@@No/./:ds:.:oss:                                
echo                             -sN@@@@@@@@@@@dN@@@@@@@@@@@h` `+`````./ss:                             
echo                           /dN@@@@@@@@@@@@@@@@@@@@@@yyo o/    ```````.+y+`                          
echo                         /ddN@@@@@@@@@@@@@@@@@@@N:o@.          `````````:h+                         
echo                       .d@@@@@@@@@@@@@@@@@@@@@@+-   oy          ``````````/h-                       
echo                      /N@@@@@@@@@@@@@@@@@@@@@@@o+                ``````````.ho                      
echo                     o@sos@@@@@@@@@@@@@@@@@@@//yo                 ```````````ss                     
echo                    +@@` .@@@@@:--d@@@@/.@N..  ..                `````````````ys                    
echo                   -@h.  :@@@:`  .N@@@@Nd     -@s                ` ```.```````.d:                   
echo                   h+     ys`      h@@dds                          ````````````:@                   
echo                  .@:     hd+    ``yy-.     `-.                   ``````````````d:                  
echo                  /@             -::/y/ .:::s@s   `:-             ``````````````so                  
echo                  oy              `so/:-/sd@ds+/- .s+   `//       ``````````````oy                  
echo                  +h                .o+:. -o: -s/       .@N+++/-. ``````````````ss                  
echo                  .N                                    `+o@h++::.``````````````d:                  
echo                   d/                               .sss+ :@s ``..`````````````:@                   
echo                   -N:                          .oshd@@@y +@+    `````++``````.d/                   
echo                    o@`                       .d@N@@@@@@NdN@@d ` ```.`..``````sy                    
echo                     sy                      @N@@@@@@@@@@@@@@@@+.````````````oy                     
echo                      +h`                    h@@@@@@@@@@@@@@@@@@/``````````.ys                      
echo                       -h/                   +@s++o++++y@@@@@N+/``````.```/d:                       
echo                         +h:                 `-`       `:@@@-.```````::`:yo`                        
echo                          `+y/                           `o-````:o:```/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oooooyyysss:++sss//--/osso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oosooooooo+/:.                                         
echo                                   `:oy@NNNNN@@@NNN@@Nd@ddNN@yo:`                                   
echo                                :sd@@@@@@@@@@Nh@@@@@@@@o/-++do-:oss:                                
echo                             -sN@@@@@@@@@@@@dN@@@@@@@@@@@h` -+````./ss:                             
echo                           /hNN@@@@@@@@@@@@@@@@@@@@@@hys`++   ```````.+y+`                          
echo                         /@d@@@@@@@@@@@@@@@@@@@@@@+/N+         `````````:h+                         
echo                       .d@@@@@@@@@@@@@@@@@@@@@@@h:`  -h:        ``````````/h-                       
echo                      /NN@@@@@@@@@@@@@@@@@@@@@@@ho.              ``````````.ho                      
echo                     o@hooy@@@@@@@@@@@@@@@@@@@y:oy-               ```````````ss                     
echo                    +@@o  -N@@@@+--o@@@@d.+@s.` `.`               ````````````ys                    
echo                   -N@:   +@@N+`   yN@@@@N+     o@:              ```.``.``````.d:                   
echo                   h+`     yy`      -@Nddd-                        ````````````:@                   
echo                  .@y      yds     `/h/-`     .-`                  `````````````d:                  
echo                  /N.             `:::oy` -:::d@-   .:.            `````````````so                  
echo                  oy                :s//:-osN@ys+/. :s:   ./-      `````````````oy                  
echo                  +h                  /o/:` +o` /s-       +@h+++:-``````````````ss                  
echo                  .N                                      -+h@s+//..````````````d:                  
echo                   d/                                 /sss- y@. `...```````````:@                   
echo                   -Ns                            :oyh@@@@- @N`  ``````/+`````.d/                   
echo                    oN-                         +dNN@@@@@@@@@@@/``.``.`..`````sy                    
echo                     sh                       /N@@@@@@@@@@@@@@@@h-```````````oy                     
echo                      +h`                     -@@@@@@@@@@@@@@@@@@s`````````.ys                      
echo                       -h/                    `@d+o+++++oN@@@@@o+``````.``/d:                       
echo                         +h:                   -.        -dNN:-```````/.:yo`                        
echo                          `+y/                             +-````/o-``/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oooo+syyssoo:o+sso/::/osso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+ooosoooooo+/:.                                         
echo                                   `:oy@NN@N@N@@NNN@@N@@@dNN@ho:`                                   
echo                                :sd@@@@@@@@@@@@d@@@@@@@do::+sh/:oss:                                
echo                             -sN@@@@@@@@@@@@@dN@@@@@@@@@@@y` :/```./ss:                             
echo                           /h@NN@@@@@@@@@@@@@@@@@@@@@@dyy./o  ```````.+y+`                          
echo                         /@dh@@@@@@@@@@@@@@@@@@@@@@h:dd        `````````:h+                         
echo                       .d@NN@@@@@@@@@@@@@@@@@@@@@@/-   yo       ``````````/h-                       
echo                      /N@@@@@@@@@@@@@@@@@@@@@@@@@@o/             ``````````.ho                      
echo                     o@Nsooh@@@@@@@@@@@@@@@@@@@@/:ys             ````````````ss                     
echo                    +@@N.  -N@@@@y---N@@@@+.d@-.  ..              ````````````ys                    
echo                   -@@h.   +@@Ny`   :N@@@@NN`     dd              ``.`````````.d:                   
echo                   hy`      od.       h@@ddh                      `````````````:@                   
echo                  .@N.      sdh`    ``yy--      --                 `````````````d:                  
echo                  /@+               -:::ys  :::/@N    ::`          `````````````so                  
echo                  od                  so//--sy@Nss//  os`   :/`    `````````````oy                  
echo                  +h                   `oo/: `oo  oo`       @@o+++:-````````````ss                  
echo                  .N                                        +o@d++/:-```````````d:                  
echo                   d/                                   ssys .Ny `...``````````:@                   
echo                   -@y`                             oshh@@@d /@+ ```````/+````.d/                   
echo                    ods                           hdNN@@@@@N@N@Ny`.`````..````sy                    
echo                     sd`                        dN@@@@@@@@@@@@@@@N:.`````````oy                     
echo                      +h`                       d@@@@@@@@@@@@@@@@@h````````.ys                      
echo                       -h/                      y@o+++++++d@@@@@y+.````.``/d:                       
echo                         +h:                    .-        .sN@/-``````./:yo`                        
echo                          `+y/                              +:````++.`/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./osoo++yyssss//ooss+/:/osso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                     
echo                                         .-/+ooosoooooo+/:.                                         
echo                                   `:oy@N@@@@N@@@NNN@@@@@@@N@ho:`                                   
echo                                :sd@@@@@@@@@@@@@d@@@@@@@do:/+hs/oss:                                
echo                             -sN@@@@@@@@@@@@@@dN@@@@@@@@@@@s``+-``./ss:                             
echo                           /ddNN@@@@@@@@@@@@@@@@@@@@@@@Nyy-/o````````.+y+`                          
echo                         /@@y@@@@@@@@@@@@@@@@@@@@@@@N:sN.      `````````:h+                         
echo                       .d@@@@@@@@@@@@@@@@@@@@@@@@@@s:`  /h`     ``````````/h-                       
echo                      /NN@@@@@@@@@@@@@@@@@@@@@@@@@@ho.           ``````````.ho                      
echo                     oN@yyo+h@@@@@@@@@@@@@@@@@@@@d:+y:           ````````````ss                     
echo                    +@N@h   -N@@@@N--.y@@@@@.:@h.` `.`            ````````````ys                    
echo                   -Ny@/`   /@@N@`    dN@@@@Ny     :@o            ```.````````.d:                   
echo                   h@``      /@-`      -@Ndddo                    `````````````:@                   
echo                  .@@s       +hh:     `:ho-.     `-.              ``````````````d:                  
echo                  /@h.               `:::+y: .:::o@y   `::         `````````````so                  
echo                  oN.                  :s+/:-/sh@@so/: `so   `/:   `````````````oy                  
echo                  +N                     :o+/. -o/ .s+       -@d+oo/:```````````ss                  
echo                  .@.                                        .+y@so+/-.`````````d:                  
echo                   ds                                    -yyy: sN.`.-.`````````:@                   
echo                   -Noo                              .oshd@@@: @@````````/+```.d/                   
echo                    ohh.                           :d@N@@@@@@@@@N@-.`````..```sy                    
echo                     sh-                         :N@@@@@@@@@@@@@@@@+.````````oy                     
echo                      +h`                        :@@@@@@@@@@@@@@@@@d```````.ys                      
echo                       -h/                       :@y+++++++y@@@@@y+.````.`/d:                       
echo                         +h:                     `-`       .+N@+-``````:/yo`                        
echo                          `+y/                              `+:```.o:./yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./osso+/sysssos:++sys+//osso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+ooosoooooo+/:.                                         
echo                                   `:oy@N@@@d@@@@NNN@@@@NN@N@ho:`                                   
echo                                :sd@@@@@@@@@@@@@@d@@@@@@@h+:+ohooss:                                
echo                             -sN@@@@@@@@@@@@@@@dN@@@@@@@@@@@o`.+.`./ss:                             
echo                           /dddNN@@@@@@@@@@@@@@@@@@@@@@@@yy:/o```````.+y+`                          
echo                         /@@yh@@@@@@@@@@@@@@@@@@@@@@@@o/@/     `````````:h+                         
echo                       .d@@@N@@@@@@@@@@@@@@@@@@@@@@@@:.  .h:    ``````````/h-                       
echo                      /N@@N@@@@@@@@@@@@@@@@@@@@@@@@@@o/          ``````````.ho                      
echo                     od@Nss++h@@@@@@@@@@@@@@@@@@@@@+:sy          ````````````ss                     
echo                    +@d@@o   -@@@@@@+..:@@@@@o.y@+.  ..          `````````````ys                    
echo                   -@o@@-    -N@@N:`   :N@@@@@@:     s@-          ```.````````.d:                   
echo                   h@/`       .@+`       y@@ddd-                  `````````````:@                   
echo                  .@@N-       :hhs     ``oh:-      .-`            ``````````````d:                  
echo                  /@N+                 -:::sy` -:::h@/   .:.      ``````````````so                  
echo                  o@o                    os//:-os@@hs+/. :s:   :+```````````````oy                  
echo                  +@-                      +o//` /s. :s-       h@soo+:.`````````ss                  
echo                  .@+                                          /o@doo+-.````````d:                  
echo                   dd                                      +yys`-No`.-..```````:@                   
echo                   -@+d.                               /syhN@@d o@:```````//``.d/                   
echo                    od+y                             sdNN@@@@@N@N@@+.`````.```sy                    
echo                     sy:                           hN@@@@@@@@@@@@@@@s.```````oy                     
echo                      +h`                          d@@@@@@@@@@@@@@@@d.`````.ys                      
echo                       -h/                         @@+++++++o@@@@@h+.```../d:                       
echo                         +h:                       ..       `/@@o-`````.+yo`                        
echo                          `+y/                              ``/:```:+-/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooyo+/+ssssso+/ooyyo//osso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooosooooo+/:.                                         
echo                                   `:oy@N@ddddN@@@NNN@@@NNNN@ho:`                                   
echo                                :sd@@@@@@@@@@@@@@@@@@@@@@@y//+syoss:                                
echo                             -sN@@@@@@@@@@@@@@@@dN@@@@@@@@@@N+`:/`./ss:                             
echo                           /dNyNN@@@@@@@@@@@@@@@@@@@@@@@@@hy:/o``````.+y+`                          
echo                         /@@ds@@@@@@@@@@@@@@@@@@@@@@@@@h:@s   ``````````:h+                         
echo                       .h@@@d@@@@@@@@@@@@@@@@@@@@@@@@@+:   yo   ``````````/h-                       
echo                      /N@@d@@@@@@@@@@@@@@@@@@@@@@@@@@@ho`        ``````````.ho                      
echo                     odd@hho++y@@@@@@@@@@@@@@@@@@@@@@:/y/         ```````````ss                     
echo                    +Ns@@@/   .h@@@@@h...y@@@@@--NN.. `.`        `````````````ys                    
echo                   -@hh@h.    `N@@Ny`    hN@@@@@@`    `@h         ````.```````.d:                   
echo                   h@h`         @h.`      `N@dddh                 `````````````:@                   
echo                  .@@@@        `hhh.     `.hy--      --           ``````````````d:                  
echo                  /@@h-                  /::/ys  :::/N@`   ::     ``````````````so                  
echo                  o@@`                    `so//--sy@@ys//` os`  `+:`````````````oy                  
echo                  +@y                       `oo/:  oo  +s`      -@dooo:.````````ss                  
echo                  .@d                                     `     .+h@oo+:.```````d:                  
echo                   d@-                                    ` `yyy/ hd`....``````:@                   
echo                   -@hoy                                `oshd@@@:.Ny```````+-`.d/                   
echo                    oN-@:                             .d@N@@@@@@@N@Ny.`````.``sy                    
echo                     sd--                           -N@@@@@@@@@@@@@@@y.``````oy                     
echo                      +h`                           :@@@@@@@@@@@@@@@@d.````.ys                      
echo                       -h/                          +@s+++++++N@@@@h/.```./d:                       
echo                         +h:                        `-       `:@@o.`````+ho`                        
echo                          `+y/                              ```/:``.///yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooys+//ossssss/+osys++osso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooosooooo+/:.                                         
echo                                   `:oy@N@ddddN@@@NNN@@@NNNN@ho:`                                   
echo                                :sd@@@@@@@@@@@@@@@d@@@@@@@Ns/+oyyss:                                
echo                             -sN@@@@@@@@@@@@@@@@@dN@@@@@@@@@@@/./-./ss:                             
echo                           /d@dh@@@@@@@@@@@@@@@@@@@@@@@@@@@dh//o`````.+y+`                          
echo                         /@@dysN@@@@@@@@@@@@@@@@@@@@@@@@@/hd   `````````:h+                         
echo                       .hh@@N@@@@@@@@@@@@@@@@@@@@@@@@@@h:.  +y````````````/h-                       
echo                      /NN@@d@@@@@@@@@@@@@@@@@@@@@@@@@@@@o:       ``````````.ho                      
echo                     o@o@@yd+++s@@@@@@@@@@@@@@@@@@@@@@s:sy`       ```````````ss                     
echo                    +@s@@@@:   .o@@@@@@:..-@@@@@y.+@s.` ..       `````````````ys                    
echo                   -@@:@@s`     hN@NN.    -NN@@@@@s     /@/      `````````````.d:                   
echo                   h@@/`         o@-`       /@Ndddo                ````````````:@                   
echo                  .@@@@y         ohho     `./h+-.     `--         ``````````````d:                  
echo                  /@@Ns.                  ./::+y/ `:::+@d   `:-   ```.``````````so                  
echo                  o@@o                      :s+//-/sh@Nss/: .s+   :+````````````oy                  
echo                  +@@.                        -o+/- .s+ `s+       d@ooo/-```````ss                  
echo                  .@@:                                     ``    `+s@yo+:-``````d:                  
echo                   d@y                                     `` +yys`+N-....`````:@                   
echo                   -@@:d+                                 :syhN@@h`h@``````.o..d/                   
echo                    o@++N`                              odN@@@@@@N@@Nh.```````sy                    
echo                     s@./                             yN@@@@@@@@@@@@@@h.`````oy                     
echo                      +d`                             d@@@@@@@@@@@@@@@d.```.ys                      
echo                       -h/                           `Nd+++++++d@@@@y/.``./d:                       
echo                         +h:                          -`     ``:d@+.````:do`                        
echo                          `+y/                              ````/-``-++yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oosy+///sssssoo/ooyyo+osso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooosooooo+/:.                                         
echo                                   `:oydN@ddhd@@@@@NN@@@NN@N@ho:`                                   
echo                                :sd@@@@@@@@@@@@@@@@d@@@@@@@@o/oshss:                                
echo                             -sN@@@@@@@@@@@@@@@@@@dN@@@@@@@@@@d:-/./ss:                             
echo                           /hN@s@N@@@@@@@@@@@@@@@@@@@@@@@@@@dh/++````.+y+`                          
echo                         /@@hNoy@@@@@@@@@@@@@@@@@@@@@@@@@@+s@` `````````:h+                         
echo                       .ho@@@@N@@@@@@@@@@@@@@@@@@@@@@@@@N/-  :h.``````````/h-                       
echo                      /N@@@d@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ho      ``````````.ho                      
echo                     o@o@@@sd+++o@@@@@@@@@@@@@@@@@@@@@@N//y/      ```````````ss                     
echo                    +@do@@@@-   `:@@@@@@h...s@@@@@/.d@:.  ..      ````````````ys                    
echo                   -@@ys@@o`     +N@@Ns     sN@@@@@@-     h@`    ```.``.``````.d:                   
echo                   h@@N.`         `@y.`       h@@ddd-              ````````````:@                   
echo                  .@@@@No         -hhh.     `.sh:-`     .-`        `````````````d:                  
echo                  /@@@@+`                   :/::sy. -:::h@+   -:`  `````````````so                  
echo                  o@@@-                       os+/:-+s@@dso/. /y.  -+-``````````oy                  
echo                  +@@y                          +o+/` :s- :s-     `/@yoo/-``````ss                  
echo                  .@@@                                      ``   ``:o@ho+/-`````d:                  
echo                   d@@-                                     `` `yyy:-N+`...````:@                   
echo                   -@@h/d:                                  oshd@@N.o@.`````-/.d/                   
echo                    o@d`dd                               `d@@@@@@@@@@@@.``````sy                    
echo                     s@o`/                             .N@@@@@@@@@@@@@@h.````oy                     
echo                      +N-                              /@@@@@@@@@@@@@@@y```.ys                      
echo                       -d/                             yN+++++++h@@@@s/``./d:                       
echo                         +h:                           ..    ```-dN/.```:do`                        
echo                          `+y/                              `````/-``/oyo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oooyo///+ssssso+/ssysoosso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+ooooosoooo+/:.                                         
echo                                   `:oydN@dhhh@N@@@NNN@@NN@N@ho:`                                   
echo                                :sd@@@@@@@@@@@@@@@@@dN@@@@@@d+oohys:                                
echo                             -sN@@@@@@@@@@@@@@@@@@@d@@@@@@@@@@Ny-/:/ss:                             
echo                           /dd@@o@NN@@@@@@@@@@@@@@@@@@@@@@@@@@h/o/```.+y+`                          
echo                         /d@h@@/d@@@@@@@@@@@@@@@@@@@@@@@@@@s+N-``.``````:h+                         
echo                       .h+s@@@@N@@@@@@@@@@@@@@@@@@@@@@@@@@o:``.h:`````````/h-                       
echo                      /NdN@@h@@@@@@@@@@@@@@@@@@@@@@@@@@@@@No.    ``````````.ho                      
echo                     o@@+@@Ns@++//N@@@@@@@@@@@@@@@@@@@@@@s/os    ````````````ss                     
echo                    +@@+d@@@@:    -d@@@@@@:...N@@@@@.:@h.` ..     ````````````ys                    
echo                   -@@@:d@@o`     `N@@NN.    `@N@@@@@@     :@o    ``..````````.d:                   
echo                   h@@@y``          y@-.       `@@dddh         `  ``.``````````:@                   
echo                  .@@@@@N+          shhy      ..hy--      --       `````````````d:                  
echo                  /@@@@h/`                   `/::/yy  :::/N@`  `:- `````````````so                  
echo                  o@@@h`                       `ss//::ssN@ys+/ `s+ ``+/`````````oy                  
echo                  +@@@:                          `oo//  oo` os   ` `.Ndoo+-`````ss                  
echo                  .@@@o                                   ``  `` ` `.ohdo+/.````d:                  
echo                   d@@d                                   ``  `` oyh+`ds`...```:@                   
echo                   -@@@/sd-                                  :shhN@@/:@:`````/.d/                   
echo                    o@@:.Ny                                +@N@@@@@@NN@@-`````sy                    
echo                     s@N`::                              s@@@@@@@@@@@@@@y.```oy                     
echo                      +@o                                @@@@@@@@@@@@@@@o``.ys                      
echo                       -d/                              :@s++++++y@@@@o:``/d:                       
echo                         +h:                            `-  `````-d@:```:ho`                        
echo                          `+y/                              ``````/.`-sho`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oooss///:ossssss/osyysosso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+ooooosoooo+/:.                                         
echo                                   `:oyd@@ddhhd@@@@NN@@@NN@@@ho:`                                   
echo                                :sd@@@@@@@@@@@@@@@@@@dN@@@@@@y+oyhs:                                
echo                             -sN@@@@@@@@@@@@@@@@@@@@d@@@@@@@@@N@o://ss:                             
echo                           /ddN@ys@NN@@@@@@@@@@@@@@@@@@@@@@@@@@h/o:``.+y+`                          
echo                         /d@hyNh/@@@@@@@@@@@@@@@@@@@@@@@@@@@h/@:``.`````:h+                         
echo                       .h+-N@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@h/.`.y/````````/h-                       
echo                      /NNd@@@y@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@y/   ``````````.ho                      
echo                     o@@+h@@@s@+///d@@@@@@@@@@@@@@@@@@@@@@N//y-  ````````````ss                     
echo                    +@@@:@@@@@/    .o@@@@@@d...+@@@@@s.y@/. `-`   ````````````ys                    
echo                   -@@@@.N@@o`      yN@@Ny     /NN@@@@@o     h@`  ```.````````.d:                   
echo                   h@@@@o``          .@y.`       +@Nd@do       `` `````````````:@                   
echo                  .@@@@@@N+          -hhh:     `./ho-.     `-.    ``.```````````d:                  
echo                  /@@@@@h/`                    ./::+y+ `:::o@y   -/`````````````so                  
echo                  o@@@@s                         -so//:/sh@Nso/- /y.``/+````````oy                  
echo                  +@@@N`                           .so/: .s+ -s/ ```.`hNoo+-````ss                  
echo                  .@@@@-                                    `` `.```.`+y@o+:.```d:                  
echo                   d@@@o                                    `` ```-yhs`yy`...``:@                   
echo                   -@@@N`hd-                                  `syd@@@s.N/````./d/                   
echo                    o@@@`/@y                                `d@@@@@@@NN@@-````sy                    
echo                     s@@o +.                              .N@@@@@@@@@@@@@s```oy                     
echo                      +@@`                                o@@@@@@@@@@@@@N:`.ys                      
echo                       -d+                                @d++++++y@@@N+-`/d:                       
echo                         +h:                             `-```````-@d-``:yo`                        
echo                          `+y/                              ``````./`.sho`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooooy+//:/sssssso/ssyyosso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+ooooossooo+/:.                                         
echo                                   `:oyh@@hdyhh@N@@@NN@@N@@@@ho:`                                   
echo                                :sd@@@@@@@@@@@@@@@@@@@dN@@@@@Nooyhs:                                
echo                             -sN@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Nh//+ss:                             
echo                           /d@h@@oh@@N@@@@@@@@@@@@@@@@@@@@@@@@@@h/o.`.+y+`                          
echo                         /dddhd@s/N@@@@@@@@@@@@@@@@@@@@@@@@@@@/@/``.````:h+                         
echo                       .h+`o@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@N/-`.y+```````/h-                       
echo                      /NNdN@@@y@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@o` ``````````.ho                      
echo                     o@@N-N@@@sN+///o@@@@@@@@@@@@@@@@@@@@@@@s:so ````````````ss                     
echo                    +@@@s+@@@@@o    `-N@@@@@@+...d@@@@@--N@.` .- `````````````ys                    
echo                   -@@@@y-N@@s`      -N@@NN:     yN@@@@@N.    :@+ ````.```````.d:                   
echo                   h@@@@@+``           s@/.        h@@d@@-      `````.`````````:@                   
echo                  .@@@@@@@No           shhh`     `.sh/-`     .-`  ``````````````d:                  
echo                  /@@@@@Nh/.                     :/::sh- .:::d@-  ./-```````````so                  
echo                  o@@@@Ns                          +s+/::+s@@hs++`.y/``-+```````oy                  
echo                  +@@@@d                             /s+/. :s- +s```.``o@ss+-```ss                  
echo                  .@@@@N                                     ````..````/s@o+:.``d:                  
echo                   d@@@@/                                    `` ``.`yhy.sh`..``:@                   
echo                   -@@@@d`hd-                                   /ydd@@d.N/````/d/                   
echo                    o@@@s o@y                                 o@N@@@@@NN@d.```sy                    
echo                     s@@N. s.                               y@@@@@@@@@@@@@/``oy                     
echo                      +N@/                                 .@@@@@@@@@@@@@d..ys                      
echo                       -ds                                 sN++++++y@@@d:./d:                       
echo                         +h:                               ..``````-Ny.`:yo`                        
echo                          `+y/                              ```````-:`oho`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooooss//::+ssssss+osyyssso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+oooooosooo+/:.                                         
echo                                   `:oyhd@hhhyh@@@@@NN@@N@@@@ho:`                                   
echo                                :sdN@@@@@@@@@@@@@@@@@@Nd@@@@@@doyhs:                                
echo                             -sN@@@@@@@@@@@@@@@@@@@@@@@N@@@@@@@N@s/oys:                             
echo                           /dNh@@N/d@@N@@@@@@@@@@@@@@@@@@@@@@@@@@h++..+y+`                          
echo                         /hh@hyN@o/N@@@@@@@@@@@@@@@@@@@@@@@@@@N+d/``````:h+                         
echo                       .h+`.d@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@o:`.s+``````/h-                       
echo                      /NNNh@@@@yd@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@s.``````````.ho                      
echo                     o@@@y:@@@@sNo////N@@@@@@@@@@@@@@@@@@@@@@@/+y````````````ss                     
echo                    +@@@@:y@@@@@h     .s@@@@@@N...-@@@@@h.s@+. `-`````````````ys                    
echo                   -@@@@@o-@@Nd`       yN@@Nd     `@N@@@@Ny`    hd````.```````.d:                   
echo                   h@@@@@@+``           `@@..       `@@@@@h       ..```````````:@                   
echo                  .@@@@@@@@Ny           `hhho      ..hh--     `-. ```.``````````d:                  
echo                  /@@@@@@Nh/.                      //::yy` :::+@h ``:/``````````so                  
echo                  o@@@@@@o                           ss++::sy@Nys+:`os``-+``````oy                  
echo                  +@@@@@h                              os//  oo .s/````./@ss/.``ss                  
echo                  .NN@@@@                                      `.`.-````:s@o+-``d:                  
echo                   d@@@@@-                                     `` ..`ohh-oy`..`:@                   
echo                   -@@@@@y`hd:                                   .yhdN@@.@/```-@/                   
echo                    oN@@@: s@h                                 -@N@@@@@@N@h.``sy                    
echo                     sN@@d `y.                               :@@@@@@@@@@@@N.`oy                     
echo                      +N@@`                                  h@@@@@@@@@@@@o.ys                      
echo                       -dy`                                 :@o+++++y@@Ns-/d:                       
echo                         +h:                                ..``````/@+`:yo`                        
echo                          `+y/                              ````````:./ho`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooooos+/:::sssssss+sshysso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooosooo+/:.                                         
echo                                   `:oydddhyhyhh@N@@@NN@N@@@@ho:`                                   
echo                                :oh@N@@@@@@@@@@@@@@@@@@Nd@@@@@Nssys:                                
echo                             -sN@N@@@@@@@@@@@@@@@@@@@@@@N@@@@@@@@dooys:                             
echo                           /d@hyN@@:d@@N@@@@@@@@@@@@@@@@@@@@@@@@@@y+:.+y+`                          
echo                         /hydhdyN@+/@@@@@@@@@@@@@@@@@@@@@@@@@@@Nod/`````:h+                         
echo                       .h+``/N@@@@N@@@@@@@@@@@@@@@@@@@@@@@@@@@@y/..o+.````/h-                       
echo                      /NNN@d@@@@yh@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@h:`````````.ho                      
echo                     o@@@@++@@@Ns@y////y@@@@@@@@@@@@@@@@@@@@@@@o/y:``````````ss                     
echo                    +@@@@N.h@@@@@N`    `-N@@@@@@y...s@@@@@/-N@-` --```````````ys                    
echo                   -@@@@@No-NNNN.`      .NN@NNo     +NN@@@@N:`   +@:.``.``````.d:                   
echo                   h@@@@@@@+`.            +@o.`       /@N@@@/      ..``````````:@                   
echo                  .@@@@@@@@@Nd            /hhh:     `./ho-.     .:``````````````d:                  
echo                  /@@@@@@@@h+-                      .//:+ho `:::h@-``-/`````````so                  
echo                  o@@@@@@@s                           .ss+/:/sd@dyo+`/y.`.+.````oy                  
echo                  +N@@@@@y                              .so/: -s- os`.``.:@ss/``ss                  
echo                  .Nd@@@@d                                      `.`.-.``.-sd+/.`d:                  
echo                   dy@@@@@.                                     `.`..`/hh:os`..:@                   
echo                   -NN@@@@s`hh+                                  ``shdN@@.@-``.@/                   
echo                    odN@@N. s@@`                               ``h@@@@@@@N@s``sy                    
echo                     sdN@@s `y.                               `@@@@@@@@@@@@y`oy                     
echo                      +@y@o                                   +@@@@@@@@@@@@:ys                      
echo                       -hy:                                  .Ns++++/h@@@//d:                       
echo                         +h:                                 .-``````oh-:yo`                        
echo                          `+y/                              ````````.:/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oooo+oo/:::/ssssssoosyysso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oooooossoo+/:.                                         
echo                                   `:oydddhyyhshd@@@@NN@N@@@@ho:`                                   
echo                                :oh@@@@@@@@@@@@@@@@@@@@@N@@@@@@dsys:                                
echo                             -sN@@@@@@@@@@@@@@@@@@@@@@@@@N@@@@@@N@ysys:                             
echo                           /dNNyh@@d:@@@N@@@@@@@@@@@@@@@@@@@@@@@@@@s+-+y+`                          
echo                         /hoy@ydh@@+:N@@@@@@@@@@@@@@@@@@@@@@@@@@@oh:````:h+                         
echo                       .ho `.+@@@@@N@@@@@@@@@@@@@@@@@@@@@@@@@@@@h/.-s/.```/h-                       
echo                      /NNN@d@@@@@hy@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@d/````````.ho                      
echo                     o@@@@N:o@@@@sd@/////@@@@@@@@@@@@@@@@@@@@@@@h/s+`````````ss                     
echo                    +@@@@@N`h@@@@@@/     .s@@@@@@@:...N@@@@d.s@+. -:``````````ys                    
echo                   -@@@@@@No.NNNN/`       sN@@NN.     hN@@@@Nh`  `.@o``.``````.d:                   
echo                   h@@@@@@@@o..             d@:.        h@@@@d     `...````````:@                   
echo                  .@@@@@@@@@@N@.            yhhh`     `.sh/-`    `:-````````````d:                  
echo                  /@@@@@@@@@ho:                       ://:sh- -::+@y``./.```````so                  
echo                  oh@@@@@@@s                            /so+/:oyNNys+--y-`.+````oy                  
echo                  +hN@@@@@h                               /s+/` oo :y-```.:@so-`ss                  
echo                  .No@@@@@@                                      `...-.``.-sh+:`d:                  
echo                   d/N@@@@@.                                     `..`..:hh-y+..:@                   
echo                   -@d@@@@@s hhs                                 ```+yd@@@-@.`.d/                   
echo                    oyy@@@N. o@N-                               ``o@N@@@@@@@:`sy                    
echo                     syh@@@+ `y-                                s@@@@@@@@@@@-oy                     
echo                      +hoN@-                                   -N@@@@@@@@@@oys                      
echo                       -ho+.                                  `dy+++//d@Ns+d:                       
echo                         +h:                                 `.-.````.ho:yo`                        
echo                          `+y/                              `````````-+yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+++y+::::ossssssosyhyso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+ooooooosoo+/:.                                         
echo                                   `:oy@@hhyyhyhh@@@@NNNNN@@@ho:`                                   
echo                                :oy@dN@@@@@@@@@@@@@@@@@@@N@@@@@Nyss:                                
echo                             -sN@@@@@@@@@@@@@@@@@@@@@@@@@@N@@@@@@@hyys:                             
echo                           /d@@hyd@@h:@@@N@@@@@@@@@@@@@@@@@@@@@@@@@d+/+y+`                          
echo                         /h/syddhd@@+-N@@@@@@@@@@@@@@@@@@@@@@@@@@Nsh-```:h+                         
echo                       .ds `.-o@@@@@N@@@@@@@@@@@@@@@@@@@@@@@@@@@@d/--s:```/h-                       
echo                      /N@N@@h@@@@@dsN@@@@@@@@@@@@@@@@@@@@@@@@@@@@@N+```````.ho                      
echo                     o@@@@@@:o@@@@hh@+///:h@@@@@@@@@@@@@@@@@@@@@@N+oo````````ss                     
echo                    +@@@@@@@`h@@@@@@d     `.N@@@@@@d...+@@@@@/:@h-`-:.````````ys                    
echo                   -@@@@@@@No.@NNNy`       `@N@@Nh     -NN@@@@N:` ``hy````````.d:                   
echo                   h@@@@@@@@@h..`            .@d..       .@@@@@+  ``.`-.```````:@                   
echo                  .N@@@@@@@@@@@@+            .hhhs      .-hy--     -:```````````d:                  
echo                  /h@@@@@@@@@dy:.                       //:/hy `://dN```/-``````so                  
echo                  oyh@@@@@@Ny.                            ss++:/sd@dy+:`s:`./```oy                  
echo                  +hy@@@@@@d`                               oo+/ :s-.s/````/Ns+.ss                  
echo                  .N-@@@@@@N                                     ``--.--```-yy+.d:                  
echo                   d/o@@@@@@-                                    ``..`..-hh-h-.:@                   
echo                   -@+@@@@@@y yhh`                                ```:yd@@d/y`.d/                   
echo                    oy:@@@@@` +@@+                              ``.:@N@@@@@@d`sy                    
echo                     sy+@@@N/  y/                               `/@@@@@@@@@@yoy                     
echo                      +h/h@@`                                  ``@@@@@@@@@@dhs                      
echo                       -h/+/`                                 ``yh++//+@@dsd:                       
echo                         +h:                                ```.-.````:h+yo`                        
echo                          `+y/                              `````````.oyo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo++/ss/::::ssssyysoyhyso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+ooooooosoo+/:.                                         
echo                                   `:oy@@dyyyydshdN@@@NNNN@@@ho:`                                   
echo                                :sy@d@@@@@@@@@@@@@@@@@@@@@@N@@@@@ss:                                
echo                             -sN@NN@@@@@@@@@@@@@@@@@@@@@@@@N@@@@@@ddys:                             
echo                           /ddNNsyd@@h:d@@N@@@@@@@@@@@@@@@@@@@@@@@@@y/oy+`                          
echo                         /h/:yhy@y@@@o.N@@@@@@@@@@@@@@@@@@@@@@@@@@Nsy.``:h+                         
echo                       .dd` .`-s@@@@@N@@@@@@@@@@@@@@@@@@@@@@@@@@@@d+--s-``/h-                       
echo                      /N@NN@@y@@@@@@s@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@No``````.ho                      
echo                     o@@@@@@@:o@@@@dyNy//::/@@@@@@@@@@@@@@@@@@@@@@@o+s```````ss                     
echo                    +@@@@@@@N`s@@@@@@@-     .+@@@@@@@+...d@@@@h-hN:..:.```````ys                    
echo                   -@@@@@@@@Ny`yNNNN.        /NN@NN+     sN@@@@Nh````od.``````.d:                   
echo                   h@@@@@@@@@@N...             o@o.`       s@N@@d `````..``````:@                   
echo                  .NN@@@@@@@@@@@Nd             /hhh/     `.+h+-`  ``-:.`````````d:                  
echo                  /hs@@@@@@@@@@h/-                       .+/:oh/ -//s@:``:-`````so                  
echo                  oy:@@@@@@@@y:                            -ss+/:oy@Nyo/`s/`-:``oy                  
echo                  +h-@@@@@@@N`                               -so+.`o+`oo````+ds-ss                  
echo                  .N`s@@@@@@@.                                    ``.-.--```:ho:d:                  
echo                   d/`N@@@@@@/                                    ``..`..-hh-h.:@                   
echo                   -@.@@@@@@@h +hh:                             ` ```.-yd@@ys/.d/                   
echo                    oy`d@@@@N. -@@h                             ```..@N@@@@@@/sy                    
echo                     sy`d@@@N/  so                             ```.N@@@@@@@@Nsy                     
echo                      +h.+N@d`                                 ```h@@@@@@@@N@s                      
echo                       -h/.s:                                 ```sd+///oN@hd:                       
echo                         +h:                                `````-.````osyo`                        
echo                          `+y/                              ``````````+ho`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo++/+s+::::+sssyyyosyhso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oy@N@yyysdyhh@@@@NNN@@@@ho:`                                   
echo                                :ohdddN@@@@@@@@@@@@@@@@@@@@@N@@@Nys:                                
echo                             -sN@N@@@@@@@@@@@@@@@@@@@@@@@@@dN@@@@N@@ds:                             
echo                           /dd@@@oh@@@y:d@N@@@@@@@@@@@@@@@@@@@@@@@@@Nosy+`                          
echo                         /h+`sydyNy@@@y`@@@@@@@@@@@@@@@@@@@@@@@@@@@Nso``:h+                         
echo                       .dN. `..-s@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/-:s.`/h-                       
echo                      /N@@N@@@y@@@@@@sy@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@o`````.ho                      
echo                     o@@@@@@@@//N@@@NydN/::::y@@@@@@@@@@@@@@@@@@@@@@y+s``````ss                     
echo                    +@@@@@@@@N`+@@@@@@@y     `.d@@@@@@N.../@@@@@:o@o-.:.``````ys                    
echo                   -@@@@@@@@@@d`+NNNNs         hN@@N@.    `NN@@@NN-.``/@.`````.d:                   
echo                   h@@@@@@@@@@@@:..`             @@:.       `N@@@@/``.``..`````:@                   
echo                  .@@@@@@@@@@@@@@N@:             yhhh.     ..yh:- ```.:.````````d:                  
echo                  /d-N@@@@@@@@@Nho:`                       :+/:yh .//+@o``:-````so                  
echo                  oy d@@@@@@@@ho                             +soo:+y@@ys+`o:`:-`oy                  
echo                  +h h@@@@@@@@:                                os+/`/s`/s````yy+ss                  
echo                  .N -@@@@@@@@/                                   ```.-.--```+h+d:                  
echo                   d/ +@@@@@@@s                                   ```..`..-hs+/:@                   
echo                   -@`+@@@@@@@N`:hhs                            ```````.ydN@+h.d/                   
echo                    oy -@@@@@N. `N@@.                           ````..dN@@@@@dsy                    
echo                     sy /@@@@N+  /h                            ````.@@@@@@@@@dy                     
echo                      +h`:y@@h`                                 ```s@@@@@@@@Ns                      
echo                       -h/ /s-                                ````od////yN@d:                       
echo                         +h:                                 `````.````-hho`                        
echo                          `+y/                              ``````````/ho`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo++//os/::::ossyyyssyhso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:osdN@hsyssdshdN@@@NN@@@@ho:`                                   
echo                                :ohhdh@@@@@@@@@@@@@@@@@@@@@@@@@@@hs:                                
echo                             -s@NN@N@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@N@s:                             
echo                           /d@hN@d+hd@@h:h@N@@@@@@@@@@@@@@@@@@@@@@@@@hyh+`                          
echo                         /do`-hsdyNyN@@d y@@@@@@@@@@@@@@@@@@@@@@@@@@@s/`/h+                         
echo                       .d@o```..:s@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@d/:/+`/h-                       
echo                      /N@@@N@@@y@@@@@@yoN@@@@@@@@@@@@@@@@@@@@@@@@@@@@@o````.ho                      
echo                     o@@@@@@@@@//@@@@@hy@s::::/@@@@@@@@@@@@@@@@@@@@@@h/o`````ss                     
echo                    +@@@@@@@@@@--@@@@@@@@.     .:@@@@@@@s...d@@@@s/Nh-./.`````ys                    
echo                   -@@@@@@@@@@@@-.NNNNN.        .NN@@Ny     oN@@@@No.`.:@.````.d:                   
echo                   h@@@@@@@@@@@@@s...             .@d..       +@N@@y````...````:@                   
echo                  .@@N@@@@@@@@@@@@@@h             .hhhy      ./do:.``.`:-```````d:                  
echo                  /@`s@@@@@@@@@@@dy:-                       `++:oh/`///@y``:.```so                  
echo                  oy -@@@@@@@@@@y.                            `sso+/sh@hs+`o:`/`oy                  
echo                  +h .@@@@@@@@@s`                               -so+.-s-:s```.@oys                  
echo                  .N  /@@@@@@@@y                                  `````-..-``.yo@:                  
echo                   d/  h@@@@@@@@                                  `````....:h/s:@                   
echo                   -@``d@@@@@@@@-`hhh-                           ```````.y@NN+/d/                   
echo                    oy  s@@@@@@:` h@@s                         ` ```...hN@@@@Nyy                    
echo                     sy  h@@@@No  -d-                          ``````h@@@@@@@Ny                     
echo                      +h` +d@@y`                                ````o@@@@@@@@s                      
echo                       -h/ `y+-                               `````oh////@N@:                       
echo                         +h:                                 ``````.```.s@o`                        
echo                          `+y/                              ``````````/ho`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oooo+///s+::::/ssyyyysyyso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oshNNhosssdyhh@@@@NN@@@@ho:`                                   
echo                                :oyhhhh@@@@@@@@@@@@@@@@@@@@@NN@@@ds:                                
echo                             -s@N@N@@@@@@@@@@@@@@@@@@@@@@@@@N@@@@@N@Ny:                             
echo                           /h@hd@@yodd@@h:y@N@@@@@@@@@@@@@@@@@@@@@@@@Nhh+`                          
echo                         /@y. +hodhNyN@@@`+@@@@@@@@@@@@@@@@@@@@@@@@@@do./h+                         
echo                       .d@d-``..--o@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@d:-+-/h-                       
echo                      /N@@@@N@@@yd@@@@@@od@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/```.ho                      
echo                     o@@@@@@@@@No:h@@@@@y@N/::::y@@@@@@@@@@@@@@@@@@@@@h/o````ss                     
echo                    +@@@@@@@@@@@+`@@@@@@@@h     `.s@@@@@@@:..+@@@@@/@d:./.````ys                    
echo                   -@@@@@@@@@@@@No`yNNNNs         oNN@NN/    `@N@@@Nh.`.-d.```.d:                   
echo                   h@@@@@@@@@@@@@@N...`             o@o.`      `N@@@@..``...```:@                   
echo                  .@N@@@@@@@@@@@@@@@N@/             /hhh/     `.yh:-````--``````d:                  
echo                  /@/.@@@@@@@@@@@@@ho:`                       -+//hy`://dd``/.``so                  
echo                  oy  o@@@@@@@@@Ny+                             +yso/oy@ds+`s..-oy                  
echo                  +h  +@@@@@@@@@N``                               os+:.o:-s```/hhs                  
echo                  .N  .s@@@@@@@@N`                                ``````--.-``:y@:                  
echo                   d/  `N@@@@@@@@-                               ` `````....+h++@                   
echo                   -@` :N@@@@@@@@o ohhs                          ````````.h@@ysd/                   
echo                    oy  `@@@@@@@o` /@@N`                        ``.``.`.hN@@@@@y                    
echo                     sy  .N@@@@Ny   ho                          ``````y@@@@@@@y                     
echo                      +h` .oN@@h`                              ``````o@@@@@@@s                      
echo                       -h/  .d/-                               `````oy//:s@@:                       
echo                         +h:                                 ```````.```+No`                        
echo                          `+y/                              ``````````/ho`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./oooo+///+s/::::+syyyyssyso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:osy@@dy+ssydshdN@@@@@@@@ho:`                                   
echo                                :oyhsyy@@@@@@@@@@@@@@@@@@@@@@NN@@@s:                                
echo                             -s@@@NNN@@@@@@@@@@@@@@@@@@@@@@@@N@@@@@@Ny:                             
echo                           /yhdyN@@oodd@@d:sN@@@@@@@@@@@@@@@@@@@@@@@@@@d+`                          
echo                         /@h/ .ohodhNy@@@@--@@@@@@@@@@@@@@@@@@@@@@@@@@y//h+                         
echo                       .hNNs```..--+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@y:-++h-                       
echo                      /N@@@@@N@@@yy@@@@@@ss@@@@@@@@@@@@@@@@@@@@@@@@@@@@N:``.ho                      
echo                     o@@@@@@@@@@Ns-o@@@@@yh@s:::::N@@@@@@@@@@@@@@@@@@@@d//```ss                     
echo                    +@@@@@@@@@@@@h s@@@@@@@@:     ..N@@@@@@y.--@@@@@/h@:./````ys                    
echo                   -@@@@@@@@@@@@@Nd`:NNNNN-         dN@@N@`    oN@@@N@-.`:d.``.d:                   
echo                   h@@@@@@@@@@@@@@@@o...              @@-.       o@N@@:```...``:@                   
echo                  .@@dN@@@@@@@@@@@@@@@@@              shhh.     .+d+:`.``--`````d:                  
echo                  /@y /N@@@@@@@@@@@@hy/:                        ++:sd-.//hd`.:``so                  
echo                  oy   h@@@@@@@@@@dy`                            .yss++yN@s+.s`:oy                  
echo                  +h   h@@@@@@@@@@/`                             ` :so/`o/-s```hds                  
echo                  .N   -y@@@@@@@@@+                              ` ``````--..``sN:                  
echo                   d/   .@@@@@@@@@y                              ````````....yos@                   
echo                   -@`  o@@@@@@@@@@ .hhh-                        `````````-h@Ns@/                   
echo                    oy   .N@@@@@@h. `N@@o                       ``.``.`.-d@@@@@y                    
echo                     sy   :@@@@@@d.  od`                        ```````y@@@@@@y                     
echo                      +h`  :s@@@h.                             ```````s@@@@@@s                      
echo                       -h/   :d/-                              ``````ss/:/N@:                       
echo                         +h:                                ````````````:@o`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo++////oo::::/syyyyysyso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:osyh@@yoossdyyh@@@@@@@@@ho:`                                   
echo                                :syysoyy@@@@@@@@@@@@@@@@@@@@@@N@@@s:                                
echo                             -sdd@@@N@@@@@@@@@@@@@@@@@@@@@@@@@@N@@@@Ny:                             
echo                           /ysyhh@@@+odd@@@:o@@@N@@@@@@@@@@@@@@@@@@@@@Nd+`                          
echo                         /dho. -oyodh@y@@@@+`N@@@@@@@@@@@@@@@@@@@@@@@@N++h+                         
echo                       .hhNd+``.-.--/N@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@o:/oh-                       
echo                      /NN@@@@@N@@@hs@@@@@@dod@@@@@@@@@@@@@@@@@@@@@@@@@@@@...ho                      
echo                     o@@@@@@@@@@@@y:/N@@@@dyNN/::::o@@@@@@@@@@@@@@@@@@@@h/:``ss                     
echo                    +@@@@@@@@@@@@@N`-@@@@@@@@@     `.+@@@@@@@:--s@@@@oyN:.:```ys                    
echo                   -@@@@@@@@@@@@@@@N/`hNNNNh         -NN@@No`   .N@@@NN:.`:y``.d:                   
echo                   h@@@@@@@@@@@@@@@@@N...`             -@d..      -@N@@+```.-.`:@                   
echo                  .N@NdN@@@@@@@@@@@@@@@N@o             `hhhs     .-hy:.```--````d:                  
echo                  /hy: s@@@@@@@@@@@@@Nhs:.                       :o/+d/.//yh`.-`so                  
echo                  oy    N@@@@@@@@@@Ny+                             oys+/y@@s/-/-sy                  
echo                  +h    @@@@@@@@@@@@``                           ` `.so+`+/-o``+@s                  
echo                  .N    :h@@@@@@@@@@                             `````````-.-.`/N:                  
echo                   d/    -@@@@@@@@@@`                            `````````...-hs@                   
echo                   -@`   y@@@@@@@@@@: ohhs                        `````````:dNhN/                   
echo                    oy    -@@@@@@@N-` o@@N`                     ```.````.-@@@@@y                    
echo                     sy    +@@@@@@@/  .@+                       ````````h@@@@@y                     
echo                      +h`   /y@@@d:                            ````````y@@@@@s                      
echo                       -h/    +d/:                            ```````.y+::h@:                       
echo                         +h:                                ````````````:ho`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo++///:/s+::::+yyyyyysso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:osyydddo/ssydshhN@@@@@@@ho:`                                   
echo                                :ohss+ysd@@@@@@@@@@@@@@@@@@@@@NN@@s:                                
echo                             -sddd@@NN@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ny:                             
echo                           /yo+dsd@@@/odh@@N/+d@@N@@@@@@@@@@@@@@@@@@@@@d+`                          
echo                         /hys/  /sy+dh@hd@@@h y@@@@@@@@@@@@@@@@@@@@@@@@hoh+                         
echo                       .hsdNh/`..----:@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@N/-sh-                       
echo                      /@d@@@@@@N@@@@s@@@@@@@os@@@@@@@@@@@@@@@@@@@@@@@@@@@y..ho                      
echo                     oN@@@@@@@@@@@@d+:y@@@@Nyh@y:::::@@@@@@@@@@@@@@@@@@@@s+.`ss                     
echo                    +NN@@@@@@@@@@@@@/ d@@@@@@@@+     ..d@@@@@@y--/@@@@ssN:--``ys                    
echo                   -@@@@@@@@@@@@@@@@Nh`:NNNNN/         sN@@NN.`   h@@@NN/.`++`.d:                   
echo                   h@@@@@@@@@@@@@@@@@@@o...`             s@+.`    ``d@@@s```..`:@                   
echo                  .Nd@@d@@@@@@@@@@@@@@@@@N@-             /hhh:    `-sd:-```-.```d:                  
echo                  /hoy` y@@@@@@@@@@@@@@dh+/`                      `o+/hs`//hs`:`so                  
echo                  oy    `@@@@@@@@@@@@dy.                          ``:yso/y@@s:+.yy                  
echo                  +h     N@@@@@@@@@@@/`                           ``.`oo+.//:/`.Ns                  
echo                  .N     /h@@@@@@@@@@+                            `````````-.-`.N:                  
echo                   d/     :@@@@@@@@@@s                            `````````.`.os@                   
echo                   -@`    h@@@@@@@@@@d .hhh:                    ` ``````````o@@@/                   
echo                    oy     :@@@@@@@@o. `N@@s                    ```.`````.:N@@@y                    
echo                     sy     s@@@@@@Ny   yd`                    `````````.d@@@@y                     
echo                      +h`    +y@@@@+                           ````````.d@@@@s                      
echo                       -h/     od/:                           ````````-y/:s@:                       
echo                         +h:    `                           ````````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo++///::+s/:::/oyyhhysso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:ooyyyd@so+sshhyh@@@@@@@@ho:`                                   
echo                                :ohoo+oysN@@@@@@@@@@@@@@@@@@@@@N@@s:                                
echo                             -sydydN@NN@@@@@@@@@@@@@@@@@@@@@@@@N@@@@Ny:                             
echo                           /yo:ydo@@@@/o@yN@@++h@N@@@@@@@@@@@@@@@@@@@@@@+`                          
echo                         /hoso.  /oy+dh@hd@@@N`/@@@@@@@@@@@@@@@@@@@@@@@Nsh+                         
echo                       .h+o@dd-...---:-h@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@h:sd-                       
echo                      /dsN@@@@@@N@@@Nsh@@@@@@ho@@@@@@@@@@@@@@@@@@@@@@@@@@@/-ho                      
echo                     od@@@@@@@@@@@@@@y:/@@@@@dyN@/::::o@@@@@@@@@@@@@@@@@@@+/`ss                     
echo                    +@@@@@@@@@@@@@@@@d :@@@@@@@@N`     ./@@@@@@N:::@@@@ys@-:.`ys                    
echo                   -NN@@@@@@@@@@@@@@@@N/`yNNNN@`        `@N@@Ns`  `+@@@@N/``s-.d:                   
echo                   h@@@@@@@@@@@@@@@@@@@@@-...              NN..   ```s@NNs``...:@                   
echo                  .No@@dd@@@@@@@@@@@@@@@@@@@d              yhhy   ``-+d/-```-.``d:                  
echo                  /h-ho `h@@@@@@@@@@@@@@Nhy/:                     ``+o/yy`:/d/.-so                  
echo                  oy     `@@@@@@@@@@@@@ys                         ```.yso/s@do-/sy                  
echo                  +h      N@@@@@@@@@@@N``                         `````/s+.+:+-`hs                  
echo                  .N      /y@@@@@@@@@@N                           ``````````-..`@:                  
echo                   d/      -@@@@@@@@@@@`                          ``````````.`-h@                   
echo                   -@`    `h@@@@@@@@@@@: ohhy`                   ```````````.hNN/                   
echo                    oy     `:@@@@@@@@@.` o@@@.                   ```.`````.o@@@y                    
echo                     sy      s@@@@@@Nd.  -@+                   ``````````-N@@@y                     
echo                      +h`     oy@@@Ns                           ````````-@@@@s                      
echo                       -h/      sd//`                         `````````/o:od:                       
echo                         +h:     `                           ```````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo++///:::so::://yyhhhyso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oosyshdd++osydshhN@@@@@@ho:`                                   
echo                                :oyy/++ssy@@@@@@@@@@@@@@@@@@@@@@N@s:                                
echo                             -ssyyh@@@N@@@@@@@@@@@@@@@@@@@@@@@@@@N@@Ny:                             
echo                           /y+.+dhoN@@@/+@yN@@o/y@N@@@@@@@@@@@@@@@@@@@@@+`                          
echo                         /h/oy+  `/oy/hyNdh@@@@/`N@@@@@@@@@@@@@@@@@@@@@@dd+                         
echo                       .h+-@Ndd-...-----o@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@N+od-                       
echo                      /h/d@@@@@@@N@@@@ys@@@@@@Nos@@@@@@@@@@@@@@@@@@@@@@@@@d-ho                      
echo                     oys@@@@@@@@@@@@@@y+/h@@@@Nyh@h:::::d@@@@@@@@@@@@@@@@@N/-ss                     
echo                    +hy@@@@@@@@@@@@@@@@: d@@@@@@@@y     `.h@@@@@@o::h@@@hyd.:`ys                    
echo                   -@y@@@@@@@@@@@@@@@@@Nd`-NNNNNy         +N@@@N.` `-N@@@@/`.s.d:                   
echo                   hs@@@@@@@@@@@@@@@@@@@@@h...`             /@o.`  ```/@NNs``..:@                   
echo                  .N.N@Ndd@@@@@@@@@@@@@@@@@@N@o             -hdd/ ```.:d+-```-``d:                  
echo                  /h sh/ `y@@@@@@@@@@@@@@@@hs/-                   ```:o/sh`:/@.-so                  
echo                  oy       N@@@@@@@@@@@@@y/                       `````oys/sNh+/oy                  
echo                  +h       @@@@@@@@@@@@@s``                       ``````:s+.+-+`ss                  
echo                  .N       :s@@@@@@@@@@@s                         ```````````--.d:                  
echo                   d/       `@@@@@@@@@@@y                        ````````````..y@                   
echo                   -@`      h@@@@@@@@@@@@ `hhho                  ````````````/@@/                   
echo                    oy      `-@@@@@@@@@/. `N@@h                  ```.``````-h@@y                    
echo                     sy       o@@@@@@@@+   yd`                 ```````````+@@@y                     
echo                      +h`      oy@@@@y-                         `````````+@@@s                      
echo                       -h/       s@//.                        `````````.+/od:                       
echo                         +h:      `                          ```````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo++///:::/s/:://oyhhhyso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oooysshdso/sshhyh@@@@@@@ho:`                                   
echo                                :osh::oosod@@@@@@@@@@@@@@@@@@@@@N@s:                                
echo                             -ssosydN@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ny:                             
echo                           /y+.-ydso@@@@//Ny@@@y/y@N@@@@@@@@@@@@@@@@@@@@+`                          
echo                         /h/-ho:  `/oh/yyN@hN@@@y y@@@@@@@@@@@@@@@@@@@@@Nd+                         
echo                       .h+`o@Ndd-...-----:N@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@hod-                       
echo                      /h-o@@@@@@@@N@@@@dod@@@@@@hod@@@@@@@@@@@@@@@@@@@@@@@N+ho                      
echo                     oy:N@@@@@@@@@@@@@@dy:/@@@@@dy@@+:::/+@@@@@@@@@@@@@@@@@y:ss                     
echo                    +h/N@@@@@@@@@@@@@@@@h :@@@@@@@@@-     .:@@@@@@d::s@@@yhs-.ys                    
echo                   -@/N@@@@@@@@@@@@@@@@@@N+`oNNNNN:         @N@@N+``..@@@N@:`/:d:                   
echo                   h/d@@@@@@@@@@@@@@@@@@@@@@/...`             @N-. ```.-@NNo`..:@                   
echo                  .N s@@@dd@@@@@@@@@@@@@@@@@@@N@-             oddy ```.-ho-``..`d:                  
echo                  /h .hh: `yN@@@@@@@@@@@@@@@dh+/`                  ```.o+oh`/+y.yo                  
echo                  oy        d@@@@@@@@@@@@@hh.                      `````+ys/yNs:yy                  
echo                  +h        d@@@@@@@@@@@@@:.                      ```````-s+.o::ss                  
echo                  .N        :o@@@@@@@@@@@@.                      ` ``````````...d:                  
echo                   d/         @@@@@@@@@@@@:                      ` ``````````..+@                   
echo                   -@`       yN@@@@@@@@@@@+ /hhh-                ````````````.h@/                   
echo                    oy       `.N@@@@@@@@d.` +@@@/               ``.``.`````./N@y                    
echo                     sy        +@@@@@@@Nd`  -@o                 ```````````h@@y                     
echo                      +h`       oy@@@@d+                       ``````````.h@@s                      
echo                       -h/        oN++-                        `````````-+od:                       
echo                         +h:       `                         ```````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo++///::::os:://+yhhhyso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oooss+shd+o+sydyhh@@@@@@ho:`                                   
echo                                :osy+.+sosoN@@@@@@@@@@@@@@@@@@@@@ds:                                
echo                             -ss/+yh@@@@@@@@@@@@@@@@@@@@@@@@@@@@@NN@Ny:                             
echo                           /y+../hdos@@@@o-Nyd@@h/sd@@N@@@@@@@@@@@@@@@@@+`                          
echo                         /h/ od+-  `/+h/sy@Nh@@@@N`/@@@@@@@@@@@@@@@@@@@@@@+                         
echo                       .h+ .d@@@d-..-----::h@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Nsh-                       
echo                      /h.-d@@@@@@@@N@@@@@os@@@@@@@os@@@@@@@@@@@@@@@@@@@@@@@hho                      
echo                     oy`y@@@@@@@@@@@@@@@Ny+:h@@@@@hh@@:////d@@@@@@@@@@@@@@@@/ys                     
echo                    +h.y@@@@@@@@@@@@@@@@@@: h@@@@@@@@@     `.h@@@@@N/:o@@@s@/:ys                    
echo                   -@.d@@@@@@@@@@@@@@@@@@@NN..dNNNN@`        /N@@@d..``d@@Nd..+d:                   
echo                   h//@@@@@@@@@@@@@@@@@@@@@@@N....             /@o.````.-@NN/`./@                   
echo                  .N .N@@@dd@@@@@@@@@@@@@@@@@@@@@@             .ddd:````-ho-``-`d:                  
echo                  /h  +hh-  y@@@@@@@@@@@@@@@@Nhy//                 `````o+oy./y:yo                  
echo                  oy         s@@@@@@@@@@@@@Nhs                     ``````/yo/h@+yy                  
echo                  +h         s@@@@@@@@@@@@@@.`                   ` ```````-o/-//ss                  
echo                  .N         -+N@@@@@@@@@@@d                     ` ```````````-.d:                  
echo                   d/          y@@@@@@@@@@@@                     `````````````.:@                   
echo                   -@`        o@@@@@@@@@@@@@` yhhy               `````````````+N/                   
echo                    oy        `.d@@@@@@@@@+.  @@@N              ``.`````````-h@y                    
echo                     sy         :@@@@@@@@@+   y@.               ```````````:N@y                     
echo                      +h`        +y@@@@@y`                     ```````````/N@s                      
echo                       -h/         /@o+/                      ```````````/sd:                       
echo                         +h:        ``                      ````````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo++///::::/so:///oyhhhso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:osooso+ydy+/sshhyhN@@@@@ho:`                                   
echo                                :osso`.ssoos@@@@@@@@@@@@@@@@@@@@@ds:                                
echo                             -ss/-ohhN@@@@@@@@@@@@@@@@@@@@@@@@@@@@N@Ny:                             
echo                           /y+`..shh+s@@@@s.Nhh@@@/sh@@N@@@@@@@@@@@@@@@@+`                          
echo                         /h/ .hh+`  `//h++hd@hd@@@@:`@@@@@@@@@@@@@@@@@@@@@+                         
echo                       .h+  /N@@@@--------::o@@@@@@@@@@@@@@@@@@@@@@@@@@@@@dd-                       
echo                      /h..+N@@@@@@@@@@@@@@ho@@@@@@@hod@@@@@@@@@@@@@@@@@@@@@Ndo                      
echo                     oy`-N@@@@@@@@@@@@@@@@dy:/@@@@@@y@@o////o@@@@@@@@@@@@@@@yhs                     
echo                    +h :N@@@@@@@@@@@@@@@@@@@ .@@@@@@@@@+     ./@@@@@@+/+@@@sd:ys                    
echo                   -@`/N@@@@@@@@@@@@@@@@@@@@Ny`/NNNNNs         @N@@N:.``h@@Ny`/d:                   
echo                   h/ @@@@@@@@@@@@@@@@@@@@@@@@@y...`             N@-.```..NN@../@                   
echo                  .N  +N@@@ddN@@@@@@@@@@@@@@@@@@@N@s             sdds````-h+-``.d:                  
echo                  /h   shy-  sd@@@@@@@@@@@@@@@@@hs/-               ``````++ss./yyo                  
echo                  oy          /@@@@@@@@@@@@@@@h+                   ```````/yo+@yyy                  
echo                  +h          :@@@@@@@@@@@@@@s.`                 ``````````-o:/:ys                  
echo                  .N          `+h@@@@@@@@@@@@o                   `````````````.-d:                  
echo                   d/           :@@@@@@@@@@@@s                    ````````````.:@                   
echo                   -@`         /d@@@@@@@@@@@@y -hhh+            ` ````````````-N/                   
echo                    oy          .s@@@@@@@@@@.. -@@@s            ```.``.`````.+@y                    
echo                     sy          .N@@@@@@@N@`  .@s`            `````````````y@y                     
echo                      +h`         /yN@@@@h/                    ```````````.h@s                      
echo                       -h/          -@s++`                    ```````````-sd:                       
echo                         +h:         ``                     ````````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo++///:::::+s////+yhhhso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oooo+o/+y@oo/syhyhd@@@@@ho:`                                   
echo                                :osoo: :ysooh@@@@@@@@@@@@@@@@@@@@ds:                                
echo                             -ss/`/yhdN@@@@@@@@@@@@@@@@@@@@@@@@@@@NNNy:                             
echo                           /y+` .-yhh/s@@@@h`ddyN@N+sy@NN@@@@@@@@@@@@@@@+`                          
echo                         /h/  :@y+`  `//ys/hh@dh@@@@y h@@@@@@@@@@@@@@@@@@N+                         
echo                       .h+  `o@@@@@:-------:::N@@@@@@@@@@@@@@@@@@@@@@@@@@@Nd-                       
echo                      /h. -y@@@@@@@@@@N@@@@Noy@@@@@@@os@@@@@@@@@@@@@@@@@@@@@No                      
echo                     oy` o@@@@@@@@@@@@@@@@@Ny+:y@@@@@hh@@/////N@@@@@@@@@@@@@Nhs                     
echo                    +h `o@@@@@@@@@@@@@@@@@@@@+ s@@@@@@@@N`    .-@@@@@@o/o@@Ny+ys                    
echo                   -@` h@@@@@@@@@@@@@@@@@@@@@@@/`yNNNNN-        oN@@@+.``h@@@/-N:                   
echo                   h/ :@@@@@@@@@@@@@@@@@@@@@@@@@@/...`            o@:-```.-@Ny`/@                   
echo                  .N   y@@@@dd@@@@@@@@@@@@@@@@@@@@@N@:            :ddh````-h/.`.d:                  
echo                  /h   `yyy:  /h@@@@@@@@@@@@@@@@@dho/.            ``.`````++s/:yyo                  
echo                  oy            N@@@@@@@@@@@@@@dh-`               `````````/s+s@yy                  
echo                  +h            N@@@@@@@@@@@@@@:.                 ``.```````:o-/hs                  
echo                  .N            /o@@@@@@@@@@@@@-                  `````````````.d:                  
echo                   d/             N@@@@@@@@@@@@-                  `````````````:@                   
echo                   -@`          .hN@@@@@@@@@@@@: +hhh.          ` ````````````.d/                   
echo                    oy           ./@@@@@@@@@@o.` y@@@-          ```.`````````-@y                    
echo                     sy            d@@@@@@@@@o   s@-`          `````````````/Ny                     
echo                      +h`          -yd@@@@dy                   ````````````+@s                      
echo                       -h/           `Nh++:                   ```````````.s@:                       
echo                         +h:          `.                    ````````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+////:::::/os///+ohhhso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                 
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:ooso/+//sdd/o+syhydN@@@@ho:`                                   
echo                                :oso//.`+hs+od@@@@@@@@@@@@@@@@@@@@s:                                
echo                             -ss/`.+dy@@@@@@@@@@@@@@@@@@@@@@@@@@@@NNNy:                             
echo                           /y+` `-:hhh/s@@@@@`y@y@@@ooyNNN@@@@@@@@@@@@@@+`                          
echo                         /h/   +Ns/   `::sy:yhN@hN@@@N`o@@@@@@@@@@@@@@@@@N+                         
echo                       .h+   `h@@@NN+------::::y@@@@@@@@@@@@@@@@@@@@@@@@@@@@-                       
echo                      /h. `:d@@@@@@@@@@N@@@@@ho@@@@@@@ho@@@@@@@@@@@@@@@@@@@@@o                      
echo                     oy`  h@@@@@@@@@@@@@@@@@@dy:/N@@@@@y@@s////y@@@@@@@@@@@@@@s                     
echo                    +h  -h@@@@@@@@@@@@@@@@@@@@N` N@@@@@@@@s    `-s@@@@@s/o@@hyys                    
echo                   -@` .N@@@@@@@@@@@@@@@@@@@@@@@@..@NNNNd        .N@@@y.``d@Nd.@:                   
echo                   h/  s@@@@@@@@@@@@@@@@@@@@@@@@@@N....           `-@o-```.:@N::@                   
echo                  .N   `d@@@Nddd@@@@@@@@@@@@@@@@@@@@@N@`          ``hdd-```-d:`.@:                  
echo                  /h    .yyy/  .y@@@@@@@@@@@@@@@@@@hh+/           `````````+/h-+@o                  
echo                  oy             s@@@@@@@@@@@@@@@hy``             ``````````+s+ddy                  
echo                  +d             s@@@@@@@@@@@@@@N..               ```````````++:ys                  
echo                  .@`            -+d@@@@@@@@@@@@@                 `````````````.d:                  
echo                   d/              o@@@@@@@@@@@@@                 `````````````:@                   
echo                   -@`            y@@@@@@@@@@@@@@  yhhs          ``.``````````.d/                   
echo                    oy            `.@@@@@@@@@@@-. `@@@d          ```.````````.hy                    
echo                     sy             +@@@@@@@@N@`  `@y`         `````````````.@y                     
echo                      +h`           `sh@@@@Nh:                  ```````````:@s                      
echo                       -h/             hN+++`                 ````````````+@:                       
echo                         +h:           `.                    ```````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+////::::::/s+//++yhhso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:ooso/:///y@s+/syhyh@@@@@ho:`                                   
echo                                :oso::/ .sds/o@@@@@@@@@@@@@@@@@@@@s:                                
echo                             -ss/` :odyN@@@@@@@@@@@@@@@@@@@@@@@@@@@NNy:                             
echo                           /y+`  .-/dhh/o@@@@N.+@yd@@soy@NN@@@@@@@@@@@@@+`                          
echo                         /h/    s@o/    ::+h/oh@Nh@@@@@:-@@@@@@@@@@@@@@@@N+                         
echo                       .h+    .d@@NNNs-----:::::/@@@@@@@@@@@@@@@@@@@@@@@@@@@-                       
echo                      /h.  ./@@@@@@@@@@@@@@@@@Nos@@@@@@Noy@@@@@@@@@@@@@@@@@@@o                      
echo                     oy`  `@@@@@@@@@@@@@@@@@@@Nyo:s@@@@@hh@@////o@@@@@@@@@@@@Ns                     
echo                    +h   :d@@@@@@@@@@@@@@@@@@@@@s /@@@@@@@@@`    -/@@@@@y/y@@hhs                    
echo                   -@`  /N@@@@@@@@@@@@@@@@@@@@@@@@s`+NNNNN+`     ``h@@@h.`.@@@/d:                   
echo                   h/   d@@@@@@@@@@@@@@@@@@@@@@@@@@@y....          ``@h-.``.o@h:@                   
echo                  .N    .d@@@@hddN@@@@@@@@@@@@@@@@@@@@@Ny         ```sdd:```:y-`@:                  
echo                  /h     .yyys   sh@@@@@@@@@@@@@@@@@Nhy/:         ``````````o/s-@o                  
echo                  oy              .@@@@@@@@@@@@@@@Nhs``           ```````````oooNy                  
echo                  +@`             .@@@@@@@@@@@@@@@y..             ````````````o:hs                  
echo                  .@:              +s@@@@@@@@@@@@@s               ``````````````d:                  
echo                   d+               `@@@@@@@@@@@@@s              ``````````````:@                   
echo                   -@`             /h@@@@@@@@@@@@@s :hhh/        `````````````.d/                   
echo                    oh             `.s@@@@@@@@@@y.` +@@@/      ` ```.`````````sy                    
echo                     sy              .@@@@@@@@@@s   +@:         `````````````yy                     
echo                      +h`             +yN@@@@dy                 ```````````.hs                      
echo                       -h/              o@o++-`                ```````````/d:                       
echo                         +h:             .`                  ```````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+:://:::::::+s//++shhso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:ooos/:::/+dd+o/yyhy@@@@@ho:`                                   
echo                                :oso:`/- -hdo:sN@@@@@@@@@@@@@@@@@@s:                                
echo                             -ss/` `/ydy@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ny:                             
echo                           /y+`   --+dhy//@@@@@::@hh@@y+hdNN@@@@@@@@@@@@+`                          
echo                         /h/    `h@o/    -:/ho/hd@dd@@@@o`@@@@@@@@@@@@@@@N+                         
echo                       .h+    `-@@@NNNh-----::::::d@@@@@@@@@@@@@@@@@@@@@@@@@-                       
echo                      /h.   ./N@@@@@@@@@@@N@@@@@ho@@@@@@@hoN@@@@@@@@@@@@@@@@@o                      
echo                     oy`   .N@@@@@@@@@@@@@@@@@@@dy/:@@@@@@y@@o///+N@@@@@@@@@@@s                     
echo                    +h    /@@@@@@@@@@@@@@@@@@@@@@@- d@@@@@@@@s    -:N@@@@s/d@d@s                    
echo                   -@`   oN@@@@@@@@@@@@@@@@@@@@@@@@@:`hNNNN@``   ```o@@@d.`-@@yd:                   
echo                   h/   `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/...`        ```y@-.``.dN+@                   
echo                  .N     .d@@@@dhh@@@@@@@@@@@@@@@@@@@@@@NN:        ```/dd/```o+.d:                  
echo                  /h      `yyyy`  :y@@@@@@@@@@@@@@@@@@@hs+.        `````````.os:ho                  
echo                  oy                y@@@@@@@@@@@@@@@@h/``          ``````````.soNy                  
echo                  +@-               y@@@@@@@@@@@@@@@+.`            ```````````-+hs                  
echo                  .@y               -+d@@@@@@@@@@@@@:            ` `````````````d:                  
echo                   dh                 o@@@@@@@@@@@@@-            ``````````````:@                   
echo                   -@-              `h@@@@@@@@@@@@@@- ohhh`      `````````````.d/                   
echo                    o@               .-@@@@@@@@@@@/-  @@@@      ``.``.````````sy                    
echo                     sy                h@@@@@@@@N@-   dh`       `````````````oy                     
echo                      +h`              -yd@@@@Nh:              ````````````.ys                      
echo                       -h/               .@h++/`               ```````````/d:                       
echo                         +h:              ..                 ```````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+:-//:::::::/so/++ohhso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:ooos+:.::/s@h/ooyyydN@@@ho:`                                   
echo                                :oso:`.+. /@ho:y@@@@@@@@@@@@@@@@@@s:                                
echo                             -ss/`  ./hhh@@@@@@@@@@@@@@@@@@@@@@@@@@@Ny:                             
echo                           /y+`    -:odyy/:@@@@@o`@dyN@d+hhNN@@@@@@@@@@@+`                          
echo                         /h/     `d@s/`   -::yy:sh@@hN@@@d`h@@@@@@@@@@@@@N+                         
echo                       .h+     `-@@@NNNN:----::::::o@@@@@@@@@@@@@@@@@@@@@@@@-                       
echo                      /h.    -+N@@@@@@@@@@@N@@@@@Noy@@@@@@Noh@@@@@@@@@@@@@@@@o                      
echo                     oy`    -@@@@@@@@@@@@@@@@@@@@Nys:o@@@@@yh@d//++d@@@@@@@@@@s                     
echo                    +h    `+N@@@@@@@@@@@@@@@@@@@@@@d -@@@@@@@@N`  `.:d@@@@o+NN@s                    
echo                   -@`    yN@@@@@@@@@@@@@@@@@@@@@@@@@@.-NNNNNo`   ```:@@@d.`+@@@:                   
echo                   h/    `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@N....      ``.``oN-.``:@h@                   
echo                  .N      .d@@@@@hhh@@@@@@@@@@@@@@@@@@@@@@N@       ````-dd+``.y-d:                  
echo                  /h       `yyyy:   yh@@@@@@@@@@@@@@@@@@dd++       ``````````-+oyo                  
echo                  oh                 .@@@@@@@@@@@@@@@@dh-.         ```````````/ody                  
echo                  +N+                `@@@@@@@@@@@@@@@N--         ` ````````````+ys                  
echo                  .@@`                +o@@@@@@@@@@@@@N           ` `````````````d:                  
echo                   dN`                  N@@@@@@@@@@@@N           ``````````````:@                   
echo                   -@o                +hN@@@@@@@@@@@@@ `hhh+     `````````````.d/                   
echo                    o@.               `.y@@@@@@@@@@@-. :@@@+    ``````````````sy                    
echo                     sy                 :@@@@@@@@@@h   /@/      `````````````oy                     
echo                      +h`                yh@@@@@dy             ````````````.ys                      
echo                       -h/                 dN+++.`            ````````````/d:                       
echo                         +h:               `.               ````````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+:-:/::::::::+y+++oyhso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oooso:..://hdo+/syhhN@@@ho:`                                   
echo                                :oso:` :+` oNy+:y@@@@@@@@@@@@@@@@@s:                                
echo                             -ss/`   :/dyd@@@@@@@@@@@@@@@@@@@@@@@@@@Ny:                             
echo                           /y+`     ::odyy+.N@@@@y @@yN@@+hhNN@@@@@@@@@@+`                          
echo                         /h/      `d@s/`   .::oh/+hNNhN@@@N.s@@@@@@@@@@@@N+                         
echo                       .h+      `-@@@NNNN+-:--:::::::N@@@@@@@@@@@@@@@@@@@@@@-                       
echo                      /h.     -+N@@@@@@@@@@@@N@@@@@ho@@@@@@@ys@@@@@@@@@@@@@@@o                      
echo                     oy`     -@@@@@@@@@@@@@@@@@@@@@dy+:@@@@@dyN@++++h@@@@@@@@@s                     
echo                    +h     `+@@@@@@@@@@@@@@@@@@@@@@@@+ s@@@@@@@@+ ``.:y@@@@+s@@s                    
echo                   -@`     yN@@@@@@@@@@@@@@@@@@@@@@@@@@o`sNNNN@.` ```.-N@@h.`dNN:                   
echo                   h/     `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@y...`    `````.+N-.`.yN@                   
echo                  .N       `hN@@@@hhh@@@@@@@@@@@@@@@@@@@@@@@No    ``````.d@/``/+d:                  
echo                  /h         syyys   :y@@@@@@@@@@@@@@@@@@Ndy+:    ````````````/oyo                  
echo                  od`                  o@@@@@@@@@@@@@@@Nhy..       ````````````shy                  
echo                  +@s-                 o@@@@@@@@@@@@@@@d-.        `````````````-hs                  
echo                  .@@s                 -+h@@@@@@@@@@@@@y          ``````````````d:                  
echo                   d@o                   /@@@@@@@@@@@@@s          `````````````:@                   
echo                   -@@`                `hd@@@@@@@@@@@@@o /hhh.  ` ````````````.d/                   
echo                    o@+                 .-@@@@@@@@@@@o.` h@@N`  ```.``````````sy                    
echo                     sh`                  d@@@@@@@@N@:   dh`   ``````````````oy                     
echo                      +h`                 /y@@@@@Nh:           ````````````.ys                      
echo                       -h/                  +@s++/`           ````````````/d:                       
echo                         +h:                `-`             ````````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+:--/::::::::/os++osyso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:ososs/.`-:++@h/o+yhh@@@@ho:`                                   
echo                                :oso:`  /+``sNy//h@@@@@@@@@@@@@@@@s:                                
echo                             -ss/`    //@y@@@@@@@@@@@@@@@@@@@@@@@@@@Ny:                             
echo                           /y+`     `::o@yyo`@@@@@@ y@y@@N+hhNN@@@@@@@@@+`                          
echo                         /h/       `d@h:.   `::/ho/h@@h@@@@@-+@@@@@@@@@@@N+                         
echo                       .h+       `-d@@@N@@h:::-:::::::h@@@@@@@@@@@@@@@@@@@@@-                       
echo                      /h.      -+N@@@@@@@@@@@@N@@@@@Noy@@@@@@@s@@@@@@@@@@@@@@o                      
echo                     oy`      -N@@@@@@@@@@@@@@@@@@@@@hy/o@@@@Ny@@s+++y@@@@@@@@s                     
echo                    +h      `+@@@@@@@@@@@@@@@@@@@@@@@@N``N@@@@@@@h````:y@@@@+@Ns                    
echo                   -@`      yN@@@@@@@@@@@@@@@@@@@@@@@@@@N-.@NNNNo`````..N@@s.:@@:                   
echo                   h/      `d@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@:...   ```.``./@-``:@@                   
echo                  .N         h@@@@@@hhhN@@@@@@@@@@@@@@@@@@@@@NN`  ```````.d@:`.o@:                  
echo                  /h          +yyyy-   sy@@@@@@@@@@@@@@@@@@@ds+`  ````````````.+do                  
echo                  o@-                    N@@@@@@@@@@@@@@@@d+.`    `````````````:hy                  
echo                  +@d+                   N@@@@@@@@@@@@@@@o-`      ``````````````ds                  
echo                  .@@@-                  /+N@@@@@@@@@@@@@:        ``````````````d:                  
echo                   d@N.                    d@@@@@@@@@@@@@-        `````````````:@                   
echo                   -@@/                  /hN@@@@@@@@@@@@@. yhho ``````````````.d/                   
echo                    o@d`                 `.s@@@@@@@@@@@-. -@@@+ ```.``````````sy                    
echo                     s@.                   :@@@@@@@@@@d   /@:` ``````````````oy                     
echo                      +@.                  `yh@@@@@dy          ````````````.ys                      
echo                       -h/                   `@d+++.`         ````````````/d:                       
echo                         +h:                  ..            ````````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+:-.:::::::::/+yo+ooyso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:ossss+-` ::+s@y/+syd@N@@ho:`                                   
echo                                :oso:`  `+/ `hNs:/d@@@@@@@@@@@@@@@s:                                
echo                             -ss/`    `//Ns@@@@@@@@@@@@@@@@@@@@@@@@@Ny:                             
echo                           /y+`      `::+@yys`h@@@@@.+@hd@N+dhNN@@@@@@@@+`                          
echo                         /h/        `d@d:.    :::yy/sd@dd@@@@/:@@@@@@@@@@N+                         
echo                       .h+        `-h@@@@@@N:::::::::::+@@@@@@N@@@@@@@@@@@@@-                       
echo                      /h.       -+@@@@@@@@@@@@@@@@@@@@ho@@@@@@@sd@@@@@@@@@@@@o                      
echo                     oy`       `N@@@@@@@@@@@@@@@@@@@@@@yo/d@@@@hh@d++oy@@@@@@@s                     
echo                    +h       `+d@@@@@@@@@@@@@@@@@@@@@@@@s o@@@@@@@N.```/y@@@yy@s                    
echo                   -@`       oN@@@@@@@@@@@@@@@@@@@@@@@@@@Ny`oNNNNd..``.`.N@@/`d@:                   
echo                   h/        dN@@@@@@@@@@@@@@@@@@@@@@@@@@@@@d...` ```````.+d.`.h@                   
echo                  .N          od@@@@@hhhd@@@@@@@@@@@@@@@@@@@@@@Ns ```.````.dd.`/@:                  
echo                  /@           -yyyys   -yd@@@@@@@@@@@@@@@@@@dh+/ `````````````/do                  
echo                  o@+                     :@@@@@@@@@@@@@@@@dh-.   ``````````````dy                  
echo                  +@@s/                   :@@@@@@@@@@@@@@@@:-     ``````````````ys                  
echo                  .@@@@                   .+s@@@@@@@@@@@@@N       ``````````````d:                  
echo                   d@@y                     .@@@@@@@@@@@@@@       `````````````:@                   
echo                   -@@@`                   yh@@@@@@@@@@@@@y /hhh.`````````````.d/                   
echo                    o@N+                   .-N@@@@@@@@@@y.` h@@@````.`````````sy                    
echo                     s@/                     d@@@@@@@@N@/  `dy ``````````````oy                     
echo                      +N:                    +yN@@@@Nd:         ```````````.ys                      
echo                       -d/                     y@oo+:`        ````````````/d:                       
echo                         +h:                   `-            ```````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+:-.-:::::::://oy+oosso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                  
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:osssoo:` `:/ohho++yd@N@@ho:`                                   
echo                                :oso:`   .+: .@Ns-+@@@@@@@@@@@@@@@s:                                
echo                             -ss/`     `/+Ns@@@@@@@@@@@@@@@@@@@@@@@@Ny:                             
echo                           /y+`        :/+Nyyy.s@@@@@/:@dh@NodhNN@@@@@@@+`                          
echo                         /h/          h@N/-    -::oh/+hN@hN@@@o:N@@@@@@@@N+                         
echo                       .h+         `-s@@@@@@@o:::-:::::::@@@@@@N@@@@@@@@@@@@-                       
echo                      /h.        .+d@@@@@@@@@@@@@N@@@@@Noy@@@@@@hh@@@@@@@@@@@o                      
echo                     oy`         d@@@@@@@@@@@@@@@@@@@@@@yy/o@@@@@y@N++oy@@@@@@s                     
echo                    +h         /y@@@@@@@@@@@@@@@@@@@@@@@@@.`N@@@@@@@/```/y@@NoNs                    
echo                   -@`        /@@@@@@@@@@@@@@@@@@@@@@@@@@@@N:.@NNNN:.``.`.N@N.+@:                   
echo                   h/         s@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/... ```````.oy.`o@                   
echo                  .N`          :h@@@@@@hhhN@@@@@@@@@@@@@@@@@@@@@NN`````````-@y`.N:                  
echo                  /@.            syyyy-   +y@@@@@@@@@@@@@@@@@@Ndyo.````````````.ho                  
echo                  o@y-                      s@@@@@@@@@@@@@@@Nds-. ``````````````yy                  
echo                  +@@@o-                    s@@@@@@@@@@@@@@@h-.   ``````````````ss                  
echo                  .@@@@y                    :+h@@@@@@@@@@@@@s     ``````````````d:                  
echo                   d@@@/                      o@@@@@@@@@@@@@+    ``````````````:@                   
echo                   -@@@s                    :h@@@@@@@@@@@@@@- yhh+````````````.d/                   
echo                    o@@@.                   `.+@@@@@@@@@@@:. -@@@:```.````````sy                    
echo                     s@d`                     -@@@@@@@@@@d   o@.`````````````oy                     
echo                      +@s                     `yd@@@@@dy       ````````````.ys                      
echo                       -d+                      -@h+++.`       ```````````/d:                       
echo                         +h:                    `-`          ```````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+:-`.:::::::://+ysoosso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+oooooooooo+/:.                                         
echo                                   `:oyysos/.  .:oody/osh@NN@ho:`                                   
echo                                :oso:.    -o- -NNs.+N@@@@@@@@@@@@@s:                                
echo                             -sy/`      ./+NsN@@@@@@@@@@@@@@@@@@@@@@Ny:                             
echo                           /y+`         :/+Nyyy-/@@@@@o.N@h@NodhNN@@@@@@+`                          
echo                         /h/           s@@+:    .::/ho/hNNhN@@@s:N@@@@@@@N+                         
echo                       .h+           -+@@@@@@@d:::::::::::y@@@@@N@@@@@@@@@@@-                       
echo                      /h.         `+y@@@@@@@@@@@@@@@@@@@@yoN@@@@@dy@@@@@@@@@@o                      
echo                     oy`          y@@@@@@@@@@@@@@@@@@@@@@dyo/@@@@NyNNoooh@@@@@s                     
echo                    +h          :o@@@@@@@@@@@@@@@@@@@@@@@@@y o@@@@@@@o```/d@@hds                    
echo                   -@`         .N@@@@@@@@@@@@@@@@@@@@@@@@@@@Nh.oNNN@s.`.``-@@y-N:                   
echo                   h/          /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@d....```````.y/./@                   
echo                  .N`           `h@@@@@@hhhh@@@@@@@@@@@@@@@@@@@@@@N+````````/@/`@:                  
echo                  /@s             /yyyyy    yy@@@@@@@@@@@@@@@@@@@do/````````````ho                  
echo                  o@N/.                       N@@@@@@@@@@@@@@@@d:- `````````````oy                  
echo                  +@@@yo.                     N@@@@@@@@@@@@@@@+:`` `````````````ss                  
echo                  .@@@@@o                     ++N@@@@@@@@@@@@@.  ` `````````````d:                  
echo                   d@@@@-                       d@@@@@@@@@@@@N`  ``````````````:@                   
echo                   -@@@@:                     ohN@@@@@@@@@@@@d /hdh```````````.d/                   
echo                    o@@Nh                     ..d@@@@@@@@@@h.` d@@s``.````````sy                    
echo                     s@@:                       h@@@@@@@@N@/  .@+````````````oy                     
echo                      +@N`                      +hN@@@@@d-     ````````````.ys                      
echo                       -@y                        dN+++-.      ```````````/d:                       
echo                         +h:                      ..        ````````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+:-``-::::::://+oyoosso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+ooooosoooo+/:.                                         
echo                                   `:oyhyooo-   -:ssds+oy@NN@ho:`                                   
echo                                :oso:-     :o- :@No`o@@@@@@@@@@@@@s:                                
echo                             -sh+`       -:+NsN@@@@@@@@@@@@@@@@@@@@@Ny:                             
echo                           /y+.          ://@hyy:.@@@@@h.@NhNNoddN@@@@@@+`                          
echo                         /h/            /@@s:`   `:::hy/s@@h@@@@y/N@@@@@@N+                         
echo                       .h+            -:N@@@@@@@/::::::::::+@@@@@N@@@@@@@@@@-                       
echo                      /h.           /o@@@@@@@@@@@@@@@@@@@@@od@@@@@NyN@@@@@@@@o                      
echo                     oy`           /@@@@@@@@@@@@@@@@@@@@@@@yy/y@@@@y@@oood@@@@s                     
echo                    +h           -+@@@@@@@@@@@@@@@@@@@@@@@@@@..@@@@@@@y``./@@Nhs                    
echo                   -@`           d@@@@@@@@@@@@@@@@@@@@@@@@@@@NN:-NN@@d-````/@@-@:                   
echo                   h/           .@N@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/---```````.d.:@                   
echo                  .@:             oh@@@@@Nhhhd@@@@@@@@@@@@@@@@@@@@@Nd````````oh`d:                  
echo                  /@@.              yyyyy/   -yh@@@@@@@@@@@@@@@@@Ndyo```````````yo                  
echo                  o@@y/                        -@@@@@@@@@@@@@@@Nds-.````````````oy                  
echo                  +@@@@o+`                     -@@@@@@@@@@@@@@@@:- `````````````ss                  
echo                  .@@@@@@/                     `+s@@@@@@@@@@@@@y ```````````````d:                  
echo                   d@@@@d.                       .@@@@@@@@@@@@@o ```.``````````:@                   
echo                   -@@@@@.                     `yh@@@@@@@@@@@@@:`hdd-`````````.d/                   
echo                    o@@@Ns                      .:@@@@@@@@@@@:. +@@d``.```````sy                    
echo                     s@@d`                       .@@@@@@@@@@h   hh```````````oy                     
echo                      +@@o                       `hd@@@@@ds    ````````````.ys                      
echo                       -@N.                        +@s++/.`   ````````````/d:                       
echo                         +d:                       `-       ````````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+:-` .:::::::///+ysosso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+ooooosoooo+/:.                                         
echo                                   `:oyhhsoo/`   :+shy+osdNN@ho:`                                   
echo                                :oso:-`     /o.`/@N+`s@@@@@@@@@@@@s:                                
echo                             -sdo`        -:/NsN@@@@@@@@@@@@@@@@@@@@Ny:                             
echo                           /h+.           -//d@yy+`N@@@@d.dNhNNs@dN@@@@@+`                          
echo                         /h/             -@@d:.   `-::sd+od@h@@@@y+N@@@@@N+                         
echo                       .h+             .-d@@@@@@@y:::::::::::N@@@@NN@@@@@@@@-                       
echo                      /h.            :+@@@@@@@@@@@@@@@@@@@@@ys@@@@@NyN@@@@@@@o                      
echo                     oy`            `N@@@@@@@@@@@@@@@@@@@@@@dyo+@@@@h@@soo@@@@s                     
echo                    +h            `+h@@@@@@@@@@@@@@@@@@@@@@@@@y h@@@@@@y``-o@@@s                    
echo                   -@`            o@@@@@@@@@@@@@@@@@@@@@@@@@@@@Nh.h@@@@-````y@sd:                   
echo                   h/             y@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@h---``````./o:@                   
echo                  .@s`             .h@@@@@@dhhhN@@@@@@@@@@@@@@@@@@@@@N.```````d/d:                  
echo                  /@@s               /yyyyy.   +y@@@@@@@@@@@@@@@@@@@ho-`````````so                  
echo                  o@@@+:                         o@@@@@@@@@@@@@@@@d:-```````````oy                  
echo                  +@@@@N++.                      o@@@@@@@@@@@@@@@o:`.```````````ss                  
echo                  .@@@@@@@/                      -+h@@@@@@@@@@@@@.``````````````d:                  
echo                   d@@@@@h.                        o@@@@@@@@@@@@N``````````````:@                   
echo                   -@@@@@N`                      /h@@@@@@@@@@@@@h sdd/````````.d/                   
echo                    o@@@@@+                      `.y@@@@@@@@@@y...N@N.````````sy                    
echo                     s@@@o                         s@@@@@@@@N@-``+d.`````````oy                     
echo                      +@@N.                        +h@@@@@@d.  ````````````.ys                      
echo                       -@@o                         `Nd+++-.  ````````````/d:                       
echo                         +@/                         -`     ````````````:yo`                        
echo                          `+y/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-                   ```````-+ss/`                               
echo                                   ./ooo+:-` `-::::::///+syosso/.                                   
echo                                        `-:+osyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+osoooooooo+/:.                                         
echo                                   `:oyhdso++.   `:sshs+shNN@ho:`                                   
echo                                :oso:..     `+o.`o@@/.h@@@@@@@@@@@s:                                
echo                             -sdy.         --/@sN@@@@@@@@@@@@@@@@@@@Ny:                             
echo                           /ho.`           -//yNyyo`h@@@@@-h@hNNs@@N@@@@+`                          
echo                         /h/              `@@@/-   `-::+ds+d@dd@@@so@@@@@N+                         
echo                       .h+              `-o@@@@@@@N::::-::::::d@@@@NN@@@@@@@-                       
echo                      /h.             .+h@@@@@@@@@@@@@@@@@@@@dsN@@@@@hN@@@@@@o                      
echo                     oy`              y@@@@@@@@@@@@@@@@@@@@@@Nyy/@@@@hd@sos@@@s                     
echo                    +d              /o@@@@@@@@@@@@@@@@@@@@@@@@@N`/@@@@@@y``:h@Ns                    
echo                   -@`             `N@@@@@@@@@@@@@@@@@@@@@@@@@@@NN-+@@@N-```.@@d:                   
echo                   h/              :@N@@@@@@@@@@@@@@@@@@@@@@@@@@@@@N---.`````.y/@                   
echo                  .@@.               oh@@@@@@hhhh@@@@@@@@@@@@@@@@@@@@@N/``````/yd:                  
echo                  /@@N-                yyyyyy    syN@@@@@@@@@@@@@@@@Ndo:````````so                  
echo                  o@@@d/:                          d@@@@@@@@@@@@@@Ndo:``````````oy                  
echo                  +@@@@@@++.                       d@@@@@@@@@@@@@@d:-```````````ss                  
echo                  .@@@@@@@@+                       /+@@@@@@@@@@@@@y`````````````d:                  
echo                   d@@@@@@y-                         d@@@@@@@@@@@@+````````````:@                   
echo                   -@@@@@@@                        shN@@@@@@@@@@@@./ddo```````.d/                   
echo                    oN@@@@N/                       .-N@@@@@@@@@N--`d@N-```````sy                    
echo                     s@@@@:                         `@@@@@@@@@@s``:d:````````oy                     
echo                      +@@@h                         `yd@@@@Nd+  ```````````.ys                      
echo                       -@@@`                          s@o++:. ````````````/d:                       
echo                         +Ny                          ..     ```````````:yo`                        
echo                          `+h/                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-`                  ```````-+ss/`                               
echo                                   ./ooo+:-` `.::::::///+oyssso/.                                   
echo                                        `-:+ooyhhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                   
echo                                         .-/+osoooooooo+/:.                                         
echo                                   `:osddho++/    .:ysyosyNN@ho:`                                   
echo                                :sso:`.      `+o``s@@:.d@@@@@@@@@@s:                                
echo                             -sdd:          :-:@s@@@@@@@@@@@@@@@@@@@Ny:                             
echo                           /hs..            .//s@yys.s@@@@N:y@dN@y@@N@@@+`                          
echo                         /h/                y@@s:   `.::/dy+h@dd@@@oy@@@@N+                         
echo                       .h+                -:@@@@@@@@o:::-::-:::y@@@@N@@@@@@@-                       
echo                      /h.               +o@@@@@@@@@@@@@@@@@@@@Nsd@@@@@hN@@@@@o                      
echo                     oy`               -@@@@@@@@@@@@@@@@@@@@@@@hh+h@@@hd@ssh@@s                     
echo                    +@               .+d@@@@@@@@@@@@@@@@@@@@@@@@@+.N@@@@@s``+N@s                    
echo                   -@.               y@@@@@@@@@@@@@@@@@@@@@@@@@@@@No:N@@N:```+@N:                   
echo                   h/                h@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+--..````/s@                   
echo                  .@@+.               .hd@@@@@Nhhhd@@@@@@@@@@@@@@@@@@@@No``````h@:                  
echo                  /@@@h.                -yyyyy+   .yh@@@@@@@@@@@@@@@@N@s/```````so                  
echo                  o@@@@h/:                          `@@@@@@@@@@@@@@@@h:.````````oy                  
echo                  +@@@@@@@++-                       .@@@@@@@@@@@@@@@/:``````````ss                  
echo                  .@@@@@@@@@s                       `+o@@@@@@@@@@@@N````````````d:                  
echo                   d@@@@@@@h-                         .@@@@@@@@@@@@d```````````:@                   
echo                   -NN@@@@@@`                       .hd@@@@@@@@@@@@o.ddy``````.d/                   
echo                    ohN@@@NN+                       `.o@@@@@@@@@@o-.s@N:``````sy                    
echo                     sN@@@N.                          o@@@@@@@@@d.`.d/```````oy                     
echo                      +N@@@+                          +h@@@@@dy````````````.ys                      
echo                       -d@@s                           -@y++/.````````````/d:                       
echo                         +N@.                          `-    ```````````:yo`                        
echo                          `+do                              ``````````/yo`                          
echo                             :ss:                         `````````:sy/                             
echo                               `/ss+-`                  ```````-+ss/`                               
echo                                   ./oso+:-`  `-:::::///++sysso/.                                   
echo                                        `-:+ooshhhhhhyso+/-`                                        
ping localhost -n 1 >nul
cls                                                                                                    
echo                                         .-/+ossooooooo+/:.                                         
echo                                   `:oshdhs+++.    -+hsyoydN@ho:`                                   
echo                                :syo:`..      `+o``h@d--N@@@@@@@@@s:                                
echo                             -sd@o`          :-:@s@@@@@@@@@@@@@@@@@@Ny:                             
echo                           /hy:``            `//+@hyy-/@@@@N/y@dNdh@N@@@+`                          
echo                         /h/                 /@@d:`  ``:::yh+y@dd@@Noh@@@N+                         
echo                       .h+                 .:h@@@@@@@d:::--:-:::s@@@@@@@@@@@-                       
echo                      /h.                -od@@@@@@@@@@@@@@@@@@@@yh@@@@@h@@@@@o                      
echo                     oy`                 d@@@@@@@@@@@@@@@@@@@@@@dyss@@@h@NssN@s                     
echo                    +d.                +s@@@@@@@@@@@@@@@@@@@@@@@@@h`d@@@@@+`-h@s                    
echo                   -@.                .@@@@@@@@@@@@@@@@@@@@@@@@@@@@Nh-@@@N:``.@@:                   
echo                   h/                 :dN@@@@@@@@@@@@@@@@@@@@@@@@@@@@@y--.````.y@                   
echo                  .@@N.`                +hN@@@@@dhhh@@@@@@@@@@@@@@@@@@@@Ns`````+N:                  
echo                  /N@@@s`                 oyyyyy-   /yd@@@@@@@@@@@@@@@@@y+``````so                  
echo                  o@@@@@s/:                           +@@@@@@@@@@@@@@Nd:-```````oy                  
echo                  +@@@@@@@@++:                        +@@@@@@@@@@@@@@y:`````````ss                  
echo                  .@@@@@@@@@@d                        -+h@@@@@@@@@@@@/``````````d:                  
echo                   dN@@@@@@@d:                          o@@@@@@@@@@@@.`````````:@                   
echo                   -@d@@@@@@N`                        +h@@@@@@@@@@@@h`hdy`````.d/                   
echo                    oyh@@@@NNo                        .-@@@@@@@@@@d-.+@N/`````sy                    
echo                     sdN@@@@`                          `N@@@@@@@N@:`.h+``````oy                     
echo                      +@N@@N:                          .y@@@@@@d-``````````.ys                      
echo                       -d@@N:                            @d+++-.``````````/d:                       
echo                         +@N+                            -`  ```````````:yo`                        
echo                          `+@y`                             ``````````/yo`                          
echo                             :ys:                         `````````:sy/                             
echo                               `/ss+-`                  ```````-+ss/`                               
echo                                   ./oso+:-`  `.:::::///++oysso/.                                   
echo                                        `-:+ooshhhhhhyso+/-`         
goto :earth

goto menu
::#endregion

::#region animation 3
:animation_3
cls
echo Premere CTRL+C e poi 'N' (se richiesto) per tornare al menu.
echo. %W%
timeout /t 3 >nul

curl ascii.live/nyan

pause
goto menu_animation
::#endregion

::#region animation 4
:animation_4
cls
echo Premere CTRL+C e poi 'N' (se richiesto) per tornare al menu.
echo. %W%
timeout /t 3 >nul

curl ascii.live/rick

pause
goto menu_animation
::#endregion

::#region animation 5
:animation_5
cls
echo Premere CTRL+C e poi 'N' (se richiesto) per tornare al menu.
echo. %W%
timeout /t 3 >nul

curl ascii.live/knot

pause
goto menu_animation
::#endregion

::#region animation 6
:animation_6
cls
echo Premere CTRL+C e poi 'N' (se richiesto) per tornare al menu [rimpicciolisci molto].
echo. %W%
timeout /t 3 >nul

curl ascii.live/bnr

pause
goto menu_animation
::#endregion

::#region animation 7
:animation_7
cls
echo Premere CTRL+C e poi 'N' (se richiesto) per tornare al menu [rimpicciolisci molto].
echo. %W%
timeout /t 3 >nul

curl ascii.live/spidyswing

pause
goto menu_animation
::#endregion

::#region animation 8
:animation_8
cls
echo Premere CTRL+C e poi 'N' (se richiesto) per tornare al menu.
echo. %W%
timeout /t 3 >nul

curl ascii.live/forrest

pause
goto menu_animation
::#endregion

::#region animation 9
:animation_9
cls
echo Premere CTRL+C e poi 'N' (se richiesto) per tornare al menu.
echo. %G%
timeout /t 3 >nul

dir /s C:\

pause
goto menu_animation
::#endregion

::#region animation 10
:animation_10
cls & echo animation hello world 10 & pause & goto menu_animation
::#endregion

::#region animation 11
:animation_11
cls & echo animation hello world 11 & pause & goto menu_animation
::#endregion

::#region animation 12
:animation_12
cls & echo animation hello world 12 & pause & goto menu_animation
::#endregion

::#region animation 13
:animation_13
cls & echo animation hello world 13 & pause & goto menu_animation
::#endregion

::#region animation 14
:animation_14
cls & echo animation hello world 14 & pause & goto menu_animation
::#endregion

::#region animation 15
:animation_15
cls & echo animation hello world 15 & pause & goto menu_animation
::#endregion

::#region animation 16
:animation_16
cls & echo animation hello world 16 & pause & goto menu_animation
::#endregion

::#region animation 17
:animation_17
cls & echo animation hello world 17 & pause & goto menu_animation
::#endregion

::#region animation 18
:animation_18
cls & echo animation hello world 18 & pause & goto menu_animation
::#endregion

::#region animation 19
:animation_19
cls & echo animation hello world 19 & pause & goto menu_animation
::#endregion


::#region Super Animation
:super_animation
cls
echo [!] INIZIALIZZAZIONE CHAOS MODE PER ANIMAZIONE !num_scelto!...

:: 1. Definiamo il titolo esatto che avranno le finestre (es. CHAOS_ANIMATION_1)
set "target_title=CHAOS_ANIMATION_!num_scelto!"

:: 2. Apre 8 finestre separate che vanno dirette all'animazione scelta
for /l %%x in (1,1,20) do (
    start "" "%~f0" spawn_chaos !num_scelto!
)

:: 3. Avvia il timer di 10 secondi in background. 
:: Scaduto il tempo, killa in modo forzato (/f) solo le finestre con quel titolo.
start /b "" cmd /c "timeout /t 10 /nobreak >nul && taskkill /f /fi "WINDOWTITLE eq !target_title!" >nul 2>&1"

goto menu_animation
::#endregion
