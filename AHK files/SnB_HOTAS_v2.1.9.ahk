#SingleInstance Force
#Persistent
#NoEnv
Menu Tray, NoStandard
Menu Tray, Add, Pause, TrayPause
Menu Tray, Add, Settings, TraySetup
Menu Tray, Add, Reload, TrayReload
Menu Tray, Add, Exit, TrayExit
SetTimer, Sensitivity, Off
SetTimer, Throttle, Off
SetTimer, ThrottleWheelForward, Off
SetTimer, ThrottleWheelReverse, Off
SetTimer, WatchJoystick, Off
SetTimer, HOTASWatchPOV, Off
SetTimer, Roll, Off
SetTimer, ControllerWatchPOV, Off
SetTimer, HOSASStrafe, Off
SetTimer, Lift, Off
SetTimer, HOSASWatchPOV, Off
CoordMode, Mouse, Screen
SaveFile := A_ScriptDir . "\Data\Parameters.ini"
Sleep, 5000
IniRead, Device, %SaveFile%, Stick settings, Input Device
IniRead, ProfileNum, %SaveFile%, Stick settings, Profile number
if Device = HOTAS
    {
        IniRead, Button1, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 1
        IniRead, Button2, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 2
        IniRead, Button3, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 3
        IniRead, Button4, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 4
        IniRead, Button5, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 5
        IniRead, Button6, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 6
        IniRead, Button7, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 7
        IniRead, Button8, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 8
        IniRead, Button9, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 9
        IniRead, Button10, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 10
        IniRead, Button11, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 11
        IniRead, Button12, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 12
        IniRead, Button13, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 13
        IniRead, Button14, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 14
        IniRead, Button15, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 15
        IniRead, Button16, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 16
        IniRead, Button17, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 17
        IniRead, Button18, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 18
        IniRead, Button19, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 19
        IniRead, Button20, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 20
        IniRead, Button21, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 21
        IniRead, Button22, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 22
        IniRead, Button23, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 23
        IniRead, Button24, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 24
        IniRead, Button25, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 25
        IniRead, Button26, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 26
        IniRead, Button27, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 27
        IniRead, Button28, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 28
        IniRead, Button29, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 29
        IniRead, Button30, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 30
        IniRead, Button31, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 31
        IniRead, Button32, %SaveFile% , HOTAS Button settings %ProfileNum%, Button 32
        IniRead, InvertY, %SaveFile% , HOTAS Stick settings %ProfileNum%, Invert Y axis
        IniRead, DeadZone, %SaveFile% , HOTAS Stick settings %ProfileNum%, Dead zone
        IniRead, Pitch, %SaveFile%, HOTAS Stick settings %ProfileNum%, Pitch axis
        IniRead, Yaw, %SaveFile%, HOTAS Stick settings %ProfileNum%, Yaw axis
        IniRead, Roll, %SaveFile%, HOTAS Stick settings %ProfileNum%, Roll axis
        IniRead, Throttle, %SaveFile%, HOTAS Stick settings %ProfileNum%, Throttle axis
        IniRead, Lift, %SaveFile%, HOTAS Stick settings %ProfileNum%, Lift axis
        IniRead, SensitivityAxis, %SaveFile% , HOTAS Stick settings %ProfileNum%, Sensitivity axis
        IniRead, SensitivityRadio1, %SaveFile% , HOTAS Stick settings %ProfileNum%, Sensitivity radio position
        IniRead, Sensitivity, %SaveFile% , HOTAS Stick settings %ProfileNum%, Sensitivity
        IniRead, DeviceNum, %SaveFile%, HOTAS Stick settings %ProfileNum%, Input device number
        Hotkey, %DeviceNum%Joy1, RStick1
        Hotkey, %DeviceNum%Joy2, RStick2
        Hotkey, %DeviceNum%Joy3, RStick3
        Hotkey, %DeviceNum%Joy4, RStick4
        Hotkey, %DeviceNum%Joy5, RStick5
        Hotkey, %DeviceNum%Joy6, RStick6
        Hotkey, %DeviceNum%Joy7, RStick7
        Hotkey, %DeviceNum%Joy8, RStick8
        Hotkey, %DeviceNum%Joy9, RStick9
        Hotkey, %DeviceNum%Joy10, RStick10
        Hotkey, %DeviceNum%Joy11, RStick11
        Hotkey, %DeviceNum%Joy12, RStick12
        Hotkey, %DeviceNum%Joy13, RStick13
        Hotkey, %DeviceNum%Joy14, RStick14
        Hotkey, %DeviceNum%Joy15, RStick15
        Hotkey, %DeviceNum%Joy16, RStick16
        Hotkey, %DeviceNum%Joy17, RStick17
        Hotkey, %DeviceNum%Joy18, RStick18
        Hotkey, %DeviceNum%Joy19, RStick19
        Hotkey, %DeviceNum%Joy20, RStick20
        Hotkey, %DeviceNum%Joy21, RStick21
        Hotkey, %DeviceNum%Joy22, RStick22
        Hotkey, %DeviceNum%Joy23, RStick23
        Hotkey, %DeviceNum%Joy24, RStick24
        Hotkey, %DeviceNum%Joy25, RStick25
        Hotkey, %DeviceNum%Joy26, RStick26
        Hotkey, %DeviceNum%Joy27, RStick27
        Hotkey, %DeviceNum%Joy28, RStick28
        Hotkey, %DeviceNum%Joy29, RStick29
        Hotkey, %DeviceNum%Joy30, RStick30
        Hotkey, %DeviceNum%Joy31, RStick31
        Hotkey, %DeviceNum%Joy32, RStick32
        PitchDeviceNum := DeviceNum
        YawDeviceNum := DeviceNum
        RollDeviceNum := DeviceNum
        ThrottleDeviceNum := DeviceNum
        LiftDeviceNum := DeviceNum
        SetKeyDelay -1
        JoyThreshold := DeadZone
        JoyMultiplier := Sensitivity / 10
        JoyThresholdUpper := 50 + JoyThreshold
        JoyThresholdLower := 50 - JoyThreshold
        SetTimer, Sensitivity, Off
        if SensitivityRadio1 = 1
          {
            SetTimer, Sensitivity, 300
          }
        SetTimer, Throttle, 100
        SetTimer, ThrottleWheelForward, 50
        SetTimer, ThrottleWheelReverse, 50
        SetTimer, WatchJoystick, 5
        SetTimer, HOTASWatchPOV, 100
        SetTimer, Roll, 100
        SetTimer, ControllerWatchPOV, Off
        SetTimer, HOSASStrafe, Off
        SetTimer, Lift, Off
        SetTimer, HOSASWatchPOV, Off
        if InvertY = 0
          {
            InvertYAxis := 1
          }
        else
          {
            InvertYAxis := -1
          }
        return
    }
