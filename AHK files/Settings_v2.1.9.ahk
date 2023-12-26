#SingleInstance Force
#InstallKeybdHook
#InstallMouseHook
Menu Tray, NoStandard
Menu Tray, Add, Exit, GuiClose
if (A_ScreenWidth * 0.95) < (A_ScreenHeight * 0.95 / 0.5)
    {
        GuiWidth := A_ScreenWidth * 0.95
        GuiHeight := GuiWidth * 0.5
    }
Else
    {
        GuiHeight := A_ScreenHeight * 0.95
        GuiWidth := GuiHeight / 0.5
    }
ButtonSize := GuiWidth / 10
Spacing := ButtonSize * 0.023077
TextSpacing := (ButtonSize * 0.385) - 46
FirstColumnText := ButtonSize + 20
SecondColumnButtons := (GuiWidth - 20) / 3
SecondColumnText := SecondColumnButtons + FirstColumnText
ThirdColumnButtons := SecondColumnButtons * 2
ThirdColumnText := ThirdColumnButtons + FirstColumnText
LastRow := (ButtonSize * 0.385) * 11.2
SaveButtonLocation := ThirdColumnButtons + (ButtonSize / 2) - 60
HOSASButtonSize := GuiWidth / 15
HOSASSpacing := HOSASButtonSize * 0.023077
HOSASTextSpacing := (HOSASButtonSize * 0.385) - 38
HOSASFirstColumnText := HOSASButtonSize + 15
HOSASSecondColumnButtons := ((GuiWidth - 20) / 4) + 5
HOSASSecondColumnText := HOSASSecondColumnButtons + HOSASFirstColumnText
HOSASThirdColumnButtons := GuiWidth / 2
HOSASThirdColumnText := HOSASThirdColumnButtons + HOSASFirstColumnText
HOSASFourthColumnButtons := (GuiWidth / 2) + ((GuiWidth - 20) / 4) - 5
HOSASFourthColumnText := HOSASFourthColumnButtons + HOSASFirstColumnText
HOSASLastRow := (HOSASButtonSize * 0.3846153846153846 * 13.75) + 85
HOSASSaveButtonLocation := HOSASThirdColumnButtons + (HOSASButtonSize / 2) - 60
DeviceInfoX := GuiWidth - TextSpacing - 10
DeviceInfoY := GuiHeight - TextSpacing - 10
SaveFile := A_ScriptDir . "\Data\Parameters.ini"
SaveFolder := A_ScriptDir . "\Data\"
ButtonFolder := SaveFolder . "Buttons\"
BackgroundFolder := SaveFolder . "Backgrounds\"
IniRead, Device, %SaveFile%, Stick settings, Input Device
loop, %BackgroundFolder%*.*
    {
        BGNum := A_Index
    }
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
    Gui, Add, Button, x++10 w100 h50 gHOSAS, HOSAS
    Gui, Add, Button, x++10 w100 h50 gController, Controller
    Gui, +AlwaysOnTop
    Gui, Color, 222222
    Gui, Show, w370 h100, Device
Return

HOTAS:
Device = HOTAS
Gui, Submit
IniRead, ProfileNum, %SaveFile%, Stick settings, Profile number
IniRead, Button1, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 1
IniRead, Button2, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 2
IniRead, Button3, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 3
IniRead, Button4, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 4
IniRead, Button5, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 5
IniRead, Button6, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 6
IniRead, Button7, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 7
IniRead, Button8, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 8
IniRead, Button9, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 9
IniRead, Button10, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 10
IniRead, Button11, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 11
IniRead, Button12, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 12
IniRead, Button13, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 13
IniRead, Button14, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 14
IniRead, Button15, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 15
IniRead, Button16, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 16
IniRead, Button17, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 17
IniRead, Button18, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 18
IniRead, Button19, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 19
IniRead, Button20, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 20
IniRead, Button21, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 21
IniRead, Button22, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 22
IniRead, Button23, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 23
IniRead, Button24, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 24
IniRead, Button25, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 25
IniRead, Button26, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 26
IniRead, Button27, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 27
IniRead, Button28, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 28
IniRead, Button29, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 29
IniRead, Button30, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 30
IniRead, Button31, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 31
IniRead, Button32, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 32
IniRead, InvertY, %SaveFile%, HOTAS Stick settings %ProfileNum%, Invert Y axis
IniRead, DeadZone, %SaveFile%, HOTAS Stick settings %ProfileNum%, Dead zone
IniRead, Pitch, %SaveFile%, HOTAS Stick settings %ProfileNum%, Pitch axis
IniRead, Yaw, %SaveFile%, HOTAS Stick settings %ProfileNum%, Yaw axis
IniRead, Roll, %SaveFile%, HOTAS Stick settings %ProfileNum%, Roll axis
IniRead, Throttle, %SaveFile%, HOTAS Stick settings %ProfileNum%, Throttle axis
IniRead, Lift, %SaveFile%, HOTAS Stick settings %ProfileNum%, Lift axis
IniRead, SensitivityAxis, %SaveFile%, HOTAS Stick settings %ProfileNum%, Sensitivity axis
IniRead, SensitivityRadio1, %SaveFile%, HOTAS Stick settings %ProfileNum%, Sensitivity radio position
IniRead, Sensitivity, %SaveFile%, HOTAS Stick settings %ProfileNum%, Sensitivity
IniRead, DeviceNum, %SaveFile%, HOTAS Stick settings %ProfileNum%, Input device number
if SensitivityRadio1 = 1
    {
        SensitivityRadio2 = 0
    }
else
    {
        SensitivityRadio2 = 1
    }
Gui, New
Loop, 98
    {
        Gui Add, Text, x-300
    }
Random, Rand, 1, %BGNum%
Gui, Add, Button, x%GuiWidth% y%GuiHeight% w2 h2 gRandBG,  
Gui, Add, Button, x++1 w2 h2 gMove,  
Gui, Add, Picture, vBG x0 y0 w%GuiWidth% h-1, %BackgroundFolder%%Rand%.jpg
Gui, Add, Picture, v1State0 gHOTASButton1 +BackgroundTrans x10 y5 w%ButtonSize% h-1, %ButtonFolder%Button1.png
Gui, Add, Picture, v2State0 gHOTASButton2 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button2.png
Gui, Add, Picture, v3State0 gHOTASButton3 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button3.png
Gui, Add, Picture, v4State0 gHOTASButton4 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button4.png
Gui, Add, Picture, v5State0 gHOTASButton5 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button5.png
Gui, Add, Picture, v6State0 gHOTASButton6 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button6.png
Gui, Add, Picture, v7State0 gHOTASButton7 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button7.png
Gui, Add, Picture, v8State0 gHOTASButton8 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button8.png
Gui, Add, Picture, v9State0 gHOTASButton9 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button9.png
Gui, Add, Picture, v10State0 gHOTASButton10 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button10.png
Gui, Add, Picture, v11State0 gHOTASButton11 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button11.png
Gui, Add, Picture, v12State0 gHOTASButton12 +BackgroundTrans x%SecondColumnButtons% y5 w%ButtonSize% h-1, %ButtonFolder%Button12.png
Gui, Add, Picture, v13State0 gHOTASButton13 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button13.png
Gui, Add, Picture, v14State0 gHOTASButton14 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button14.png
Gui, Add, Picture, v15State0 gHOTASButton15 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button15.png
Gui, Add, Picture, v16State0 gHOTASButton16 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button16.png
Gui, Add, Picture, v17State0 gHOTASButton17 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button17.png
Gui, Add, Picture, v18State0 gHOTASButton18 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button18.png
Gui, Add, Picture, v19State0 gHOTASButton19 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button19.png
Gui, Add, Picture, v20State0 gHOTASButton20 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button20.png
Gui, Add, Picture, v21State0 gHOTASButton21 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button21.png
Gui, Add, Picture, v22State0 gHOTASButton22 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button22.png
Gui, Add, Picture, v23State0 gHOTASButton23 +BackgroundTrans x%ThirdColumnButtons% y5 w%ButtonSize% h-1, %ButtonFolder%Button23.png
Gui, Add, Picture, v24State0 gHOTASButton24 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button24.png
Gui, Add, Picture, v25State0 gHOTASButton25 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button25.png
Gui, Add, Picture, v26State0 gHOTASButton26 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button26.png
Gui, Add, Picture, v27State0 gHOTASButton27 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button27.png
Gui, Add, Picture, v28State0 gHOTASButton28 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button28.png
Gui, Add, Picture, v29State0 gHOTASButton29 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button29.png
Gui, Add, Picture, v30State0 gHOTASButton30 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button30.png
Gui, Add, Picture, v31State0 gHOTASButton31 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button31.png
Gui, Add, Picture, v32State0 gHOTASButton32 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button32.png
Gui, Add, Picture, gDeviceInfo +BackgroundTrans x%DeviceInfoX% y%DeviceInfoY% w%TextSpacing% h%TextSpacing%, %ButtonFolder%Stick_info.ico
Gui, Font, s30 cFFFFFF
Loop, 67
    {
        Gui Add, Text, x-300
    }
