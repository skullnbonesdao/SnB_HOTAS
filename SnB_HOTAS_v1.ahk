#SingleInstance Force
#Persistent
CoordMode, Mouse, Screen
SaveFile := A_ScriptDir . "\Parameters.ini"
IniRead, Button1, %SaveFile% , Button settings, Button 1
IniRead, Button2, %SaveFile% , Button settings, Button 2
IniRead, Button3, %SaveFile% , Button settings, Button 3
IniRead, Button4, %SaveFile% , Button settings, Button 4
IniRead, Button5, %SaveFile% , Button settings, Button 5
IniRead, Button6, %SaveFile% , Button settings, Button 6
IniRead, Button7, %SaveFile% , Button settings, Button 7
IniRead, Button8, %SaveFile% , Button settings, Button 8
IniRead, Button9, %SaveFile% , Button settings, Button 9
IniRead, Button10, %SaveFile% , Button settings, Button 10
IniRead, Button11, %SaveFile% , Button settings, Button 11
IniRead, Button12, %SaveFile% , Button settings, Button 12
IniRead, Button13, %SaveFile% , Button settings, Button 13
IniRead, Button14, %SaveFile% , Button settings, Button 14
IniRead, Button15, %SaveFile% , Button settings, Button 15
IniRead, Button16, %SaveFile% , Button settings, Button 16
IniRead, Button17, %SaveFile% , Button settings, Button 17
IniRead, Button18, %SaveFile% , Button settings, Button 18
IniRead, Button19, %SaveFile% , Button settings, Button 19
IniRead, Button20, %SaveFile% , Button settings, Button 20
IniRead, Button21, %SaveFile% , Button settings, Button 21
IniRead, Button22, %SaveFile% , Button settings, Button 22
IniRead, Button23, %SaveFile% , Button settings, Button 23
IniRead, Button24, %SaveFile% , Button settings, Button 24
IniRead, Button25, %SaveFile% , Button settings, Button 25
IniRead, Button26, %SaveFile% , Button settings, Button 26
IniRead, Button27, %SaveFile% , Button settings, Button 27
IniRead, Button28, %SaveFile% , Button settings, Button 28
IniRead, Button29, %SaveFile% , Button settings, Button 29
IniRead, Button30, %SaveFile% , Button settings, Button 30
IniRead, Button31, %SaveFile% , Button settings, Button 31
IniRead, Button32, %SaveFile% , Button settings, Button 32
IniRead, InvertY, %SaveFile% , Stick settings, Invert Y axis
IniRead, DeadZone, %SaveFile% , Stick settings, Dead zone
IniRead, Sensitivity, %SaveFile% , Stick settings, Sensitivity
SetKeyDelay -1
JoyThreshold := DeadZone
JoyMultiplier := Sensitivity / 10
JoyThresholdUpper := 50 + JoyThreshold
JoyThresholdLower := 50 - JoyThreshold
SetTimer, Sensitivity, 300
SetTimer, Throttle, 200
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

Sensitivity:
GetKeyState, Slider, JoyU
JoyMultiplier := Slider / 100

Throttle:
GetKeyState, Joyz, JoyZ
ThrottleKeyPrev = %ThrottleKey%

if Joyz > 55

{
  ThrottleKey := "s"
}

else if Joyz between 43 and 57

{
  ThrottleKey := ""
}

else if Joyz < 45

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
  KeyRoll := "e"
else if (JoyR < 47)
  KeyRoll := "q"
else
  KeyRoll := ""
if (KeyRoll = KeyRollPrev)
  return
if KeyRollPrev
  Send, {%KeyRollPrev% up}
if KeyRoll
  Send, {%KeyRoll% down}
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
  SetMouseDelay, -1 ; Makes movement smoother.
  MouseGetPos VarX,VarY
  DllCall("mouse_event",uint,1,int,(DeltaX * JoyMultiplier),int,(DeltaY * JoyMultiplier * InvertYAxis),uint,0,int,0)
}
return

WatchPOV:
POV := GetKeyState("JoyPOV")
KeyToHoldDownPrev := KeyToHoldDown

if (POV < 0)
  KeyToHoldDown := ""
else if (POV > 31500)
  KeyToHoldDown := "Space"
else if POV between 0 and 4500
  KeyToHoldDown := "Space"
else if POV between 4501 and 13500
  KeyToHoldDown := "d"
else if POV between 13501 and 22500
  KeyToHoldDown := "LCtrl"
else
  KeyToHoldDown := "a"

if (KeyToHoldDown = KeyToHoldDownPrev)
  return

SetKeyDelay -1
if KeyToHoldDownPrev
  Send, {%KeyToHoldDownPrev% up}
if KeyToHoldDown
  Send, {%KeyToHoldDown% down}
return

;LButton
Joy1::
Send, {%Button1% Down}
KeyWait, Joy1
Send, {%Button1% Up}
return

;RButton
Joy2::
Send, {%Button2% Down}
KeyWait, Joy2
Send, {%Button2% Up}
return

;MButton
Joy3::
Send, {%Button3% Down}
KeyWait, Joy3
Send, {%Button3% Up}
return

;T
Joy4::
Send, {%Button4% Down}
KeyWait, Joy4
Send, {%Button4% Up}
return

;F
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

;Esc
Joy9::
Send, {%Button9% Down}
KeyWait, Joy9
Send, {%Button9% Up}
return

;H
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

;LShift
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