else if Device = HOSAS
    {
        IniRead, Button1, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 1
        IniRead, Button2, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 2
        IniRead, Button3, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 3
        IniRead, Button4, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 4
        IniRead, Button5, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 5
        IniRead, Button6, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 6
        IniRead, Button7, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 7
        IniRead, Button8, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 8
        IniRead, Button9, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 9
        IniRead, Button10, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 10
        IniRead, Button11, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 11
        IniRead, Button12, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 12
        IniRead, Button13, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 13
        IniRead, Button14, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 14
        IniRead, Button15, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 15
        IniRead, Button16, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 16
        IniRead, Button17, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 17
        IniRead, Button18, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 18
        IniRead, Button19, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 19
        IniRead, Button20, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 20
        IniRead, Button21, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 21
        IniRead, Button22, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 22
        IniRead, Button23, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 23
        IniRead, Button24, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 24
        IniRead, Button25, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 25
        IniRead, Button26, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 26
        IniRead, Button27, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 27
        IniRead, Button28, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 28
        IniRead, Button29, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 29
        IniRead, Button30, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 30
        IniRead, Button31, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 31
        IniRead, Button32, %SaveFile% , HOSAS Button settings %ProfileNum%, Button 32
        IniRead, 2Button1, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 1
        IniRead, 2Button2, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 2
        IniRead, 2Button3, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 3
        IniRead, 2Button4, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 4
        IniRead, 2Button5, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 5
        IniRead, 2Button6, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 6
        IniRead, 2Button7, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 7
        IniRead, 2Button8, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 8
        IniRead, 2Button9, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 9
        IniRead, 2Button10, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 10
        IniRead, 2Button11, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 11
        IniRead, 2Button12, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 12
        IniRead, 2Button13, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 13
        IniRead, 2Button14, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 14
        IniRead, 2Button15, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 15
        IniRead, 2Button16, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 16
        IniRead, 2Button17, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 17
        IniRead, 2Button18, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 18
        IniRead, 2Button19, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 19
        IniRead, 2Button20, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 20
        IniRead, 2Button21, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 21
        IniRead, 2Button22, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 22
        IniRead, 2Button23, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 23
        IniRead, 2Button24, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 24
        IniRead, 2Button25, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 25
        IniRead, 2Button26, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 26
        IniRead, 2Button27, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 27
        IniRead, 2Button28, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 28
        IniRead, 2Button29, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 29
        IniRead, 2Button30, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 30
        IniRead, 2Button31, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 31
        IniRead, 2Button32, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button 32
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
        SetKeyDelay -1
        JoyThreshold := DeadZone
        JoyMultiplier := Sensitivity / 10
        JoyThresholdUpper := 50 + JoyThreshold
        JoyThresholdLower := 50 - JoyThreshold
        SetTimer, Sensitivity, Off
        if SensitivityRadio1 = 1
          {
            SetTimer, Sensitivity, 300
          }
        SetTimer, Throttle, 100
        SetTimer, ThrottleWheelForward, 50
        SetTimer, ThrottleWheelReverse, 50
        SetTimer, HOSASStrafe, 100
        SetTimer, Lift, 100
        SetTimer, WatchJoystick, 5
        SetTimer, HOSASWatchPOV, 100
        SetTimer, Roll, 100
        SetTimer, HOTASWatchPOV, Off
        SetTimer, ControllerWatchPOV, Off
        Hotkey, %DeviceNum%Joy1, RStick1
        Hotkey, %DeviceNum%Joy2, RStick2
        Hotkey, %DeviceNum%Joy3, RStick3
        Hotkey, %DeviceNum%Joy4, RStick4
        Hotkey, %DeviceNum%Joy5, RStick5
        Hotkey, %DeviceNum%Joy6, RStick6
        Hotkey, %DeviceNum%Joy7, RStick7
        Hotkey, %DeviceNum%Joy8, RStick8
        Hotkey, %DeviceNum%Joy9, RStick9
        Hotkey, %DeviceNum%Joy10, RStick10
        Hotkey, %DeviceNum%Joy11, RStick11
        Hotkey, %DeviceNum%Joy12, RStick12
        Hotkey, %DeviceNum%Joy13, RStick13
        Hotkey, %DeviceNum%Joy14, RStick14
        Hotkey, %DeviceNum%Joy15, RStick15
        Hotkey, %DeviceNum%Joy16, RStick16
        Hotkey, %DeviceNum%Joy17, RStick17
        Hotkey, %DeviceNum%Joy18, RStick18
        Hotkey, %DeviceNum%Joy19, RStick19
        Hotkey, %DeviceNum%Joy20, RStick20
        Hotkey, %DeviceNum%Joy21, RStick21
        Hotkey, %DeviceNum%Joy22, RStick22
        Hotkey, %DeviceNum%Joy23, RStick23
        Hotkey, %DeviceNum%Joy24, RStick24
        Hotkey, %DeviceNum%Joy25, RStick25
        Hotkey, %DeviceNum%Joy26, RStick26
        Hotkey, %DeviceNum%Joy27, RStick27
        Hotkey, %DeviceNum%Joy28, RStick28
        Hotkey, %DeviceNum%Joy29, RStick29
        Hotkey, %DeviceNum%Joy30, RStick30
        Hotkey, %DeviceNum%Joy31, RStick31
        Hotkey, %DeviceNum%Joy32, RStick32
        Hotkey, %Device2Num%Joy1, LStick1
        Hotkey, %Device2Num%Joy2, LStick2
        Hotkey, %Device2Num%Joy3, LStick3
        Hotkey, %Device2Num%Joy4, LStick4
        Hotkey, %Device2Num%Joy5, LStick5
        Hotkey, %Device2Num%Joy6, LStick6
        Hotkey, %Device2Num%Joy7, LStick7
        Hotkey, %Device2Num%Joy8, LStick8
        Hotkey, %Device2Num%Joy9, LStick9
        Hotkey, %Device2Num%Joy10, LStick10
        Hotkey, %Device2Num%Joy11, LStick11
        Hotkey, %Device2Num%Joy12, LStick12
        Hotkey, %Device2Num%Joy13, LStick13
        Hotkey, %Device2Num%Joy14, LStick14
        Hotkey, %Device2Num%Joy15, LStick15
        Hotkey, %Device2Num%Joy16, LStick16
        Hotkey, %Device2Num%Joy17, LStick17
        Hotkey, %Device2Num%Joy18, LStick18
        Hotkey, %Device2Num%Joy19, LStick19
        Hotkey, %Device2Num%Joy20, LStick20
        Hotkey, %Device2Num%Joy21, LStick21
        Hotkey, %Device2Num%Joy22, LStick22
        Hotkey, %Device2Num%Joy23, LStick23
        Hotkey, %Device2Num%Joy24, LStick24
        Hotkey, %Device2Num%Joy25, LStick25
        Hotkey, %Device2Num%Joy26, LStick26
        Hotkey, %Device2Num%Joy27, LStick27
        Hotkey, %Device2Num%Joy28, LStick28
        Hotkey, %Device2Num%Joy29, LStick29
        Hotkey, %Device2Num%Joy30, LStick30
        Hotkey, %Device2Num%Joy31, LStick31
        Hotkey, %Device2Num%Joy32, LStick32
        if PitchStick = 0
          {
            PitchDeviceNum := DeviceNum
          }
        else
          {
            PitchDeviceNum := Device2Num
          }
        if YawStick = 0
          {
            YawDeviceNum := DeviceNum
          }
        else
          {
            YawDeviceNum := Device2Num
          }
        if RollStick = 0
          {
            RollDeviceNum := DeviceNum
          }
        else
          {
            RollDeviceNum := Device2Num
          }
        if ThrottleStick = 0
          {
            ThrottleDeviceNum := DeviceNum
          }
        else
          {
            ThrottleDeviceNum := Device2Num
          }
        if LiftStick = 0
          {
            LiftDeviceNum := DeviceNum
          }
        else
          {
            LiftDeviceNum := Device2Num
          }
        if InvertY = 0
          {
            InvertYAxis := 1
          }
        else
          {
            InvertYAxis := -1
          }
        return                
    }
