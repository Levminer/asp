@echo off
title Aut�matikus Le�llit� Program V1 - K�sz�tette: Levminer
color F
 
//Aut�matikus Le�llit� Program V1
//K�sz�tette: Levminer

//start
:start
cls
echo.
echo Aut�matikus Le�llit� Program V1
echo K�sz�tette: Levminer
echo.
echo (0) Le�ll�t�s visszavon�sa
echo (1) Negyed �ra m�lva
echo (2) F�l �ra m�lva
echo (3) H�romnegyed �ra m�lva
echo (4) Egy �ra m�lva
echo (5) Saj�t �rtek 
echo (9) Kil�p�s
echo.
set /p menu="Nyomd meg a megfelel� gombot! (0-9) % %"
if %menu%==0 goto 0
if %menu%==1 goto 1
if %menu%==2 goto 2
if %menu%==3 goto 3 
if %menu%==4 goto 4
if %menu%==5 goto 5
if %menu%==9 goto 9
goto start
cls
//start

//ertekek
:0 
cls
shutdown -a 
echo.
echo Le�ll�t�s visszavonva!
echo.
pause
goto start
cls

:1
cls
shutdown -s -t 900 -c "Le�ll�tas negyed �ra m�lva!"
echo.
echo Le�ll�tas negyed �ra m�lva!
echo.
pause
goto start
cls

:2
cls
shutdown -s -t 1800 -c "Le�ll�tas f�l �ra m�lva!"
echo.
echo Le�ll�tas f�l �ra m�lva!
echo.
pause
goto start
cls

:3
cls
shutdown -s -t 2700 -c "Le�ll�tas h�romnegyed �ra m�lva!"
echo.
echo Le�ll�tas h�romnegyed �ra m�lva!
echo.
pause
goto start
cls

:4
cls
shutdown -s -t 3600 -c "Le�ll�tas egy �ra m�lva!"
echo.
echo Le�ll�tas egy �ra m�lva!
echo.
pause
goto start
cls
//ertekek

//sajatertek
:5
cls
echo.
set /p m="Add meg az �rteket percben! % %"
set /a m1=%m%
set /a s= %m% * 60
cls

:5.1
cls
shutdown -s -t %s% -c "Le�ll�tas %m1% perc m�lva!"
echo.
echo Le�ll�tas %m1% perc m�lva!
echo.
pause
goto start
cls
//sajatertek

//kilepes
:9
cls
exit
cls
//kilepes