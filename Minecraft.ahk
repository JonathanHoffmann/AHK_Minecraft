#MaxThreadsPerHotkey 3
#IfWinActive, Minecraft

I_Icon = E:\Programming\Autohotkey scripts\Minecraft\minecraft_logo.png
ICON [I_Icon]
if I_Icon <>
IfExist, %I_Icon%
	Menu, Tray, Icon, %I_Icon%

{
F5::
Toggle := !Toggle
If Toggle
	Click, Down
else
	Click, Up
Return

F6::
Toggle := !Toggle
If Toggle
	Click, Right, Down
else
	Click, Right, Up
Return

F7::
Toggle := !Toggle
Loop
{
	If (!Toggle)
		Break
	Click, Left
	Sleep 50
}
Return

F8::
Toggle := !Toggle
Loop
{
	If (!Toggle)
		Break
	Click, Right
	Sleep 20
}
Return


F10::
Toggle := !Toggle
Loop
{
	If (!Toggle)
		Break
	Click, Right
	Sleep 20
Click, Right
	Sleep 20
Click, Left
	Sleep 20
}
Return
}