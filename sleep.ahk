﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


F19::
    ; Sleep/Suspend:
    DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
    ; Hibernate:
    ;DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)
    Return