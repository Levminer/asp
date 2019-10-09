@echo off
title Automatikus leallito program
 
//Automatikus leallito program
//by levminer

//start
:start
cls
echo.
echo Automatikus leallito program
echo by: Levminer
echo.
echo (0) leallitas visszavonasa
echo (1) negyed ora mulva
echo (2) fel ora mulva
echo (3) haromnegyed ora mulva
echo (4) egy ora mulva
echo (5) sajat ertek 
echo.
set /p menu="Nyomd meg a megfelelo gombot! (0-5)"
if %menu%==0 goto 0
if %menu%==1 goto 1
if %menu%==2 goto 2
if %menu%==3 goto 3
if %menu%==4 goto 4
if %menu%==5 goto 5
cls
//start

//ertekek
:0
cls
shutdown -a 
echo.
echo Parancs futtatva!
echo.
pause
exit
cls

:1
cls
shutdown -s -t 900 -c "Leallitas negyed ora mulva!"
echo.
echo Leallitas negyed ora mulva!
echo.
pause
exit
cls

:2
cls
shutdown -s -t 1800 -c "Leallitas fel ora mulva!"
echo.
echo Leallitas fel ora mulva!
echo.
pause
exit
cls

:3
cls
shutdown -s -t 2700 -c "Leallitas haromnegyed ora mulva!"
echo.
echo Leallitas haromnegyed ora mulva!
echo.
pause
exit
cls

:4
cls
shutdown -s -t 3600 -c "Leallitas egy ora mulva!"
echo.
echo Leallitas egy ora mulva!
echo.
pause
exit
cls
//ertekek

//sajatertek
set ertek= ertek

:5
cls
echo.
echo Add meg az erteket masodpercben!
echo.
set /p ertek= 
shutdown -s -t %ertek% -c "Leallitas %ertek% masodperc mulva!"
echo Leallitas %ertek% masodperc mulva!
echo.
pause
exit
cls
//sajatertek