:: Automatic Shutdown Program V4
:: Created by: Levminer

:: start
@echo off
cd C:\Users\%USERNAME%\AppData\Local\
if not exist "ALP" md ALP
cd C:\Users\%USERNAME%\AppData\Local\ALP
:: start
:: color
set file=color.md
for /f "tokens=*" %%C in (%file%) do (%%C)
:: color

:: menu
:menu
cls
title Automatic Shutdown Program V4 - Menu - Created by: Levminer
echo Automatic Shutdown Program V4
echo Created by: Levminer
echo.
echo (0) Parancs visszavon�sa
echo.
echo (1) Le�ll�t�s egy adott id� ut�n (m�sodperc)
echo (2) Le�ll�t�s egy adott id� ut�n (perc) 
echo (3) Le�ll�t�s egy adott id� ut�n (�ra) 
echo.
echo (4) �jraind�t�s egy adott id� ut�ne (m�sodperc)
echo (5) �jraind�t�s egy adott id� ut�ne (perc) 
echo (6) �jraind�t�s egy adott id� ut�ne (�ra) 
echo.
echo (7) Be�ll�t�sok
echo (8) N�vjegy
echo.
echo (9) Kil�p�s
echo.
set /p menu="Nyomd meg a megfelel� gombot! (0-9) % %"
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
title Automatic Shutdown Program V4 - Parancs visszavon�sa - Created by: Levminer
cls
shutdown -a 
cls
echo Parancs visszavon�sa
echo.
pause
goto menu
:: 0 --------------------

:: 1 --------------------
:1
title Automatic Shutdown Program V4 - Le�ll�t�s egy adott id� ut�n (m�sodperc) - Created by: Levminer
cls
echo (9) Vissza
echo.
set /p "l=Add meg az �rt�ket m�sodpercben (0-9) % %"
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
set /a l= %l% 

:1.2
cls
shutdown -s -t %l% -c "Le�ll�t�s %l1% m�sodperc m�lva!"
echo.
echo Le�ll�t�s %l1% m�sodperc m�lva!
echo.
pause
cls

:1.3
echo %l1% > shutdown.md
goto menu
:: 1 --------------------

:: 2 --------------------
:2
title Automatic Shutdown Program V4 - Le�ll�t�s egy adott id� ut�n (perc) - Created by: Levminer
cls
echo (9) Vissza
echo.
set /p "l=Add meg az �rt�ket percben (0-9) % %"
if %l%==9 goto menu

call :2.12 %l% || goto 2.11
goto 2.1

:2.11
goto 1

:2.12
for /f "delims=0123456789" %%a in ("%1") do exit /b 1
exit /b 0

:2.1
set /a l1=%l%
set /a l= %l% * 60

:2.2
cls
shutdown -s -t %l% -c "Le�ll�t�s %l1% perc m�lva!"
echo.
echo Le�ll�t�s %l1% perc m�lva!
echo.
pause
cls

:2.3
echo %l1% > shutdown.md
goto menu
:: 2 --------------------

:: 3 --------------------
title Automatic Shutdown Program V4 - Le�ll�t�s egy adott id� ut�n (�ra) - Created by: Levminer
:3
cls
echo (9) Vissza
echo.
set /p "l=Add meg az �rt�ket �r�ban (0-9) % %"
if %l%==9 goto menu

call :3.12 %l% || goto 3.11
goto 3.1

:3.11
goto 1

:3.12
for /f "delims=0123456789" %%a in ("%1") do exit /b 1
exit /b 0

:3.1
set /a l1=%l%
set /a l= %l% * 3600

:3.2
cls
shutdown -s -t %l% -c "Le�ll�t�s %l1% �ra m�lva!"
echo.
echo Le�ll�t�s %l1% �ra m�lva!
echo.
pause
cls

:3.3
echo %l1% > shutdown.md
goto menu
:: 3 --------------------

:: 4 --------------------
:4
title Automatic Shutdown Program V4 - �jraind�t�s egy adott id� ut�n (m�sodperc) - Created by: Levminer
cls
echo (9) Vissza
echo.
set /p "l=Add meg az �rt�ket m�sodpercben (0-9) % %"
if %l%==9 goto menu

