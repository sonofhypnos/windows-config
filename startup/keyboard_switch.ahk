;mf #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; this is useful because it closes the previous autohotkey if you start another one

PrintScreen::RWin

#SingleInstance force

;close all windows
:*:,123::
Run, powershell -command "(New-Object -comObject Shell.Application).Windows() | foreach-object {$_.quit()}; Get-Process | Where-Object {$_.MainWindowTitle -ne \"\"} | stop-process" 
return

;open Ilias
:*:,kit::
Run, https://ilias.studium.kit.edu/ilias.php?baseClass=ilPersonalDesktopGUI&cmd=jumpToSelectedItems 
return

:*:,keep::
Run, https://keep.google.com/u/0/
return

:*:btw::by the way

:*:tweb::tassilo.neubauer@web.de
:*:cweb::corbinian.neubauer@web.de
:*:nweb::natalie.neubauer@web.de
:*:hweb::horst.p.w.neubauer@web.de
:*:tmail::tassilo.neubauer@gmail.com
:*:ttuto::tassilo.neubauer@tutanota.com
:*:cmail::corbinian.neubauer@gmail.com
:*:@upkim::upkim@student.kit.edu
:*:upkimpwd::FZyzEtmP_MG72CYm:

:*:println::System.out.println(
::ka::keine Ahnung
::gg::good game

::ftw::free the whales!
return

::wtf::What the fuck{!?}
return

::mfg::
Send, Mit freundlichen Grüßen {Enter}{Enter}Tassilo Neubauer
return

;this is for the totalcomander
;I disabled it because it is not so useful together with my other hotkeys
#e::
Run TOTALCMD64.EXE, C:\totalcmd
return

;fun stuff
:*:,456::
Shutdown, 1
Return

:*:,goo:: 
Run, firefox.exe
return

:*:,wiki:: 
Run, https://en.wikipedia.org/wiki/Main_Page
return

#Hotstring r ; sends hotkeys raw

;This is for remapping some nice english keys with windows key 
;not sure whether th returns are needed
;latex custom stuff:
:*:,orange::\textcolor{orange}
:*:,red::\textcolor{red}
:*:,blue::\textcolor{blue}
:*:,pink::\textcolor{pink}
:*:,yellow::\textcolor{yellow}
:*:,green::\textcolor{green}
:*:,purple::\textcolor{purple}
:*:,black::\textcolor{black}
:*:,white::\textcolor{white}

:*:,real::\mathbb{R}
:*:,na::\mathbb{N}
:*:,q::\mathbb{Q}

:*:,t::\text{


;print the current date
^d::
SendInput %A_DD% %A_MMMM% %A_YYYY% ; this is with spaces
Return