Gui, Add, Text, BackGroundTrans x%FirstColumnText% y15 h46, %Button1%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button2%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button3%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button4%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button5%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button6%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button7%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button8%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button9%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button10%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button11%
Gui, Add, Text, BackGroundTrans x%SecondColumnText% y15 h46, %Button12%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button13%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button14%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button15%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button16%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button17%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button18%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button19%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button20%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button21%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button22%
Gui, Add, Text, BackGroundTrans x%ThirdColumnText% y15 h46, %Button23%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button24%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button25%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button26%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button27%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button28%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button29%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button30%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button31%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button32%
Gui, Font, s14
Gui, Add, Checkbox, x10 y%LastRow% w125 Checked%InvertY% vInvertY, Invert Y axis
Gui, Add, Text, x10 y++10, Change Profile:
Gui, Add, DDL, x10 y++5 w150 gHOTASDeviceProfile vDevice, HOTAS||Controller|HOSAS
Gui, Add, DDL, x++10 w50 Choose%ProfileNum% gHOTASDeviceProfileNum vProfileNum, 1|2|3
Gui, Add, Text, x%SecondColumnButtons% y%LastRow%, Sensitivity:
Gui, Add, Radio, x++20 Checked%SensitivityRadio1% vSensitivityRadio1, Slider
Gui, Add, Radio, x++35 y%LastRow% Checked%SensitivityRadio2%, Fixed
Gui, Font, s12 c222222
Gui, Add, Edit, -wantreturn x+-168 y++8 w50 vSensitivityAxis, %SensitivityAxis%
Gui, Add, Edit, -wantreturn x++58 w50 vSensitivity, %Sensitivity%
Gui, Font, s14 cFFFFFF
Gui, Add, Text, x%SecondColumnButtons% y++8, Dead zone:
Gui, Font, s12 c222222
Gui, Add, Edit, -wantreturn x++20 w50 vDeadZone, %DeadZone%
Gui, Font, s14 cFFFFFF
Gui, Add, Text, x%SecondColumnButtons% y++8, Device #:
Gui, Font, s12 c222222
Gui, Add, Edit, -wantreturn x++20 w50 vDeviceNum, %DeviceNum%
Gui, Font, s25
Gui, Add, Button, default x%SaveButtonLocation% y%LastRow% w120 h50 gHOTASSave, Save
Gui, Font, s12
Gui, Add, Button, x+-100 y+-80 w80 h20 gButtons, Controls
Gui, Add, Button, y+-50 w80 h20 gHOTASAxis, Axis
Gui, Color, 222222
Gui, show, w%GuiWidth% h%GuiHeight%, HOTAS Setup
hCurs:=DllCall("LoadCursor","UInt",NULL,"Int",32649,"UInt")
OnMessage(0x200,"WM_MOUSEMOVE") 
WinGet, GuiID, ID, A
SetTimer, Cycle1, 60000
Return

Controller:
Device = Controller
Gui, Submit
IniRead, ProfileNum, %SaveFile%, Stick settings, Profile number
IniRead, Button1, %SaveFile%, Controller Button settings %ProfileNum%, Button 1
IniRead, Button2, %SaveFile%, Controller Button settings %ProfileNum%, Button 2
IniRead, Button3, %SaveFile%, Controller Button settings %ProfileNum%, Button 3
IniRead, Button4, %SaveFile%, Controller Button settings %ProfileNum%, Button 4
IniRead, Button5, %SaveFile%, Controller Button settings %ProfileNum%, Button 5
IniRead, Button6, %SaveFile%, Controller Button settings %ProfileNum%, Button 6
IniRead, Button7, %SaveFile%, Controller Button settings %ProfileNum%, Button 7
IniRead, Button8, %SaveFile%, Controller Button settings %ProfileNum%, Button 8
IniRead, Button9, %SaveFile%, Controller Button settings %ProfileNum%, Button 9
IniRead, Button10, %SaveFile%, Controller Button settings %ProfileNum%, Button 10
IniRead, Button11, %SaveFile%, Controller Button settings %ProfileNum%, Button 11
IniRead, Button12, %SaveFile%, Controller Button settings %ProfileNum%, Button 12
IniRead, Button13, %SaveFile%, Controller Button settings %ProfileNum%, Button 13
IniRead, Button14, %SaveFile%, Controller Button settings %ProfileNum%, Button 14
IniRead, Button15, %SaveFile%, Controller Button settings %ProfileNum%, Button 15
IniRead, Button16, %SaveFile%, Controller Button settings %ProfileNum%, Button 16
IniRead, Button17, %SaveFile%, Controller Button settings %ProfileNum%, Button 17
IniRead, Button18, %SaveFile%, Controller Button settings %ProfileNum%, Button 18
IniRead, Button19, %SaveFile%, Controller Button settings %ProfileNum%, Button 19
IniRead, Button20, %SaveFile%, Controller Button settings %ProfileNum%, Button 20
IniRead, Button21, %SaveFile%, Controller Button settings %ProfileNum%, Button 21
IniRead, Button22, %SaveFile%, Controller Button settings %ProfileNum%, Button 22
IniRead, Button23, %SaveFile%, Controller Button settings %ProfileNum%, Button 23
IniRead, Button24, %SaveFile%, Controller Button settings %ProfileNum%, Button 24
IniRead, Button25, %SaveFile%, Controller Button settings %ProfileNum%, Button 25
IniRead, Button26, %SaveFile%, Controller Button settings %ProfileNum%, Button 26
IniRead, Button27, %SaveFile%, Controller Button settings %ProfileNum%, Button 27
IniRead, Button28, %SaveFile%, Controller Button settings %ProfileNum%, Button 28
IniRead, Button29, %SaveFile%, Controller Button settings %ProfileNum%, Button 29
IniRead, Button30, %SaveFile%, Controller Button settings %ProfileNum%, Button 30
IniRead, Button31, %SaveFile%, Controller Button settings %ProfileNum%, Button 31
IniRead, Button32, %SaveFile%, Controller Button settings %ProfileNum%, Button 32
IniRead, InvertY, %SaveFile%, Controller Stick settings %ProfileNum%, Invert Y axis
IniRead, DeadZone, %SaveFile%, Controller Stick settings %ProfileNum%, Dead zone
IniRead, Pitch, %SaveFile%, Controller Stick settings %ProfileNum%, Pitch axis
IniRead, Yaw, %SaveFile%, Controller Stick settings %ProfileNum%, Yaw axis
IniRead, Roll, %SaveFile%, Controller Stick settings %ProfileNum%, Roll axis
IniRead, Throttle, %SaveFile%, Controller Stick settings %ProfileNum%, Throttle axis
IniRead, Lift, %SaveFile%, Controller Stick settings %ProfileNum%, Lift axis
IniRead, SensitivityAxis, %SaveFile%, Controller Stick settings %ProfileNum%, Sensitivity axis
IniRead, SensitivityRadio1, %SaveFile%, Controller Stick settings %ProfileNum%, Sensitivity radio position
IniRead, Sensitivity, %SaveFile%, Controller Stick settings %ProfileNum%, Sensitivity
IniRead, DeviceNum, %SaveFile%, Controller Stick settings %ProfileNum%, Input device number
if SensitivityRadio1 = 1
    {
        SensitivityRadio2 = 0
    }
else
    {
        SensitivityRadio2 = 1
    }
Gui, New
Loop, 98
    {
        Gui Add, Text, x-300
    }
Random, Rand, 1, %BGNum%
Gui, Add, Button, x%GuiWidth% y%GuiHeight% w2 h2 gRandBG,  
Gui, Add, Button, x++1 w2 h2 gMove,  
Gui, Add, Picture, vBG x0 y0 w%GuiWidth% h-1, %BackgroundFolder%%Rand%.jpg
Gui, Add, Picture, v1State0 gControllerButton1 +BackgroundTrans x10 y5 w%ButtonSize% h-1, %ButtonFolder%Button1.png
Gui, Add, Picture, v2State0 gControllerButton2 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button2.png
Gui, Add, Picture, v3State0 gControllerButton3 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button3.png
Gui, Add, Picture, v4State0 gControllerButton4 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button4.png
Gui, Add, Picture, v5State0 gControllerButton5 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button5.png
Gui, Add, Picture, v6State0 gControllerButton6 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button6.png
Gui, Add, Picture, v7State0 gControllerButton7 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button7.png
Gui, Add, Picture, v8State0 gControllerButton8 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button8.png
Gui, Add, Picture, v9State0 gControllerButton9 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button9.png
Gui, Add, Picture, v10State0 gControllerButton10 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button10.png
Gui, Add, Picture, v11State0 gControllerButton11 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button11.png
Gui, Add, Picture, v12State0 gControllerButton12 +BackgroundTrans x%SecondColumnButtons% y5 w%ButtonSize% h-1, %ButtonFolder%Button12.png
Gui, Add, Picture, v13State0 gControllerButton13 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button13.png
Gui, Add, Picture, v14State0 gControllerButton14 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button14.png
Gui, Add, Picture, v15State0 gControllerButton15 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button15.png
Gui, Add, Picture, v16State0 gControllerButton16 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button16.png
Gui, Add, Picture, v17State0 gControllerButton17 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button17.png
Gui, Add, Picture, v18State0 gControllerButton18 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button18.png
Gui, Add, Picture, v19State0 gControllerButton19 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button19.png
Gui, Add, Picture, v20State0 gControllerButton20 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button20.png
Gui, Add, Picture, v21State0 gControllerButton21 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button21.png
Gui, Add, Picture, v22State0 gControllerButton22 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button22.png
Gui, Add, Picture, v23State0 gControllerButton23 +BackgroundTrans x%ThirdColumnButtons% y5 w%ButtonSize% h-1, %ButtonFolder%Button23.png
Gui, Add, Picture, v24State0 gControllerButton24 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button24.png
Gui, Add, Picture, v25State0 gControllerButton25 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button25.png
Gui, Add, Picture, v26State0 gControllerButton26 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button26.png
Gui, Add, Picture, v27State0 gControllerButton27 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button27.png
Gui, Add, Picture, v28State0 gControllerButton28 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button28.png
Gui, Add, Picture, v29State0 gControllerButton29 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button29.png
Gui, Add, Picture, v30State0 gControllerButton30 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button30.png
Gui, Add, Picture, v31State0 gControllerButton31 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button31.png
Gui, Add, Picture, v32State0 gControllerButton32 +BackgroundTrans y++%Spacing% w%ButtonSize% h-1, %ButtonFolder%Button32.png
Gui, Add, Picture, gDeviceInfo +BackgroundTrans x%DeviceInfoX% y%DeviceInfoY% w%TextSpacing% h%TextSpacing%, %ButtonFolder%Stick_info.ico
Gui, Font, s30 cFFFFFF
Loop, 67
    {
        Gui Add, Text, x-300
    }
