SetTitleMatchMode, 2 ; Set the title match mode to allow partial matches
CoordMode, Mouse, Window

prevWin := 0
IfWinExist, Volanta
{
    ; store the current window id
    WinGet, prevWin, ID, A
    WinActivate
    WinGetPos, winX, winY, winWidth, winHeight, A
    Sleep, 100

    ; click settings
    NewMouseX := winWidth - 200
    NewMouseY := 37
    MouseMove, %NewMouseX%, %NewMouseY%
    Click

    ; click privacy on sidebar
    Sleep, 200
    privacyX := (winWidth / 2) - 538
    privacyY := 275
    MouseMove, %privacyX%, %privacyY%
    Click

    ; select private
    privacySelectX := (winWidth / 2) - 200
    profilePrivacyY := 275
    MouseMove, %privacySelectX%, %profilePrivacyY%
    Click
    Sleep, 100
    profilePrivacyPrivateY := profilePrivacyY + 100
    MouseMove, %privacySelectX%, %profilePrivacyPrivateY%
    Click
    Sleep, 100
    activityPrivacyY := profilePrivacyY + 200
    MouseMove, %privacySelectX%, %activityPrivacyY%
    Click
    Sleep, 100
    activityPrivacyPrivateY := activityPrivacyY + 80
    MouseMove, %privacySelectX%, %activityPrivacyPrivateY%
    Sleep, 100
    Click
    Sleep, 100
    Click
    if (prevWin)
        WinActivate, ahk_id %prevWin%
}
else
{
    MsgBox, Window not found.
}
return