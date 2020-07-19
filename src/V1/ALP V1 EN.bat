@echo off
title Automatic Shutdown Program V1 - Created by: Levminer
color F
 
//Automatic Shutdown Program V1
//Created by: Levminer

//start
:start
cls
echo.
echo Automatic Shutdown Program V1
echo Created by: Levminer
echo.
echo (0) Cancel shutdowm
echo (1) 15 minutes later
echo (2) 30 minutes later
echo (3) 45 minutes later
echo (4) 60 minutes later
echo (5) Custom value
echo (9) Exit
echo.
set /p menu="Press the correct button! (0-9) % %"
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
echo Shutdown canceled!
echo.
pause
goto start
cls

:1
cls
shutdown -s -t 900 -c "Shutdown in 15 minutes!"
echo.
echo Shutdown in 15 minutes!
echo.
pause
goto start
cls

:2
cls
shutdown -s -t 1800 -c "Shutdown in 30 minutes!"
echo.
echo Shutdown in 30 minutes!!
echo.
pause
goto start
cls

:3
cls
shutdown -s -t 2700 -c "Shutdown in 45 minutes!"
echo.
echo Shutdown in 45 minutes!
echo.
pause
goto start
cls

:4
cls
shutdown -s -t 3600 -c "Shutdown in 60 minutes!"
echo.
echo Shutdown in 60 minutes!
echo.
pause
goto start
cls
//ertekek

//sajatertek
:5
cls
echo.
set /p m="Give the value in minutes! % %"
set /a m1=%m%
set /a s= %m%*60
cls

:5.1
cls
shutdown -s -t %s% -c "Shutdown %m1% minues later!"
echo.
echo Shutdown %m1% minues later!
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