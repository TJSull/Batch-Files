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
CHOICE /C 12345 /M "Enter Mining Choice:"

REM List ERRORLEVELS in decreasing order
IF ERRORLEVEL 5 exit
IF ERRORLEVEL 4 GOTO help
IF ERRORLEVEL 3 GOTO qubit
IF ERRORLEVEL 2 GOTO skein
IF ERRORLEVEL 1 GOTO groestl

:groestl
echo Mining Myr-Groestl
echo Using SGMiner Available at https://bitcointalk.org/index.php?topic=632503.0
c:\sgminer\sgminer.exe --algorithm myriadcoin-groestl --temp-target 80 --temp-cutoff 100 --auto-fan -o stratum+tcp://coinotron.com:3341 -u Test.Worker -p Password

:skein
echo Mining Myr-Skein
echo Using CGMiner Available at https://www.dropbox.com/s/uhbp9r6m8zzqnke/cgminer_skein.zip
echo c:\cgminer\cgminer.exe --skein -o stratum+tcp://coinotron.com:3341 -O Test.Worker:Password

:qubit
echo Mining Myr-Qubit
echo Using SGMiner Available at https://bitcointalk.org/index.php?topic=632503.0
echo c:\sgminer\sgminer.exe --algorithm qubitcoin --no-extranonce --temp-target 80 --temp-cutoff 100 --auto-fan -o stratum+tcp://coinotron.com:3341 -u Test.Worker -p Password

:help
start http://myriadcoin.org/technology
goto home
