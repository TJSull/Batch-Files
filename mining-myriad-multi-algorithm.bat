@echo off
cls
title Myriad Coin Multi Algorithm Mining

:home
echo Executing Myriad Coin Multi-Algorithm Miner
echo.
echo Please edit Per Algorithm:
echo - Server Location
echo - User Name 
echo - Password
echo - Example: -o stratum+tcp://coinotron.com:3341 -u Test.Worker -p Password
echo.
echo.
echo.
echo Myriad Coin Mining Options
echo Please Select One
echo ==================================
echo. 
echo 1.) Mine Myr-Groestl
echo 2.) Mine Myr-Skein
echo 3.) Mine Myr-Qubit
echo 4.) Help - Open Webpage Explaing Myriad Coin Algorithms
echo 5.) Exit
echo.
echo. 
set /p algo=Type Mining Choice:
if "%algo%"=="1" goto groestl
if "%algo%"=="2" goto skein
if "%algo%"=="3" goto qubit
if "%algo%"=="4" goto help
if "%algo%"=="5" exit


:groestl
cls
echo Mining Myr-Groestl
echo Using SGMiner Available at https://bitcointalk.org/index.php?topic=632503.0
c:\sgminer\sgminer.exe --algorithm myriadcoin-groestl --temp-target 80 --temp-cutoff 100 --auto-fan -o stratum+tcp://coinotron.com:3341 -u Test.Worker -p Password

:skein
cls
echo Mining Myr-Skein
echo Using CGMiner Available at https://www.dropbox.com/s/uhbp9r6m8zzqnke/cgminer_skein.zip
c:\cgminer\cgminer.exe --skein -o stratum+tcp://coinotron.com:3341 -O Test.Worker:Password

:qubit
cls
echo Mining Myr-Qubit
echo Using SGMiner Available at https://bitcointalk.org/index.php?topic=632503.0
c:\sgminer\sgminer.exe --algorithm qubitcoin --no-extranonce --temp-target 80 --temp-cutoff 100 --auto-fan -o stratum+tcp://coinotron.com:3341 -u Test.Worker -p Password

:help
cls
start http://myriadcoin.org/technology
goto home
