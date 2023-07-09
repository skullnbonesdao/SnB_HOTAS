#SingleInstance Force
#Persistent
CoordMode, Mouse, Screen
SaveFile := A_ScriptDir . "\ParametersV2.ini"
IniRead, Button1, %SaveFile% , HOSAS Button settings, Button 1
IniRead, Button2, %SaveFile% , HOSAS Button settings, Button 2
IniRead, Button3, %SaveFile% , HOSAS Button settings, Button 3
IniRead, Button4, %SaveFile% , HOSAS Button settings, Button 4
IniRead, Button5, %SaveFile% , HOSAS Button settings, Button 5
IniRead, Button6, %SaveFile% , HOSAS Button settings, Button 6
IniRead, Button7, %SaveFile% , HOSAS Button settings, Button 7
IniRead, Button8, %SaveFile% , HOSAS Button settings, Button 8
IniRead, Button9, %SaveFile% , HOSAS Button settings, Button 9
IniRead, Button10, %SaveFile% , HOSAS Button settings, Button 10
IniRead, Button11, %SaveFile% , HOSAS Button settings, Button 11
IniRead, Button12, %SaveFile% , HOSAS Button settings, Button 12
IniRead, Button13, %SaveFile% , HOSAS Button settings, Button 13
IniRead, Button14, %SaveFile% , HOSAS Button settings, Button 14
IniRead, Button15, %SaveFile% , HOSAS Button settings, Button 15
IniRead, Button16, %SaveFile% , HOSAS Button settings, Button 16
IniRead, Button17, %SaveFile% , HOSAS Button settings, Button 17
IniRead, Button18, %SaveFile% , HOSAS Button settings, Button 18
IniRead, Button19, %SaveFile% , HOSAS Button settings, Button 19
IniRead, Button20, %SaveFile% , HOSAS Button settings, Button 20
IniRead, Button21, %SaveFile% , HOSAS Button settings, Button 21
IniRead, Button22, %SaveFile% , HOSAS Button settings, Button 22
IniRead, Button23, %SaveFile% , HOSAS Button settings, Button 23
IniRead, Button24, %SaveFile% , HOSAS Button settings, Button 24
IniRead, Button25, %SaveFile% , HOSAS Button settings, Button 25
IniRead, Button26, %SaveFile% , HOSAS Button settings, Button 26
IniRead, Button27, %SaveFile% , HOSAS Button settings, Button 27
IniRead, Button28, %SaveFile% , HOSAS Button settings, Button 28
IniRead, Button29, %SaveFile% , HOSAS Button settings, Button 29
IniRead, Button30, %SaveFile% , HOSAS Button settings, Button 30
IniRead, Button31, %SaveFile% , HOSAS Button settings, Button 31
IniRead, Button32, %SaveFile% , HOSAS Button settings, Button 32
IniRead, 2Button1, %SaveFile% , HOSAS 2 Button settings, Button 1
IniRead, 2Button2, %SaveFile% , HOSAS 2 Button settings, Button 2
IniRead, 2Button3, %SaveFile% , HOSAS 2 Button settings, Button 3
IniRead, 2Button4, %SaveFile% , HOSAS 2 Button settings, Button 4
IniRead, 2Button5, %SaveFile% , HOSAS 2 Button settings, Button 5
IniRead, 2Button6, %SaveFile% , HOSAS 2 Button settings, Button 6
IniRead, 2Button7, %SaveFile% , HOSAS 2 Button settings, Button 7
IniRead, 2Button8, %SaveFile% , HOSAS 2 Button settings, Button 8
IniRead, 2Button9, %SaveFile% , HOSAS 2 Button settings, Button 9
IniRead, 2Button10, %SaveFile% , HOSAS 2 Button settings, Button 10
IniRead, 2Button11, %SaveFile% , HOSAS 2 Button settings, Button 11
IniRead, 2Button12, %SaveFile% , HOSAS 2 Button settings, Button 12
IniRead, 2Button13, %SaveFile% , HOSAS 2 Button settings, Button 13
IniRead, 2Button14, %SaveFile% , HOSAS 2 Button settings, Button 14
IniRead, 2Button15, %SaveFile% , HOSAS 2 Button settings, Button 15
IniRead, 2Button16, %SaveFile% , HOSAS 2 Button settings, Button 16
IniRead, 2Button17, %SaveFile% , HOSAS 2 Button settings, Button 17
IniRead, 2Button18, %SaveFile% , HOSAS 2 Button settings, Button 18
IniRead, 2Button19, %SaveFile% , HOSAS 2 Button settings, Button 19
IniRead, 2Button20, %SaveFile% , HOSAS 2 Button settings, Button 20
IniRead, 2Button21, %SaveFile% , HOSAS 2 Button settings, Button 21
IniRead, 2Button22, %SaveFile% , HOSAS 2 Button settings, Button 22
IniRead, 2Button23, %SaveFile% , HOSAS 2 Button settings, Button 23
IniRead, 2Button24, %SaveFile% , HOSAS 2 Button settings, Button 24
IniRead, 2Button25, %SaveFile% , HOSAS 2 Button settings, Button 25
IniRead, 2Button26, %SaveFile% , HOSAS 2 Button settings, Button 26
IniRead, 2Button27, %SaveFile% , HOSAS 2 Button settings, Button 27
IniRead, 2Button28, %SaveFile% , HOSAS 2 Button settings, Button 28
IniRead, 2Button29, %SaveFile% , HOSAS 2 Button settings, Button 29
IniRead, 2Button30, %SaveFile% , HOSAS 2 Button settings, Button 30
IniRead, 2Button31, %SaveFile% , HOSAS 2 Button settings, Button 31
IniRead, 2Button32, %SaveFile% , HOSAS 2 Button settings, Button 32
IniRead, InvertY, %SaveFile%, HOSAS Stick settings, Invert Y axis
IniRead, DeadZone, %SaveFile%, HOSAS Stick settings, Dead zone
IniRead, InvLift, %SaveFile%, HOSAS 2 Stick settings, Invert Lift
IniRead, Sensitivity, %SaveFile%, HOSAS Stick settings, Sensitivity
IniRead, DeviceNum, %SaveFile%, HOSAS Stick settings, Input device number
IniRead, Device2Num, %SaveFile%, HOSAS 2 Stick settings, Secondary input device number
SetKeyDelay -1
JoyThreshold := DeadZone
JoyMultiplier := Sensitivity / 10
JoyThresholdUpper := 50 + JoyThreshold
JoyThresholdLower := 50 - JoyThreshold
SetTimer, Throttle, 100
SetTimer, Strafe, 100
SetTimer, Lift, 100
SetTimer, WatchJoystick, 10
SetTimer, WatchPOV, 10
SetTimer, Roll, 10
if InvertY = 0
  {
    InvertYAxis := 1
  }
