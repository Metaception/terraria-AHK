#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Check the exe and window title for a match
#If WinActive("Terraria") and WinActive("ahk_exe Terraria.exe")

LShift::
	if( GetKeyState("d", "p") )
	{
		send {d up}
		sleep, 16
		send {d down}
		sleep, 32
		send {d up}
		sleep, 16
		if( GetKeyState("d", "p") )
			send {d down}
	}
	else if( GetKeyState("a", "p") )
	{
		send {a up}
		sleep, 16
		send {a down}
		sleep, 32
		send {a up}
		sleep, 16
		if( GetKeyState("a", "p") )
			send {a down}
	}
	sleep, 16
	send {LShift up}
return
LShift up::
	if( GetKeyState("d", "p") )
	{
		send {d up}
		sleep, 16
		send {d down}
		sleep, 32
		send {d up}
		sleep, 16
		if( GetKeyState("d", "p") )
			send {d down}
	}
	else if( GetKeyState("a", "p") )
	{
		send {a up}
		sleep, 16
		send {a down}
		sleep, 32
		send {a up}
		sleep, 16
		if( GetKeyState("a", "p") )
			send {a down}
	}
return