else if Device = Controller
    {
        IniRead, Button1, %SaveFile% , Controller Button settings %ProfileNum%, Button 1
        IniRead, Button2, %SaveFile% , Controller Button settings %ProfileNum%, Button 2
        IniRead, Button3, %SaveFile% , Controller Button settings %ProfileNum%, Button 3
        IniRead, Button4, %SaveFile% , Controller Button settings %ProfileNum%, Button 4
        IniRead, Button5, %SaveFile% , Controller Button settings %ProfileNum%, Button 5
        IniRead, Button6, %SaveFile% , Controller Button settings %ProfileNum%, Button 6
        IniRead, Button7, %SaveFile% , Controller Button settings %ProfileNum%, Button 7
        IniRead, Button8, %SaveFile% , Controller Button settings %ProfileNum%, Button 8
        IniRead, Button9, %SaveFile% , Controller Button settings %ProfileNum%, Button 9
        IniRead, Button10, %SaveFile% , Controller Button settings %ProfileNum%, Button 10
        IniRead, Button11, %SaveFile% , Controller Button settings %ProfileNum%, Button 11
        IniRead, Button12, %SaveFile% , Controller Button settings %ProfileNum%, Button 12
        IniRead, Button13, %SaveFile% , Controller Button settings %ProfileNum%, Button 13
        IniRead, Button14, %SaveFile% , Controller Button settings %ProfileNum%, Button 14
        IniRead, Button15, %SaveFile% , Controller Button settings %ProfileNum%, Button 15
        IniRead, Button16, %SaveFile% , Controller Button settings %ProfileNum%, Button 16
        IniRead, Button17, %SaveFile% , Controller Button settings %ProfileNum%, Button 17
        IniRead, Button18, %SaveFile% , Controller Button settings %ProfileNum%, Button 18
        IniRead, Button19, %SaveFile% , Controller Button settings %ProfileNum%, Button 19
        IniRead, Button20, %SaveFile% , Controller Button settings %ProfileNum%, Button 20
        IniRead, Button21, %SaveFile% , Controller Button settings %ProfileNum%, Button 21
        IniRead, Button22, %SaveFile% , Controller Button settings %ProfileNum%, Button 22
        IniRead, Button23, %SaveFile% , Controller Button settings %ProfileNum%, Button 23
        IniRead, Button24, %SaveFile% , Controller Button settings %ProfileNum%, Button 24
        IniRead, Button25, %SaveFile% , Controller Button settings %ProfileNum%, Button 25
        IniRead, Button26, %SaveFile% , Controller Button settings %ProfileNum%, Button 26
        IniRead, Button27, %SaveFile% , Controller Button settings %ProfileNum%, Button 27
        IniRead, Button28, %SaveFile% , Controller Button settings %ProfileNum%, Button 28
        IniRead, Button29, %SaveFile% , Controller Button settings %ProfileNum%, Button 29
        IniRead, Button30, %SaveFile% , Controller Button settings %ProfileNum%, Button 30
        IniRead, Button31, %SaveFile% , Controller Button settings %ProfileNum%, Button 31
        IniRead, Button32, %SaveFile% , Controller Button settings %ProfileNum%, Button 32
        IniRead, InvertY, %SaveFile% , Controller Stick settings %ProfileNum%, Invert Y axis
        IniRead, DeadZone, %SaveFile% , Controller Stick settings %ProfileNum%, Dead zone
        IniRead, Pitch, %SaveFile%, Controller Stick settings %ProfileNum%, Pitch axis
        IniRead, Yaw, %SaveFile%, Controller Stick settings %ProfileNum%, Yaw axis
        IniRead, Roll, %SaveFile%, Controller Stick settings %ProfileNum%, Roll axis
        IniRead, Throttle, %SaveFile%, Controller Stick settings %ProfileNum%, Throttle axis
        IniRead, Lift, %SaveFile%, Controller Stick settings %ProfileNum%, Lift axis
        IniRead, SensitivityAxis, %SaveFile% , Controller Stick settings %ProfileNum%, Sensitivity axis
        IniRead, SensitivityRadio1, %SaveFile% , Controller Stick settings %ProfileNum%, Sensitivity radio position
        IniRead, Sensitivity, %SaveFile% , Controller Stick settings %ProfileNum%, Sensitivity
        IniRead, DeviceNum, %SaveFile%, Controller Stick settings %ProfileNum%, Input device number
        Hotkey, %DeviceNum%Joy1, RStick1
        Hotkey, %DeviceNum%Joy2, RStick2
        Hotkey, %DeviceNum%Joy3, RStick3
        Hotkey, %DeviceNum%Joy4, RStick4
        Hotkey, %DeviceNum%Joy5, RStick5
        Hotkey, %DeviceNum%Joy6, RStick6
        Hotkey, %DeviceNum%Joy7, RStick7
        Hotkey, %DeviceNum%Joy8, RStick8
        Hotkey, %DeviceNum%Joy9, RStick9
        Hotkey, %DeviceNum%Joy10, RStick10
        Hotkey, %DeviceNum%Joy11, RStick11
        Hotkey, %DeviceNum%Joy12, RStick12
        Hotkey, %DeviceNum%Joy13, RStick13
        Hotkey, %DeviceNum%Joy14, RStick14
        Hotkey, %DeviceNum%Joy15, RStick15
        Hotkey, %DeviceNum%Joy16, RStick16
        Hotkey, %DeviceNum%Joy17, RStick17
        Hotkey, %DeviceNum%Joy18, RStick18
        Hotkey, %DeviceNum%Joy19, RStick19
        Hotkey, %DeviceNum%Joy20, RStick20
        Hotkey, %DeviceNum%Joy21, RStick21
        Hotkey, %DeviceNum%Joy22, RStick22
        Hotkey, %DeviceNum%Joy23, RStick23
        Hotkey, %DeviceNum%Joy24, RStick24
        Hotkey, %DeviceNum%Joy25, RStick25
        Hotkey, %DeviceNum%Joy26, RStick26
        Hotkey, %DeviceNum%Joy27, RStick27
        Hotkey, %DeviceNum%Joy28, RStick28
        Hotkey, %DeviceNum%Joy29, RStick29
        Hotkey, %DeviceNum%Joy30, RStick30
        Hotkey, %DeviceNum%Joy31, RStick31
        Hotkey, %DeviceNum%Joy32, RStick32
        PitchDeviceNum := DeviceNum
        YawDeviceNum := DeviceNum
        RollDeviceNum := DeviceNum
        ThrottleDeviceNum := DeviceNum
        LiftDeviceNum := DeviceNum
        SetKeyDelay -1
        JoyThreshold := DeadZone
        JoyMultiplier := Sensitivity / 10
        JoyThresholdUpper := 50 + JoyThreshold
        JoyThresholdLower := 50 - JoyThreshold
        SetTimer, Sensitivity, Off
        if SensitivityRadio1 = 1
          {
            SetTimer, Sensitivity, 300
          }
        SetTimer, Throttle, 100
        SetTimer, ThrottleWheelForward, 50
        SetTimer, ThrottleWheelReverse, 50
        SetTimer, WatchJoystick, 5
        SetTimer, ControllerWatchPOV, 100
        SetTimer, Roll, 100
        SetTimer, HOSASStrafe, Off
        SetTimer, Lift, Off
        SetTimer, HOSASWatchPOV, Off
        SetTimer, HOTASWatchPOV, Off
        if InvertY = 0
          {
            InvertYAxis := 1
          }
        else
          {
            InvertYAxis := -1
          }
        return
    }