else
  {
    InvertYAxis := -1
  }
return

Lift:
GetKeyState, 2Joyr, 2JoyR
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

Strafe:
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

Throttle:
GetKeyState, 2Joyy, 2JoyY
ThrottleKeyPrev = %ThrottleKey%
if 2Joyy > %JoyThresholdUpper%
  {
    ThrottleKey := "s"
  }
else if 2Joyy between 43 and 57
  {
    ThrottleKey := ""
  }
else if 2Joyy < %JoyThresholdLower%
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

Roll:
JoyR := GetKeyState("JoyR")
KeyRollPrev := KeyRoll
if (JoyR > 53)
  {
    KeyRoll := "e"
  }
else if (JoyR < 47)
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
GetKeyState, joyx, JoyX
GetKeyState, joyy, JoyY
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

WatchPOV:
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

Joy1::
Send, {%Button1% Down}
KeyWait, Joy1
Send, {%Button1% Up}
return

Joy2::
Send, {%Button2% Down}
KeyWait, Joy2
Send, {%Button2% Up}
return

Joy3::
Send, {%Button3% Down}
KeyWait, Joy3
Send, {%Button3% Up}
return

Joy4::
Send, {%Button4% Down}
KeyWait, Joy4
Send, {%Button4% Up}
return

Joy5::
Send, {%Button5% Down}
KeyWait, Joy5
Send, {%Button5% Up}
return

Joy6::
Send, {%Button6% Down}
KeyWait, Joy6
Send, {%Button6% Up}
return

Joy7::
Send, {%Button7% Down}
KeyWait, Joy7
Send, {%Button7% Up}
return

Joy8::
Send, {%Button8% Down}
KeyWait, Joy8
Send, {%Button8% Up}
return

Joy9::
Send, {%Button9% Down}
KeyWait, Joy9
Send, {%Button9% Up}
return

Joy10::
Send, {%Button10% Down}
KeyWait, Joy10
Send, {%Button10% Up}
return

Joy11::
Send, {%Button11% Down}
KeyWait, Joy11
Send, {%Button11% Up}
return

Joy12::
Send, {%Button12% Down}
KeyWait, Joy12
Send, {%Button12% Up}
return

Joy13::
Send, {%Button13% Down}
KeyWait, Joy13
Send, {%Button13% Up}
return

Joy14::
Send, {%Button14% Down}
KeyWait, Joy14
Send, {%Button14% Up}
return

Joy15::
Send, {%Button15% Down}
KeyWait, Joy15
Send, {%Button15% Up}
return

Joy16::
Send, {%Button16% Down}
KeyWait, Joy16
Send, {%Button16% Up}
return

Joy17::
Send, {%Button17% Down}
KeyWait, Joy17
Send, {%Button17% Up}
return

Joy18::
Send, {%Button18% Down}
KeyWait, Joy18
Send, {%Button18% Up}
return

Joy19::
Send, {%Button19% Down}
KeyWait, Joy19
Send, {%Button19% Up}
return

Joy20::
Send, {%Button20% Down}
KeyWait, Joy20
Send, {%Button20% Up}
return

Joy21::
Send, {%Button21% Down}
KeyWait, Joy21
Send, {%Button21% Up}
return

