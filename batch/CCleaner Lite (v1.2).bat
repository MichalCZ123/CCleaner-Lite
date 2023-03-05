@echo off
title CCleaner Lite (v1.2) - Vyberte jazyk/Choose your language

:INTRO
cls
@echo CCleaner Lite 2023 (v1.2) - Vytvoril/Create by: MichalCZ
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
title CCleaner Lite (v1.2) - Cistenie
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
title CCleaner Lite (v1.2) - Cistenie dokoncene!
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
title CCleaner Lite (v1.2) - Cisteni
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
title CCleaner Lite (v1.2) - Cisteni dokonceno!
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
title CCleaner Lite (v1.2) - Cleaning
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
title CCleaner Lite (v1.2) - Clean completed!
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
start dfrgui.exe
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