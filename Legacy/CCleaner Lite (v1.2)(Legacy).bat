::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFA5HSRa+GGS5E7gZ5vzo082OtmUIVt4cW4Pe27qLMq0/41HhSboo0XtZgfcJFB5kXTGnaw46rHwCmm2RMofUpV6vGAHByk43GmZtzi3VlC5b
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title CCleaner Lite (v1.2)(Legacy) - Vyberte jazyk/Choose your language

:INTRO
cls
@echo CCleaner Lite 2023 (v1.2)(Legacy) - Vytvoril/Create by: MichalCZ
@echo.
@echo.
set /p language="Vyberte jazyk/Choose your language (CZ/SK/EN): "
if %language% == CZ goto CZ
if %language% == EN goto EN
if %language% == cz goto CZ
if %language% == en goto EN
if %language% == SK goto SK
if %language% == sk goto SK
goto INTRO

:SK
cls
title CCleaner Lite (v1.2)(Legacy) - Cistenie
set /p jiste="Chcete svoj pocitac vycistit? (ano/nie) "
if %jiste% == ano goto ANO
if %jiste% == ANO goto ANO
if %jiste% == nie goto NE
if %jiste% == NIE goto NE
goto SK

:ANO
cls
@echo Cistenie, pockajte prosim...
cd \
%SYSTEMDRIVE%
cd %SYSTEMDRIVE%\Windows\Temp
del * /s /q > nul
rd * /s /q > nul
cd \
%SYSTEMDRIVE%
cd %tmp%
del * /f /q
rd * /s /q
goto KONIEC

:KONIEC
cls
title CCleaner Lite (v1.2)(Legacy) - Cistenie dokoncene!
set /p konec="Cistenie bolo dokoncene! Stlacenim tlacidla Z program zatvorite, stlacenim tlacidla C spustite Sprievodcu cistenim disku alebo stlacenim tlacidla D spustite Defragmentaciu disku. "
if %konec% == Z goto NE
if %konec% == z goto NE
if %konec% == C goto CMGR
if %konec% == c goto CMGR
if %konec% == D goto DEF
if %konec% == d goto DEF
goto KONIEC

:CZ
cls
title CCleaner Lite (v1.2)(Legacy) - Cisteni
set /p opravdu="Chcete vycistit vas pocitac? (ano/ne) "
if %opravdu% == ano goto ANO
if %opravdu% == ANO goto ANO
if %opravdu% == ne goto NE
if %opravdu% == NE goto NE
goto CZ

:ANO
cls
@echo Cisteni, prosim pockejte...
cd \
%SYSTEMDRIVE%
cd %SYSTEMDRIVE%\Windows\Temp
del * /s /q > nul
rd * /s /q > nul
cd \
%SYSTEMDRIVE%
cd %tmp%
del * /f /q
rd * /s /q
goto KONEC

:NE
cls
exit

:KONEC
cls
title CCleaner Lite (v1.2)(Legacy) - Cisteni dokonceno!
set /p konec="Cisteni bylo dokonceno! Stisknete Z pro zavreni programu, C pro spusteni Pruvodce Vycisteni Disku a nebo D pro spusteni Defragmentace Disku. "
if %konec% == Z goto NE
if %konec% == z goto NE
if %konec% == C goto CMGR
if %konec% == c goto CMGR
if %konec% == D goto DEF
if %konec% == d goto DEF
goto KONEC

:EN
cls
title CCleaner Lite (v1.2)(Legacy) - Cleaning
set /p sure="Are you want to clean your computer? (yes/no) "
if %sure% == yes goto YES
if %sure% == YES goto YES
if %sure% == no goto NE
if %sure% == NO goto NE
goto EN

:YES
cls
@echo Cleaning, please wait...
cd \
%SYSTEMDRIVE%
cd %SYSTEMDRIVE%\Windows\Temp
del * /f /q > nul
rd * /s /q > nul
cd \
%SYSTEMDRIVE%
cd %tmp%
del * /f /q > nul
rd * /s /q > nul
goto END

:END
cls
title CCleaner Lite (v1.2)(Legacy) - Clean completed!
set /p end="Cleaning complete! Press Z to close this program, C to run Clean Disk Wizard or D to run Disk Defragmentation. "
if %end% == Z goto NO
if %end% == z goto NO
if %end% == C goto CMGR
if %end% == c goto CMGR
if %end% == D goto DEF
if %end% == d goto DEF
goto END

:CMGR
cls
start cleanmgr.exe
pause
exit

:DEF
cls
start defrag.exe
@echo Pockejte...
@echo Pockajte...
@echo Wait...
@echo.
@echo.
@echo.
@echo Poznamka: Nefunguje na SSD discich nebo flashkach [fleskach].
@echo Poznamka: Nefunguje na SSD diskoch alebo flash diskoch.
@echo Note: Not working on SSD drives or flash drives.
@echo.
pause
exit