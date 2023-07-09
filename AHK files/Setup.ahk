#SingleInstance Force
#InstallKeybdHook
#InstallMouseHook
SaveFile := A_ScriptDir . "\Devices\ParametersV2.ini"
IniRead, Device, %SaveFile%, Stick settings, Input Device
if Device = HOTAS
    {
        Gosub, HOTAS
        Return
    }
else if Device = Controller
    {
        Gosub, Controller
        Return
    }
else if Device = HOSAS
    {
        Gosub, HOSAS
        Return
    }
else
    Gui, New
    Gui, Font, s15
    Gui, Add, Button, default x25 y25 w100 h50 gHOTAS, HOTAS
    Gui, Add, Button, default x++10 w100 h50 gHOSAS, HOSAS
    Gui, Add, Button, default x++10 w100 h50 gController, Controller
    Gui, +AlwaysOnTop
    Gui, Color, 222222
    Gui, Show, w370 h100, Device
Return

HOTAS:
Device = HOTAS
Gui, Submit
WinClose
IniRead, Button1, %SaveFile%, HOTAS Button settings, Button 1
IniRead, Button2, %SaveFile%, HOTAS Button settings, Button 2
IniRead, Button3, %SaveFile%, HOTAS Button settings, Button 3
IniRead, Button4, %SaveFile%, HOTAS Button settings, Button 4
IniRead, Button5, %SaveFile%, HOTAS Button settings, Button 5
IniRead, Button6, %SaveFile%, HOTAS Button settings, Button 6
IniRead, Button7, %SaveFile%, HOTAS Button settings, Button 7
IniRead, Button8, %SaveFile%, HOTAS Button settings, Button 8
IniRead, Button9, %SaveFile%, HOTAS Button settings, Button 9
IniRead, Button10, %SaveFile%, HOTAS Button settings, Button 10
IniRead, Button11, %SaveFile%, HOTAS Button settings, Button 11
IniRead, Button12, %SaveFile%, HOTAS Button settings, Button 12
IniRead, Button13, %SaveFile%, HOTAS Button settings, Button 13
IniRead, Button14, %SaveFile%, HOTAS Button settings, Button 14
IniRead, Button15, %SaveFile%, HOTAS Button settings, Button 15
IniRead, Button16, %SaveFile%, HOTAS Button settings, Button 16
IniRead, Button17, %SaveFile%, HOTAS Button settings, Button 17
IniRead, Button18, %SaveFile%, HOTAS Button settings, Button 18
IniRead, Button19, %SaveFile%, HOTAS Button settings, Button 19
IniRead, Button20, %SaveFile%, HOTAS Button settings, Button 20
IniRead, Button21, %SaveFile%, HOTAS Button settings, Button 21
IniRead, Button22, %SaveFile%, HOTAS Button settings, Button 22
IniRead, Button23, %SaveFile%, HOTAS Button settings, Button 23
IniRead, Button24, %SaveFile%, HOTAS Button settings, Button 24
IniRead, Button25, %SaveFile%, HOTAS Button settings, Button 25
IniRead, Button26, %SaveFile%, HOTAS Button settings, Button 26
IniRead, Button27, %SaveFile%, HOTAS Button settings, Button 27
IniRead, Button28, %SaveFile%, HOTAS Button settings, Button 28
IniRead, Button29, %SaveFile%, HOTAS Button settings, Button 29
IniRead, Button30, %SaveFile%, HOTAS Button settings, Button 30
IniRead, Button31, %SaveFile%, HOTAS Button settings, Button 31
IniRead, Button32, %SaveFile%, HOTAS Button settings, Button 32
IniRead, InvertY, %SaveFile%, HOTAS Stick settings, Invert Y axis
IniRead, DeadZone, %SaveFile%, HOTAS Stick settings, Dead zone
IniRead, Sensitivity, %SaveFile%, HOTAS Stick settings, Sensitivity
IniRead, DeviceNum, %SaveFile%, HOTAS Stick settings, Input device number
Gui, New
Gui, Font, s12 cFFFFFF
Gui, Add, Button, default x10 y10 w80 h30 gHOTASButton1, Button1
Gui, Font, s20
Gui, Add, Text, x++10, %Button1%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gHOTASButton2, Button2
Gui, Font, s20
Gui, Add, Text, x++10, %Button2%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gHOTASButton3, Button3
Gui, Font, s20
Gui, Add, Text, x++10, %Button3%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gHOTASButton4, Button4
Gui, Font, s20
Gui, Add, Text, x++10, %Button4%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gHOTASButton5, Button5
Gui, Font, s20
Gui, Add, Text, x++10, %Button5%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gHOTASButton6, Button6
Gui, Font, s20
Gui, Add, Text, x++10, %Button6%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gHOTASButton7, Button7
Gui, Font, s20
Gui, Add, Text, x++10, %Button7%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gHOTASButton8, Button8
Gui, Font, s20
Gui, Add, Text, x++10, %Button8%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gHOTASButton9, Button9
Gui, Font, s20
Gui, Add, Text, x++10, %Button9%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gHOTASButton10, Button10
Gui, Font, s20
Gui, Add, Text, x++10, %Button10%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gHOTASButton11, Button11
Gui, Font, s20
Gui, Add, Text, x++10, %Button11%
Gui, Font, s12
Gui, Add, Checkbox, x10 y460 w170 Checked%InvertY% vInvertY, Invert Y axis
Gui, Add, Text, x10 y++10, Change Profile:
Gui, Add, DDL, x10 y++5 gHOTASDeviceProfile vDevice, HOTAS||Controller|HOSAS
Gui, Add, Button, default x250 y10 w80 h30 gHOTASButton12, Button12
Gui, Font, s20
Gui, Add, Text, x++10, %Button12%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gHOTASButton13, Button13
Gui, Font, s20
Gui, Add, Text, x++10, %Button13%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gHOTASButton14, Button14
Gui, Font, s20
Gui, Add, Text, x++10, %Button14%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gHOTASButton15, Button15
Gui, Font, s20
Gui, Add, Text, x++10, %Button15%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gHOTASButton16, Button16
Gui, Font, s20
Gui, Add, Text, x++10, %Button16%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gHOTASButton17, Button17
Gui, Font, s20
Gui, Add, Text, x++10, %Button17%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gHOTASButton18, Button18
Gui, Font, s20
Gui, Add, Text, x++10, %Button18%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gHOTASButton19, Button19
Gui, Font, s20
Gui, Add, Text, x++10, %Button19%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gHOTASButton20, Button20
Gui, Font, s20
Gui, Add, Text, x++10, %Button20%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gHOTASButton21, Button21
Gui, Font, s20
Gui, Add, Text, x++10, %Button21%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gHOTASButton22, Button22
Gui, Font, s20
Gui, Add, Text, x++10, %Button22%
Gui, Font, s12
Gui, Add, Text, x250 y++10, Dead zone
Gui, Font, s10 c222222
Gui, Add, Edit, -wantreturn x++20 w50 vDeadZone, %DeadZone%
Gui, Font, s12 cFFFFFF
Gui, Add, Text, x250 y++10, Sensitivity
Gui, Font, s10 c222222
Gui, Add, Edit, -wantreturn x++20 w50 vSensitivity, %Sensitivity%
Gui, Font, s12 cFFFFFF
Gui, Add, Button, default x500 y10 w80 h30 gHOTASButton23, Button23
Gui, Font, s20
Gui, Add, Text, x++10, %Button23%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gHOTASButton24, Button24
Gui, Font, s20
Gui, Add, Text, x++10, %Button24%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gHOTASButton25, Button25
Gui, Font, s20
Gui, Add, Text, x++10, %Button25%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gHOTASButton26, Button26
Gui, Font, s20
Gui, Add, Text, x++10, %Button26%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gHOTASButton27, Button27
Gui, Font, s20
Gui, Add, Text, x++10, %Button27%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gHOTASButton28, Button28
Gui, Font, s20
Gui, Add, Text, x++10, %Button28%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gHOTASButton29, Button29
Gui, Font, s20
Gui, Add, Text, x++10, %Button29%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gHOTASButton30, Button30
Gui, Font, s20
Gui, Add, Text, x++10, %Button30%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gHOTASButton31, Button31
Gui, Font, s20
Gui, Add, Text, x++10, %Button31%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gHOTASButton32, Button32
Gui, Font, s20
Gui, Add, Text, x++10, %Button32%
;Gui, Font, s12
;Gui, Add, Text, x500 y++10, Device #
;Gui, Font, s10 c222222
;Gui, Add, Edit, -wantreturn x++20 w50 vDeviceNum, %DeviceNum%
Gui, Font, s20
Gui, Add, Button, default x500 y++45 w120 h50 gHOTASSave, Save
Gui, +AlwaysOnTop
Gui, Color, 222222
Gui, show, w700 h560, HOTAS Setup
return

