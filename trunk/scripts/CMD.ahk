﻿;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 更改CMD的一些行为
; 
; gaochao.morgen@gmail.com
; 2014/2/4
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#Persistent
#SingleInstance Force
#NoTrayIcon
#NoEnv

; Ctrl + L, 仿Linux Term下Ctrl+L的清屏行为
#IfWinActive ahk_class ConsoleWindowClass
^l::
	SendInput {Raw}clear
	Send {Enter}
Return 

; Ctrl + V, 粘贴
#IfWinActive ahk_class ConsoleWindowClass
^v::
	Send %Clipboard%
Return 

