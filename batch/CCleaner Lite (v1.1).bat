::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCmDJEmW+0UiKRZHcCehMG67CLAOqMTy+++7q04SaMEcdIra1LGcYMwa/kCqfJUitg==
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
::Zh4grVQjdCmDJEmW+0UiKRZHcCehMG67CLAOqMTy+++7p1UYaMEcdIra1LGcYMwa/kCkPYB8mCsT1s4UCXs=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title CCleaner Lite (v1.1) - Vyberte jazyk/Choose your language

:INTRO
cls
@echo CCleaner Lite 2023 (v1.1) - Vytvoril/Create by: MichalCZ
@echo.
@echo.
set /p language="Vyberte jazyk/Choose your language (CZ/EN): "
if %language% == CZ goto CZ
if %language% == EN goto EN
if %language% == cz goto CZ
if %language% == en goto EN
if %language% == Cz goto CZ
if %language% == En goto EN
if %language% == cZ goto CZ
if %language% == eN goto EN
goto INTRO

:CZ
cls
title CCleaner Lite (v1.1) - Cisteni
set /p opravdu="Chcete vycistit vas pocitac? (ano/ne) "
if %opravdu% == ano goto ANO
if %opravdu% == ANO goto ANO
if %opravdu% == Ano goto ANO
if %opravdu% == aNo goto ANO
if %opravdu% == anO goto ANO
if %opravdu% == ANo goto ANO
if %opravdu% == aNO goto ANO
if %opravdu% == AnO goto ANO
if %opravdu% == ne goto NE
if %opravdu% == NE goto NE
if %opravdu% == Ne goto NE
if %opravdu% == nE goto NE
goto CZ

:ANO
cls
@echo Cisteni, prosim pockejte...
if %windir% == %SYSTEMDRIVE%\WINNT goto NTCZ
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

:NTCZ
cd \
%SYSTEMDRIVE%
cd %SYSTEMDRIVE%\WINNT\Temp
del * /f /q > nul
rd * /s /q > nul
cd \
%SYSTEMDRIVE%
cd %tmp%
del * /f /q > nul
rd * /s /q > nul
goto KONEC

:KONEC
cls
title CCleaner Lite (v1.1) - Cisteni dokonceno!
set /p konec="Cisteni bylo dokonceno! Stisknete Z pro zavreni programu nebo stisknete C pro spusteni Pruvodce Vycisteni Disku. "
if %konec% == Z goto NE
if %konec% == z goto NE
if %konec% == C goto CMGR
if %konec% == c goto CMGR
goto KONEC

:EN
cls
title CCleaner Lite (v1.1) - Cleaning
set /p sure="Are you want to clean your computer? (yes/no) "
if %sure% == yes goto YES
if %sure% == Yes goto YES
if %sure% == YES goto YES
if %sure% == YEs goto YES
if %sure% == yES goto YES
if %sure% == yEs goto YES
if %sure% == YeS goto YES
if %sure% == no goto NO
if %sure% == NO goto NO
if %sure% == No goto NO
if %sure% == nO goto NO
goto EN

:YES
cls
@echo Cleaning, please wait...
if %windir% == %SYSTEMDRIVE%\WINNT goto NTEN
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

:NO
cls
exit

:NTEN
cd \
%SYSTEMDRIVE%
cd %SYSTEMDRIVE%\WINNT\Temp
del * /f /q > nul
rd * /s /q > nul
cd \
%SYSTEMDRIVE%
cd %tmp%
del * /f /q
rd * /s /q
goto END

:END
cls
title CCleaner Lite (v1.1) - Clean completed!
set /p end="Cleaning complete! Press Z to close this program or press C to run Clean Disk Wizard. "
if %end% == Z goto NO
if %end% == z goto NO
if %end% == C goto CMGR
if %end% == c goto CMGR
goto END

:CMGR
cls
start cleanmgr.exe
pause
exit