Controller:
Device = Controller
Gui, Submit
WinClose
IniRead, Button1, %SaveFile%, Controller Button settings, Button 1
IniRead, Button2, %SaveFile%, Controller Button settings, Button 2
IniRead, Button3, %SaveFile%, Controller Button settings, Button 3
IniRead, Button4, %SaveFile%, Controller Button settings, Button 4
IniRead, Button5, %SaveFile%, Controller Button settings, Button 5
IniRead, Button6, %SaveFile%, Controller Button settings, Button 6
IniRead, Button7, %SaveFile%, Controller Button settings, Button 7
IniRead, Button8, %SaveFile%, Controller Button settings, Button 8
IniRead, Button9, %SaveFile%, Controller Button settings, Button 9
IniRead, Button10, %SaveFile%, Controller Button settings, Button 10
IniRead, Button11, %SaveFile%, Controller Button settings, Button 11
IniRead, Button12, %SaveFile%, Controller Button settings, Button 12
IniRead, Button13, %SaveFile%, Controller Button settings, Button 13
IniRead, Button14, %SaveFile%, Controller Button settings, Button 14
IniRead, Button15, %SaveFile%, Controller Button settings, Button 15
IniRead, Button16, %SaveFile%, Controller Button settings, Button 16
IniRead, Button17, %SaveFile%, Controller Button settings, Button 17
IniRead, Button18, %SaveFile%, Controller Button settings, Button 18
IniRead, Button19, %SaveFile%, Controller Button settings, Button 19
IniRead, Button20, %SaveFile%, Controller Button settings, Button 20
IniRead, Button21, %SaveFile%, Controller Button settings, Button 21
IniRead, Button22, %SaveFile%, Controller Button settings, Button 22
IniRead, Button23, %SaveFile%, Controller Button settings, Button 23
IniRead, Button24, %SaveFile%, Controller Button settings, Button 24
IniRead, Button25, %SaveFile%, Controller Button settings, Button 25
IniRead, Button26, %SaveFile%, Controller Button settings, Button 26
IniRead, Button27, %SaveFile%, Controller Button settings, Button 27
IniRead, Button28, %SaveFile%, Controller Button settings, Button 28
IniRead, Button29, %SaveFile%, Controller Button settings, Button 29
IniRead, Button30, %SaveFile%, Controller Button settings, Button 30
IniRead, Button31, %SaveFile%, Controller Button settings, Button 31
IniRead, Button32, %SaveFile%, Controller Button settings, Button 32
IniRead, InvertY, %SaveFile%, Controller Stick settings, Invert Y axis
IniRead, DeadZone, %SaveFile%, Controller Stick settings, Dead zone
IniRead, Sensitivity, %SaveFile%, Controller Stick settings, Sensitivity
IniRead, DeviceNum, %SaveFile%, Controller Stick settings, Input device number
Gui, New
Gui, Font, s12 cFFFFFF
Gui, Add, Button, default x10 y10 w80 h30 gControllerButton1, Button1
Gui, Font, s20
Gui, Add, Text, x++10, %Button1%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gControllerButton2, Button2
Gui, Font, s20
Gui, Add, Text, x++10, %Button2%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gControllerButton3, Button3
Gui, Font, s20
Gui, Add, Text, x++10, %Button3%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gControllerButton4, Button4
Gui, Font, s20
Gui, Add, Text, x++10, %Button4%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gControllerButton5, Button5
Gui, Font, s20
Gui, Add, Text, x++10, %Button5%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gControllerButton6, Button6
Gui, Font, s20
Gui, Add, Text, x++10, %Button6%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gControllerButton7, Button7
Gui, Font, s20
Gui, Add, Text, x++10, %Button7%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gControllerButton8, Button8
Gui, Font, s20
Gui, Add, Text, x++10, %Button8%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gControllerButton9, Button9
Gui, Font, s20
Gui, Add, Text, x++10, %Button9%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gControllerButton10, Button10
Gui, Font, s20
Gui, Add, Text, x++10, %Button10%
Gui, Font, s12
Gui, Add, Button, default x10 y++10 w80 h30 gControllerButton11, Button11
Gui, Font, s20
Gui, Add, Text, x++10, %Button11%
Gui, Font, s12
Gui, Add, Checkbox, x10 y460 w170 Checked%InvertY% vInvertY, Invert Y axis
Gui, Add, Text, x10 y++10, Change Profile:
Gui, Add, DDL, x10 y++5 gControllerDeviceProfile vDevice, HOTAS|Controller||HOSAS
Gui, Add, Button, default x250 y10 w80 h30 gControllerButton12, Button12
Gui, Font, s20
Gui, Add, Text, x++10, %Button12%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gControllerButton13, Button13
Gui, Font, s20
Gui, Add, Text, x++10, %Button13%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gControllerButton14, Button14
Gui, Font, s20
Gui, Add, Text, x++10, %Button14%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gControllerButton15, Button15
Gui, Font, s20
Gui, Add, Text, x++10, %Button15%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gControllerButton16, Button16
Gui, Font, s20
Gui, Add, Text, x++10, %Button16%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gControllerButton17, Button17
Gui, Font, s20
Gui, Add, Text, x++10, %Button17%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gControllerButton18, Button18
Gui, Font, s20
Gui, Add, Text, x++10, %Button18%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gControllerButton19, Button19
Gui, Font, s20
Gui, Add, Text, x++10, %Button19%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gControllerButton20, Button20
Gui, Font, s20
Gui, Add, Text, x++10, %Button20%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gControllerButton21, Button21
Gui, Font, s20
Gui, Add, Text, x++10, %Button21%
Gui, Font, s12
Gui, Add, Button, default x250 y++10 w80 h30 gControllerButton22, Button22
Gui, Font, s20
Gui, Add, Text, x++10, %Button22%
Gui, Font, s12
Gui, Add, Text, x250 y++10, Dead zone
Gui, Font, s10 c222222
Gui, Add, Edit, -wantreturn x++20 w50 vDeadZone, %DeadZone%
Gui, Font, s12 cFFFFFF
Gui, Add, Text, x250 y++10, Sensitivity
Gui, Font, s10 c222222
Gui, Add, Edit, -wantreturn x++20 w50 vSensitivity, %Sensitivity%
Gui, Font, s12 cFFFFFF
Gui, Add, Button, default x500 y10 w80 h30 gControllerButton23, Button23
Gui, Font, s20
Gui, Add, Text, x++10, %Button23%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gControllerButton24, Button24
Gui, Font, s20
Gui, Add, Text, x++10, %Button24%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gControllerButton25, Button25
Gui, Font, s20
Gui, Add, Text, x++10, %Button25%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gControllerButton26, Button26
Gui, Font, s20
Gui, Add, Text, x++10, %Button26%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gControllerButton27, Button27
Gui, Font, s20
Gui, Add, Text, x++10, %Button27%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gControllerButton28, Button28
Gui, Font, s20
Gui, Add, Text, x++10, %Button28%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gControllerButton29, Button29
Gui, Font, s20
Gui, Add, Text, x++10, %Button29%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gControllerButton30, Button30
Gui, Font, s20
Gui, Add, Text, x++10, %Button30%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gControllerButton31, Button31
Gui, Font, s20
Gui, Add, Text, x++10, %Button31%
Gui, Font, s12
Gui, Add, Button, default x500 y++10 w80 h30 gControllerButton32, Button32
Gui, Font, s20
Gui, Add, Text, x++10, %Button32%
;Gui, Font, s12
;Gui, Add, Text, x500 y++10, Device #
;Gui, Font, s10 c222222
;Gui, Add, Edit, -wantreturn x++20 w50 vDeviceNum, %DeviceNum%
Gui, Font, s20
Gui, Add, Button, default x500 y++45 w120 h50 gControllerSave, Save
Gui, +AlwaysOnTop
Gui, Color, 222222
Gui, show, w700 h560, Controller Setup
return