call :4.12 %l% || goto 4.11
goto 4.1

:4.11
goto 1

:4.12
for /f "delims=0123456789" %%a in ("%1") do exit /b 1
exit /b 0

:4.1
set /a l1=%l%
set /a l= %l% 

:4.2
cls
shutdown -s -t %l% -c "�jraind�t�s %l1% m�sodperc m�lva!"
echo.
echo �jraind�t�s %l1% m�sodperc m�lva!
echo.
pause
cls

:4.3
echo %l1% > restart.md
goto menu
:: 4 --------------------

:: 5 --------------------
:5
title Automatic Shutdown Program V4 - �jraind�t�s egy adott id� ut�n (perc) - Created by: Levminer
cls
echo (9) Vissza
echo.
set /p "l=Add meg az �rt�ket percben (0-9) % %"
if %l%==9 goto menu

call :5.12 %l% || goto 5.11
goto 5.1

:5.11
goto 1

:5.12
for /f "delims=0123456789" %%a in ("%1") do exit /b 1
exit /b 0

:5.1
set /a l1=%l%
set /a l= %l% * 60

:5.2
cls
shutdown -s -t %l% -c "�jraind�t�s %l1% perc m�lva!"
echo.
echo �jraind�t�s %l1% perc m�lva!
echo.
pause
cls

:5.3
echo %l1% > restart.md
goto menu
:: 5 --------------------

:: 6 --------------------
title Automatic Shutdown Program V4 - �jraind�t�s egy adott id� ut�n (�ra) - Created by: Levminer
:6
cls
echo (9) Vissza
echo.
set /p "l=Add meg az �rt�ket �r�ban (0-9) % %"
if %l%==9 goto menu

call :6.12 %l% || goto 6.11
goto 6.1

:6.11
goto 1

:6.12
for /f "delims=0123456789" %%a in ("%1") do exit /b 1
exit /b 0

:6.1
set /a l1=%l%
set /a l= %l% * 3600

:6.2
cls
shutdown -s -t %l% -c "�jraind�t�s %l1% �ra m�lva!"
echo.
echo �jraind�t�s %l1% �ra m�lva!
echo.
pause
cls

:6.3
echo %l1% > restart.md
goto menu
:: 6 --------------------

:: 7 --------------------
:7
title Automatic Shutdown Program V4 - Be�ll�t�sok - Created by: Levminer
cls
echo (9) Vissza
echo.
echo (1) Piros
echo (2) Feh�r
echo (3) Z�ld
echo.
set /p color="Choose color (0-9) % %"
if %color%==1 goto 7.1
if %color%==2 goto 7.2
if %color%==3 goto 7.3
if %color%==9 goto menu
goto 7

:7.1
echo color 4 > color.md
color 4
goto menu

:7.2
echo color F > color.md
color F
goto menu

:7.3
echo color 2 > color.md
color 2
goto menu
:: 7 --------------------

:: 8 --------------------
:8
title Automatic Shutdown Program V4 - N�vjegy - Created by: Levminer
cls
echo (9) Vissza
echo.
echo Automatic Shutdown Program V4
echo.
echo Created by: Levminer
echo Code szerkeszt�: Visual Studio Code
echo GitHub kliens: GitHub Desktop
echo. 
echo (1) Twitter
echo.
echo (2) GitHub
echo.
echo (3) Hiba jelent�se
echo.
echo (4) Friss�t�s keres�se
echo.
set /p about="Nyomd meg a megfelel� gombot! (0-9) % %"
if %about%==1 start "" https://twitter.com/levminer92
if %about%==2 start "" https://github.com/Levminer/asp
if %about%==3 start "" https://github.com/Levminer/asp/issues
if %about%==4 start "" https://github.com/Levminer/asp/releases
if %about%==9 goto menu
goto 8
:: 8 --------------------

:: 9 --------------------
:9
exit
:: 9 --------------------
