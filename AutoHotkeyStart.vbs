'This is a comment by the way. The line starts with a single quotation mark (').

Dim autoHotkeyLocation

Dim keyPressed

'Please enter your variables between the quotation marks.

'AutoHotkey Location
'Default is AutoHotkey.ahk
autoHotkeyLocation = "AutoHotkey.ahk"

'AutoHotkey Keybind
'Default is XButton1
keyPressed = "XButton1"

'Do not edit anything below this line.
set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run autoHotkeyLocation, 9
WScript.Sleep 250
WshShell.SendKeys keyPressed
WScript.Sleep 250 
WshShell.SendKeys "{ENTER}"