HOSAS:
Device = HOSAS
Gui, Submit
WinClose
IniRead, Button1, %SaveFile%, HOSAS Button settings, Button 1
IniRead, Button2, %SaveFile%, HOSAS Button settings, Button 2
IniRead, Button3, %SaveFile%, HOSAS Button settings, Button 3
IniRead, Button4, %SaveFile%, HOSAS Button settings, Button 4
IniRead, Button5, %SaveFile%, HOSAS Button settings, Button 5
IniRead, Button6, %SaveFile%, HOSAS Button settings, Button 6
IniRead, Button7, %SaveFile%, HOSAS Button settings, Button 7
IniRead, Button8, %SaveFile%, HOSAS Button settings, Button 8
IniRead, Button9, %SaveFile%, HOSAS Button settings, Button 9
IniRead, Button10, %SaveFile%, HOSAS Button settings, Button 10
IniRead, Button11, %SaveFile%, HOSAS Button settings, Button 11
IniRead, Button12, %SaveFile%, HOSAS Button settings, Button 12
IniRead, Button13, %SaveFile%, HOSAS Button settings, Button 13
IniRead, Button14, %SaveFile%, HOSAS Button settings, Button 14
IniRead, Button15, %SaveFile%, HOSAS Button settings, Button 15
IniRead, Button16, %SaveFile%, HOSAS Button settings, Button 16
IniRead, Button17, %SaveFile%, HOSAS Button settings, Button 17
IniRead, Button18, %SaveFile%, HOSAS Button settings, Button 18
IniRead, Button19, %SaveFile%, HOSAS Button settings, Button 19
IniRead, Button20, %SaveFile%, HOSAS Button settings, Button 20
IniRead, Button21, %SaveFile%, HOSAS Button settings, Button 21
IniRead, Button22, %SaveFile%, HOSAS Button settings, Button 22
IniRead, Button23, %SaveFile%, HOSAS Button settings, Button 23
IniRead, Button24, %SaveFile%, HOSAS Button settings, Button 24
IniRead, Button25, %SaveFile%, HOSAS Button settings, Button 25
IniRead, Button26, %SaveFile%, HOSAS Button settings, Button 26
IniRead, Button27, %SaveFile%, HOSAS Button settings, Button 27
IniRead, Button28, %SaveFile%, HOSAS Button settings, Button 28
IniRead, Button29, %SaveFile%, HOSAS Button settings, Button 29
IniRead, Button30, %SaveFile%, HOSAS Button settings, Button 30
IniRead, Button31, %SaveFile%, HOSAS Button settings, Button 31
IniRead, Button32, %SaveFile%, HOSAS Button settings, Button 32
IniRead, 2Button1, %SaveFile%, HOSAS 2 Button settings, Button 1
IniRead, 2Button2, %SaveFile%, HOSAS 2 Button settings, Button 2
IniRead, 2Button3, %SaveFile%, HOSAS 2 Button settings, Button 3
IniRead, 2Button4, %SaveFile%, HOSAS 2 Button settings, Button 4
IniRead, 2Button5, %SaveFile%, HOSAS 2 Button settings, Button 5
IniRead, 2Button6, %SaveFile%, HOSAS 2 Button settings, Button 6
IniRead, 2Button7, %SaveFile%, HOSAS 2 Button settings, Button 7
IniRead, 2Button8, %SaveFile%, HOSAS 2 Button settings, Button 8
IniRead, 2Button9, %SaveFile%, HOSAS 2 Button settings, Button 9
IniRead, 2Button10, %SaveFile%, HOSAS 2 Button settings, Button 10
IniRead, 2Button11, %SaveFile%, HOSAS 2 Button settings, Button 11
IniRead, 2Button12, %SaveFile%, HOSAS 2 Button settings, Button 12
IniRead, 2Button13, %SaveFile%, HOSAS 2 Button settings, Button 13
IniRead, 2Button14, %SaveFile%, HOSAS 2 Button settings, Button 14
IniRead, 2Button15, %SaveFile%, HOSAS 2 Button settings, Button 15
IniRead, 2Button16, %SaveFile%, HOSAS 2 Button settings, Button 16
IniRead, 2Button17, %SaveFile%, HOSAS 2 Button settings, Button 17
IniRead, 2Button18, %SaveFile%, HOSAS 2 Button settings, Button 18
IniRead, 2Button19, %SaveFile%, HOSAS 2 Button settings, Button 19
IniRead, 2Button20, %SaveFile%, HOSAS 2 Button settings, Button 20
IniRead, 2Button21, %SaveFile%, HOSAS 2 Button settings, Button 21
IniRead, 2Button22, %SaveFile%, HOSAS 2 Button settings, Button 22
IniRead, 2Button23, %SaveFile%, HOSAS 2 Button settings, Button 23
IniRead, 2Button24, %SaveFile%, HOSAS 2 Button settings, Button 24
IniRead, 2Button25, %SaveFile%, HOSAS 2 Button settings, Button 25
IniRead, 2Button26, %SaveFile%, HOSAS 2 Button settings, Button 26
IniRead, 2Button27, %SaveFile%, HOSAS 2 Button settings, Button 27
IniRead, 2Button28, %SaveFile%, HOSAS 2 Button settings, Button 28
IniRead, 2Button29, %SaveFile%, HOSAS 2 Button settings, Button 29
IniRead, 2Button30, %SaveFile%, HOSAS 2 Button settings, Button 30
IniRead, 2Button31, %SaveFile%, HOSAS 2 Button settings, Button 31
IniRead, 2Button32, %SaveFile%, HOSAS 2 Button settings, Button 32
IniRead, InvertY, %SaveFile%, HOSAS Stick settings, Invert Y axis
IniRead, DeadZone, %SaveFile%, HOSAS Stick settings, Dead zone
IniRead, InvLift, %SaveFile%, HOSAS 2 Stick settings, Invert Lift
IniRead, Sensitivity, %SaveFile%, HOSAS Stick settings, Sensitivity
IniRead, DeviceNum, %SaveFile%, HOSAS Stick settings, Input device number
IniRead, Device2Num, %SaveFile%, HOSAS 2 Stick settings, Secondary input device number
Gui, New
Gui, Font, s10 cFFFFFF
Gui, Add, Button, default x10 y10 w59 h22 gHOSASButton1, Button1
Gui, Add, Text, x++10, %Button1%
Gui, Add, Button, default x10 y++10 w59 h22 gHOSASButton2, Button2
Gui, Add, Text, x++10, %Button2%
Gui, Add, Button, default x10 y++10 w59 h22 gHOSASButton3, Button3
Gui, Add, Text, x++10, %Button3%
Gui, Add, Button, default x10 y++10 w59 h22 gHOSASButton4, Button4
Gui, Add, Text, x++10, %Button4%
Gui, Add, Button, default x10 y++10 w59 h22 gHOSASButton5, Button5
Gui, Add, Text, x++10, %Button5%
Gui, Add, Button, default x10 y++10 w59 h22 gHOSASButton6, Button6
Gui, Add, Text, x++10, %Button6%
Gui, Add, Button, default x10 y++10 w59 h22 gHOSASButton7, Button7
Gui, Add, Text, x++10, %Button7%
Gui, Add, Button, default x10 y++10 w59 h22 gHOSASButton8, Button8
Gui, Add, Text, x++10, %Button8%
Gui, Add, Button, default x10 y++10 w59 h22 gHOSASButton9, Button9
Gui, Add, Text, x++10, %Button9%
Gui, Add, Button, default x10 y++10 w59 h22 gHOSASButton10, Button10
Gui, Add, Text, x++10, %Button10%
Gui, Add, Button, default x10 y++10 w59 h22 gHOSASButton11, Button11
Gui, Add, Text, x++10, %Button11%
Gui, Add, Button, default x10 y++10 w59 h22 gHOSASButton12, Button12
Gui, Add, Text, x++10, %Button12%
Gui, Add, Button, default x10 y++10 w59 h22 gHOSASButton13, Button13
Gui, Add, Text, x++10, %Button13%
Gui, Add, Button, default x10 y++10 w59 h22 gHOSASButton14, Button14
Gui, Add, Text, x++10, %Button14%
Gui, Add, Button, default x10 y++10 w59 h22 gHOSASButton15, Button15
Gui, Add, Text, x++10, %Button15%
Gui, Add, Button, default x10 y++10 w59 h22 gHOSASButton16, Button16
Gui, Add, Text, x++10, %Button16%
Gui, Add, Checkbox, x10 y435 w170 Checked%InvLift% vInvLift, Invert lift
Gui, Add, Checkbox, x10 y460 w170 Checked%InvertY% vInvertY, Invert Y axis
Gui, Add, Text, x10 y++10, Change Profile:
Gui, Add, DDL, x10 y++5 gHOSASDeviceProfile vDevice, HOTAS|Controller|HOSAS||
Gui, Add, Button, default x180 y10 w59 h22 gHOSASButton17, Button17
Gui, Add, Text, x++10, %Button17%
Gui, Add, Button, default x180 y++10 w59 h22 gHOSASButton18, Button18
Gui, Add, Text, x++10, %Button18%
Gui, Add, Button, default x180 y++10 w59 h22 gHOSASButton19, Button19
Gui, Add, Text, x++10, %Button19%
Gui, Add, Button, default x180 y++10 w59 h22 gHOSASButton20, Button20
Gui, Add, Text, x++10, %Button20%
Gui, Add, Button, default x180 y++10 w59 h22 gHOSASButton21, Button21
Gui, Add, Text, x++10, %Button21%
Gui, Add, Button, default x180 y++10 w59 h22 gHOSASButton22, Button22
Gui, Add, Text, x++10, %Button22%
Gui, Add, Button, default x180 y++10 w59 h22 gHOSASButton23, Button23
Gui, Add, Text, x++10, %Button23%
Gui, Add, Button, default x180 y++10 w59 h22 gHOSASButton24, Button24
Gui, Add, Text, x++10, %Button24%
Gui, Add, Button, default x180 y++10 w59 h22 gHOSASButton25, Button25
Gui, Add, Text, x++10, %Button25%
Gui, Add, Button, default x180 y++10 w59 h22 gHOSASButton26, Button26
Gui, Add, Text, x++10, %Button26%
Gui, Add, Button, default x180 y++10 w59 h22 gHOSASButton27, Button27
Gui, Add, Text, x++10, %Button27%
Gui, Add, Button, default x180 y++10 w59 h22 gHOSASButton28, Button28
Gui, Add, Text, x++10, %Button28%
Gui, Add, Button, default x180 y++10 w59 h22 gHOSASButton29, Button29
Gui, Add, Text, x++10, %Button29%
Gui, Add, Button, default x180 y++10 w59 h22 gHOSASButton30, Button30
Gui, Add, Text, x++10, %Button30%
Gui, Add, Button, default x180 y++10 w59 h22 gHOSASButton31, Button31
Gui, Add, Text, x++10, %Button31%
Gui, Add, Button, default x180 y++10 w59 h22 gHOSASButton32, Button32
Gui, Add, Text, x++10, %Button32%
Gui, Font, s10 cFFFFFF
Gui, Add, Button, default x350 y10 w59 h22 gHOSAS2Button1, Button1
Gui, Add, Text, x++10, %2Button1%
Gui, Add, Button, default x350 y++10 w59 h22 gHOSAS2Button2, Button2
Gui, Add, Text, x++10, %2Button2%
Gui, Add, Button, default x350 y++10 w59 h22 gHOSAS2Button3, Button3
Gui, Add, Text, x++10, %2Button3%
Gui, Add, Button, default x350 y++10 w59 h22 gHOSAS2Button4, Button4
Gui, Add, Text, x++10, %2Button4%
Gui, Add, Button, default x350 y++10 w59 h22 gHOSAS2Button5, Button5
Gui, Add, Text, x++10, %2Button5%
Gui, Add, Button, default x350 y++10 w59 h22 gHOSAS2Button6, Button6
Gui, Add, Text, x++10, %2Button6%
Gui, Add, Button, default x350 y++10 w59 h22 gHOSAS2Button7, Button7
Gui, Add, Text, x++10, %2Button7%
Gui, Add, Button, default x350 y++10 w59 h22 gHOSAS2Button8, Button8
Gui, Add, Text, x++10, %2Button8%
Gui, Add, Button, default x350 y++10 w59 h22 gHOSAS2Button9, Button9
Gui, Add, Text, x++10, %2Button9%
Gui, Add, Button, default x350 y++10 w59 h22 gHOSAS2Button10, Button10
Gui, Add, Text, x++10, %2Button10%
Gui, Add, Button, default x350 y++10 w59 h22 gHOSAS2Button11, Button11
Gui, Add, Text, x++10, %2Button11%
Gui, Add, Button, default x350 y++10 w59 h22 gHOSAS2Button12, Button12
Gui, Add, Text, x++10, %2Button12%
Gui, Add, Button, default x350 y++10 w59 h22 gHOSAS2Button13, Button13
Gui, Add, Text, x++10, %2Button13%
Gui, Add, Button, default x350 y++10 w59 h22 gHOSAS2Button14, Button14
Gui, Add, Text, x++10, %2Button14%
Gui, Add, Button, default x350 y++10 w59 h22 gHOSAS2Button15, Button15
Gui, Add, Text, x++10, %2Button15%
Gui, Add, Button, default x350 y++10 w59 h22 gHOSAS2Button16, Button16
Gui, Add, Text, x++10, %2Button16%
Gui, Add, Button, default x520 y10 w59 h22 gHOSAS2Button17, Button17
Gui, Add, Text, x++10, %2Button17%
Gui, Add, Button, default x520 y++10 w59 h22 gHOSAS2Button18, Button18
Gui, Add, Text, x++10, %2Button18%
Gui, Add, Button, default x520 y++10 w59 h22 gHOSAS2Button19, Button19
Gui, Add, Text, x++10, %2Button19%
Gui, Add, Button, default x520 y++10 w59 h22 gHOSAS2Button20, Button20
Gui, Add, Text, x++10, %2Button20%
Gui, Add, Button, default x520 y++10 w59 h22 gHOSAS2Button21, Button21
Gui, Add, Text, x++10, %2Button21%
Gui, Add, Button, default x520 y++10 w59 h22 gHOSAS2Button22, Button22
Gui, Add, Text, x++10, %2Button22%
Gui, Add, Button, default x520 y++10 w59 h22 gHOSAS2Button23, Button23
Gui, Add, Text, x++10, %2Button23%
Gui, Add, Button, default x520 y++10 w59 h22 gHOSAS2Button24, Button24
Gui, Add, Text, x++10, %2Button24%
Gui, Add, Button, default x520 y++10 w59 h22 gHOSAS2Button25, Button25
Gui, Add, Text, x++10, %2Button25%
Gui, Add, Button, default x520 y++10 w59 h22 gHOSAS2Button26, Button26
Gui, Add, Text, x++10, %2Button26%
Gui, Add, Button, default x520 y++10 w59 h22 gHOSAS2Button27, Button27
Gui, Add, Text, x++10, %2Button27%
Gui, Add, Button, default x520 y++10 w59 h22 gHOSAS2Button28, Button28
Gui, Add, Text, x++10, %2Button28%
Gui, Add, Button, default x520 y++10 w59 h22 gHOSAS2Button29, Button29
Gui, Add, Text, x++10, %2Button29%
Gui, Add, Button, default x520 y++10 w59 h22 gHOSAS2Button30, Button30
Gui, Add, Text, x++10, %2Button30%
Gui, Add, Button, default x520 y++10 w59 h22 gHOSAS2Button31, Button31
Gui, Add, Text, x++10, %2Button31%
Gui, Add, Button, default x520 y++10 w59 h22 gHOSAS2Button32, Button32
Gui, Add, Text, x++10, %2Button32%
Gui, Add, Text, x250 y++30, Dead zone
Gui, Font, s10 c222222
Gui, Add, Edit, -wantreturn x++20 w50 vDeadZone, %DeadZone%
Gui, Font, s12 cFFFFFF
Gui, Add, Text, x250 y++10, Sensitivity
Gui, Font, s10 c222222
Gui, Add, Edit, -wantreturn x++20 w50 vSensitivity, %Sensitivity%
;Gui, Font, s10 cFFFFFF
;Gui, Add, Text, x500 y++10, Device #
;Gui, Font, s10 c222222
;Gui, Add, Edit, -wantreturn x++20 w50 vDeviceNum, %DeviceNum%
Gui, Font, s20
Gui, Add, Button, default x500 y450 w120 h50 gHOSASSave, Save
Gui, +AlwaysOnTop
Gui, Color, 222222
Gui, show, w700 h560, HOSAS Setup
Return

