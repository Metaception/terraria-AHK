#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Check the exe and window title for a match
#If WinActive("Terraria") and WinActive("ahk_exe Terraria.exe")

$~d::
	if( GetKeyState("a","p") )
		send {a up}
return
$~d up::
	if( GetKeyState("a","p") )
		send {a down}
return

$~a::
	if( GetKeyState("d","p") )
		send {d up}
return
$~a up::
	if( GetKeyState("d","p") )
		send {d down}
return
