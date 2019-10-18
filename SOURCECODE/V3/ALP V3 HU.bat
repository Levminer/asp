:: Aut¢matikus Le llit¢ Program V3
:: K‚sz¡tette: Levminer

:: start
@echo off
title Aut¢matikus Le llit¢ Program V3 - K‚sz¡tette: Levminer
cd C:\Users\%USERNAME%\AppData\Local\Temp\
if not exist "ALP" md ALP
cd C:\Users\%USERNAME%\AppData\Local\Temp\ALP\
:: start

:: color
set file=color.txt
for /f "tokens=*" %%C in (%file%) do (%%C)
:: color

:: menu
:menu
cls
echo.
echo Aut¢matikus Le llit¢ Program V3
echo K‚sz¡tette: Levminer
echo.
echo (0) Parancs visszavon sa 
echo.
echo (1) Le ll¡t s egyÿmegadadottÿid‹ ut nÿ
echo (2) Le ll¡t s az el‹z‹ÿmegadadottÿid‹ ut nÿ
echo.
echo (3) éjraind¡t s egyÿmegadadottÿid‹ ut nÿ
echo (4) éjraind¡t s az el‹z‹ÿmegadadottÿid‹ ut nÿ
echo.
echo (5) Alv¢  llapot egy megadott id‹ ut nÿ
echo (6) Alv¢  llapot az el‹z‹ÿmegadadottÿid‹ ut n
echo.
echo (7) Be ll¡t sok
echo (8) N‚vjegy
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
goto menu
:: menu 

:: 0 --------------------
:0 
cls
shutdown -a 
echo.
echo Parancs visszavonva!
echo.
pause
goto menu
cls
:: 0 --------------------

:: 1 --------------------
:1
cls
echo.
echo (9) Vissza
echo.
set /p "l=Add meg az ‚rteket percben! (0-9) % %"
if %l%==9 goto menu

call :1.12 %l% || goto 1.11
goto 1.1

:1.11
goto 1

:1.12
for /f "delims=0123456789" %%a in ("%1") do exit /b 1
exit /b 0

:1.1
set /a l1=%l%
set /a l= %l% * 60

:1.2
cls
shutdown -s -t %l% -c "Le ll¡t s %l1% perc m£lva!"
echo.
echo Le ll¡t s %l1% perc m£lva!
echo.
pause
cls

:1.3
echo %l1% > shutdown.txt
goto menu
:: 1 --------------------

:: 2 --------------------
:2
if not exist "shutdown.txt" goto menu
set file=shutdown.txt
for /f "Delims=" %%V in (%file%) do (set ll=%%V)

:2.1
set /a ll1=%ll%
set /a ll=%ll% * 60

:2.2
cls
shutdown -s -t %ll% -c "Le ll¡tas %ll1% perc m£lva!"
echo.
echo Le ll¡tas %ll1% perc m£lva!
echo.
pause
goto menu
:: 2 --------------------

:: 3 --------------------
:3
cls
echo.
echo (9) Vissza
echo.
set /p "u=Add meg az ‚rteket percben! (0-9) % %"
if %u%==9 goto menu

call :3.12 %u% || goto 3.11
goto 3.1

:3.11
goto 3

:3.12
for /f "delims=0123456789" %%a in ("%1") do exit /b 1
exit /b 0

:3.1
set /a u1=%u%
set /a u= %u% * 60

:3.2
cls
shutdown -r -t %u% -c "éjraind¡t s %u1% perc m£lva!"
echo.
echo éjraind¡t s %u1% perc m£lva!
echo.
pause
cls

:3.3
echo %u1% > restart.txt
goto menu
:: 3 --------------------

:: 4 --------------------
:2
if not exist "restart.txt" goto menu
set file=restart.txt
for /f "Delims=" %%V in (%file%) do (set uu=%%V)

:2.1
set /a uu1=%uu%
set /a uu=%uu% * 60

:2.2
cls
shutdown -r -t %uu% -c "éjraind¡t s %uu1% perc m£lva!"
echo.
echo éjraind¡t s %uu1% perc m£lva!
echo.
pause
goto menu
:: 4 --------------------

:: 5 --------------------
:5
cls
echo.
echo (9) Vissza
echo.
set /p "s=Add meg az ‚rteket percben! (0-9) % %"
if %s%==9 goto menu

call :5.12 %s% || goto 5.11
goto 5.1

:5.11
goto 3

:5.12
for /f "delims=0123456789" %%a in ("%1") do exit /b 1
exit /b 0

:5.1
set /a s1=%s%
set /a s= %s% * 60

:5.2
cls
shutdown -f -t %s% -c "Alv¢  llapot %s1% perc m£lva!"
echo.
echo Alv¢  llapot %s1% perc m£lva!
echo.
pause
cls

:5.3
echo %s1% > sleep.txt
goto menu
:: 5 --------------------

:: 6 --------------------
:6
if not exist "sleep.txt" goto menu
set file=sleep.txt
for /f "Delims=" %%V in (%file%) do (set ss=%%V)

:2.1
set /a ss1=%ss%
set /a ss=%ss% * 60

:2.2
cls
shutdown -f -t %ss% -c "Alv¢  llapot %ss1% perc m£lva!"
echo.
echo Alv¢  llapot %ss1% perc m£lva!
echo.
pause
goto menu
:: 6 --------------------

:: 7 --------------------
:7
cls
echo.
echo (9) Vissza
echo.
echo (1) Piros
echo (2) Feh‚r
echo (3) Z”ld
echo.
set /p color="V lassz sz¡nt! (1-3) % %"
if %color%==1 goto 7.1
if %color%==2 goto 7.2
if %color%==3 goto 7.3
if %color%==9 goto menu
goto 7

:7.1
echo color 4 > color.txt
color 4
goto menu

:7.2
echo color F > color.txt
color F
goto menu

:7.3
echo color 2 > color.txt
color 2
goto menu
:: 7 --------------------

:: 8 --------------------
:8
cls
echo.
echo (9) Vissza
echo.
echo Aut¢matikus Le llit¢ Program V3
echo.
echo K‚sz¡tette: Levminer
echo K¢dszerkeszt‹: Visual Studio Code
echo Kliens: GitHub Desktop
echo. 
echo (1) Twitter
echo.
echo (2) GitHub
echo.
echo (3) Hiba bejelent‚se
echo.
echo (4) Friss¡t‚s keres‚se
echo.
set /p about="Nyomd meg a megfelel‹ gombot! (1-4) % %"
if %about%==1 start "" https://twitter.com/levminer92
if %about%==2 start "" https://github.com/Levminer/ALP-ASP
if %about%==3 start "" https://github.com/Levminer/ALP-ASP/issues
if %about%==4 start "" https://github.com/Levminer/ALP-ASP/releases
if %about%==9 goto menu
goto 8
:: 8 --------------------

:: 9 --------------------
:9
exit
:: 9 --------------------