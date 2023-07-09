Gui, Font, s15 cFFFFFF
Gui, Add, Text, x35 y35, Device number
Gui, Font, s12 c222222
Gui, Add, Edit, -wantreturn x++20 w50 vJoystickNumber, 1
Gui, Font, s15
Gui, Add, Button, default x++30 w60 h29 gGo, Go
Gui, +AlwaysOnTop
Gui, Color, 222222
Gui, Show, w370 h100, Device
Return

Go:
Gui, Submit
WinClose
if JoystickNumber <= 0
{
    Loop 16
    {
        GetKeyState, JoyName, %A_Index%JoyName
        if JoyName <>
        {
            JoystickNumber = %A_Index%
            break
        }
    }
    if JoystickNumber <= 0
    {
        MsgBox The system does not appear to have any joysticks.
        ExitApp
    }
}

#SingleInstance
SetFormat, float, 03
GetKeyState, joy_buttons, %JoystickNumber%JoyButtons
GetKeyState, joy_name, %JoystickNumber%JoyName
GetKeyState, joy_info, %JoystickNumber%JoyInfo
Loop
{
    buttons_down =
    Loop, %joy_buttons%
    {
        GetKeyState, joy%a_index%, %JoystickNumber%joy%a_index%
        if joy%a_index% = D
            buttons_down = %buttons_down%%a_space%%a_index%
    }
    GetKeyState, joyx, %JoystickNumber%JoyX
    axis_info = X%joyx%
    GetKeyState, joyy, %JoystickNumber%JoyY
    axis_info = %axis_info%%a_space%%a_space%Y%joyy%
    IfInString, joy_info, Z
    {
        GetKeyState, joyz, %JoystickNumber%JoyZ
        axis_info = %axis_info%%a_space%%a_space%Z%joyz%
    }
    IfInString, joy_info, R
    {
        GetKeyState, joyr, %JoystickNumber%JoyR
        axis_info = %axis_info%%a_space%%a_space%R%joyr%
    }
    IfInString, joy_info, U
    {
        GetKeyState, joyu, %JoystickNumber%JoyU
        axis_info = %axis_info%%a_space%%a_space%U%joyu%
    }
    IfInString, joy_info, V
    {
        GetKeyState, joyv, %JoystickNumber%JoyV
        axis_info = %axis_info%%a_space%%a_space%V%joyv%
    }
    IfInString, joy_info, P
    {
        GetKeyState, joyp, %JoystickNumber%JoyPOV
        axis_info = %axis_info%%a_space%%a_space%POV%joyp%
    }
    ToolTip, %joy_name% (#%JoystickNumber%):`n%axis_info%`nButtons Down: %buttons_down%`n`n(right-click the tray icon to exit)
    Sleep, 100
}
return

