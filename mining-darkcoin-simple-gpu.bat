@echo off 
cls
title Darkcoin GPU Mining

echo Executing SGminer v5 - Optimized
echo.
echo.
echo.
echo Available at https://bitcointalk.org/index.php?topic=632503.0
echo Compiled Binaries Available here https://github.com/nicehash/sgminer/releases
echo.
echo.
echo.
echo SGminer is currently configured to mine the Darkcoin algorithm
echo - Please edit:
echo - Server Location
echo - User Name 
echo - Password
echo Example: -o stratum+tcp://coinotron.com:3341 -u Test.Worker -p Password

REM Pause before starting
timeout /t 30
REM Set GPU usage to 100% and Helps CPU usage
setx GPU_MAX_ALLOC_PERCENT 100 
setx GPU_USE_SYNC_OBJECTS 1 

c:\sgminer\sgminer.exe --algorithm darkcoin --temp-target 80 --temp-cutoff 100 --auto-fan -o stratum+tcp://coinotron.com:3341 -u Test.Worker -p Password
--failover-only -o suprnova.cc:3341 -u Test.Worker -p Password

REM --temp-target sets a target temperature for sgminer to attemp to keep your GPU near
REM --auto-fan sets sgminer to control your fan speed
REM --temp-cutoff will terminate the program if the GPU gets too hot
REM --failover-only allows a backup pool to be used if the main pool goes down
