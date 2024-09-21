#SingleInstance Force
#Persistent
#NoEnv
Menu Tray, NoStandard
Menu Tray, Add, Pause, TrayPause
Menu Tray, Add, Settings, TraySetup
Menu Tray, Add, Reload, TrayReload
Menu Tray, Add, Exit, TrayExit
if (A_IsSuspended)
  Menu, Tray, Icon, Data\Icons\HOTASv2suspend.ico
Else
  Menu, Tray, Icon, Data\Icons\HOTASv2.ico
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
if !GetKeyState("ScrollLock", "T")
    {
        Suspend
        Msgbox, Turn on Scroll Lock to enable.
    }
IniRead, Device, %SaveFile%, Stick settings, Input Device
IniRead, ProfileNum, %SaveFile%, Stick settings, Profile number
if Device = HOTAS
    {
        Loop, 32
            IniRead, Button%A_Index%, %SaveFile% , HOTAS Button settings %ProfileNum%, Button %A_Index%
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
        Loop, 32
            Hotkey, %DeviceNum%Joy%A_Index%, RStick%A_Index%
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
        Loop, 32
            IniRead, Button%A_Index%, %SaveFile% , HOSAS Button settings %ProfileNum%, Button %A_Index%
        Loop, 32
            IniRead, 2Button%A_Index%, %SaveFile% , HOSAS 2 Button settings %ProfileNum%, Button %A_Index%
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
        Loop, 32
            Hotkey, %DeviceNum%Joy%A_Index%, RStick%A_Index%
        Loop, 32
            Hotkey, %Device2Num%Joy%A_Index%, LStick%A_Index%
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
        Loop, 32
            IniRead, Button%A_Index%, %SaveFile% , Controller Button settings %ProfileNum%, Button %A_Index%
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
        Loop, 32
            Hotkey, %DeviceNum%Joy%A_Index%, RStick%A_Index%
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
else if Device = Keyboard
    {
        Loop, 46
            IniRead, Keyboard%A_Index%, %SaveFile% , Keyboard settings %ProfileNum%, Key %A_Index%
        Hotkey, %Keyboard1%, Key1
        Hotkey, %Keyboard2%, Key2
        Hotkey, %Keyboard3%, Key3
        Hotkey, %Keyboard4%, Key4
        If Keyboard5 = LShift
          Hotkey, AppsKey, Key5
        Else
          Hotkey, %Keyboard5%, Key5
        Hotkey, %Keyboard6%, Key6
        If Keyboard7 = LCtrl
          Hotkey, AppsKey, Key7
        Else
          Hotkey, %Keyboard7%, Key7
        If Keyboard8 = LAlt
          Hotkey, AppsKey, Key8
        Else
          Hotkey, %Keyboard8%, Key8
        If Keyboard9 = WheelUp
          Hotkey, AppsKey, Key9
        Else
          Hotkey, %Keyboard9%, Key9
        If Keyboard10 = WheelDown
          Hotkey, AppsKey, Key10
        Else
          Hotkey, %Keyboard10%, Key10
        Hotkey, %Keyboard11%, Key11
        Hotkey, %Keyboard12%, Key12
        Hotkey, %Keyboard13%, Key13
        Hotkey, %Keyboard14%, Key14
        Hotkey, %Keyboard15%, Key15
        Hotkey, %Keyboard16%, Key16
        Hotkey, %Keyboard17%, Key17
        Hotkey, %Keyboard18%, Key18
        Hotkey, %Keyboard19%, Key19
        Hotkey, %Keyboard20%, Key20
        Hotkey, %Keyboard21%, Key21
        Hotkey, %Keyboard22%, Key22
        Hotkey, %Keyboard23%, Key23
        If Keyboard24 = LButton
          Hotkey, AppsKey, Key24
        Else
          Hotkey, %Keyboard24%, Key24
        If Keyboard25 = RButton
          Hotkey, AppsKey, Key25
        Else
          Hotkey, %Keyboard25%, Key25
        Hotkey, %Keyboard26%, Key26
        Hotkey, %Keyboard27%, Key27
        Hotkey, %Keyboard28%, Key28
        Hotkey, %Keyboard29%, Key29
        Hotkey, %Keyboard30%, Key30
        Hotkey, %Keyboard31%, Key31
        Hotkey, %Keyboard32%, Key32
        Hotkey, %Keyboard33%, Key33
        Hotkey, %Keyboard34%, Key34
        Hotkey, %Keyboard35%, Key35
        Hotkey, %Keyboard36%, Key36
        Hotkey, %Keyboard37%, Key37
        Hotkey, %Keyboard38%, Key38
        Hotkey, %Keyboard39%, Key39
        Hotkey, %Keyboard40%, Key40
        If Keyboard41 = MButton
          Hotkey, %Keyboard41%, Key41
        Else
          Hotkey, %Keyboard41%, Key41
        Hotkey, %Keyboard42%, Key42
        Hotkey, %Keyboard43%, Key43
        Hotkey, %Keyboard44%, Key44
        Hotkey, %Keyboard45%, Key45
        Hotkey, %Keyboard46%, Key46
    }
else
    {
        Gui, New
        Gui, Font, s15
        Gui, Add, Button, default x25 y25 w100 h50 gHOTAS, HOTAS
        Gui, Add, Button, x++10 w100 h50 gHOSAS, HOSAS
        Gui, Add, Button, x++10 w100 h50 gController, Controller
        Gui, Add, Button, x++10 w100 h50 gController, Keyboard
        Gui, Font, s12 cWhite
        Gui, Add, Text, x100 y100 w150 +center, Profile Number:
        Gui, Add, DDL, x++10 w50 vProfileNum, 1||2|3
        Gui, +AlwaysOnTop
        Gui, Color, 222222
        Gui, Show, w480 h150, Device
        Return
    }
Return

HOTAS:
Device = HOTAS
Gui, Submit
WinClose
IniWrite, HOTAS, %SaveFile%, Stick settings, Input Device
Reload
Return

HOSAS:
Device = HOSAS
Gui, Submit
WinClose
IniWrite, HOSAS, %SaveFile%, Stick settings, Input Device
Reload
Return

Controller:
Device = Controller
Gui, Submit
WinClose
IniWrite, Controller, %SaveFile%, Stick settings, Input Device
Reload
Return

Sensitivity:
if GetKeyState("ScrollLock", "T")
    {
      GetKeyState, Slider, Joy%SensitivityAxis%
      JoyMultiplier := Slider / 100
    }
Return

Throttle:
if GetKeyState("ScrollLock", "T")
    {
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
    }
return

ThrottleWheelForward:
if GetKeyState("ScrollLock", "T")
    {
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
    }
Return

ThrottleWheelReverse:
if GetKeyState("ScrollLock", "T")
    {
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
    }
Return

Roll:
if GetKeyState("ScrollLock", "T")
    {
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
    }
return

WatchJoystick:
if GetKeyState("ScrollLock", "T")
    {
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
    }
return

HOTASWatchPOV:
if GetKeyState("ScrollLock", "T")
    {
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
    }
return
        
Lift:
if GetKeyState("ScrollLock", "T")
    {
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
    }
return

HOSASStrafe:
if GetKeyState("ScrollLock", "T")
    {
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
    }
return

HOSASWatchPOV:
if GetKeyState("ScrollLock", "T")
    {
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
    }
return

ControllerWatchPOV:
if GetKeyState("ScrollLock", "T")
    {
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

Key1:
Send, {W Down}
KeyWait, %Key1%
Send, {W Up}
return

Key2:
Send, {S Down}
KeyWait, %Key2%
Send, {S Up}
return

Key3:
Send, {D Down}
KeyWait, %Key3%
Send, {D Up}
return

Key4:
Send, {A Down}
KeyWait, %Key4%
Send, {A Up}
return

Key5:
Send, {LShift Down}
KeyWait, %Key5%
Send, {LShift Up}
return

Key6:
Send, {Space Down}
KeyWait, %Key6%
Send, {Space Up}
return

Key7:
Send, {LCtrl Down}
KeyWait, %Key7%
Send, {LCtrl Up}
return

Key8:
Send, {LAlt Down}
KeyWait, %Key8%
Send, {LALt Up}
return

Key9:
Send, {WheelUp Down}
KeyWait, %Key9%
Send, {WheelUp Up}
return

Key10:
Send, {WheelDown Down}
KeyWait, %Key10%
Send, {WheelDown Up}
return

Key11:
Send, {Z Down}
KeyWait, %Key11%
Send, {Z Up}
return

Key12:
Send, {P Down}
KeyWait, %Key12%
Send, {P Up}
return

Key13:
Send, {O Down}
KeyWait, %Key13%
Send, {O Up}
return

Key14:
Send, {T Down}
KeyWait, %Key14%
Send, {T Up}
return

Key15:
Send, {Tab Down}
KeyWait, %Key15%
Send, {Tab Up}
return

Key16:
Send, {] Down}
KeyWait, %Key16%
Send, {] Up}
return