Gui, Add, Text, BackGroundTrans x%FirstColumnText% y15 h46, %Button1%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button2%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button3%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button4%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button5%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button6%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button7%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button8%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button9%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button10%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button11%
Gui, Add, Text, BackGroundTrans x%SecondColumnText% y15 h46, %Button12%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button13%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button14%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button15%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button16%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button17%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button18%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button19%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button20%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button21%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button22%
Gui, Add, Text, BackGroundTrans x%ThirdColumnText% y15 h46, %Button23%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button24%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button25%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button26%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button27%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button28%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button29%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button30%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button31%
Gui, Add, Text, BackGroundTrans y++%TextSpacing% h46, %Button32%
Gui, Font, s14
Gui, Add, Checkbox, x10 y%LastRow% w125 Checked%InvertY% vInvertY, Invert Y axis
Gui, Add, Text, x10 y++10, Change Profile:
Gui, Add, DDL, x10 y++5 w150 gControllerDeviceProfile vDevice, HOTAS|Controller||HOSAS
Gui, Add, DDL, x++10 w50 Choose%ProfileNum% gHOTASDeviceProfileNum vProfileNum, 1|2|3
Gui, Add, Text, x%SecondColumnButtons% y%LastRow%, Sensitivity:
Gui, Add, Radio, x++20 Checked%SensitivityRadio1% vSensitivityRadio1, Slider
Gui, Add, Radio, x++35 y%LastRow% Checked%SensitivityRadio2%, Fixed
Gui, Font, s12 c222222
Gui, Add, Edit, -wantreturn x+-168 y++8 w50 vSensitivityAxis, %SensitivityAxis%
Gui, Add, Edit, -wantreturn x++58 w50 vSensitivity, %Sensitivity%
Gui, Font, s14 cFFFFFF
Gui, Add, Text, x%SecondColumnButtons% y++8, Dead zone:
Gui, Font, s12 c222222
Gui, Add, Edit, -wantreturn x++20 w50 vDeadZone, %DeadZone%
Gui, Font, s14 cFFFFFF
Gui, Add, Text, x%SecondColumnButtons% y++8, Device #:
Gui, Font, s12 c222222
Gui, Add, Edit, -wantreturn x++20 w50 vDeviceNum, %DeviceNum%
Gui, Font, s25
Gui, Add, Button, default x%SaveButtonLocation% y%LastRow% w120 h50 gControllerSave, Save
Gui, Font, s12
Gui, Add, Button, x+-100 y+-80 w80 h20 gButtons, Controls
Gui, Add, Button, y+-50 w80 h20 gHOTASAxis, Axis
Gui, Color, 222222
Gui, show, w%GuiWidth% h%GuiHeight%, Controller Setup
hCurs:=DllCall("LoadCursor","UInt",NULL,"Int",32649,"UInt")
OnMessage(0x200,"WM_MOUSEMOVE") 
WinGet, GuiID, ID, A
SetTimer, Cycle1, 60000
Return

HOSAS:
Device = HOSAS
Gui, Submit
IniRead, ProfileNum, %SaveFile%, Stick settings, Profile number
IniRead, Button1, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 1
IniRead, Button2, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 2
IniRead, Button3, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 3
IniRead, Button4, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 4
IniRead, Button5, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 5
IniRead, Button6, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 6
IniRead, Button7, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 7
IniRead, Button8, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 8
IniRead, Button9, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 9
IniRead, Button10, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 10
IniRead, Button11, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 11
IniRead, Button12, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 12
IniRead, Button13, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 13
IniRead, Button14, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 14
IniRead, Button15, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 15
IniRead, Button16, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 16
IniRead, Button17, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 17
IniRead, Button18, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 18
IniRead, Button19, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 19
IniRead, Button20, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 20
IniRead, Button21, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 21
IniRead, Button22, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 22
IniRead, Button23, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 23
IniRead, Button24, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 24
IniRead, Button25, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 25
IniRead, Button26, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 26
IniRead, Button27, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 27
IniRead, Button28, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 28
IniRead, Button29, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 29
IniRead, Button30, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 30
IniRead, Button31, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 31
IniRead, Button32, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 32
IniRead, 2Button1, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 1
IniRead, 2Button2, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 2
IniRead, 2Button3, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 3
IniRead, 2Button4, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 4
IniRead, 2Button5, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 5
IniRead, 2Button6, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 6
IniRead, 2Button7, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 7
IniRead, 2Button8, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 8
IniRead, 2Button9, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 9
IniRead, 2Button10, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 10
IniRead, 2Button11, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 11
IniRead, 2Button12, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 12
IniRead, 2Button13, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 13
IniRead, 2Button14, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 14
IniRead, 2Button15, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 15
IniRead, 2Button16, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 16
IniRead, 2Button17, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 17
IniRead, 2Button18, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 18
IniRead, 2Button19, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 19
IniRead, 2Button20, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 20
IniRead, 2Button21, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 21
IniRead, 2Button22, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 22
IniRead, 2Button23, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 23
IniRead, 2Button24, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 24
IniRead, 2Button25, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 25
IniRead, 2Button26, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 26
IniRead, 2Button27, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 27
IniRead, 2Button28, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 28
IniRead, 2Button29, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 29
IniRead, 2Button30, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 30
IniRead, 2Button31, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 31
IniRead, 2Button32, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 32
IniRead, InvertY, %SaveFile%, HOSAS Stick settings %ProfileNum%, Invert Y axis
IniRead, DeadZone, %SaveFile%, HOSAS Stick settings %ProfileNum%, Dead zone
IniRead, InvLift, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Invert Lift
IniRead, Pitch, %SaveFile%, HOSAS Stick settings %ProfileNum%, Pitch axis
IniRead, Yaw, %SaveFile%, HOSAS Stick settings %ProfileNum%, Yaw axis
IniRead, Roll, %SaveFile%, HOSAS Stick settings %ProfileNum%, Roll axis
IniRead, Throttle, %SaveFile%, HOSAS Stick settings %ProfileNum%, Throttle axis
IniRead, Lift, %SaveFile%, HOSAS Stick settings %ProfileNum%, Lift axis
IniRead, PitchStick, %SaveFile%, HOSAS Stick settings %ProfileNum%, Pitch device
IniRead, YawStick, %SaveFile%, HOSAS Stick settings %ProfileNum%, Yaw device
IniRead, RollStick, %SaveFile%, HOSAS Stick settings %ProfileNum%, Roll device
IniRead, ThrottleStick, %SaveFile%, HOSAS Stick settings %ProfileNum%, Throttle device
IniRead, LiftStick, %SaveFile%, HOSAS Stick settings %ProfileNum%, Lift device
IniRead, Pitch2, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Pitch axis
IniRead, Yaw2, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Yaw axis
IniRead, Roll2, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Roll axis
IniRead, Throttle2, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Throttle axis
IniRead, Lift2, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Lift axis
IniRead, SensitivityAxis, %SaveFile%, HOSAS Stick settings %ProfileNum%, Sensitivity axis
IniRead, SensitivityRadio1, %SaveFile%, HOSAS Stick settings %ProfileNum%, Sensitivity radio position
IniRead, Sensitivity, %SaveFile%, HOSAS Stick settings %ProfileNum%, Sensitivity
IniRead, DeviceNum, %SaveFile%, HOSAS Stick settings %ProfileNum%, Input device number
IniRead, Device2Num, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Secondary input device number
if SensitivityRadio1 = 1
    {
        SensitivityRadio2 = 0
    }
else
    {
        SensitivityRadio2 = 1
    }
if PitchStick = 1
    {
        PitchStick2 = 0
    }
else
    {
        PitchStick2 = 1
    }
if YawStick = 1
    {
        YawStick2 = 0
    }
else
    {
        YawStick2 = 1
    }
if RollStick = 1
    {
        RollStick2 = 0
    }
else
    {
        RollStick2 = 1
    }
if ThrottleStick = 1
    {
        ThrottleStick2 = 0
    }