HOTASButton1:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 1
reload

HOSASButton1:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 1
reload

HOSAS2Button1:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 1
reload

ControllerButton1:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 1
reload

HOTASButton2:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 2
reload

HOSASButton2:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 2
reload

HOSAS2Button2:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 2
reload

ControllerButton2:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 2
reload

HOTASButton3:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 3
reload

HOSASButton3:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 3
reload

HOSAS2Button3:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 3
reload

ControllerButton3:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 3
reload

HOTASButton4:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 4
reload

HOSASButton4:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 4
reload

HOSAS2Button4:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 4
reload

ControllerButton4:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 4
reload

HOTASButton5:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 5
reload

HOSASButton5:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 5
reload

HOSAS2Button5:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 5
reload

ControllerButton5:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 5
reload

HOTASButton6:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 6
reload

HOSASButton6:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 6
reload

HOSAS2Button6:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 6
reload

ControllerButton6:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 6
reload

HOTASButton7:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 7
reload

HOSASButton7:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 7
reload

HOSAS2Button7:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 7
reload

ControllerButton7:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 7
reload

HOTASButton8:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 8
reload

HOSASButton8:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 8
reload

HOSAS2Button8:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 8
reload

ControllerButton8:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 8
reload

HOTASButton9:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 9
reload

HOSASButton9:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 9
reload