else
    {
        Gui, New
        Gui, Font, s15
        Gui, Add, Button, default x25 y25 w100 h50 gHOTAS, HOTAS
        Gui, Add, Button, x++10 w100 h50 gHOSAS, HOSAS
        Gui, Add, Button, x++10 w100 h50 gController, Controller
        Gui, +AlwaysOnTop
        Gui, Color, 222222
        Gui, Show, w370 h100, Device
        Return
    }
Return

HOTAS:
Device = HOTAS
Gui, Submit
WinClose
IniWrite, HOTAS, %SaveFile%, Stick settings, Input Device
Reload

HOSAS:
Device = HOSAS
Gui, Submit
WinClose
IniWrite, HOSAS, %SaveFile%, Stick settings, Input Device
Reload

Controller:
Device = Controller
Gui, Submit
WinClose
IniWrite, Controller, %SaveFile%, Stick settings, Input Device
Reload

Sensitivity:
GetKeyState, Slider, Joy%SensitivityAxis%
JoyMultiplier := Slider / 100
Return

Throttle:
GetKeyState, Joyz, %ThrottleDeviceNum%Joy%Throttle%
ThrottleKeyPrev = %ThrottleKey%
if Joyz > 57
  {
    ThrottleKey := "s"
  }
else if Joyz between 43 and 57
  {
    ThrottleKey := ""
  }