else
    {
        ThrottleStick2 = 1
    }
if LiftStick = 1
    {
        LiftStick2 = 0
    }
else
    {
        LiftStick2 = 1
    }
Gui, New
Loop, 98
    {
        Gui Add, Text, x-300
    }
Random, Rand, 1, %BGNum%
Gui, Add, Button, x%GuiWidth% y%GuiHeight% w2 h2 gRandBG,  
Gui, Add, Button, x++1 w2 h2 gMove,  
Gui, Add, Picture, vBG x0 y0 w%GuiWidth% h-1, %BackgroundFolder%%Rand%.jpg
Gui, Add, Picture, v102State0 gHOSAS2Button1 +BackgroundTrans x10 y70 w%HOSASButtonSize% h-1, %ButtonFolder%Button1.png
Gui, Add, Picture, v202State0 gHOSAS2Button2 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button2.png
Gui, Add, Picture, v302State0 gHOSAS2Button3 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button3.png
Gui, Add, Picture, v402State0 gHOSAS2Button4 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button4.png
Gui, Add, Picture, v502State0 gHOSAS2Button5 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button5.png
Gui, Add, Picture, v602State0 gHOSAS2Button6 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button6.png
Gui, Add, Picture, v702State0 gHOSAS2Button7 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button7.png
Gui, Add, Picture, v802State0 gHOSAS2Button8 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button8.png
Gui, Add, Picture, v902State0 gHOSAS2Button9 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button9.png
Gui, Add, Picture, v1002State0 gHOSAS2Button10 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button10.png
Gui, Add, Picture, v1102State0 gHOSAS2Button11 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button11.png
Gui, Add, Picture, v1202State0 gHOSAS2Button12 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button12.png
Gui, Add, Picture, v1302State0 gHOSAS2Button13 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button13.png
Gui, Add, Picture, v1402State0 gHOSAS2Button14 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button14.png
Gui, Add, Picture, v1502State0 gHOSAS2Button15 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button15.png
Gui, Add, Picture, v1602State0 gHOSAS2Button16 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button16.png
Gui, Add, Picture, v1702State0 gHOSAS2Button17 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button17.png
Gui, Add, Picture, v1802State0 gHOSAS2Button18 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button18.png
Gui, Add, Picture, v1902State0 gHOSAS2Button19 +BackgroundTrans x%HOSASSecondColumnButtons% y70 w%HOSASButtonSize% h-1, %ButtonFolder%Button19.png
Gui, Add, Picture, v2002State0 gHOSAS2Button20 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button20.png
Gui, Add, Picture, v2102State0 gHOSAS2Button21 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button21.png
Gui, Add, Picture, v2202State0 gHOSAS2Button22 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button22.png
Gui, Add, Picture, v2302State0 gHOSAS2Button23 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button23.png
Gui, Add, Picture, v2402State0 gHOSAS2Button24 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button24.png
Gui, Add, Picture, v2502State0 gHOSAS2Button25 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button25.png
Gui, Add, Picture, v2602State0 gHOSAS2Button26 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button26.png
Gui, Add, Picture, v2702State0 gHOSAS2Button27 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button27.png
Gui, Add, Picture, v2802State0 gHOSAS2Button28 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button28.png
Gui, Add, Picture, v2902State0 gHOSAS2Button29 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button29.png
Gui, Add, Picture, v3002State0 gHOSAS2Button30 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button30.png
Gui, Add, Picture, v3102State0 gHOSAS2Button31 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button31.png
Gui, Add, Picture, v3202State0 gHOSAS2Button32 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button32.png
Gui, Add, Picture, v1State0 gHOSASButton1 +BackgroundTrans x%HOSASThirdColumnButtons% y70 w%HOSASButtonSize% h-1, %ButtonFolder%Button1.png
Gui, Add, Picture, v2State0 gHOSASButton2 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button2.png
Gui, Add, Picture, v3State0 gHOSASButton3 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button3.png
Gui, Add, Picture, v4State0 gHOSASButton4 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button4.png
Gui, Add, Picture, v5State0 gHOSASButton5 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button5.png
Gui, Add, Picture, v6State0 gHOSASButton6 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button6.png
Gui, Add, Picture, v7State0 gHOSASButton7 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button7.png
Gui, Add, Picture, v8State0 gHOSASButton8 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button8.png
Gui, Add, Picture, v9State0 gHOSASButton9 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button9.png
Gui, Add, Picture, v10State0 gHOSASButton10 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button10.png
Gui, Add, Picture, v11State0 gHOSASButton11 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button11.png
Gui, Add, Picture, v12State0 gHOSASButton12 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button12.png
Gui, Add, Picture, v13State0 gHOSASButton13 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button13.png
Gui, Add, Picture, v14State0 gHOSASButton14 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button14.png
Gui, Add, Picture, v15State0 gHOSASButton15 +BackgroundTrans x%HOSASFourthColumnButtons% y70 w%HOSASButtonSize% h-1, %ButtonFolder%Button15.png
Gui, Add, Picture, v16State0 gHOSASButton16 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button16.png
Gui, Add, Picture, v17State0 gHOSASButton17 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button17.png
Gui, Add, Picture, v18State0 gHOSASButton18 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button18.png
Gui, Add, Picture, v19State0 gHOSASButton19 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button19.png
Gui, Add, Picture, v20State0 gHOSASButton20 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button20.png
Gui, Add, Picture, v21State0 gHOSASButton21 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button21.png
Gui, Add, Picture, v22State0 gHOSASButton22 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button22.png
Gui, Add, Picture, v23State0 gHOSASButton23 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button23.png
Gui, Add, Picture, v24State0 gHOSASButton24 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button24.png
Gui, Add, Picture, v25State0 gHOSASButton25 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button25.png
Gui, Add, Picture, v26State0 gHOSASButton26 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button26.png
Gui, Add, Picture, v27State0 gHOSASButton27 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button27.png
Gui, Add, Picture, v28State0 gHOSASButton28 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button28.png
Gui, Add, Picture, v29State0 gHOSASButton29 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button29.png
Gui, Add, Picture, v30State0 gHOSASButton30 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button30.png
Gui, Add, Picture, v31State0 gHOSASButton31 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button31.png
Gui, Add, Picture, v32State0 gHOSASButton32 +BackgroundTrans y++%HOSASSpacing% w%HOSASButtonSize% h-1, %ButtonFolder%Button32.png
Gui, Add, Picture, gDeviceInfo +BackgroundTrans x%DeviceInfoX% y%DeviceInfoY% w%TextSpacing% h%TextSpacing%, %ButtonFolder%Stick_info.ico
Loop, 35
    {
        Gui Add, Text, x-300
    }
Gui, Font, s50 underline cFFFFFF
Gui, Add, Text, BackGroundTrans x10 y-10, Left Stick
Gui, Add, Text, BackGroundTrans x%HOSASThirdColumnButtons% y-10, Right Stick
Gui, Font, norm s25
Gui, Add, Text, BackGroundTrans x%HOSASFirstColumnText% y73 h38, %2Button1%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button2%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button3%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button4%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button5%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button6%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button7%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button8%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button9%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button10%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button11%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button12%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button13%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button14%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button15%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button16%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button17%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button18%
Gui, Add, Text, BackGroundTrans x%HOSASSecondColumnText% y73 h38, %2Button19%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button20%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button21%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button22%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button23%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button24%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button25%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button26%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button27%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button28%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button29%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button30%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button31%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %2Button32%
Gui, Add, Text, BackGroundTrans x%HOSASThirdColumnText% y73 h38, %Button1%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button2%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button3%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button4%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button5%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button6%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button7%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button8%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button9%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button10%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button11%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button12%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button13%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button14%
Gui, Add, Text, BackGroundTrans x%HOSASFourthColumnText% y73 h38, %Button15%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button16%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button17%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button18%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button19%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button20%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button21%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button22%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button23%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button24%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button25%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button26%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button27%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button28%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button29%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button30%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button31%
Gui, Add, Text, BackGroundTrans y++%HOSASTextSpacing% h38, %Button32%
Gui, Font, s12
Gui, Add, Text, x%HOSASSecondColumnButtons% y%HOSASLastRow%, Sensitivity:
Gui, Add, Radio, x++20 Checked%SensitivityRadio1% vSensitivityRadio1, Slider
Gui, Add, Radio, x++35 y%HOSASLastRow% Checked%SensitivityRadio2%, Fixed
Gui, Font, s10 c222222
Gui, Add, Edit, -wantreturn x+-168 y++2 w50 vSensitivityAxis, %SensitivityAxis%
Gui, Add, Edit, -wantreturn x++58 w50 vSensitivity, %Sensitivity%
Gui, Font, s12 cFFFFFF
Gui, Add, Text, x%HOSASSecondColumnButtons% y++2, Dead zone:
Gui, Font, s10 c222222
Gui, Add, Edit, -wantreturn x++20 w50 vDeadZone, %DeadZone%
Gui, Font, s12 cFFFFFF
Gui, Add, Text, x%HOSASSecondColumnButtons% y++2, Right Stick Device #:
Gui, Font, s10 c222222
Gui, Add, Edit, -wantreturn x++20 w50 vDeviceNum, %DeviceNum%
Gui, Font, s12 cFFFFFF
Gui, Add, Text, x%HOSASSecondColumnButtons% y++2, Left Stick Device #:
Gui, Font, s10 c222222
Gui, Add, Edit, -wantreturn x++20 w50 vDevice2Num, %Device2Num%
Gui, Add, DDL, x%HOSASSecondColumnButtons% y++2 w100 gHOSASDeviceProfile vDevice, HOTAS|Controller|HOSAS||
Gui, Add, DDL, x++10 w50 Choose%ProfileNum% gHOTASDeviceProfileNum vProfileNum, 1|2|3
Gui, Font, s25
Gui, Add, Button, default x%HOSASSaveButtonLocation% y%HOSASLastRow% w120 h50 gHOSASSave, Save
Gui, Font, s10
Gui, Add, Button, x+-100 y++10 w80 h20 gButtons, Controls
Gui, Add, Button, y++10 w80 h20 gHOSASAxis, Axis
Gui, Font, s12 cFFFFFF
Gui, Add, Checkbox, x%HOSASSaveButtonLocation% y++5 w125 Checked%InvertY% vInvertY, Invert Y axis
Gui, Font, s12 cFFFFFF
Gui, Add, Checkbox, x%HOSASSaveButtonLocation% y++5 w100 Checked%InvLift% vInvLift, Invert Lift
Gui, Color, 222222
Gui, show, w%GuiWidth% h%GuiHeight%, HOSAS Setup
hCurs:=DllCall("LoadCursor","UInt",NULL,"Int",32649,"UInt")
OnMessage(0x200,"WM_MOUSEMOVE") 
WinGet, GuiID, ID, A
SetTimer, Cycle1, 60000
Return

