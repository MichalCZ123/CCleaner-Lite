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
::Zh4grVQjdCyDJGyX8VAjFA5HSRa+GGS5E7gZ5vzo082OtmUIVt4cW4Pe27qLMq0/41HhSboo0XtZgfcJFB5kXTGnaw46rHwCmm2RMofUpV6vHwHByk43GmZtzi3VlC5b
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title CCleaner Lite (v1.5)(Legacy) - Cleaning

:START
cls
@echo CCleaner Lite (v1.5)(Legacy) - Create by: MichalCZ
@echo.
@echo.
set /p sure="Do you want to clean your computer? (yes/no): "
if %sure% == yes goto YES
if %sure% == YES goto YES
if %sure% == no goto NO
if %sure% == NO goto NO
) else (
(
goto START
)

:YES
cls
@echo Cleaning temporary/junk files...
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
exit

:END
cls
title CCleaner Lite (v1.5)(Legacy) - Cleaning completed!
set /p end="Cleaning completed! Type "C" to close this program, "W" to run Clean Disk Wizard, "D" to run Disk Defragmentation or "B" to show Bonus Options. "
if %end% == C goto NO
if %end% == c goto NO
if %end% == W goto CMGR
if %end% == w goto CMGR
if %end% == D goto DEF
if %end% == d goto DEF
if %end% == B goto BON
if %end% == b goto BON
) else (
(
goto END
)

:CMGR
cls
start cleanmgr.exe
pause
exit

:DEF
cls
start defrag.exe
@echo Wait...
@echo.
@echo.
@echo Note: Not working on SSD drives or flash drives.
@echo.
pause
exit

:BON
cls
title CCleaner Lite (v1.5)(Legacy) - Bonus Options
set /p bonus="Bonus Options: Type "C" to close CCleaner Lite. "
if %bonus% == C exit
if %bonus% == c exit
) else (
(
goto BON
)