HOSAS2Button9:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 9
reload

ControllerButton9:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 9
reload

HOTASButton10:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 10
reload

HOSASButton10:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 10
reload

HOSAS2Button10:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 10
reload

ControllerButton10:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 10
reload

HOTASButton11:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 11
reload

HOSASButton11:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 11
reload

HOSAS2Button11:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 11
reload

ControllerButton11:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 11
reload

HOTASButton12:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 12
reload

HOSASButton12:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 12
reload

HOSAS2Button12:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 12
reload

ControllerButton12:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 12
reload

HOTASButton13:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 13
reload

HOSASButton13:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 13
reload

HOSAS2Button13:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 13
reload

ControllerButton13:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 13
reload

HOTASButton14:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 14
reload

HOSASButton14:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 14
reload

HOSAS2Button14:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 14
reload

ControllerButton14:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 14
reload

HOTASButton15:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 15
reload

HOSASButton15:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 15
reload

HOSAS2Button15:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 15
reload

ControllerButton15:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 15
reload

HOTASButton16:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 16
reload

HOSASButton16:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 16
reload

HOSAS2Button16:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 16
reload

ControllerButton16:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 16
reload

HOTASButton17:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 17
reload

HOSASButton17:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 17
reload

HOSAS2Button17:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 17
reload

