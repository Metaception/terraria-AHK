#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Check the exe and window title for a match
#If WinActive("Terraria") and WinActive("ahk_exe Terraria.exe")

; Kill Switch, comment this out if the script randomly stops working!
~Enter::
	Suspend
	Pause,,1
return

$~Space::
	Grappled := 0
	while GetKeyState("Space", "p")
	{
		if( GetKeyState("MButton","p") )
			Grappled := 1
		sleep, 32
	}
return
$~Space up::
	if( Grappled = 0 )
	{
		sleep, 32
		send {Space down}
		sleep, 32
		send {Space up}
	}
return