HOTASButton1:
GuiControl,, 1State0, %ButtonFolder%Button1.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 1
Reload
Return

HOSASButton1:
GuiControl,, 1State0, %ButtonFolder%Button1.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 1
Reload
Return

HOSAS2Button1:
GuiControl,, 102State0, %ButtonFolder%Button1.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 1
Reload
Return

ControllerButton1:
GuiControl,, 1State0, %ButtonFolder%Button1.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 1
reload
Return

HOTASButton2:
GuiControl,, 2State0, %ButtonFolder%Button2.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 2
Reload
Return

HOSASButton2:
GuiControl,, 2State0, %ButtonFolder%Button2.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 2
Reload
Return

HOSAS2Button2:
GuiControl,, 202State0, %ButtonFolder%Button2.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 2
Reload
Return

ControllerButton2:
GuiControl,, 2State0, %ButtonFolder%Button2.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 2
reload
Return

HOTASButton3:
GuiControl,, 3State0, %ButtonFolder%Button3.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 3
Reload
Return

HOSASButton3:
GuiControl,, 3State0, %ButtonFolder%Button3.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 3
Reload
Return

HOSAS2Button3:
GuiControl,, 302State0, %ButtonFolder%Button3.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 3
Reload
Return

ControllerButton3:
GuiControl,, 3State0, %ButtonFolder%Button3.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 3
reload
Return

HOTASButton4:
GuiControl,, 4State0, %ButtonFolder%Button4.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 4
Reload
Return

HOSASButton4:
GuiControl,, 4State0, %ButtonFolder%Button4.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 4
Reload
Return

HOSAS2Button4:
GuiControl,, 402State0, %ButtonFolder%Button4.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 4
Reload
Return

ControllerButton4:
GuiControl,, 4State0, %ButtonFolder%Button4.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 4
reload
Return

HOTASButton5:
GuiControl,, 5State0, %ButtonFolder%Button5.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 5
Reload
Return

HOSASButton5:
GuiControl,, 5State0, %ButtonFolder%Button5.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 5
Reload
Return

HOSAS2Button5:
GuiControl,, 502State0, %ButtonFolder%Button5.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 5
Reload
Return

ControllerButton5:
GuiControl,, 5State0, %ButtonFolder%Button5.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 5
reload
Return

HOTASButton6:
GuiControl,, 6State0, %ButtonFolder%Button6.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 6
Reload
Return

HOSASButton6:
GuiControl,, 6State0, %ButtonFolder%Button6.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 6
Reload
Return

HOSAS2Button6:
GuiControl,, 602State0, %ButtonFolder%Button6.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 6
Reload
Return

ControllerButton6:
GuiControl,, 6State0, %ButtonFolder%Button6.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 6
reload
Return

HOTASButton7:
GuiControl,, 7State0, %ButtonFolder%Button7.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 7
Reload
Return

HOSASButton7:
GuiControl,, 7State0, %ButtonFolder%Button7.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 7
Reload
Return

HOSAS2Button7:
GuiControl,, 702State0, %ButtonFolder%Button7.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 7
Reload
Return

ControllerButton7:
GuiControl,, 7State0, %ButtonFolder%Button7.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 7
reload
Return

HOTASButton8:
GuiControl,, 8State0, %ButtonFolder%Button8.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 8
Reload
Return

HOSASButton8:
GuiControl,, 8State0, %ButtonFolder%Button8.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 8
Reload
Return

HOSAS2Button8:
GuiControl,, 802State0, %ButtonFolder%Button8.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 8
Reload
Return

ControllerButton8:
GuiControl,, 8State0, %ButtonFolder%Button8.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 8
reload
Return

HOTASButton9:
GuiControl,, 9State0, %ButtonFolder%Button9.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 9
Reload
Return

HOSASButton9:
GuiControl,, 9State0, %ButtonFolder%Button9.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 9
Reload
Return

HOSAS2Button9:
GuiControl,, 902State0, %ButtonFolder%Button9.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 9
Reload
Return

ControllerButton9:
GuiControl,, 9State0, %ButtonFolder%Button9.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 9
reload
Return

HOTASButton10:
GuiControl,, 10State0, %ButtonFolder%Button10.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 10
Reload
Return

HOSASButton10:
GuiControl,, 10State0, %ButtonFolder%Button10.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 10
Reload
Return

HOSAS2Button10:
GuiControl,, 1002State0, %ButtonFolder%Button10.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 10
Reload
Return

ControllerButton10:
GuiControl,, 10State0, %ButtonFolder%Button10.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 10
reload
Return

HOTASButton11:
GuiControl,, 11State0, %ButtonFolder%Button11.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 11
Reload
Return

HOSASButton11:
GuiControl,, 11State0, %ButtonFolder%Button11.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 11
Reload
Return

HOSAS2Button11:
GuiControl,, 1102State0, %ButtonFolder%Button11.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 11
Reload
Return

ControllerButton11:
GuiControl,, 11State0, %ButtonFolder%Button11.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 11
reload
Return

HOTASButton12:
GuiControl,, 12State0, %ButtonFolder%Button12.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 12
Reload
Return

HOSASButton12:
GuiControl,, 12State0, %ButtonFolder%Button12.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 12
Reload
Return

HOSAS2Button12:
GuiControl,, 1202State0, %ButtonFolder%Button12.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 12
Reload
Return

ControllerButton12:
GuiControl,, 12State0, %ButtonFolder%Button12.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 12
reload
Return

HOTASButton13:
GuiControl,, 13State0, %ButtonFolder%Button13.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 13
Reload
Return

HOSASButton13:
GuiControl,, 13State0, %ButtonFolder%Button13.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 13
Reload
Return

HOSAS2Button13:
GuiControl,, 1302State0, %ButtonFolder%Button13.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 13
Reload
Return

ControllerButton13:
GuiControl,, 13State0, %ButtonFolder%Button13.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 13
reload
Return

HOTASButton14:
GuiControl,, 14State0, %ButtonFolder%Button14.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 14
Reload
Return

HOSASButton14:
GuiControl,, 14State0, %ButtonFolder%Button14.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 14
Reload
Return

HOSAS2Button14:
GuiControl,, 1402State0, %ButtonFolder%Button14.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 14
Reload
Return

ControllerButton14:
GuiControl,, 14State0, %ButtonFolder%Button14.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 14
reload
Return

HOTASButton15:
GuiControl,, 15State0, %ButtonFolder%Button15.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 15
Reload
Return

HOSASButton15:
GuiControl,, 15State0, %ButtonFolder%Button15.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 15
Reload
Return

HOSAS2Button15:
GuiControl,, 1502State0, %ButtonFolder%Button15.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 15
Reload
Return

ControllerButton15:
GuiControl,, 15State0, %ButtonFolder%Button15.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 15
reload
Return

HOTASButton16:
GuiControl,, 16State0, %ButtonFolder%Button16.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 16
Reload
Return

HOSASButton16:
GuiControl,, 16State0, %ButtonFolder%Button16.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 16
Reload
Return

HOSAS2Button16:
GuiControl,, 1602State0, %ButtonFolder%Button16.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 16
Reload
Return

ControllerButton16:
GuiControl,, 16State0, %ButtonFolder%Button16.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 16
reload
Return

HOTASButton17:
GuiControl,, 17State0, %ButtonFolder%Button17.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 17
Reload
Return

HOSASButton17:
GuiControl,, 17State0, %ButtonFolder%Button17.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 17
Reload
Return

HOSAS2Button17:
GuiControl,, 1702State0, %ButtonFolder%Button17.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 17
Reload
Return

ControllerButton17:
GuiControl,, 17State0, %ButtonFolder%Button17.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 17
reload
Return

HOTASButton18:
GuiControl,, 18State0, %ButtonFolder%Button18.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 18
Reload
Return