else if Joyz < 43
  {
    ThrottleKey := "w"
  }
if ThrottleKey = %ThrottleKeyPrev%
  return
SetKeyDelay -1
if ThrottleKeyPrev
  {
    Send, {%ThrottleKeyPrev% up}
  }
if ThrottleKey
  {
    Send, {%ThrottleKey% down}
  }
  return

ThrottleWheelForward:
GetKeyState, JoyWheelF, %ThrottleDeviceNum%Joy%Throttle%
ThrottleWheelFPrev = %ThrottleWheelF%
SetFormat, float, 0
JoyWheelF -= 42
JoyWheelF := JoyWheelF < 0 ? JoyWheelF : 0
ThrottleWheelF := JoyWheelF * -1
if ThrottleWheelF = %ThrottleWheelFPrev%
  return
else if ThrottleWheelF > %ThrottleWheelFPrev%
  {
    WheelLoopF := ThrottleWheelF - ThrottleWheelFPrev
    Send, {G down}
    Loop, %WheelLoopF%
    {
      Send, {WheelUp}
      Sleep, 10
    }
    Send, {G up}
  }
else if ThrottleWheelF < %ThrottleWheelFPrev%
  {
    WheelLoopF := ThrottleWheelFPrev - ThrottleWheelF
    Send, {G down}
    Loop, %WheelLoopF%
    {
      Send, {WheelDown}
      Sleep, 10
    }
    Send, {G up}
  }
if ThrottleWheelF
  return
Return

ThrottleWheelReverse:
GetKeyState, JoyWheelR, %ThrottleDeviceNum%Joy%Throttle%
ThrottleWheelRPrev = %ThrottleWheelR%
SetFormat, float, 0
JoyWheelR -= 58
JoyWheelR := JoyWheelR > 0 ? JoyWheelR : 0
ThrottleWheelR := JoyWheelR
if ThrottleWheelR = %ThrottleWheelRPrev%
  return
