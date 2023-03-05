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
::Zh4grVQjdCmDJEmW+0UiKRZHcCehMG67CLAOqMTy+++7p1UYaMEcdIra1LGcYMwa/kCkPYB8mCoT1s4UCXs=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title CCleaner Lite (v1.0)

set /p CYPC=Are you want to clean your PC? (yes/no)
if %CYPC% == yes goto TMP
pause
exit

:TMP
@echo Press any key to start...
pause > nul
cd \
cd %SYSTEMDRIVE%\Windows\Temp

@echo on

del * /F /Q
rd * /S /Q

@echo off

timeout /t 4 /nobreak > nul

cls

@echo ------------------
@echo CLEANING FINISHED!
@echo ------------------

set /p CMGR=Are you want to clean your PC with Windows Disk Clean Wizard? (yes/no)
if %CMGR% == yes goto CMGR
pause
exit

:CMGR
start cleanmgr.exe

@echo Press any key to close CCleaner Lite...
pause > nul
exit