HOSASButton18:
GuiControl,, 18State0, %ButtonFolder%Button18.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 18
Reload
Return

HOSAS2Button18:
GuiControl,, 1802State0, %ButtonFolder%Button18.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 18
Reload
Return

ControllerButton18:
GuiControl,, 18State0, %ButtonFolder%Button18.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 18
reload
Return

HOTASButton19:
GuiControl,, 19State0, %ButtonFolder%Button19.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 19
Reload
Return

HOSASButton19:
GuiControl,, 19State0, %ButtonFolder%Button19.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 19
Reload
Return

HOSAS2Button19:
GuiControl,, 1902State0, %ButtonFolder%Button19.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 19
Reload
Return

ControllerButton19:
GuiControl,, 19State0, %ButtonFolder%Button19.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 19
reload
Return

HOTASButton20:
GuiControl,, 20State0, %ButtonFolder%Button20.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 20
Reload
Return

HOSASButton20:
GuiControl,, 20State0, %ButtonFolder%Button20.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 20
Reload
Return

HOSAS2Button20:
GuiControl,, 2002State0, %ButtonFolder%Button20.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 20
Reload
Return

ControllerButton20:
GuiControl,, 20State0, %ButtonFolder%Button20.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 20
reload
Return

HOTASButton21:
GuiControl,, 21State0, %ButtonFolder%Button21.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 21
Reload
Return

HOSASButton21:
GuiControl,, 21State0, %ButtonFolder%Button21.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 21
Reload
Return

HOSAS2Button21:
GuiControl,, 2102State0, %ButtonFolder%Button21.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 21
Reload
Return

ControllerButton21:
GuiControl,, 21State0, %ButtonFolder%Button21.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 21
reload
Return

HOTASButton22:
GuiControl,, 22State0, %ButtonFolder%Button22.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 22
Reload
Return

HOSASButton22:
GuiControl,, 22State0, %ButtonFolder%Button22.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 22
Reload
Return

HOSAS2Button22:
GuiControl,, 2202State0, %ButtonFolder%Button22.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 22
Reload
Return

ControllerButton22:
GuiControl,, 22State0, %ButtonFolder%Button22.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 22
reload
Return

HOTASButton23:
GuiControl,, 23State0, %ButtonFolder%Button23.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 23
Reload
Return

HOSASButton23:
GuiControl,, 23State0, %ButtonFolder%Button23.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 23
Reload
Return

HOSAS2Button23:
GuiControl,, 2302State0, %ButtonFolder%Button23.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 23
Reload
Return

ControllerButton23:
GuiControl,, 23State0, %ButtonFolder%Button23.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 23
reload
Return

HOTASButton24:
GuiControl,, 24State0, %ButtonFolder%Button24.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 24
Reload
Return

HOSASButton24:
GuiControl,, 24State0, %ButtonFolder%Button24.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 24
Reload
Return

HOSAS2Button24:
GuiControl,, 2402State0, %ButtonFolder%Button24.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 24
Reload
Return

ControllerButton24:
GuiControl,, 24State0, %ButtonFolder%Button24.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 24
reload
Return

HOTASButton25:
GuiControl,, 25State0, %ButtonFolder%Button25.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 25
Reload
Return

HOSASButton25:
GuiControl,, 25State0, %ButtonFolder%Button25.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 25
Reload
Return

HOSAS2Button25:
GuiControl,, 2502State0, %ButtonFolder%Button25.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 25
Reload
Return

ControllerButton25:
GuiControl,, 25State0, %ButtonFolder%Button25.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 25
reload
Return

HOTASButton26:
GuiControl,, 26State0, %ButtonFolder%Button26.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 26
Reload
Return

HOSASButton26:
GuiControl,, 26State0, %ButtonFolder%Button26.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 26
Reload
Return

HOSAS2Button26:
GuiControl,, 2602State0, %ButtonFolder%Button26.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 26
Reload
Return

ControllerButton26:
GuiControl,, 26State0, %ButtonFolder%Button26.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 26
reload
Return

HOTASButton27:
GuiControl,, 27State0, %ButtonFolder%Button27.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 27
Reload
Return

HOSASButton27:
GuiControl,, 27State0, %ButtonFolder%Button27.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 27
Reload
Return

HOSAS2Button27:
GuiControl,, 2702State0, %ButtonFolder%Button27.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 27
Reload
Return

ControllerButton27:
GuiControl,, 27State0, %ButtonFolder%Button27.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 27
reload
Return

HOTASButton28:
GuiControl,, 28State0, %ButtonFolder%Button28.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 28
Reload
Return

HOSASButton28:
GuiControl,, 28State0, %ButtonFolder%Button28.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 28
Reload
Return

HOSAS2Button28:
GuiControl,, 2802State0, %ButtonFolder%Button28.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 28
Reload
Return

ControllerButton28:
GuiControl,, 28State0, %ButtonFolder%Button28.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 28
reload
Return

HOTASButton29:
GuiControl,, 29State0, %ButtonFolder%Button29.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 29
Reload
Return

HOSASButton29:
GuiControl,, 29State0, %ButtonFolder%Button29.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 29
Reload
Return

HOSAS2Button29:
GuiControl,, 2902State0, %ButtonFolder%Button29.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 29
Reload
Return

ControllerButton29:
GuiControl,, 29State0, %ButtonFolder%Button29.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 29
reload
Return

HOTASButton30:
GuiControl,, 30State0, %ButtonFolder%Button30.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 30
Reload
Return

HOSASButton30:
GuiControl,, 30State0, %ButtonFolder%Button30.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 30
Reload
Return

HOSAS2Button30:
GuiControl,, 3002State0, %ButtonFolder%Button30.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 30
Reload
Return

ControllerButton30:
GuiControl,, 30State0, %ButtonFolder%Button30.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 30
reload
Return

HOTASButton31:
GuiControl,, 31State0, %ButtonFolder%Button31.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 31
Reload
Return

HOSASButton31:
GuiControl,, 31State0, %ButtonFolder%Button31.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 31
Reload
Return

HOSAS2Button31:
GuiControl,, 3102State0, %ButtonFolder%Button31.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 31
Reload
Return

ControllerButton31:
GuiControl,, 31State0, %ButtonFolder%Button31.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 31
reload
Return

HOTASButton32:
GuiControl,, 32State0, %ButtonFolder%Button32.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOTAS Button settings %ProfileNum%, Button 32
Reload
Return

HOSASButton32:
GuiControl,, 32State0, %ButtonFolder%Button32.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS Button settings %ProfileNum%, Button 32
Reload
Return

HOSAS2Button32:
GuiControl,, 3202State0, %ButtonFolder%Button32.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, HOSAS 2 Button settings %ProfileNum%, Button 32
Reload
Return

ControllerButton32:
GuiControl,, 32State0, %ButtonFolder%Button32.2.png
Sleep, 2000
IniWrite, %A_PriorKey%, %SaveFile%, Controller Button settings %ProfileNum%, Button 32
reload
Return

HOTASSave:
Gui, Submit, nohide
IniWrite, %InvertY%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Invert Y axis
IniWrite, %DeadZone%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Dead zone
IniWrite, %SensitivityAxis%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Sensitivity axis
IniWrite, %SensitivityRadio1%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Sensitivity radio position
IniWrite, %Sensitivity%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Sensitivity
IniWrite, HOTAS, %SaveFile%, Stick settings, Input Device
IniWrite, %ProfileNum%, %SaveFile%, Stick settings, Profile number
IniWrite, %DeviceNum%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Input device number
ExitApp

HOSASSave:
Gui, Submit, nohide
IniWrite, %InvertY%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Invert Y axis
IniWrite, %DeadZone%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Dead zone
IniWrite, %InvLift%, %SaveFile% , HOSAS 2 Stick settings %ProfileNum%, Invert Lift
IniWrite, %SensitivityAxis%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Sensitivity axis
IniWrite, %SensitivityRadio1%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Sensitivity radio position
IniWrite, %Sensitivity%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Sensitivity
IniWrite, HOSAS, %SaveFile%, Stick settings, Input Device
IniWrite, %DeviceNum%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Input device number
IniWrite, %Device2Num%, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Secondary Input device number
ExitApp

ControllerSave:
Gui, Submit, nohide
IniWrite, %InvertY%, %SaveFile%, Controller Stick settings %ProfileNum%, Invert Y axis
IniWrite, %DeadZone%, %SaveFile%, Controller Stick settings %ProfileNum%, Dead zone
IniWrite, %SensitivityAxis%, %SaveFile%, Controller Stick settings %ProfileNum%, Sensitivity axis
IniWrite, %SensitivityRadio1%, %SaveFile%, Controller Stick settings %ProfileNum%, Sensitivity radio position
IniWrite, %Sensitivity%, %SaveFile%, Controller Stick settings %ProfileNum%, Sensitivity
IniWrite, Controller, %SaveFile%, Stick settings, Input Device
IniWrite, %DeviceNum%, %SaveFile%, Controller Stick settings %ProfileNum%, Input device number
ExitApp