Key17:
Send, {F Down}
KeyWait, %Key17%
Send, {F Up}
return

Key18:
Send, {Esc Down}
KeyWait, %Key18%
Send, {Esc Up}
return

Key19:
Send, {F1 Down}
KeyWait, %Key19%
Send, {F1 Up}
return

Key20:
Send, {L Down}
KeyWait, %Key20%
Send, {L Up}
return

Key21:
Send, {I Down}
KeyWait, %Key21%
Send, {I Up}
return

Key22:
Send, {Q Down}
KeyWait, %Key22%
Send, {Q Up}
return

Key23:
Send, {B Down}
KeyWait, %Key23%
Send, {B Up}
return

Key24:
Send, {LButton Down}
KeyWait, %Key24%
Send, {LButton Up}
return

Key25:
Send, {RButton Down}
KeyWait, %Key25%
Send, {RButton Up}
return

Key26:
Send, {V Down}
KeyWait, %Key26%
Send, {V Up}
return

Key27:
Send, {G Down}
KeyWait, %Key27%
Send, {G Up}
return

Key28:
Send, {R Down}
KeyWait, %Key28%
Send, {R Up}
return

Key29:
Send, {1 Down}
KeyWait, %Key29%
Send, {1 Up}
return

Key30:
Send, {2 Down}
KeyWait, %Key30%
Send, {2 Up}
return

