@echo off
set custtmp=%tmp%
set custdownld=%userprofile%\Downloads

:INTRO
title CCleaner Lite (BETA) - Menu
cls
@echo Type: "C" to start cleaning, "S" to open Settings Menu (in development) or "E" to close CCleaner Lite.
@echo.
@echo.
set /p intro="Your choice: "
if %intro% == C goto START
if %intro% == c goto START
if %intro% == S goto OPT
if %intro% == s goto OPT
if %intro% == E exit
if %intro% == e exit
) else (
(
goto INTRO
)

:OPT
cls
@echo The Settings is under development, so it may not work properly!
@echo.
@echo.
set /p optchoi="Settings: Type "D" to customize location of Downloads Folder or "T" to customize location of Temp folder. "
if %optchoi% == D goto custdownld
if %optchoi% == d goto custdownld
if %optchoi% == T goto custtmp
if %optchoi% == t goto custtmp
pause
goto INTRO

:custdownld
cls
set /p custdownldq="Where is your Downloads folder? (default: %userprofile%\Downloads): "
set custdownld=%custdownldq%
goto INTRO

:custtmp
cls
set /p custtmpq="Where is the Temp folder? (default: %tmp%): "
set custtmp=%custtmpq%
goto INTRO

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
cd %custtmp%
del * /f /q > nul
rd * /s /q > nul
goto DOWNLOADS

:NO
exit

:DOWNLOADS
cls
set /p downloads="Do you want to clear folder Downloads (%custdownld%)? (yes/no): "
if %downloads% == yes goto YES2
if %downloads% == YES goto YES2
if %downloads% == no goto END
if %downloads% == NO goto END
) else (
(
goto DOWNLOADS
)

:YES2
@echo Cleaning folder Downloads (%userprofile%\Downloads)...
cd \
cd %custdownld%
del * /f /q
rd * /s /q
goto END

:END
cls
title CCleaner Lite (BETA) - Cleaning completed!
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
start dfrgui.exe
@echo Wait...
@echo.
@echo.
@echo Note: Not working on SSD drives or flash drives.
@echo.
pause
exit

:BON
cls
title CCleaner Lite (BETA) - Bonus Options
set /p bonus="Bonus Options: Type "S" to open Backup Center, "R" Resource Monitor, "T" to run Task Manager, "A" to run Antivirus, "P" to run Disk Partition Tool, "I" to run Installer-Making Tool, "X" to run Auto Fixing Corrupted/Damaged System Files or "C" to close CCleaner Lite. "
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