HOTASDeviceProfile:
Gui, Submit, nohide
IniWrite, %InvertY%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Invert Y axis
IniWrite, %DeadZone%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Dead zone
IniWrite, %SensitivityAxis%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Sensitivity axis
IniWrite, %SensitivityRadio1%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Sensitivity radio position
IniWrite, %Sensitivity%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Sensitivity
IniWrite, %Device%, %SaveFile%, Stick settings, Input Device
IniWrite, %ProfileNum%, %SaveFile%, Stick settings, Profile number
IniWrite, %DeviceNum%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Input device number
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
Else
    {
        Sleep, 10
    }
Return

HOSASDeviceProfile:
Gui, Submit, nohide
IniWrite, %InvertY%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Invert Y axis
IniWrite, %DeadZone%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Dead zone
IniWrite, %InvLift%, %SaveFile% , HOSAS 2 Stick settings %ProfileNum%, Invert Lift
IniWrite, %SensitivityAxis%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Sensitivity axis
IniWrite, %SensitivityRadio1%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Sensitivity radio position
IniWrite, %Sensitivity%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Sensitivity
IniWrite, %Device%, %SaveFile%, Stick settings, Input Device
IniWrite, %DeviceNum%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Input device number
IniWrite, %Device2Num%, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Secondary Input device number
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
Else
    {
        Sleep, 10
    }
Return

ControllerDeviceProfile:
Gui, Submit, nohide
IniWrite, %InvertY%, %SaveFile%, Controller Stick settings %ProfileNum%, Invert Y axis
IniWrite, %DeadZone%, %SaveFile%, Controller Stick settings %ProfileNum%, Dead zone
IniWrite, %SensitivityAxis%, %SaveFile%, Controller Stick settings %ProfileNum%, Sensitivity axis
IniWrite, %SensitivityRadio1%, %SaveFile%, Controller Stick settings %ProfileNum%, Sensitivity radio position
IniWrite, %Sensitivity%, %SaveFile%, Controller Stick settings %ProfileNum%, Sensitivity
IniWrite, %Device%, %SaveFile%, Stick settings, Input Device
IniWrite, %DeviceNum%, %SaveFile%, Controller Stick settings %ProfileNum%, Input device number
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
Else
    {
        Sleep, 10
    }
Return

HOTASDeviceProfileNum:
ProfileNumOld := ProfileNum
Gui, Submit, nohide
IniWrite, %InvertY%, %SaveFile%, HOTAS Stick settings %ProfileNumOld%, Invert Y axis
IniWrite, %DeadZone%, %SaveFile%, HOTAS Stick settings %ProfileNumOld%, Dead zone
IniWrite, %SensitivityAxis%, %SaveFile%, HOTAS Stick settings %ProfileNumOld%, Sensitivity axis
IniWrite, %SensitivityRadio1%, %SaveFile%, HOTAS Stick settings %ProfileNumOld%, Sensitivity radio position
IniWrite, %Sensitivity%, %SaveFile%, HOTAS Stick settings %ProfileNumOld%, Sensitivity
IniWrite, %DeviceNum%, %SaveFile%, HOTAS Stick settings %ProfileNumOld%, Input device number
IniWrite, %ProfileNum%, %SaveFile%, Stick settings, Profile number
Gosub, HOTAS
Return

HOSASDeviceProfileNum:
ProfileNumOld := ProfileNum
Gui, Submit, nohide
IniWrite, %InvertY%, %SaveFile%, HOSAS Stick settings %ProfileNumOld%, Invert Y axis
IniWrite, %DeadZone%, %SaveFile%, HOSAS Stick settings %ProfileNumOld%, Dead zone
IniWrite, %InvLift%, %SaveFile% , HOSAS 2 Stick settings %ProfileNumOld%, Invert Lift
IniWrite, %SensitivityAxis%, %SaveFile%, HOSAS Stick settings %ProfileNumOld%, Sensitivity axis
IniWrite, %SensitivityRadio1%, %SaveFile%, HOSAS Stick settings %ProfileNumOld%, Sensitivity radio position
IniWrite, %Sensitivity%, %SaveFile%, HOSAS Stick settings %ProfileNumOld%, Sensitivity
IniWrite, %DeviceNum%, %SaveFile%, HOSAS Stick settings %ProfileNumOld%, Input device number
IniWrite, %Device2Num%, %SaveFile%, HOSAS 2 Stick settings %ProfileNumOld%, Secondary Input device number
IniWrite, %ProfileNum%, %SaveFile%, Stick settings, Profile number
Gosub, HOSAS
Return

ControllerDeviceProfileNum:
ProfileNumOld := ProfileNum
Gui, Submit, nohide
IniWrite, %InvertY%, %SaveFile%, HOTAS Stick settings %ProfileNumOld%, Invert Y axis
IniWrite, %DeadZone%, %SaveFile%, HOTAS Stick settings %ProfileNumOld%, Dead zone
IniWrite, %SensitivityAxis%, %SaveFile%, HOTAS Stick settings %ProfileNumOld%, Sensitivity axis
IniWrite, %SensitivityRadio1%, %SaveFile%, HOTAS Stick settings %ProfileNumOld%, Sensitivity radio position
IniWrite, %Sensitivity%, %SaveFile%, HOTAS Stick settings %ProfileNumOld%, Sensitivity
IniWrite, %DeviceNum%, %SaveFile%, HOTAS Stick settings %ProfileNumOld%, Input device number
IniWrite, %ProfileNum%, %SaveFile%, Stick settings, Profile number
Gosub, Controller
Return

HOTASAxis:
IniRead, Pitch, %SaveFile%, HOTAS Stick settings %ProfileNum%, Pitch axis
IniRead, Yaw, %SaveFile%, HOTAS Stick settings %ProfileNum%, Yaw axis
IniRead, Roll, %SaveFile%, HOTAS Stick settings %ProfileNum%, Roll axis
IniRead, Throttle, %SaveFile%, HOTAS Stick settings %ProfileNum%, Throttle axis
IniRead, Lift, %SaveFile%, HOTAS Stick settings %ProfileNum%, Lift axis
Gui, 3:New
Gui, 3:Font, s14 cFFFFFF
Gui, 3:Add, Text, x20 y20, Pitch:
Gui, 3:Font, s12 c222222
Gui, 3:Add, Edit, center x++20 w50 vPitch, %Pitch%
Gui, 3:Font, s14 cFFFFFF
Gui, 3:Add, Text, x20 y++40, Yaw:
Gui, 3:Font, s12 c222222
Gui, 3:Add, Edit, center x++20 w50 vYaw, %Yaw%
Gui, 3:Font, s14 cFFFFFF
Gui, 3:Add, Text, x20 y++40, Roll:
Gui, 3:Font, s12 c222222
Gui, 3:Add, Edit, center x++20 w50 vRoll, %Roll%
Gui, 3:Font, s14 cFFFFFF
Gui, 3:Add, Text, x20 y++40, Throttle:
Gui, 3:Font, s12 c222222
Gui, 3:Add, Edit, center x++20 w50 vThrottle, %Throttle%
Gui, 3:Font, s14 cFFFFFF
Gui, 3:Add, Text, x20 y++40, Lift:
Gui, 3:Font, s12 c222222
Gui, 3:Add, Edit, center x++20 w50 vLift, %Lift%
Gui, 3:Add, Button, x50 y++30 w80 h20 gSaveHOTASAxis, Save
Gui, 3:+AlwaysOnTop
Gui, 3:Color, 222222
Gui, 3:Show, w180 h390, HOTAS Axis Controls
Return

HOSASAxis:
IniRead, Pitch, %SaveFile%, HOSAS Stick settings %ProfileNum%, Pitch axis
IniRead, Yaw, %SaveFile%, HOSAS Stick settings %ProfileNum%, Yaw axis
IniRead, Roll, %SaveFile%, HOSAS Stick settings %ProfileNum%, Roll axis
IniRead, Throttle, %SaveFile%, HOSAS Stick settings %ProfileNum%, Throttle axis
IniRead, Lift, %SaveFile%, HOSAS Stick settings %ProfileNum%, Lift axis
IniRead, PitchStick, %SaveFile%, HOSAS Stick settings %ProfileNum%, Pitch device
IniRead, YawStick, %SaveFile%, HOSAS Stick settings %ProfileNum%, Yaw device
IniRead, RollStick, %SaveFile%, HOSAS Stick settings %ProfileNum%, Roll device
IniRead, ThrottleStick, %SaveFile%, HOSAS Stick settings %ProfileNum%, Throttle device
IniRead, LiftStick, %SaveFile%, HOSAS Stick settings %ProfileNum%, Lift device
IniRead, Pitch2, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Pitch axis
IniRead, Yaw2, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Yaw axis
IniRead, Roll2, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Roll axis
IniRead, Throttle2, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Throttle axis
IniRead, Lift2, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Lift axis
if PitchStick = 1
    {
        PitchStick2 = 0
    }
else
    {
        PitchStick2 = 1
    }
if YawStick = 1
    {
        YawStick2 = 0
    }
else
    {
        YawStick2 = 1
    }
if RollStick = 1
    {
        RollStick2 = 0
    }
else
    {
        RollStick2 = 1
    }
if ThrottleStick = 1
    {
        ThrottleStick2 = 0
    }
else
    {
        ThrottleStick2 = 1
    }
if LiftStick = 1
    {
        LiftStick2 = 0
    }
else
    {
        LiftStick2 = 1
    }
