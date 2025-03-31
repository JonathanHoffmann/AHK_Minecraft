#MaxThreadsPerHotkey 3
#IfWinActive, Minecraft
#CommentFlag //

F10::
Toggle := !Toggle
Loop
{
	If (!Toggle)
		Break
	Click, Right
	Sleep 20
Click, Left
	Sleep 20
}