:: Automatic Shutdown Program V5
:: Created by: Levminer

:: start
@echo off
:: start

:: color
set file=color.md
for /f "tokens=*" %%C in (%file%) do (%%C)
:: color

:: menu
:menu
cls
title Automatic Shutdown Program V5 - Choose language / Válassz nyelvet - Created by: Levminer
echo Automatic Shutdown Program V5
echo Created by: Levminer / Készítette: Levminer
echo.
echo Please choose language! / Válassz nyelvet!
echo.
echo (0) Cancel command / Parancs visszavonva
echo.
echo (1) English
echo (2) Magyar
echo.
echo (9) Exit / Kilépés
echo.

set /p menu="Press the correct button / Nyomd meg a megfelelő gombot (0-9) % %"
if %menu%==0 goto 0
if %menu%==1 goto 1
if %menu%==2 goto 2
if %menu%==9 goto 9
goto :menu
cls

:: cancel command
:0 
title Automatic Shutdown Program V4 - Cancel command / Parancs visszavonása - Created by: Levminer
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
call "ASP V5 EN.bat"

:: hu
:2
call "ASP V5 HU.bat"

:: exit
:9
exit