Gui, 4:New
Gui, 4:Font, s14 cFFFFFF
Gui, 4:Add, Text, x20 y20, Pitch:
Gui, 4:Add, Radio, x120 y20 Checked%PitchStick% vPitchStick, Left
Gui, 4:Add, Radio, x240 y20 Checked%PitchStick2%, Right
Gui, 4:Font, s12 c222222
Gui, 4:Add, Edit, center x120 y50 w75 vPitch2, %Pitch2%
Gui, 4:Add, Edit, center x240 y50 w75 vPitch, %Pitch%
Gui, 4:Font, s14 cFFFFFF
Gui, 4:Add, Text, x20 y100, Yaw:
Gui, 4:Add, Radio, x120 y100 Checked%YawStick% vYawStick, Left
Gui, 4:Add, Radio, x240 y100 Checked%YawStick2%, Right
Gui, 4:Font, s12 c222222
Gui, 4:Add, Edit, center x120 y130 w75 vYaw2, %Yaw2%
Gui, 4:Add, Edit, center x240 y130 w75 vYaw, %Yaw%
Gui, 4:Font, s14 cFFFFFF
Gui, 4:Add, Text, x20 y180, Roll:
Gui, 4:Add, Radio, x120 y180 Checked%RollStick% vRollStick, Left
Gui, 4:Add, Radio, x240 y180 Checked%RollStick2%, Right
Gui, 4:Font, s12 c222222
Gui, 4:Add, Edit, center x120 y210 w75 vRoll2, %Roll2%
Gui, 4:Add, Edit, center x240 y210 w75 vRoll, %Roll%
Gui, 4:Font, s14 cFFFFFF
Gui, 4:Add, Text, x20 y260, Throttle:
Gui, 4:Add, Radio, x120 y260 Checked%ThrottleStick% vThrottleStick, Left
Gui, 4:Add, Radio, x240 y260 Checked%ThrottleStick2%, Right
Gui, 4:Font, s12 c222222
Gui, 4:Add, Edit, center x120 y290 w75 vThrottle2, %Throttle2%
Gui, 4:Add, Edit, center x240 y290 w75 vThrottle, %Throttle%
Gui, 4:Font, s14 cFFFFFF
Gui, 4:Add, Text, x20 y340, Lift:
Gui, 4:Add, Radio, x120 y340 Checked%LiftStick% vLiftStick, Left
Gui, 4:Add, Radio, x240 y340 Checked%LiftStick2%, Right
Gui, 4:Font, s12 c222222
Gui, 4:Add, Edit, center x120 y370 w75 vLift2, %Lift2%
Gui, 4:Add, Edit, center x240 y370 w75 vLift, %Lift%
Gui, 4:Add, Button, x140 y++30 w80 h30 gSaveHOSASAxis, Save
Gui, 4:+AlwaysOnTop
Gui, 4:Color, 222222
Gui, 4:Show, w360 h480, HOSAS Axis Controls
Return

ControllerAxis:
IniRead, Pitch, %SaveFile%, Controller Stick settings %ProfileNum%, Pitch axis
IniRead, Yaw, %SaveFile%, Controller Stick settings %ProfileNum%, Yaw axis
IniRead, Roll, %SaveFile%, Controller Stick settings %ProfileNum%, Roll axis
IniRead, Throttle, %SaveFile%, Controller Stick settings %ProfileNum%, Throttle axis
IniRead, Lift, %SaveFile%, Controller Stick settings %ProfileNum%, Lift axis
Gui, 5:New
Gui, 5:Font, s14 cFFFFFF
Gui, 5:Add, Text, x20 y20, Pitch:
Gui, 5:Font, s12 c222222
Gui, 5:Add, Edit, center x++20 w50 vPitch, %Pitch%
Gui, 5:Font, s14 cFFFFFF
Gui, 5:Add, Text, x20 y++40, Yaw:
Gui, 5:Font, s12 c222222
Gui, 5:Add, Edit, center x++20 w50 vYaw, %Yaw%
Gui, 5:Font, s14 cFFFFFF
Gui, 5:Add, Text, x20 y++40, Roll:
Gui, 5:Font, s12 c222222
Gui, 5:Add, Edit, center x++20 w50 vRoll, %Roll%
Gui, 5:Font, s14 cFFFFFF
Gui, 5:Add, Text, x20 y++40, Throttle:
Gui, 5:Font, s12 c222222
Gui, 5:Add, Edit, center x++20 w50 vThrottle, %Throttle%
Gui, 5:Font, s14 cFFFFFF
Gui, 5:Add, Text, x20 y++40, Lift:
Gui, 5:Font, s12 c222222
Gui, 5:Add, Edit, center x++20 w50 vLift, %Lift%
Gui, 5:Add, Button, gSaveControllerAxis, Save
Gui, 5:+AlwaysOnTop
Gui, 5:Color, 222222
Gui, 5:Show, w180 h340, Controller Axis Controls
Return

SaveHOTASAxis:
Gui, 3:Submit, nohide
IniWrite, %Pitch%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Pitch axis
IniWrite, %Yaw%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Yaw axis
IniWrite, %Roll%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Roll axis
IniWrite, %Throttle%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Throttle axis
IniWrite, %Lift%, %SaveFile%, HOTAS Stick settings %ProfileNum%, Lift axis
Gui, 3:Destroy
Return

SaveHOSASAxis:
Gui, 4:Submit, nohide
IniWrite, %Pitch%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Pitch axis
IniWrite, %Yaw%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Yaw axis
IniWrite, %Roll%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Roll axis
IniWrite, %Throttle%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Throttle axis
IniWrite, %Lift%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Lift axis
IniWrite, %PitchStick%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Pitch device
IniWrite, %YawStick%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Yaw device
IniWrite, %RollStick%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Roll device
IniWrite, %ThrottleStick%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Throttle device
IniWrite, %LiftStick%, %SaveFile%, HOSAS Stick settings %ProfileNum%, Lift device
IniWrite, %Pitch2%, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Pitch axis
IniWrite, %Yaw2%, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Yaw axis
IniWrite, %Roll2%, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Roll axis
IniWrite, %Throttle2%, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Throttle axis
IniWrite, %Lift2%, %SaveFile%, HOSAS 2 Stick settings %ProfileNum%, Lift axis
Gui, 4:Destroy
Return

SaveControllerAxis:
Gui, 5:Submit, nohide
IniWrite, %Pitch%, %SaveFile%, Controller Stick settings %ProfileNum%, Pitch axis
IniWrite, %Yaw%, %SaveFile%, Controller Stick settings %ProfileNum%, Yaw axis
IniWrite, %Roll%, %SaveFile%, Controller Stick settings %ProfileNum%, Roll axis
IniWrite, %Throttle%, %SaveFile%, Controller Stick settings %ProfileNum%, Throttle axis
IniWrite, %Lift%, %SaveFile%, Controller Stick settings %ProfileNum%, Lift axis
Gui, 5:Destroy
Return

Buttons:
if (A_ScreenWidth) < (A_ScreenHeight / 0.59)
    {
        MsgBox, 1
        Height := A_ScreenWidth * 0.59
        Gui, 2:New
        Gui, 2:Add, Picture, gCloseControls x0 y0 w%A_ScreenWidth% h-1, %SaveFolder%Button_List.png
        Gui, 2:+AlwaysOnTop
        Gui, 2:Color, 222222
        Gui, 2:Show, w%A_ScreenWidth% h%Height%, Showroom Controls
    }
Else
    {
        MsgBox, 2
        Width := A_ScreenHeight / 0.59
        Gui, 2:New
        Gui, 2:Add, Picture, gCloseControls x0 y0 w%Width% h-1, %SaveFolder%Button_List.png
        Gui, 2:+AlwaysOnTop
        Gui, 2:Color, 222222
        Gui, 2:Show, w%Width% h%A_ScreenHeight%, Showroom Controls
    }
Return

CloseControls:
Gui, 2:Destroy
Return

F1::
IfWinActive, ahk_id %GuiID%
Cycle1:
ControlClick, Button1, ahk_id %GuiID%
ControlClick, Button2, ahk_id %GuiID%
Return

RandBG:
Random, Rand, 1, %BGNum%
Gui, New
GUI, Add, Picture, hwndpic, %BackgroundFolder%%Rand%.jpg
ControlGetPos,,, ImgWidth, ImgHeight,, ahk_id %pic%
Gui, Destroy
PicHeight := (GuiWidth / ImgWidth) * ImgHeight
GuiControl,, BG, %BackgroundFolder%%Rand%.jpg
GuiControl, MoveDraw, BG, x0 y0 w%GuiWidth% h%PicHeight%
Gosub, Cycle2

Move:
GuiControl, MoveDraw, BG, x0 y0 w%GuiWidth% h%PicHeight%
GuiControl,, BG, %BackgroundFolder%%Rand%.jpg
Return

Cycle2:
ControlClick, Button1, ahk_id %GuiID%
Return

WM_MOUSEMOVE(wParam,lParam)
{
    Global hCurs 
    MouseGetPos,,,,ctrl 
    IfInString ctrl, Static1
    DllCall("SetCursor","UInt",hCurs) 
    IfInString ctrl, Button
    DllCall("SetCursor","UInt",hCurs) 
    IfInString ctrl, Combo
    DllCall("SetCursor","UInt",hCurs) 
    Return 
}

DeviceInfo:
Run, Device_info.exe
Return

GuiClose:
ExitApp