Key31:
Send, {3 Down}
KeyWait, %Key31%
Send, {3 Up}
return

Key32:
Send, {4 Down}
KeyWait, %Key32%
Send, {4 Up}
return

Key33:
Send, {5 Down}
KeyWait, %Key33%
Send, {5 Up}
return

Key34:
Send, {6 Down}
KeyWait, %Key34%
Send, {6 Up}
return

Key35:
Send, {7 Down}
KeyWait, %Key35%
Send, {7 Up}
return

Key36:
Send, {8 Down}
KeyWait, %Key36%
Send, {8 Up}
return

Key37:
Send, {9 Down}
KeyWait, %Key37%
Send, {9 Up}
return

Key38:
Send, {E Down}
KeyWait, %Key38%
Send, {E Up}
return

Key39:
Send, {X Down}
KeyWait, %Key39%
Send, {X Up}
return

Key40:
Send, {H Down}
KeyWait, %Key40%
Send, {H Up}
return

Key41:
Send, {MButton Down}
KeyWait, %Key41%
Send, {MButton Up}
return

Key42:
Send, {N Down}
KeyWait, %Key42%
Send, {N Up}
return

Key43:
Send, {J Down}
KeyWait, %Key43%
Send, {J Up}
return

Key44:
Send, {U Down}
KeyWait, %Key44%
Send, {U Up}
return

Key45:
Send, {K Down}
KeyWait, %Key45%
Send, {K Up}
return

Key46:
Send, {C Down}
KeyWait, %Key46%
Send, {C Up}
return

~ScrollLock::
Suspend, Toggle
if (A_IsSuspended)
  Menu, Tray, Icon, Data\Icons\HOTASv2suspend.ico
Else
  Menu, Tray, Icon, Data\Icons\HOTASv2.ico
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
Run, Settings_v2.2.ahk
return
