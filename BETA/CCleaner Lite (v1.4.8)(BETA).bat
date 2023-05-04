@echo off
title CCleaner Lite (BETA) - Cleaning

:START
cls
@echo CCleaner Lite (BETA) - Create by: MichalCZ
@echo.
@echo.
set /p sure="Do you want to clean your computer? (yes/no): "
if %sure% == yes goto YES
if %sure% == YES goto YES
if %sure% == no goto NO
if %sure% == NO goto NO
goto START

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
@echo Cleaning folder Downloads...
cd \
cd %USERPROFILE%\Downloads
del * /f /q
rd * /s /q
goto END

:END
cls
title CCleaner Lite (BETA) - Cleaning completed!
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