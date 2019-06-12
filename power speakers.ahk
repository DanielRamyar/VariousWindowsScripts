#Include C:\Users\Daniel Ramyar\Documents\TrayIcon.ahk

;CoordMode, Mouse, Screen
;MouseMove, 1600,1079
;MouseClick, left


TrayIcon_Button("Z Cinema.exe", "R")
;MouseClick, left
sleep 50
Send {Down 2}
Send {Enter}

; Run, C:\Users\Daniel Ramyar\Desktop\wake_up.bat
