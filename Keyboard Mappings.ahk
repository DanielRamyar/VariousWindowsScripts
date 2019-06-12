#Include C:\Users\Daniel Ramyar\Documents\TrayIcon.ahk
#Include C:\Users\Daniel Ramyar\Documents\change_playback_device.ahk

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Volume Control

;F10
;^F10::
;    SendInput, {F10}
;    Return

;$F10::Send {Volume_Mute}

;F11
;^F11::
;    SendInput, {F11}
;    Return

;$F11::Send {Volume_Down 1}

;F12
;^F12::
;    SendInput, {F12}
;    Return

;$F12::Send {Volume_Up 1}


; Playback device

; Speakers
^End::SetDefaultEndpoint( GetDeviceID("Speakers") )
; Headphones
^PgDn::SetDefaultEndpoint( GetDeviceID("Headphones") )

; Sleep

;F19::
    ;Run, C:\Users\Daniel Ramyar\Documents\run_sh.bat
    
    ;CoordMode, Mouse, Screen
    ;MouseMove, 1600,1079
    ;MouseClick, left

    ;TrayIcon_Button("Z Cinema.exe", "R")
    ;MouseClick, left
    ;sleep 50
    ;Send {Down 2}
    ;Send {Enter}

    ; Sleep/Suspend:
    ;DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
    ; Hibernate:
    ;DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)
    ;Return

; Turn on TV

^Home::Run, %comspec% /c wolcmd ACD1B88E9B5E 255.255.255.255 255.255.255.255 4343
    Return

; Turn off TV

^PgUp::
    Run, %comspec% /c cd "C:\Users\Daniel Ramyar\Documents\" && bash send_command.sh
    Return



; Power speakers

^Insert::
    
    ;CoordMode, Mouse, Screen
    ;MouseMove, 1600,1079
    ;MouseClick, left

    TrayIcon_Button("Z Cinema.exe", "R")
    ;MouseClick, left
    sleep 50
    Send {Down 2}
    Send {Enter}
    Return

	


