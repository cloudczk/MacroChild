#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283
#SingleInstance force
#MaxHotkeysPerInterval 2000
#WinActivateForce

#IfWinActive 

~F24::
FileRead, key,C:\KeyBoard(czk)\2nd-keyboard-master\LUAMACROS\keypressed.txt
tippy(key) 

Switch key
{
    case "F1" :
        SoundBeep ,256, 130 ;1
        SoundBeep ,288, 130 ;2
        SoundBeep ,320, 130 ;3
        SoundBeep ,341, 130 ;4
        SoundBeep ,384, 130 ;5
        SoundBeep ,426, 130 ;6
        SoundBeep ,480, 130 ;7
        SoundBeep ,512, 130 ;1!
    case "F2" :
        instantExplorer("C:\Users\91855\Downloads") ;open the downloads folder, yup.
    case "F3" :
        instantExplorer("C:\Users\91855\OneDrive\桌面\别看了学不会的")
    case "F4" :
    case "F5" :
    case "F6" :
    case "F7" :
    case "F8" :
    case "F9" :
    case "F10":
    case "F11":
    case "F12":

    case "delete":


    case "`":

    case "1":Send #1
    case "2":Send #2
    case "3":Send #3
    case "4":Send #4
    case "5":Send #5
    case "6":Send #6
    case "7":Send #7
    case "8":Send #8
    case "9":Send #9
    case "0":Send 0

    case "minus"     :            
    case "equals"    :
    case "backspace" :


    case "tab"       :     

    case "q":
    case "w":
    case "e":
    case "r":
        if WinActive("ahk_exe msedge.exe")
            Send ^+T{F5}
         else if WinActive("ahk_exe code.exe")
            send ^+T
    case "t":
    case "y":
    case "u":
    case "i":
    case "o":
    case "p":Send ^+{ESC}

    case "leftbracket" :
    case "rightbracket":
    case "backslash"   :


    case "capslock"    :            

    case "a":
    case "s":
        Random, Rand, 0, 100
        msgbox,0~100之间随机数为 %Rand%
    case "d":
    case "f":
    case "g":
    case "h":
    case "j":
    case "k":
    case "l":

    case "semicolon"  :                 ;分号
    case "singlequote":                 ;单引号
    case "enter"      :  


    case "rShitf"     :

    case "z":
    case "x":
    case "c":
    if WinActive("ahk_exe msedge.exe")
        send ^w
    else if WinActive("ahk_exe code.exe")
        send ^w
    case "v":
    case "b":
    case "n":
    case "m":

    case "comma"  :                     ; 逗号
    case "period" :                     ; 点
    case "slash"  :                     ; / 


    case "rCtrl"  :
    case "alt"    :              

    case "num0":Run,msedge.exe
    case "num1":Run, https://t.bilibili.com/?tab=8
    case "num2":
    case "num3":
    case "num4":
    case "num5":
    case "num6":
    case "num7":
        QQ:="ahk_class TXGuiFoundation"
        QQ_path:="C:\Program Files (x86)\Tencent\QQ\Bin\QQ.exe"
        if ProcessExist("QQ.exe")=0{
            Run,%QQ_path%
        }
        else{
            WinGet,wxhwnd,ID,%QQ%
            if strlen(wxhwnd)=0{
                send !q
            }
            else{
                winhide,%QQ%
            }
        }
        return
    case "num8":
        WeChat:="ahk_class WeChatMainWndForPC"
        Wechat_path:="C:\Program Files (x86)\Tencent\WeChat\WeChat.exe"
        if ProcessExist("WeChat.exe")=0{
            Run, %WeChat_path%
            sleep 750
            MouseClick,Left,180,340
        }
        else{
            WinGet,wxhwnd,ID,%WeChat%
            if strlen(wxhwnd)=0{
                winshow,%WeChat%
                winactivate,%WeChat%
            }
            else{
                winhide,%WeChat%
            }
        }
        return
    case "num9":
        DingTalk:="ahk_class StandardFrame_DingTalk"
        DingTalk_path:="C:\Program Files (x86)\DingDing\DingtalkLauncher.exe"
        if ProcessExist("DingTalk.exe")=0{
            Run, %DingTalk_path%
        }
        else{
            WinGet,wxhwnd,ID,%DingTalk%
            if strlen(wxhwnd)=0{
                winshow,%DingTalk%
                winactivate,%DingTalk%
            }
            else{
                winhide,%DingTalk%
            }
        }
        return

    case "numPlus" : Send {NumpadAdd}  ;加
    case "numMinus": Send {NumpadSub}  ;减
    case "numMult" : Send {NumpadMult} ;乘
    case "numDiv"  : Send {NumpadDiv}  ;除


    case "up"   : preset("push up")
    case "down" : preset("push down")
    case "left" :
        if WinActive("ahk_exe msedge.exe")
            send ^+{Tab}
        else if WinActive("ahk_exe code.exe")
            send ^{PgUp}
        else
            preset("push left")
    case "right": 
        if WinActive("ahk_exe msedge.exe")
            send ^{Tab}
        else if WinActive("ahk_exe code.exe")
            send ^{PgDn}
        else
            preset("push right")

    case "pageup"  :
        if WinActive("ahk_exe code.exe")
            send {PgUp}
        else 
            Send {PgUp}{Down}
    case "pagedown":
        if WinActive("ahk_exe code.exe")
            send {PgDn}
        else 
            Send {PgDn}{Up}
}