ControllerButton17:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 17
reload

HOTASButton18:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 18
reload

HOSASButton18:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 18
reload

HOSAS2Button18:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 18
reload

ControllerButton18:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 18
reload

HOTASButton19:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 19
reload

HOSASButton19:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 19
reload

HOSAS2Button19:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 19
reload

ControllerButton19:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 19
reload

HOTASButton20:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 20
reload

HOSASButton20:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 20
reload

HOSAS2Button20:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 20
reload

ControllerButton20:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 20
reload

HOTASButton21:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 21
reload

HOSASButton21:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 21
reload

HOSAS2Button21:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 21
reload

ControllerButton21:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 21
reload

HOTASButton22:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 22
reload

HOSASButton22:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 22
reload

HOSAS2Button22:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 22
reload

ControllerButton22:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 22
reload

HOTASButton23:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 23
reload

HOSASButton23:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 23
reload

HOSAS2Button23:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 23
reload

ControllerButton23:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 23
reload

HOTASButton24:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 24
reload

HOSASButton24:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 24
reload

HOSAS2Button24:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 24
reload

ControllerButton24:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 24
reload

HOTASButton25:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 25
reload

HOSASButton25:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 25
reload

HOSAS2Button25:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 25
reload

ControllerButton25:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 25
reload

HOTASButton26:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 26
reload

