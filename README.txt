The Witcher Series Launcher by nicnacnic
AutoHotkey by Gaztin

This is a simple script that can launch all games in The Witcher series.

----- Configuration -----
It is recommended that you use Notepad++ to edit this script, although it is not nessesary. The regular Notepad will work just fine.
You can put this script anywhere you want, but make sure all components (folders, autohotkey, batch file, README) are all together, or the script will NOT work.
For the AutoHotkey to work, you will need to install the AutoHotkey software are well, which can be found at https://www.autohotkey.com/

1) Open AutoHotkeyStart.vbs with a text editor. 
2) On Line 13, change the value in-between the quotes to whatever hotkey you want. A list of compatible AutoHotkey keys can be found at https://www.autohotkey.com/docs/KeyList.htm
3) Make sure to save the file, then close out of it.
4) Open The Witcher Series Launcher.bat with a text editor.
5) On Line 8, change <username> with your system username.
6) On Lines 11, 21, 26, 30 and 33, change the path to the corresponding game, using the guidelines below.

Enter the path to the folder that contains the executable, not the path to the executable itself.
INCORRECT: D:\SteamLibrary\steamapps\common\"The Witcher 3 Speedrun"\1.32\bin\x64\witcher3.exe
CORRECT: D:\SteamLibrary\steamapps\common\"The Witcher 3 Speedrun"\1.32\bin\x64

If there is a space in a part of the path, surround that location with quotes.
INCORRECT: D:\SteamLibrary\steamapps\common\The Witcher 3 Speedrun\1.32\bin\x64
CORRECT: D:\SteamLibrary\steamapps\common\"The Witcher 3 Speedrun"\1.32\bin\x64

All other fields do not need to be changed, they are only there for advanced users who would like to customize this script.
Batch files are sometimes super picky with the syntax of the command, by following these guidelines, the script will work as intended.

7) Make sure to save the file, then close out of it.
8) In the included folders, please put your TW3 settings files and LiveSplit splits files.

Settings/Witcher3/CurrentPatch -> Where your three Current Patch settings files go.
Settings/Witcher3/OldPatch -> Where your three Old Patch settings files go.

All Livesplit Splits files end in .lss
Livesplit/Witcher3/MainStory -> Where your Any% Current Patch splits go.
Livesplit/Witcher3/OldPatch -> Where your Any% Old Patch splits go.
Livesplit/Witcher3/HeartsOfStone -> Where your Hearts Of Stone% splits go.
Livesplit/Witcher3/BloodAndWine -> Where your BloodAndWine% splits go.
Livesplit/Witcher3/WhiteOrchard -> Where your Orchard% splits go.

Livesplit/Witcher2 -> Where your Witcher 2 Any% splits go.
Livesplit/Witcher -> Where your Witcher Any% splits go.
Livesplit/Thronebreaker -> Where your Thronebreaker Any% splits go.

Please note that if you leave a folder blank, the script will not launch your LiveSplit files. This is very intentional for people who don't have Livesplit files yet.
Also note that the script will launch ALL files in each folder, i.e if you have three splits files in Livesplit/Witcher2, the script will launch all three files at once.
If you're an advanced user, you can edit the script and add more categories to your liking, otherwise ask me on Discord.

----- Configuring Your Game Settings -----
Unfortunatly, the game settings for Current Patch and Old Patch aren't interchangable, so I developed a system to get around that.

To configure your Witcher 3 game settings, you will need to manually open the game via the .exe in the game files.
Once you do that, change all the game settings to your liking. Then exit the game.
Go to C:/Users/<username>/Documents/The Witcher 3 (replacing <username> with your system username).
Copy the three files, NOT the folder (input.settings, user.settins, user.settings.bak) to the folders mentioned above, in Step 8.

To permantly change one of your game settings down the line, you will need to repeat the above steps.

Every time you launch The Witcher 3, the script will copy the appropiate settings files from the folder and paste them into the Documents/The Witcher 3 folder.

----- Using This Script -----
For ease of use, you can create a Windows shortcut to The WItcher Series Launcher.bat and place it on your Desktop/Start Menu.

Double-click to open this script. Select option 1-5 to choose your game.
If you choose option 1, the script will ask you to choose your category, again options 1-5.
The script will then launch the AutoHotkey (if applicable), your LiveSplit splits, and your game.
Once your game launches, the script is no longer needed and you can safely close out of the CMD window.

----- Questions and Contact -----
If you have questions or need help setting up the script, I can be reached either in the CD Project RED Speedruns Discord or by Discord DM.
Thanks for using my script, and I hope you enjoy!