Return

;;;;;;temporary tooltip maker;;;;;;
Tippy(tipsHere, wait:=333)
{
ToolTip, %tipsHere% TP,,,8
SetTimer, noTip, %wait% ;--in 1/3 seconds by default, remove the tooltip
}
noTip:
	ToolTip,,,,8
	;removes the tooltip
return
;;;;;;/temporary tooltip maker;;;;;;

insertSFX(parameter){
msgbox, you launched insertSFX with the parameter %parameter%
msgbox, obviously you can now put any function you like in here.

}


audiomonomaker(parameter){
msgbox, you launched audiomonomaker with the parameter %parameter%
msgbox, you can grab the real function from Almost_All_Premiere_Functions.ahk

}


preset(parameter){
msgbox, you launched PRESET with the parameter %parameter%

}


recallTransition(parameter){
msgbox, you launched recallTransition with the parameter %parameter%
}


copy(bar){
msgbox, you launched COPY with the parameter %bar%

}

paste(foo){
msgbox, you launched PASTE with the parameter %foo%

}

ProcessExist(exe){
    Process,Exist,% exe
    return ErrorLevel
}

InstantExplorer(f_path,pleasePrepend := 0)
{
;this has been heavily modified from https://autohotkey.com/docs/scripts/FavoriteFolders.htm

;I feel ambivilant about this line. It'll be more stable, but it'll be a bit sloooowerrrr!
keywait, %A_priorhotkey% ;should there be a timeout clause? this still works even when launched with no hotkey, hmm.

sendinput, {blind}{SC0E8} ;scan code of an unassigned key. This is needed to prevent the item from merely FLASHING on the task bar, rather than opening the folder. Don't ask me why, but this works. Also, this is helpful for debugging.

;msgbox, hello

if pleasePrepend = 1 ;this is for the changeable per-project folder shortcuts
	{
	FileRead, SavedExplorerAddress, C:\AHK\2nd-keyboard\Taran's_Windows_Mods\SavedExplorerAddress.txt
	;msgbox, current f_path is %f_path%
	if f_path =
		{
		; if f_path is BLANK, then we don't want to add a \ onto the end just by itself, as that will be done later!
		;msgbox, I did not add a blank f_path.
		f_path = %SavedExplorerAddress%
		}
	else
		f_path = %SavedExplorerAddress%\%f_path% ;there is no need to use . to concatenate
		
	;msgbox, new f_path is %f_path%
	;SUPER IMPORTANT NOTE - you must have explorer show the entire path in the title bar, or this doesn't work. I do need a better way to get that information. Something DLL based or whatever.
	}
;NOTE TO FUTURE TARAN: for Keyshower, put code here to find the first \ and remove the string before it. otherwise you can't see the FULL final folder name because it gets cropped off
;Keyshower(f_path,"InstExplor")
if IsFunc("Keyshower") {
	Func := Func("Keyshower")
	RetVal := Func.Call(f_path,"InstExplor") 
}

;;;SUPER IMPORTANT: YOU NEED TO GO INTO WINDOWS' FOLDER OPTIONS > VIEW > AND CHECK "DISPLAY THE FULL PATH IN THE TITLE BAR" OR THIS WON'T WORK.
;;;UPDATE: THE INSTRUCTION ABOVE *MIGHT* BE OBSOLETE NOW, I'VE FIGURED OUT A BETTER WAY TO DO THIS SHIT


instantExplorerTryAgain:

if !FileExist(f_path)
{
	;MsgBox,,, %f_path%`nNo such path exists`, but we will go down in folders until it does.,1.0
	
	if InStr(f_path, "\"){
	
		FoundPos := InStr(f_path, "\", , StartingPos := 0, Occurrence := 1)
		;msgbox % FoundPos
		
		Length := StrLen(f_path)
		
		;StringLeft, OutputVar, InputVar, Count
		
		trimThis := Length - FoundPos
		
		;msgbox % trimThis
		
		NewString := SubStr(f_path, 1, FoundPos-1)
		;msgbox, NewString is %NewString%
		f_path := NewString
		GOTO, instantExplorerTryAgain
		;oh my god this code is so sloppy, it's great. And this is like, one of my best ever functions. I'm not even kidding. I use it like 20x an hour.
	}
	else
	{
		MsgBox,,, %f_path%`n`nNo such path exists.,1.0
		GOTO, instantExplorerEnd
		
	}
}

f_path = %f_path%\ ;;THIS ADDS A \ AT THE VERY END OF THE FILE PATH, FOR THE SAKE OF OLD-STYLE SAVE AS DIALOUGE BOXES WHICH REQUIRE THEM IN ORDER TO UPDATE THE FOLDER PATH WHEN IT IS INSERTED INTO Edit1.

;msgbox, f_path is currently %f_path% ;just debugging as usual

f_path := """" . f_path . """" ;this adds quotation marks around everything so that it works as a string, not a variable. 

;but also, the old style still dopesn't like the quotation marks, and I'm not sure how to detect it since i know almost nothing about it. ho hum. But it does have ClassNN:	SysListView321 which MAYBE i could use with this code https://autohotkey.com/board/topic/9362-detect-opensave-dialog/ but i dont know. saving this for later.

;msgbox, f_path is now finally %f_path%

;SoundBeep, 900, 400 ;this is dumb because you cant change the volume, or tell it NOT to wait while the sound plays...

; These first few variables are set here and used by f_OpenFavorite:
WinGet, f_window_id, ID, A
WinGetClass, f_class, ahk_id %f_window_id%
WinGetTitle, f_title, ahk_id %f_window_id% ;to be used later to see if this is the export dialouge window in Premiere...
if f_class in #32770,ExploreWClass,CabinetWClass  ; if the window class is a save/load dialog, or an Explorer window of either kind.
	ControlGetPos, f_Edit1Pos, f_Edit1PosY,,, Edit1, ahk_id %f_window_id%


	;edit2
/*
if f_AlwaysShowMenu = n  ; The menu should be shown only selectively.
{
	if f_class in #32770,ExploreWClass,CabinetWClass  ; Dialog or Explorer.
	{
		if f_Edit1Pos =  ; The control doesn't exist, so don't display the menu
			return
	}
	else if f_class <> ConsoleWindowClass
		return ; Since it's some other window type, don't display menu.
}
; Otherwise, the menu should be presented for this type of window:
;Menu, Favorites, show
*/

;msgbox, A_ThisMenuItemPos %A_ThisMenuItemPos%
;msgbox, A_ThisMenuItem %A_ThisMenuItem%
;msgbox, A_ThisMenu %A_ThisMenu%

;;StringTrimLeft, f_path, f_path%A_ThisMenuItemPos%, 0
; msgbox, f_path: %f_path%`n f_class:  %f_class%`n f_Edit1Pos:  %f_Edit1Pos%

; f_OpenFavorite:
;msgbox, BEFORE:`n f_path: %f_path%`n f_class:  %f_class%`n f_Edit1Pos:  %f_Edit1Pos%

; Fetch the array element that corresponds to the selected menu item:
;;StringTrimLeft, f_path, f_path%A_ThisMenuItemPos%, 0
if f_path =
	return

if f_class = EVERYTHING    ; It's Everything search. I want to put the fodler name in quotes in the main field, because that's how you search a subdirectory.
{
ControlGetPos, f_Edit1Pos, f_Edit1PosY,,, Edit1, ahk_id %f_window_id%
;msgbox, this is Everything search`nf_Edit1Pos = %f_Edit1Pos%

if f_Edit1Pos <>   ; we know it should have an Edit1 control.
	{
	ControlFocus, Edit1, ahk_id %f_window_id%
	
	WinActivate ahk_id %f_window_id%
	
	f_path := f_path . " " ;this adds a space to the end, so i can type the actual thing to search for afterwards.

	ControlSetText, Edit1, %f_path%, ahk_id %f_window_id%
	;(it adds a space to the end too.)
	sleep 2
	ControlFocus, DirectUIHWND2, ahk_id %f_window_id% ;to try to get the focus back into the center area, so you can now type letters and have it go to a file or fodler, rather than try to SEARCH or try to change the FILE NAME by default.
	send, {end} ;to get to the end of the search box. best place to search for the actual thing i want to find.
	return
	}

GOTO, instantExplorerEnd 
}



if f_class = #32770    ; It's a dialog.
	{

	if WinActive("ahk_exe waifu2x-caffe.exe")
		{
		tooltip, you are inside of Waifu2x
		
		GOTO, ending2
		;this will open an explorer window rather than trying to change waifu2x's input path as it otherwise would.
		}
	
	if WinActive("ahk_exe Adobe Premiere Pro.exe")
		{
		tooltip, you are inside of premiere
		
		if (f_title = "Export Settings") or if (f_title = "Link Media")
			{
			msgbox,,,you are in Premiere's export window or link media window, but NOT in the "Save as" inside of THAT window. no bueno, 1
			GOTO, instantExplorerEnd 
			;return ;no, I don't want to return because i still want to open an explorer window.
			}
		
		
		If InStr(f_title, "Link Media to") ;Note that you must have "use media browser to locate files" UNCHECKED because it is GARBAGE.
			{
			tooltip, you are inside Premieres relinker.
			; This requires custom code, because the EditX boxes are different:
			; last path   = Edit1
			; filename    = Edit2
			; address bar = Edit3

			ControlFocus, Edit2, ahk_id %f_window_id% 

			tooltip, you are inside the link media thingy
			sleep 1
			
			WinActivate ahk_id %f_window_id%
			sleep 1
			ControlGetText, f_text, Edit2, ahk_id %f_window_id%
			sleep 1
			ControlSetText, Edit2, %f_path%, ahk_id %f_window_id%
			ControlSend, Edit2, +{Enter}, ahk_id %f_window_id%
			Sleep, 100  ; It needs extra time on some dialogs or in some cases.
			ControlSetText, Edit2, %f_text%, ahk_id %f_window_id%
			;msgbox, AFTER:`n f_path: %f_path%`n f_class:  %f_class%`n f_Edit1Pos:  %f_Edit1Pos%
			
			tooltip,
			return		
			}

		if (f_title = "Save As") or if (f_title = "Save Project")
			{
			;;;ControlGetPos, f_Edit1Pos, f_Edit1PosY,,, Edit1, ahk_id %f_window_id%
			;ControlFocus, Edit2, ahk_id %f_window_id% ;we know that Edit2 is the address bar in this case. So there's no need to use Edit1 and then swap back in the filename.
			
			ControlFocus, Edit1, ahk_id %f_window_id% 
			;msgbox,,,you are hereee,0.5
			tooltip, you are here
			sleep 1
			;tippy2("DIALOUGE WITH PREMIERE'S Edit1`n`nLE controlfocus of Edit1 for f_window_id was just engaged.", 2000)
			; msgbox, is it in focus?
			; MouseMove, f_Edit1Pos, f_Edit1PosY, 0
			; sleep 10
			; click
			; sleep 10
			; msgbox, how about now? x%f_Edit1Pos% y%f_Edit1PosY%
			;msgbox, Edit1 has been clicked maybe
			
			; Activate the window so that if the user is middle-clicking
			; outside the dialog, subsequent clicks will also work:
			WinActivate ahk_id %f_window_id%
			; Retrieve any filename that might already be in the field so
			; that it can be restored after the switch to the new folder:
			ControlGetText, f_text, Edit1, ahk_id %f_window_id%
			sleep 1
			ControlSetText, Edit1, %f_path%, ahk_id %f_window_id%
			ControlSend, Edit1, +{Enter}, ahk_id %f_window_id%
			Sleep, 100  ; It needs extra time on some dialogs or in some cases.
			ControlSetText, Edit1, %f_text%, ahk_id %f_window_id%
			;msgbox, AFTER:`n f_path: %f_path%`n f_class:  %f_class%`n f_Edit1Pos:  %f_Edit1Pos%
			
			tooltip,
			return
			tooltip, do you make it this far
			tooltip, the answer is no. the RETURN ends it properly
			GOTO, instantExplorerEnd 
			;But i have the GOTO just in case, hahahaha
			}
		}

	; stuff beyond here is NOT in premiere
	if f_Edit1Pos <>   ; And it has an Edit1 control.
		{

		ControlFocus, Edit1, ahk_id %f_window_id% ;this is really important.... it doesn't work if you don't do this...
		;tippy2("DIALOUGE WITH EDIT1`n`nwait really?`n`nLE controlfocus of edit1 for f_window_id was just engaged.", 1000)
		; msgbox, is it in focus?
		; MouseMove, f_Edit1Pos, f_Edit1PosY, 0
		; sleep 10
		; click
		; sleep 10
		; msgbox, how about now? x%f_Edit1Pos% y%f_Edit1PosY%
		;msgbox, edit1 has been clicked maybe
		
		; Activate the window so that if the user is middle-clicking
		; outside the dialog, subsequent clicks will also work:
		WinActivate ahk_id %f_window_id%
		
		; Retrieve any filename that might already be in the field so
		; that it can be restored after the switch to the new folder:
		ControlGetText, f_text, Edit1, ahk_id %f_window_id%
		sleep 2
		ControlSetText, Edit1, %f_path%, ahk_id %f_window_id%
		sleep 3
		ControlSend, Edit1, {Enter}, ahk_id %f_window_id%
		Sleep, 100  ; It needs extra time on some dialogs or in some cases.
		
		;now RESTORE the filename in that text field. I don't like doing it this way...
		ControlSetText, Edit1, %f_text%, ahk_id %f_window_id%
		;msgbox, AFTER:`n f_path: %f_path%`n f_class:  %f_class%`n f_Edit1Pos:  %f_Edit1Pos%
		sleep 2
		ControlFocus, DirectUIHWND2, ahk_id %f_window_id% ;to try to get the focus back into the center area, so you can now type letters and have it go to a file or fodler, rather than try to SEARCH or try to change the FILE NAME by default.
		return
		}
	; else fall through to the bottom of the subroutine to take standard action.
	}

;for some reason, the following code just doesn't work well at all.
/*
else if f_class in ExploreWClass,CabinetWClass  ; In Explorer, switch folders.
{
	tooltip, f_class is %f_class% and f_window_ID is %f_window_id%
	if f_Edit1Pos <>   ; And it has an Edit1 control.
	{
		Tippy2("EXPLORER WITH EDIT1 only 2 lines of code here....", 1000)
		ControlSetText, Edit1, %f_path%, ahk_id %f_window_id%
		msgbox, ControlSetText happened. `nf_class is %f_class% and f_window_ID is %f_window_id%`nAND f_Edit1Pos is %f_Edit1Pos%
		; Tekl reported the following: "If I want to change to Folder L:\folder
		; then the addressbar shows http://www.L:\folder.com. To solve this,
		; I added a {right} before {Enter}":
		ControlSend, Edit1, {Right}{Enter}, ahk_id %f_window_id%
		return
	}
	; else fall through to the bottom of the subroutine to take standard action.
}
*/

else if f_class = ConsoleWindowClass ; In a console window, CD to that directory
	{
	WinActivate, ahk_id %f_window_id% ; Because sometimes the mclick deactivates it.
	SetKeyDelay, 0  ; This will be in effect only for the duration of this thread.
	IfInString, f_path, :  ; It contains a drive letter
		{
		StringLeft, f_path_drive, f_path, 1
		Send %f_path_drive%:{enter}
		}
	Send, cd %f_path%{Enter}
	return
	}
ending2:
; Since the above didn't return, one of the following is true:
; 1) It's an unsupported window type but f_AlwaysShowMenu is y (yes).
; 2) It's a supported type but it lacks an Edit1 control to facilitate the custom
;    action, so instead do the default action below.
;Tippy2("end was reached.",333)
;SoundBeep, 800, 300 ;this is nice but the whole damn script WAITS for the sound to finish before it continues...
; Run, Explorer %f_path%  ; Might work on more systems without double quotes.

;msgbox, f_path is %f_path%

; SplitPath, f_path, , OutDir, , ,
; var := InStr(FileExist(OutDir), "D")

; if (var = 0)
	; msgbox, directory does not exist
; else if var = 1
	Run, %f_path%  ; I got rid of the "Explorer" part because it caused redundant windows to be opened, rather than just switching to the existing window
;else
;	msgbox,,,Directory does not exist,1

instantExplorerEnd:
tooltip,
}