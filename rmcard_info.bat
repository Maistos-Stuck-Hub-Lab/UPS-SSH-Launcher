@echo off
setlocal

REM ===============================================================
REM Script Name : rmcard_info.bat
REM Description : via SSH saves the Info of the RMCARD  in a txt file
REM Author      : Athanasia Balkoura - maistos.com
REM Version     : 1.0
REM Last Updated: 2024-04-08
REM ===============================================================

set IP=192.168.188.75
set USER=test
set OUTFILE=rmcard_diagnostics.txt

echo Starte RMCARD-Diagnose auf %USER%@%IP%
echo (Ergebnisse werden in %OUTFILE% gespeichert)

ssh -tt -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -c aes128-cbc %USER%@%IP% < ssh_commands.txt > %OUTFILE%

echo.
echo Diagnose abgeschlossen. Ausgabe gespeichert in: %OUTFILE%
pause
