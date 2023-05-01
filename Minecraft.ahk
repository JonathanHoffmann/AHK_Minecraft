#MaxThreadsPerHotkey 3
#IfWinActive, Minecraft
#CommentFlag //

I_Icon = %A_ScriptDir%\minecraft_logo.png
ICON [I_Icon]
if I_Icon <>
IfExist, %I_Icon%
	Menu, Tray, Icon, %I_Icon%

toggleRapidRight := false
toggleAttackLeft := false

RButton:: 

// Rapid Clicking Right
F23 & RButton::
toggleRapidRight := true
while GetKeyState (RButton)
{
	Click, Right
	Sleep 20
}
Return

F23 & LButton::
toggleAttackLeft := true
while toggleAttackLeft
{
	Click, Left
	Sleep 50
}
Return

LButton up::
toggleAttackLeft := false
Return