#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


LShift & ESC::Send,{~}
LControl::Send, {ESC}
LControl & h::Send, {Left}
LControl & j::Send, {Down}
LControl & k::Send, {Up}
LControl & l::Send, {Right}
LWin::LCtrl
RWin::LCtrl
^space::Send, {vk15sc1F2}
^Tab::Send #{Tab}