::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBpYSwuOAE+1BaAR7ebv/Nagq1k1QeADW6zX37WAJfJexkzwcKok1XVmu+gACRpWewDrQgYgrCBLtWvl
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
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZk40
::ZQ05rAF9IBncCkqN+0xwdVsFAlHi
::ZQ05rAF9IAHYFVzEqQITCxdRTQqHLiuWD6EZiA==
::eg0/rx1wNQPfEVWB+kM9LVsJDCehMG67CLAOqMTy++/H6ltMGrd2MKzhk/qMIfRz
::fBEirQZwNQPfEVWB+kM9LVsJDEnPcQs=
::cRolqwZ3JBvQF1fEqQITCxdRTQqHLiuWD6EZiA==
::dhA7uBVwLU+EWBTJuSI=
::YQ03rBFzNR3SWATEuQ99SA==
::dhAmsQZ3MwfNWATEuQ99SA==
::ZQ0/vhVqMQ3MEVWAtB9wZVYZLA==
::Zg8zqx1/OA3MEVWAtB9wZVYZLA==
::dhA7pRFwIByZRRmn1041KRVRXkSuNX+/Zg==
::Zh4grVQjdCyDJGyX8VAjFBpYSwuOAE+1BaAR7ebv/Nagq1k1QeADW6zX37WAJfJexkzwcKoozn9mu+gACRpWewDrQgYgrC4KoDXLYo7UkDWoBE2R4ys=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title CCleaner Lite (v1.5) - Cisteni

:START
cls
@echo CCleaner Lite (v1.5) - Vytvoreno: MichalCZ
@echo.
@echo.
set /p sure="Chcete vycistit vas pocitac? (ano/ne): "
if %sure% == ano goto YES
if %sure% == ANO goto YES
if %sure% == ne goto NO
if %sure% == NE goto NO
) else (
(
goto START
)

:YES
cls
@echo Cisteni docasnych/odpadnich souboru...
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
goto DOWNLOADS

:NO
exit

:DOWNLOADS
cls
set /p downloads="Chcete vycistit slozku Stazene Soubory (%userprofile%\Downloads)? (ano/ne): "
if %downloads% == ano goto YES2
if %downloads% == ANO goto YES2
if %downloads% == ne goto END
if %downloads% == NE goto END
) else (
(
goto DOWNLOADS
)

:YES2
@echo Cisteni slozky Stazene Soubory (%userprofile%\Downloads)...
cd \
cd %USERPROFILE%\Downloads
del * /f /q
rd * /s /q
goto END

:END
cls
title CCleaner Lite (v1.5) - Cisteni dokonceno!
set /p end="Cisteni dokonceno! Napiste "C" pro zavreni tohoto programu, "W" pro spusteni Pruvodce Cistenim Disku, "D" pro spusteni Defragmentace Disku nebo "B" pro zobrazeni dalsich moznosti. "
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
start dfrgui.exe
@echo Pockejte...
@echo.
@echo.
@echo Poznamka: Nefunguje na SSD discich a Flash Discich (Flashkach).
@echo.
pause
exit

:BON
cls
title CCleaner Lite (v1.5) - Dalsi Moznosti
set /p bonus="Dalsi Moznosti: Napiste "S" pro otevreni Centra Zaloh, "R" pro otevreni Sledovani Prostredku, "T" pro spusteni Spravce Uloh, "A" pro spusteni Antiviru, "P" pro spusteni Nastroje pro Spravu Disku a Oddilu, "I" pro spusteni Nastroje k Vytvareni Instalatoru, "X" pro spusteni Automaticke Opravy Systemovych Souboru nebo "C" pro zavreni CCleanru Lite. "
if %bonus% == S start sdclt.exe
if %bonus% == s start sdclt.exe
if %bonus% == R start resmon.exe
if %bonus% == r start resmon.exe
if %bonus% == T start taskmgr.exe
if %bonus% == t start taskmgr.exe
if %bonus% == A start mrt.exe
if %bonus% == a start mrt.exe
if %bonus% == P start diskpart.exe
if %bonus% == p start diskpart.exe
if %bonus% == I start iexpress.exe
if %bonus% == i start iexpress.exe
if %bonus% == X goto SFC
if %bonus% == x goto SFC
if %bonus% == C exit
if %bonus% == c exit
) else (
(
goto BON
)

:SFC
cls
sfc /scannow
pause > nul
exit