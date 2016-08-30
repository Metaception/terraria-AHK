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

Toggle := 1
q::
	if ( Toggle = 1 )
		Toggle := 0
	else
		Toggle := 1

	send {%Toggle% down}
	sleep, 32
	send {%Toggle% up}
return
