:: Autómatikus Leállitó Program V3
:: Készítette: Levminer

@echo off
title ALPH
cd C:\Users\%USERNAME%\AppData\Local\Temp\ALP\

set file=hibernate.txt
for /f "Delims=" %%V in (%file%) do (set hh=%%V)

set /a hh1=%hh%
set /a hh=%hh% * 60

timeout %hh%
if exist "cancel.txt" goto 2

:1
shutdown -h
echo 1
pause
exit

:2
del cancel.txt
echo 2 
pause
exit
