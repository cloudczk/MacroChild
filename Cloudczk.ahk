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
        SoundBeep ,256, 130
        SoundBeep ,288, 130
        SoundBeep ,320, 130
        SoundBeep ,341, 130
        SoundBeep ,384, 130
        SoundBeep ,426, 130
        SoundBeep ,480, 130
        SoundBeep ,512, 130
    case "F2" :
    case "F3" :
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