else if ThrottleWheelR > %ThrottleWheelRPrev%
  {
    WheelLoopR := ThrottleWheelR - ThrottleWheelRPrev
    Send, {G down}
    Loop, %WheelLoopR%
    {
      Send, {WheelUp}
      Sleep, 10
    }
    Send, {G up}
  }
else if ThrottleWheelR < %ThrottleWheelRPrev%
  {
    WheelLoopR := ThrottleWheelRPrev - ThrottleWheelR
    Send, {G down}
    Loop, %WheelLoopR%
    {
      Send, {WheelDown}
      Sleep, 10
    }
    Send, {G up}
  }
if ThrottleWheelR
  return
Return

Roll:
GetKeyState, Joyr, %RollDeviceNum%Joy%Roll%
KeyRollPrev := KeyRoll
if (Joyr > 53)
  {
    KeyRoll := "e"
  }
else if (Joyr < 47)
  {
    KeyRoll := "q"
  }
else
  {
    KeyRoll := ""
  }
if (KeyRoll = KeyRollPrev)
  return
if KeyRollPrev
  {
    Send, {%KeyRollPrev% up}
  }
if KeyRoll
  {
    Send, {%KeyRoll% down}
  }
return

WatchJoystick:
MouseNeedsToBeMoved := false
SetFormat, float, 03
GetKeyState, joyx, %YawDeviceNum%Joy%Yaw%
GetKeyState, joyy, %PitchDeviceNum%Joy%Pitch%
if joyx > %JoyThresholdUpper%
  {
    MouseNeedsToBeMoved := true
    DeltaX := joyx - JoyThresholdUpper
  }
else if joyx < %JoyThresholdLower%
  {
    MouseNeedsToBeMoved := true
    DeltaX := joyx - JoyThresholdLower
  }
else
  DeltaX = 0
if joyy > %JoyThresholdUpper%
  {
    MouseNeedsToBeMoved := true
    DeltaY := joyy - JoyThresholdUpper
  }
else if joyy < %JoyThresholdLower%
  {
    MouseNeedsToBeMoved := true
    DeltaY := joyy - JoyThresholdLower
  }
else
  DeltaY = 0
if MouseNeedsToBeMoved
  {
    SetMouseDelay, -1
    MouseGetPos VarX,VarY
    DllCall("mouse_event",uint,1,int,(DeltaX * JoyMultiplier),int,(DeltaY * JoyMultiplier * InvertYAxis),uint,0,int,0)
  }
return

HOTASWatchPOV:
POV := GetKeyState("JoyPOV")
KeyToHoldDownPrev := KeyToHoldDown
if (POV < 0)
  {
    KeyToHoldDown := ""
  }
else if (POV > 31500)
  {
    KeyToHoldDown := "Space"
  }
else if POV between 0 and 4500
  {
    KeyToHoldDown := "Space"
  }
else if POV between 4501 and 13500
  {
    KeyToHoldDown := "d"
  }
else if POV between 13501 and 22500
  {
    KeyToHoldDown := "LCtrl"
  }
else
  {
    KeyToHoldDown := "a"
  }
if (KeyToHoldDown = KeyToHoldDownPrev)
  return
SetKeyDelay -1
if KeyToHoldDownPrev
  {
    Send, {%KeyToHoldDownPrev% up}
  }
if KeyToHoldDown
  {
    Send, {%KeyToHoldDown% down}
  }
return
        
Lift:
GetKeyState, 2Joyr, %LiftDeviceNum%Joy%Lift%
LiftKeyPrev = %LiftKey%
if 2Joyr > %JoyThresholdUpper%
  {
    if InvLift = 0
      {
        LiftKey := "Space"
      }
    else
      {
        LiftKey := "LCtrl"
      }
  }
else if 2Joyr between 43 and 57
  {
    LiftKey := ""
  }
else if 2Joyr < %JoyThresholdLower%
  {
    if InvLift = 0
      {
        LiftKey := "LCtrl"
      }
    else
      {
        LiftKey := "Space"
      }
  }
if LiftKey = %LiftKeyPrev%
  return
SetKeyDelay -1
if LiftKeyPrev
  {
    Send, {%LiftKeyPrev% up}
  }
if LiftKey
  {
    Send, {%LiftKey% down}
  }
return

HOSASStrafe:
GetKeyState, 2Joyx, 2JoyX
StrafeKeyPrev = %StrafeKey%
if 2Joyx > %JoyThresholdUpper%
  {
    StrafeKey := "d"
  }
else if 2Joyx between 43 and 57
  {
    StrafeKey := ""
  }
else if 2Joyx < %JoyThresholdLower%
  {
    StrafeKey := "a"
  }
if StrafeKey = %StrafeKeyPrev%
  return
SetKeyDelay -1
if StrafeKeyPrev
  {
    Send, {%StrafeKeyPrev% up}
  }
if StrafeKey
  {
    Send, {%StrafeKey% down}
  }
return

HOSASWatchPOV:
POV := GetKeyState("2JoyPOV")
KeyToHoldDownPrev := KeyToHoldDown
if (POV < 0)
  {
    KeyToHoldDown := ""
  }
