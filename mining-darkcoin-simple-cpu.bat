@echo off
cls
title Darkcoin CPU Mining

echo Executing Darkcoin Cpuminer-1.3-avx-aes
echo.
echo.
echo.
echo Available at https://github.com/elmad/darkcoin-cpuminer-1.3-avx-aes
echo Compiled Binaries Available here https://github.com/elmad/darkcoin-cpuminer-1.3-avx-aes/releases
echo.
echo.
echo.
echo Please edit:
echo - Server Location
echo - User Name 
echo - Password
echo Example: -o stratum+tcp://coinotron.com:3341 -O Test.Worker:Password

REM Pause before starting
timeout /t 30

c:\minerd\minerd-aes-sse2-sss3 -a X11 -t 6 -o stratum+tcp://coinotron.com:3341 -O Test.Worker:Password

REM -t is the number of CPU cores the PC's processor has
