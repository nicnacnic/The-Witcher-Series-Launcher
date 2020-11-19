@ECHO OFF
//The WItcher Series Launcher Configuration File
//Please fill the multiple SET commands with each file location.
//For more information, please view README.txt.

//General
SET AutoHotkey=AutoHotkeyStart.vbs
SET Witcher3SettingsFolder="C:/Users/<username>/Documents/The Witcher 3"

//The Witcher 3: Wild Hunt (Current Patch)
SET CurrentPatchLocation=<path_to_witcher3.exe_folder>
SET CurrentPatchSettings="%cd%/Settings/Witcher3/CurrentPatch"

SET MainStoryLivesplit="%cd%\LiveSplit\Witcher3\MainStory"
SET DeathmarchLivesplit="%cd%\LiveSplit\Witcher3\Deathmarch"
SET HeartsOfStoneLivesplit="%cd%\LiveSplit\Witcher3\HeartsOfStone"
SET BloodAndWineLivesplit="%cd%\LiveSplit\Witcher3\BloodAndWine"
SET WhiteOrchardLivesplit="%cd%\LiveSplit\Witcher3\WhiteOrchard"

//The Witcher 3: Wild Hunt (Old Patch)
SET OldPatchLocation=<path_to_witcher3.exe_folder>
SET OldPatchSettings="%cd%/Settings/Witcher3/OldPatch"
SET OldPatchLivesplit="%cd%/Livesplit\Witcher3\OldPatch"

//The Witcher 2: Assasins Of Kings
SET Witcher2Location=<path_to_launcher.exe_folder>
SET Witcher2Livesplit="%cd%\LiveSplit\Witcher2"

//The Witcher
SET WitcherLocation=<path_to_launcher.exe_folder>
SET WitcherLivesplit="%cd%\LiveSplit\Witcher"

//Thronebreaker: The Witcher Tales
SET ThronebreakerLocation=<path_to_thronebreaker.exe_folder>
SET ThronebreakerLivesplit="%cd%\LiveSplit\Thronebreaker"

//Do not edit anything below this line!

TASKKILL /f /im autohotkey.exe
TASKKILL /f /im livesplit.exe
TASKKILL /f /im witcher3.exe
TASKKILL /f /im witcher2.exe
TASKKILL /f /im witcher.exe
TASKKILL /f /im thronebreaker.exe
ECHO.
ECHO Do not mind the errors above. This is normal.
ECHO.
ECHO 1) The Witcher 3: Wild Hunt (Current Patch)
ECHO 2) The Witcher 3: Wild Hunt (Old Patch)
ECHO 3) The Witcher 2: Assasins Of Kings
ECHO 4) The Witcher
ECHO 5) Thronebreaker: The Witcher Tales
SET /p Game=  Please choose your game: 
If "%Game%"=="1" goto Witcher3Current
If "%Game%"=="2" goto Witcher3Old
If "%Game%"=="3" goto Witcher2
If "%Game%"=="4" goto Witcher
If "%Game%"=="5" goto Thronebreaker

:Witcher3Current
ECHO.
del %Witcher3SettingsFolder% /F /Q
xcopy %CurrentPatchSettings% %Witcher3SettingsFolder% /S /Q /Y 
START %AutoHotkey%
timeout /t 1 > nul
ECHO.
ECHO 1) Main Story (Any% Current Patch)
ECHO 2) Main Story (Any% Deathmarch)
ECHO 3) Hearts Of Stone
ECHO 4) Blood and Wine
ECHO 5) White Orchard
SET /p Version=  Please choose your version: 
If "%Version%"=="1" goto AnyPercent
If "%Version%"=="2" goto Deathmarch
If "%Version%"=="3" goto HoS
If "%Version%"=="4" goto BaW
If "%Version%"=="5" goto Orchard
:AnyPercent
CD %CurrentPatchLocation%
START witcher3.exe
ECHO.
ECHO Your game has been launched, you can now safely close this window.
FOR %%i in (%MainStoryLivesplit%\*) do %%i
EXIT
:Deathmarch
CD %CurrentPatchLocation%
START witcher3.exe
ECHO.
ECHO Your game has been launched, you can now safely close this window.
FOR %%i in (%DeathmarchLivesplit%\*) do %%i
EXIT
:HoS
CD %CurrentPatchLocation%
START witcher3.exe
ECHO.
ECHO Your game has been launched, you can now safely close this window.
FOR %%i in (%HeartsOfStoneLivesplit%\*) do %%i
EXIT
:BaW
CD %CurrentPatchLocation%
START witcher3.exe
ECHO.
ECHO Your game has been launched, you can now safely close this window.
FOR %%i in (%BloodAndWineLivesplit%\*) do %%i
EXIT
:Orchard
CD %CurrentPatchLocation%
START witcher3.exe
ECHO.
ECHO Your game has been launched, you can now safely close this window.
FOR %%i in (%WhiteOrchardLivesplit%\*) do %%i
EXIT

:Witcher3Old
ECHO.
DEL %Witcher3SettingsFolder% /F /Q
XCOPY %OldPatchSettings% %Witcher3SettingsFolder% /S /Q /Y 
START %AutoHotkey%
CD %OldPatchLocation%
START witcher3.exe
ECHO.
ECHO Your game has been launched, you can now safely close this window.
FOR %%i in (%OldPatchLivesplit%\*) do %%i
EXIT

:Witcher2
CD %Witcher2Location%
START launcher.exe
ECHO.
ECHO Your game has been launched, you can now safely close this window.
FOR %%i in (%Witcher2Livesplit%\*) do %%i
EXIT

:Witcher
CD %WitcherLocation%
START launcher.exe
ECHO.
ECHO Your game has been launched, you can now safely close this window.
FOR %%i in (%WitcherLivesplit%\*) do %%i
EXIT

:Thronebreaker
CD %ThronebreakerLocation%
START Thronebreaker.exe
ECHO.
ECHO Your game has been launched, you can now safely close this window.
FOR %%i in (%ThronebreakerLivesplitt%\*) do %%i
EXIT

//I hope you didn't edit anything below line 37 :D