Joy22::
Send, {%Button22% Down}
KeyWait, Joy22
Send, {%Button22% Up}
return

Joy23::
Send, {%Button23% Down}
KeyWait, Joy23
Send, {%Button23% Up}
return

Joy24::
Send, {%Button24% Down}
KeyWait, Joy24
Send, {%Button24% Up}
return

Joy25::
Send, {%Button25% Down}
KeyWait, Joy25
Send, {%Button25% Up}
return

Joy26::
Send, {%Button26% Down}
KeyWait, Joy26
Send, {%Button26% Up}
return

Joy27::
Send, {%Button27% Down}
KeyWait, Joy27
Send, {%Button27% Up}
return

Joy28::
Send, {%Button28% Down}
KeyWait, Joy28
Send, {%Button28% Up}
return

Joy29::
Send, {%Button29% Down}
KeyWait, Joy29
Send, {%Button29% Up}
return

Joy30::
Send, {%Button30% Down}
KeyWait, Joy30
Send, {%Button30% Up}
return

Joy31::
Send, {%Button31% Down}
KeyWait, Joy31
Send, {%Button31% Up}
return

Joy32::
Send, {%Button32% Down}
KeyWait, Joy32
Send, {%Button32% Up}
return

2Joy1::
Send, {%2Button1% Down}
KeyWait, Joy1
Send, {%2Button1% Up}
return

2Joy2::
Send, {%2Button2% Down}
KeyWait, Joy2
Send, {%2Button2% Up}
return

2Joy3::
Send, {%2Button3% Down}
KeyWait, Joy3
Send, {%2Button3% Up}
return

2Joy4::
Send, {%2Button4% Down}
KeyWait, Joy4
Send, {%2Button4% Up}
return

2Joy5::
Send, {%2Button5% Down}
KeyWait, Joy5
Send, {%2Button5% Up}
return

2Joy6::
Send, {%2Button6% Down}
KeyWait, Joy6
Send, {%2Button6% Up}
return

2Joy7::
Send, {%2Button7% Down}
KeyWait, Joy7
Send, {%2Button7% Up}
return

2Joy8::
Send, {%2Button8% Down}
KeyWait, Joy8
Send, {%2Button8% Up}
return

2Joy9::
Send, {%2Button9% Down}
KeyWait, Joy9
Send, {%2Button9% Up}
return

2Joy10::
Send, {%2Button10% Down}
KeyWait, Joy10
Send, {%2Button10% Up}
return

2Joy11::
Send, {%2Button11% Down}
KeyWait, Joy11
Send, {%2Button11% Up}
return

2Joy12::
Send, {%2Button12% Down}
KeyWait, Joy12
Send, {%2Button12% Up}
return

2Joy13::
Send, {%2Button13% Down}
KeyWait, Joy13
Send, {%2Button13% Up}
return

2Joy14::
Send, {%2Button14% Down}
KeyWait, Joy14
Send, {%2Button14% Up}
return

2Joy15::
Send, {%2Button15% Down}
KeyWait, Joy15
Send, {%2Button15% Up}
return

2Joy16::
Send, {%2Button16% Down}
KeyWait, Joy16
Send, {%2Button16% Up}
return

2Joy17::
Send, {%2Button17% Down}
KeyWait, Joy17
Send, {%2Button17% Up}
return

2Joy18::
Send, {%2Button18% Down}
KeyWait, Joy18
Send, {%2Button18% Up}
return

2Joy19::
Send, {%2Button19% Down}
KeyWait, Joy19
Send, {%2Button19% Up}
return

2Joy20::
Send, {%2Button20% Down}
KeyWait, Joy20
Send, {%2Button20% Up}
return

2Joy21::
Send, {%2Button21% Down}
KeyWait, Joy21
Send, {%2Button21% Up}
return

2Joy22::
Send, {%2Button22% Down}
KeyWait, Joy22
Send, {%2Button22% Up}
return

2Joy23::
Send, {%2Button23% Down}
KeyWait, Joy23
Send, {%2Button23% Up}
return

2Joy24::
Send, {%2Button24% Down}
KeyWait, Joy24
Send, {%2Button24% Up}
return

2Joy25::
Send, {%2Button25% Down}
KeyWait, Joy25
Send, {%2Button25% Up}
return

2Joy26::
Send, {%2Button26% Down}
KeyWait, Joy26
Send, {%2Button26% Up}
return

2Joy27::
Send, {%2Button27% Down}
KeyWait, Joy27
Send, {%2Button27% Up}
return

2Joy28::
Send, {%2Button28% Down}
KeyWait, Joy28
Send, {%2Button28% Up}
return

2Joy29::
Send, {%2Button29% Down}
KeyWait, Joy29
Send, {%2Button29% Up}
return

2Joy30::
Send, {%2Button30% Down}
KeyWait, Joy30
Send, {%2Button30% Up}
return

2Joy31::
Send, {%2Button31% Down}
KeyWait, Joy31
Send, {%2Button31% Up}
return

2Joy32::
Send, {%2Button32% Down}
KeyWait, Joy32
Send, {%2Button32% Up}
return