HOSASButton26:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 26
reload

HOSAS2Button26:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 26
reload

ControllerButton26:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 26
reload

HOTASButton27:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 27
reload

HOSASButton27:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 27
reload

HOSAS2Button27:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 27
reload

ControllerButton27:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 27
reload

HOTASButton28:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 28
reload

HOSASButton28:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 28
reload

HOSAS2Button28:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 28
reload

ControllerButton28:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 28
reload

HOTASButton29:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 29
reload

HOSASButton29:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 29
reload

HOSAS2Button29:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 29
reload

ControllerButton29:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 29
reload

HOTASButton30:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 30
reload

HOSASButton30:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 30
reload

HOSAS2Button30:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 30
reload

ControllerButton30:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 30
reload

HOTASButton31:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 31
reload

HOSASButton31:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 31
reload

HOSAS2Button31:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 31
reload

ControllerButton31:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 31
reload

HOTASButton32:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings, Button 32
reload

HOSASButton32:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings, Button 32
reload

HOSAS2Button32:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings, Button 32
reload

ControllerButton32:
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings, Button 32
reload

HOTASSave:
Gui, Submit, nohide
WinClose
IniWrite, %InvertY%, %SaveFile%, HOTAS Stick settings, Invert Y axis
IniWrite, %DeadZone%, %SaveFile%, HOTAS Stick settings, Dead zone
IniWrite, %Sensitivity%, %SaveFile%, HOTAS Stick settings, Sensitivity
IniWrite, HOTAS, %SaveFile%, Stick settings, Input Device
IniWrite, %DeviceNum%, %SaveFile%, HOTAS Stick settings, Input device number
ExitApp

