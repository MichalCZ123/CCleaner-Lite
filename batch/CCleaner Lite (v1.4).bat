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
::Zh4grVQjdCmDJEmW+0UiKRZHcCehMG67CLAOqMTy+++7p1UYaMEcdIra1LGcYMwa/kCkPYB8mC4T1s4UCXs=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title CCleaner Lite (v1.4) - Cleaning

:START
@echo CCleaner Lite (v1.4) - Create by: MichalCZ
@echo.
@echo.
set /p sure="Are you want to clean your computer? (yes/no): "
if %sure% == yes goto YES
if %sure% == YES goto YES
if %sure% == no goto NO
if %sure% == NO goto NO
goto START

:YES
cls
@echo Cleaning, please wait...
cd \
%SYSTEMDRIVE%
cd %SYSTEMDRIVE%\Windows\Temp
attrib * -s
del * /f /q > nul
del * /s /q > nul
rd * /s /q > nul
cd \
%SYSTEMDRIVE%
cd %tmp%
attrib * -s
del * /f /q > nul
del * /s /q > nul
rd * /s /q > nul
goto DOWNLOADS

:NO
exit

:DOWNLOADS
cls
set /p downloads="Are you want to clear downloads folder? (yes/no): "
if %downloads% == yes goto YES2
if %downloads% == YES goto YES2
if %downloads% == no goto END
if %downloads% == NO goto END
goto DOWNLOADS

:YES2
@echo Cleaning, please wait...
cd \
cd %USERPROFILE%\Downloads
del * /f /q
rd * /s /q
goto END

:END
cls
title CCleaner Lite (v1.4) - Cleaning completed!
set /p end="Cleaning completed! Press "C" to close this program, "W" to run Clean Disk Wizard or "D" to run Disk Defragmentation. "
if %end% == C goto NO
if %end% == c goto NO
if %end% == W goto CMGR
if %end% == w goto CMGR
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
start dfrgui.exe
@echo Wait...
@echo.
@echo.
@echo Note: Not working on SSD drives or flash drives.
@echo.
pause
exit