:: Automatic Shutdown Program V4
:: Created by: Levminer

:: start
@echo off
title Automatic Shutdown Program V4 - Choose language / V lassz nyelvet - Created by: Levminer
set mypath=%cd%
cd C:\Users\%USERNAME%\AppData\Local\ALP
if not exist "ALP" md ALP
cd C:\Users\%USERNAME%\AppData\Local\ALP
:: start

:: color
set file=color.md
for /f "tokens=*" %%C in (%file%) do (%%C)
cd %mypath%
:: exe
cd %MYFILES%
:: exe
:: color

:: menu
:menu
cls
echo Automatic Shutdown Program V4
echo Created by: Levminer / K‚sz¡tette: Levminer
echo.
echo Please choose language! / V lassz nyelvet!
echo.
echo (0) Cancel command / Parancs visszavonva
echo.
echo (1) English
echo (2) Magyar
echo.
echo (9) Exit / Kil‚p‚s
echo.

set /p menu="Press the correct button / Nyomd meg a megfelel‹ gombot (0-9) % %"
if %menu%==0 goto 0
if %menu%==1 goto 1
if %menu%==2 goto 2
if %menu%==9 goto 9
goto :menu
cls

:: cancel command
:0 
title Automatic Shutdown Program V4 - Cancel command - Created by: Levminer
cls
shutdown -a 
cls
echo.
echo Command canceled / Parancs visszavonva
echo.
pause
goto menu

:: en
:1
call "ASP V4 EN.bat"

:: hu
:2
call "ASP V4 HU.bat"

:: exit
:9
exit