HOSASSave:
Gui, Submit, nohide
WinClose
IniWrite, %InvertY%, %SaveFile%, HOSAS Stick settings, Invert Y axis
IniWrite, %DeadZone%, %SaveFile%, HOSAS Stick settings, Dead zone
IniWrite, %InvLift%, %SaveFile% , HOSAS 2 Stick settings, Invert Lift
IniWrite, %Sensitivity%, %SaveFile%, HOSAS Stick settings, Sensitivity
IniWrite, HOSAS, %SaveFile%, Stick settings, Input Device
IniWrite, %DeviceNum%, %SaveFile%, HOSAS Stick settings, Input device number
IniWrite, %Device2Num%, %SaveFile%, HOSAS 2 Stick settings, Secondary Input device number
ExitApp

ControllerSave:
Gui, Submit, nohide
WinClose
IniWrite, %InvertY%, %SaveFile%, Controller Stick settings, Invert Y axis
IniWrite, %DeadZone%, %SaveFile%, Controller Stick settings, Dead zone
IniWrite, %Sensitivity%, %SaveFile%, Controller Stick settings, Sensitivity
IniWrite, Controller, %SaveFile%, Stick settings, Input Device
IniWrite, %DeviceNum%, %SaveFile%, Controller Stick settings, Input device number
ExitApp

HOTASDeviceProfile:
Gui, Submit, nohide
WinClose
IniWrite, %InvertY%, %SaveFile%, HOTAS Stick settings, Invert Y axis
IniWrite, %DeadZone%, %SaveFile%, HOTAS Stick settings, Dead zone
IniWrite, %Sensitivity%, %SaveFile%, HOTAS Stick settings, Sensitivity
IniWrite, HOTAS, %SaveFile%, Stick settings, Input Device
IniWrite, %DeviceNum%, %SaveFile%, HOTAS Stick settings, Input device number
if Device = Controller
    {
        Gosub, Controller
        Return
    }
else if Device = HOSAS
    {
        Gosub, HOSAS
        Return
    }
Return

HOSASDeviceProfile:
Gui, Submit, nohide
WinClose
IniWrite, %InvertY%, %SaveFile%, HOSAS Stick settings, Invert Y axis
IniWrite, %DeadZone%, %SaveFile%, HOSAS Stick settings, Dead zone
IniWrite, %InvLift%, %SaveFile% , HOSAS 2 Stick settings, Invert Lift
IniWrite, %Sensitivity%, %SaveFile%, HOSAS Stick settings, Sensitivity
IniWrite, HOSAS, %SaveFile%, Stick settings, Input Device
IniWrite, %DeviceNum%, %SaveFile%, HOSAS Stick settings, Input device number
if Device = Controller
    {
        Gosub, Controller
        Return
    }
else if Device = HOTAS
    {
        Gosub, HOTAS
        Return
    }
Return

ControllerDeviceProfile:
Gui, Submit, nohide
WinClose
IniWrite, %InvertY%, %SaveFile%, Controller Stick settings, Invert Y axis
IniWrite, %DeadZone%, %SaveFile%, Controller Stick settings, Dead zone
IniWrite, %Sensitivity%, %SaveFile%, Controller Stick settings, Sensitivity
IniWrite, Controller, %SaveFile%, Stick settings, Input Device
IniWrite, %DeviceNum%, %SaveFile%, Controller Stick settings, Input device number
if Device = HOTAS
    {
        Gosub, HOTAS
        Return
    }
else if Device = HOSAS
    {
        Gosub, HOSAS
        Return
    }
Return