else if (POV > 31500)
  {
    KeyToHoldDown := "w"
  }
else if POV between 0 and 4500
  {
    KeyToHoldDown := "w"
  }
else if POV between 4501 and 13500
  {
    KeyToHoldDown := "d"
  }
else if POV between 13501 and 22500
  {
    KeyToHoldDown := "s"
  }
else
  {
    KeyToHoldDown := "a"
  }
if (KeyToHoldDown = KeyToHoldDownPrev)
  return
SetKeyDelay -1
if KeyToHoldDownPrev
  {
    Send, {%KeyToHoldDownPrev% up}
  }
if KeyToHoldDown
  {
    Send, {%KeyToHoldDown% down}
  }
return

ControllerWatchPOV:
POV := GetKeyState("JoyPOV")
KeyToHoldDownPrev := KeyToHoldDown
if (POV < 0)
  {
    KeyToHoldDown := ""
  }
else if (POV > 31500)
  {
    KeyToHoldDown := "w"
  }
else if POV between 0 and 4500
  {
    KeyToHoldDown := "w"
  }
else if POV between 4501 and 13500
  {
    KeyToHoldDown := "d"
  }
else if POV between 13501 and 22500
  {
    KeyToHoldDown := "s"
  }
else
  {
    KeyToHoldDown := "a"
  }
if (KeyToHoldDown = KeyToHoldDownPrev)
  return
SetKeyDelay -1
if KeyToHoldDownPrev
  {
    Send, {%KeyToHoldDownPrev% up}
  }
if KeyToHoldDown
  {
    Send, {%KeyToHoldDown% down}
  }
return

RStick1:
Send, {%Button1% Down}
KeyWait, %DeviceNum%Joy1
Send, {%Button1% Up}
return

RStick2:
Send, {%Button2% Down}
KeyWait, %DeviceNum%Joy2
Send, {%Button2% Up}
return

RStick3:
Send, {%Button3% Down}
KeyWait, %DeviceNum%Joy3
Send, {%Button3% Up}
return

RStick4:
Send, {%Button4% Down}
KeyWait, %DeviceNum%Joy4
Send, {%Button4% Up}
return

RStick5:
Send, {%Button5% Down}
KeyWait, %DeviceNum%Joy5
Send, {%Button5% Up}
return

RStick6:
Send, {%Button6% Down}
KeyWait, %DeviceNum%Joy6
Send, {%Button6% Up}
return

RStick7:
Send, {%Button7% Down}
KeyWait, %DeviceNum%Joy7
Send, {%Button7% Up}
return

RStick8:
Send, {%Button8% Down}
KeyWait, %DeviceNum%Joy8
Send, {%Button8% Up}
return

RStick9:
Send, {%Button9% Down}
KeyWait, %DeviceNum%Joy9
Send, {%Button9% Up}
return

RStick10:
Send, {%Button10% Down}
KeyWait, %DeviceNum%Joy10
Send, {%Button10% Up}
return

RStick11:
Send, {%Button11% Down}
KeyWait, %DeviceNum%Joy11
Send, {%Button11% Up}
return

RStick12:
Send, {%Button12% Down}
KeyWait, %DeviceNum%Joy12
Send, {%Button12% Up}
return

RStick13:
Send, {%Button13% Down}
KeyWait, %DeviceNum%Joy13
Send, {%Button13% Up}
return

RStick14:
Send, {%Button14% Down}
KeyWait, %DeviceNum%Joy14
Send, {%Button14% Up}
return

RStick15:
Send, {%Button15% Down}
KeyWait, %DeviceNum%Joy15
Send, {%Button15% Up}
return

RStick16:
Send, {%Button16% Down}
KeyWait, %DeviceNum%Joy16
Send, {%Button16% Up}
return

RStick17:
Send, {%Button17% Down}
KeyWait, %DeviceNum%Joy17
Send, {%Button17% Up}
return

RStick18:
Send, {%Button18% Down}
KeyWait, %DeviceNum%Joy18
Send, {%Button18% Up}
return

RStick19:
Send, {%Button19% Down}
KeyWait, %DeviceNum%Joy19
Send, {%Button19% Up}
return

RStick20:
Send, {%Button20% Down}
KeyWait, %DeviceNum%Joy20
Send, {%Button20% Up}
return

RStick21:
Send, {%Button21% Down}
KeyWait, %DeviceNum%Joy21
Send, {%Button21% Up}
return

RStick22:
Send, {%Button22% Down}
KeyWait, %DeviceNum%Joy22
Send, {%Button22% Up}
return

RStick23:
Send, {%Button23% Down}
KeyWait, %DeviceNum%Joy23
Send, {%Button23% Up}
return

RStick24:
Send, {%Button24% Down}
KeyWait, %DeviceNum%Joy24
Send, {%Button24% Up}
return

RStick25:
Send, {%Button25% Down}
KeyWait, %DeviceNum%Joy25
Send, {%Button25% Up}
return

RStick26:
Send, {%Button26% Down}
KeyWait, %DeviceNum%Joy26
Send, {%Button26% Up}
return

RStick27:
Send, {%Button27% Down}
KeyWait, %DeviceNum%Joy27
Send, {%Button27% Up}
return

