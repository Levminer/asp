
//Aut¢matikus Le llit¢ Program V2
//K‚sz¡tette: Levminer

@echo off
title Aut¢matikus Le llit¢ Program V2 - K‚sz¡tette: Levminer
cd C:\Users\%USERNAME%\AppData\Local\Temp\
if not exist "ALP" md ALP
cd C:\Users\%USERNAME%\AppData\Local\Temp\ALP\

//color
set file=color.txt
for /f "tokens=*" %%C in (%file%) do (%%C)
//color

//start
:start
cls
echo.
echo Aut¢matikus Le llit¢ Program V2
echo K‚sz¡tette: Levminer
echo.
echo (0) Le ll¡t s visszavon sa 
echo.
echo (1) Le ll¡t s 15 perc ut n
echo (2) Le ll¡t s 30 perc ut n
echo (3) Le ll¡t s 45 perc ut n
echo (4) Le ll¡t s 60 perc ut n
echo.
echo (5) Le ll¡t s egy megadott ‚rt‚k ut n
echo (6) Le ll¡t s az el‹z‹ megadott ‚rt‚k ut n
echo.
echo (7) éjraind¡t s egy megadott ‚rt‚k ut n
echo.
echo (8) Be ll¡t sok
echo.
echo (9) Kil‚p‚s
echo.
set /p menu="Nyomd meg a megfelel‹ gombot! (0-9) % %"
if %menu%==0 goto 0
if %menu%==1 goto 1
if %menu%==2 goto 2
if %menu%==3 goto 3 
if %menu%==4 goto 4
if %menu%==5 goto 5
if %menu%==6 goto 6
if %menu%==7 goto 7
if %menu%==8 goto 8
if %menu%==9 goto 9
goto start
cls
//start

//ertekek
:0 
cls
shutdown -a 
echo.
echo Le ll¡t s visszavonva!
echo.
pause
goto start
cls

:1
cls
shutdown -s -t 900 -c "Le ll¡t s 15 perc m£lva!"
echo.
echo Le ll¡t s 15 perc m£lva!
echo.
pause
goto start
cls

:2
cls
shutdown -s -t 1800 -c "Le ll¡t s 30 perc m£lva!"
echo.
echo Le ll¡t s 30 perc m£lva!
echo.
pause
goto start
cls

:3
cls
shutdown -s -t 2700 -c "Le ll¡t s 45 perc m£lva!"
echo.
echo Le ll¡t s 45 perc m£lva!
echo.
pause
goto start
cls

:4
cls
shutdown -s -t 3600 -c "Le ll¡t s 60 perc m£lva!"
echo.
echo Le ll¡t s 60 perc m£lva!
echo.
pause
goto start
cls
//ertekek

//megadottertek
:5
cls
set /p "m=Add meg az ‚rteket percben! % %"

call :5.12 %m% || goto 5.11
goto 5.1

:5.11
goto 5

:5.12
for /f "delims=0123456789" %%a in ("%1") do exit /b 1
exit /b 0

:5.1
set /a m1=%m%
set /a s= %m% * 60

:5.2
cls
shutdown -s -t %s% -c "Le ll¡t s %m1% perc m£lva!"
echo.
echo Le ll¡t s %m1% perc m£lva!
echo.
pause
cls

:5.3
echo %m1% > value.txt
goto start 
//megadottertek

//elozomegadottertek
:6
set file=value.txt
for /f "Delims=" %%V in (%file%) do (set mm=%%V)

:6.1
set /a mm1=%mm%
set /a ss=%mm% * 60

:6.2
cls
shutdown -s -t %ss% -c "Le ll¡tas %mm1% perc m£lva!"
echo.
echo Le ll¡tas %mm1% perc m£lva!
echo.
pause
goto start
//elozomegadottertek

//ujrainditas
:7
cls
set /p "mu=Add meg az ‚rteket percben! % %"

call :7.12 %mu% || goto 7.11
goto 7.1

:7.11
goto 5

:7.12
for /f "delims=0123456789" %%a in ("%1") do exit /b 1
exit /b 0

:7.1
set /a mu1=%mu%
set /a su= %mu% * 60

:7.2
cls
shutdown -r -t %su% -c "éjraind¡t s %mu1% perc m£lva!"
echo.
echo éjraind¡t s %mu1% perc m£lva!
echo.
pause
cls

:5.7
echo %mu1% > value1.txt
goto start 
//ujrainditas

//beallitasok
:8
cls
echo.
echo (1) Piros
echo (2) Feh‚r
echo (3) Z”ld
echo.
set /p color="V lassz sz¡nt! (1-3) % %"
if %color%==1 goto 8.1
if %color%==2 goto 8.2
if %color%==3 goto 8.3
goto start
cls

:8.1
echo color 4 > color.txt
color 4
goto start

:8.2
echo color F > color.txt
color F
goto start

:8.3
echo color 2 > color.txt
color 2
goto start
//beallitasok


//kilepes
:9
cls
exit
cls
//kilepes