RStick28:
Send, {%Button28% Down}
KeyWait, %DeviceNum%Joy28
Send, {%Button28% Up}
return

RStick29:
Send, {%Button29% Down}
KeyWait, %DeviceNum%Joy29
Send, {%Button29% Up}
return

RStick30:
Send, {%Button30% Down}
KeyWait, %DeviceNum%Joy30
Send, {%Button30% Up}
return

RStick31:
Send, {%Button31% Down}
KeyWait, %DeviceNum%Joy31
Send, {%Button31% Up}
return

RStick32:
Send, {%Button32% Down}
KeyWait, %DeviceNum%Joy32
Send, {%Button32% Up}
return

LStick1:
Send, {%2Button1% Down}
KeyWait, %Device2Num%Joy1
Send, {%2Button1% Up}
return

LStick2:
Send, {%2Button2% Down}
KeyWait, %Device2Num%Joy2
Send, {%2Button2% Up}
return

LStick3:
Send, {%2Button3% Down}
KeyWait, %Device2Num%Joy3
Send, {%2Button3% Up}
return

LStick4:
Send, {%2Button4% Down}
KeyWait, %Device2Num%Joy4
Send, {%2Button4% Up}
return

LStick5:
Send, {%2Button5% Down}
KeyWait, %Device2Num%Joy5
Send, {%2Button5% Up}
return

LStick6:
Send, {%2Button6% Down}
KeyWait, %Device2Num%Joy6
Send, {%2Button6% Up}
return

LStick7:
Send, {%2Button7% Down}
KeyWait, %Device2Num%Joy7
Send, {%2Button7% Up}
return

LStick8:
Send, {%2Button8% Down}
KeyWait, %Device2Num%Joy8
Send, {%2Button8% Up}
return

LStick9:
Send, {%2Button9% Down}
KeyWait, %Device2Num%Joy9
Send, {%2Button9% Up}
return

LStick10:
Send, {%2Button10% Down}
KeyWait, %Device2Num%Joy10
Send, {%2Button10% Up}
return

LStick11:
Send, {%2Button11% Down}
KeyWait, %Device2Num%Joy11
Send, {%2Button11% Up}
return

LStick12:
Send, {%2Button12% Down}
KeyWait, %Device2Num%Joy12
Send, {%2Button12% Up}
return

LStick13:
Send, {%2Button13% Down}
KeyWait, %Device2Num%Joy13
Send, {%2Button13% Up}
return

LStick14:
Send, {%2Button14% Down}
KeyWait, %Device2Num%Joy14
Send, {%2Button14% Up}
return

LStick15:
Send, {%2Button15% Down}
KeyWait, %Device2Num%Joy15
Send, {%2Button15% Up}
return

LStick16:
Send, {%2Button16% Down}
KeyWait, %Device2Num%Joy16
Send, {%2Button16% Up}
return

LStick17:
Send, {%2Button17% Down}
KeyWait, %Device2Num%Joy17
Send, {%2Button17% Up}
return

LStick18:
Send, {%2Button18% Down}
KeyWait, %Device2Num%Joy18
Send, {%2Button18% Up}
return

LStick19:
Send, {%2Button19% Down}
KeyWait, %Device2Num%Joy19
Send, {%2Button19% Up}
return

LStick20:
Send, {%2Button20% Down}
KeyWait, %Device2Num%Joy20
Send, {%2Button20% Up}
return

LStick21:
Send, {%2Button21% Down}
KeyWait, %Device2Num%Joy21
Send, {%2Button21% Up}
return

LStick22:
Send, {%2Button22% Down}
KeyWait, %Device2Num%Joy22
Send, {%2Button22% Up}
return

LStick23:
Send, {%2Button23% Down}
KeyWait, %Device2Num%Joy23
Send, {%2Button23% Up}
return

LStick24:
Send, {%2Button24% Down}
KeyWait, %Device2Num%Joy24
Send, {%2Button24% Up}
return

LStick25:
Send, {%2Button25% Down}
KeyWait, %Device2Num%Joy25
Send, {%2Button25% Up}
return

LStick26:
Send, {%2Button26% Down}
KeyWait, %Device2Num%Joy26
Send, {%2Button26% Up}
return

LStick27:
Send, {%2Button27% Down}
KeyWait, %Device2Num%Joy27
Send, {%2Button27% Up}
return

LStick28:
Send, {%2Button28% Down}
KeyWait, %Device2Num%Joy28
Send, {%2Button28% Up}
return

LStick29:
Send, {%2Button29% Down}
KeyWait, %Device2Num%Joy29
Send, {%2Button29% Up}
return

LStick30:
Send, {%2Button30% Down}
KeyWait, %Device2Num%Joy30
Send, {%2Button30% Up}
return

LStick31:
Send, {%2Button31% Down}
KeyWait, %Device2Num%Joy31
Send, {%2Button31% Up}
return

LStick32:
Send, {%2Button32% Down}
KeyWait, %Device2Num%Joy32
Send, {%2Button32% Up}
return

TrayExit:
ExitApp
return

TrayReload:
Reload
return

TrayPause:
Pause
return

TraySetup:
Run, Settings_v2.1.9.exe
return
