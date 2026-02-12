;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;====================<DEFAULT VALUES>====================

[Defaults]
command.time = 15
command.buffer.time = 1

;====================<SINGLE BUTTON>====================

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;==================<HOLD DIRECTION>==================

[Command]
name = "holdfwd"
command=/$F
time=1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time=1

[Command]
name = "holddown"
command = /$D
time = 1

;====================<HOLD BUTTON>====================

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

;====================<DIRECTION>====================

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

;====================<RELEASE DIR>====================

[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1

;====================<RELEASE BUTTON>====================

[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1

;====================<SUPER MOTIONS>====================

[Command]
name = "TyrantSlaughter"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "TyrantSlaughter"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "TyrantSlaughter"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "TyrantSlaughter"
command = ~D, DF, F, D, DF, F, ~a
time = 30

[Command]
name = "TyrantSlaughter"
command = ~D, DF, F, D, DF, F, ~b
time = 30

[Command]
name = "TyrantSlaughter"
command = ~D, DF, F, D, DF, F, ~c
time = 30


[Command]
name = "MAXTyrantSlaughter"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "MAXTyrantSlaughter"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[Command]
name = "MAXTyrantSlaughter"
command = ~D, DF, F, D, DF, F, a+c
time = 30


[Command]
name = "TemporalThunder"
command = ~D, DF, F, D, DF, F, x
time = 32

[Command]
name = "TemporalThunder"
command = ~D, DF, F, D, DF, F, y
time = 32

[Command]
name = "TemporalThunder"
command = ~D, DF, F, D, DF, F, z
time = 32

[Command]
name = "TemporalThunder"
command = ~D, DF, F, D, DF, F, ~x
time = 32

[Command]
name = "TemporalThunder"
command = ~D, DF, F, D, DF, F, ~y
time = 32

[Command]
name = "TemporalThunder"
command = ~D, DF, F, D, DF, F, ~z
time = 32


[Command]
name = "MAXTemporalThunder"
command = ~D, DF, F, D, DF, F, x+y
time = 32

[Command]
name = "MAXTemporalThunder"
command = ~D, DF, F, D, DF, F, y+z
time = 32

[Command]
name = "MAXTemporalThunder"
command = ~D, DF, F, D, DF, F, x+z
time = 32


[Command]
name = "AegisReflector"
command = ~D, DB, B, D, DB, B, x
time = 32

[Command]
name = "AegisReflector"
command = ~D, DB, B, D, DB, B, y
time = 32

[Command]
name = "AegisReflector"
command = ~D, DB, B, D, DB, B, z
time = 32

[Command]
name = "AegisReflector"
command = ~D, DB, B, D, DB, B, ~x
time = 32

[Command]
name = "AegisReflector"
command = ~D, DB, B, D, DB, B, ~y
time = 32

[Command]
name = "AegisReflector"
command = ~D, DB, B, D, DB, B, ~z
time = 32


[Command]
name = "AegisReflectorAir"
command = ~D, DB, B, D, DB, B, a
time = 32

[Command]
name = "AegisReflectorAir"
command = ~D, DB, B, D, DB, B, b
time = 32

[Command]
name = "AegisReflectorAir"
command = ~D, DB, B, D, DB, B, c
time = 32

[Command]
name = "AegisReflectorAir"
command = ~D, DB, B, D, DB, B, ~a
time = 32

[Command]
name = "AegisReflectorAir"
command = ~D, DB, B, D, DB, B, ~b
time = 32

[Command]
name = "AegisReflectorAir"
command = ~D, DB, B, D, DB, B, ~c
time = 32


[Command]
name = "VesuvianBurnout"
command = ~D, D, D, x+y
time = 32

[Command]
name = "VesuvianBurnout"
command = ~D, D, D, y+z
time = 32

[Command]
name = "VesuvianBurnout"
command = ~D, D, D, x+z
time = 32

;====================<SPECIAL MOTIONS>====================

[Command]
name = "MetallicSphere"
command = ~D, DF, F, x
time = 16

[Command]
name = "MetallicSphere"
command = ~D, DF, F, y
time = 16

[Command]
name = "MetallicSphere"
command = ~D, DF, F, z
time = 16

[Command]
name = "MetallicSphere"
command = ~D, DF, F, ~x
time = 16

[Command]
name = "MetallicSphere"
command = ~D, DF, F, ~y
time = 16

[Command]
name = "MetallicSphere"
command = ~D, DF, F, ~z
time = 16


[Command]
name = "EXMetallicSphere"
command = ~D, DF, F, x+y
time = 16

[Command]
name = "EXMetallicSphere"
command = ~D, DF, F,  y+z
time = 16

[Command]
name = "EXMetallicSphere"
command = ~D, DF, F,  z+x
time = 16


[Command]
name = "ChariotTackle"
command = ~45$B, F, a
time = 16

[Command]
name = "ChariotTackle"
command = ~45$B, F, b
time = 16

[Command]
name = "ChariotTackle"
command = ~45$B, F, c
time = 16

[Command]
name = "ChariotTackle"
command = ~45$B, F, ~a
time = 16

[Command]
name = "ChariotTackle"
command = ~45$B, F, ~b
time = 16

[Command]
name = "ChariotTackle"
command = ~45$B, F, ~c
time = 16


[Command]
name = "CustomComboChariotTackle"
command = ~$B, F, a
time = 16

[Command]
name = "CustomComboChariotTackle"
command = ~$B, F, b
time = 16

[Command]
name = "CustomComboChariotTackle"
command = ~$B, F, c
time = 16

[Command]
name = "CustomComboChariotTackle"
command = ~$B, F, ~a
time = 16

[Command]
name = "CustomComboChariotTackle"
command = ~$B, F, ~b
time = 16

[Command]
name = "CustomComboChariotTackle"
command = ~$B, F, ~c
time = 16


[Command]
name = "EXChariotTackle"
command = ~45$B, F, a+b
time = 16

[Command]
name = "EXChariotTackle"
command = ~45$B, F, b+c
time = 16

[Command]
name = "EXChariotTackle"
command = ~45$B, F, c+a
time = 16


[Command]
name = "ViolenceKneeDrop"
command = ~45$D, $U, a
time = 16

[Command]
name = "ViolenceKneeDrop"
command = ~45$D, $U, b
time = 16

[Command]
name = "ViolenceKneeDrop"
command = ~45$D, $U, c
time = 16

[Command]
name = "ViolenceKneeDrop"
command = ~45$D, $U, ~a
time = 16

[Command]
name = "ViolenceKneeDrop"
command = ~45$D, $U, ~b
time = 16

[Command]
name = "ViolenceKneeDrop"
command = ~45$D, $U, ~c
time = 16


[Command]
name = "CustomComboViolenceKneeDrop"
command = ~$D, $U, a
time = 16

[Command]
name = "CustomComboViolenceKneeDrop"
command = ~$D, $U, b
time = 16

[Command]
name = "CustomComboViolenceKneeDrop"
command = ~$D, $U, c
time = 16

[Command]
name = "CustomComboViolenceKneeDrop"
command = ~$D, $U, ~a
time = 16

[Command]
name = "CustomComboViolenceKneeDrop"
command = ~$D, $U, ~b
time = 16

[Command]
name = "CustomComboViolenceKneeDrop"
command = ~$D, $U, ~c
time = 16


[Command]
name = "EXViolenceKneeDrop"
command = ~45$D, $U, a+b
time = 16

[Command]
name = "EXViolenceKneeDrop"
command = ~45$D, $U, b+c
time = 16

[Command]
name = "EXViolenceKneeDrop"
command = ~45$D, $U, a+c
time = 16


[Command]
name = "DangerousHeadbutt"
command = ~45$D, $U, x
time = 16

[Command]
name = "DangerousHeadbutt"
command = ~45$D, $U, y
time = 16

[Command]
name = "DangerousHeadbutt"
command = ~45$D, $U, z
time = 16

[Command]
name = "DangerousHeadbutt"
command = ~45$D, $U, ~x
time = 16

[Command]
name = "DangerousHeadbutt"
command = ~45$D, $U, ~y
time = 16

[Command]
name = "DangerousHeadbutt"
command = ~45$D, $U, ~z
time = 16


[Command]
name = "CustomComboDangerousHeadbutt"
command = ~$D, $U, x
time = 16

[Command]
name = "CustomComboDangerousHeadbutt"
command = ~$D, $U, y
time = 16

[Command]
name = "CustomComboDangerousHeadbutt"
command = ~$D, $U, z
time = 16

[Command]
name = "CustomComboDangerousHeadbutt"
command = ~$D, $U, ~x
time = 16

[Command]
name = "CustomComboDangerousHeadbutt"
command = ~$D, $U, ~y
time = 16

[Command]
name = "CustomComboDangerousHeadbutt"
command = ~$D, $U, ~z
time = 16


[Command]
name = "EXDangerousHeadbutt"
command = ~45$D, $U, x+y
time = 16

[Command]
name = "EXDangerousHeadbutt"
command = ~45$D, $U, y+z
time = 16

[Command]
name = "EXDangerousHeadbutt"
command = ~45$D, $U, z+x
time = 16


[Command]
name = "412p"
command = /$F, x+y
time = 8
[Command]
name = "412p"
command = /$F, x+z
time = 8
[Command]
name = "412p"
command = /$F, y+z
time = 8

[Command]
name = "412k"
command = /$F, a+b
time = 8
[Command]
name = "412k"
command = /$F, a+c
time = 8
[Command]
name = "412k"
command = /$F, b+c
time = 8

;====================<OTHER>====================

[Command]
name = "highjump"
command = $D, $U
time = 15

;====================<DOUBLE TAP>====================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;====================<2/3 BUTTON COMBINATION>====================

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = a+x
time = 1


[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1


[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1


[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1

;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
[StateDef -1]


[State -1, Tick Fix]
type = CtrlSet
triggerAll = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = StateNo = 820 && !AnimTime
trigger5 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = ChangeState
value = 715
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 700
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Vesuvian Burnout]
type = ChangeState
value = 3300
triggerAll = !AILevel
triggerAll = command = "VesuvianBurnout"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Aegis Reflector]
type = ChangeState
value = 3250
triggerAll = !AILevel
triggerAll = command = "AegisReflectorAir"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)
trigger3 = StateNo = 1003 && AnimElemTime(5) >= 0
trigger4 = StateNo = 1100 && MoveContact && AnimElemTime(3) >= 0

[State -1, Aegis Reflector]
type = ChangeState
value = 3200
triggerAll = !AILevel
triggerAll = command = "AegisReflector"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)
trigger3 = StateNo = 1003 && AnimElemTime(5) >= 0
trigger4 = StateNo = 1100 && MoveContact && AnimElemTime(3) >= 0

[State -1, MAX Tyrant Slaughter]
type = ChangeState
value = 3150
triggerAll = !AILevel
triggerAll = command = "MAXTyrantSlaughter"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Tyrant Slaughter]
type = ChangeState
value = 3100
triggerAll = !AILevel
triggerAll = command = "TyrantSlaughter"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Temporal Thunder]
type = ChangeState
value = 3050
triggerAll = !AILevel
triggerAll = command = "MAXTemporalThunder"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Temporal Thunder]
type = ChangeState
value = 3000
triggerAll = !AILevel
triggerAll = command = "TemporalThunder"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, EX Violence Knee Drop]
type = ChangeState
value = 1350
triggerAll = !AILevel
triggerAll = command = "EXViolenceKneeDrop"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Violence Knee Drop]
type = ChangeState
value = 1300
triggerAll = !AILevel
triggerAll = command = "ViolenceKneeDrop"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Custom Combo: Violence Knee Drop]
type = ChangeState
value = 1300
triggerAll = !AILevel
TriggerAll = Var(20)
triggerAll = command = "CustomComboViolenceKneeDrop"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Dangerous Headbutt]
type = ChangeState
value = 1250
triggerAll = !AILevel
triggerAll = command = "EXDangerousHeadbutt"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Dangerous Headbutt]
type = ChangeState
value = 1200
triggerAll = !AILevel
triggerAll = command = "DangerousHeadbutt"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Custom Combo: Dangerous Headbutt]
type = ChangeState
value = 1200
triggerAll = !AILevel
TriggerAll = Var(20)
triggerAll = command = "CustomComboDangerousHeadbutt"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Chariot Tackle]
type = ChangeState
value = 1150
triggerAll = !AILevel
triggerAll = command = "EXChariotTackle"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Chariot Tackle]
type = ChangeState
value = 1100
triggerAll = !AILevel
triggerAll = command = "ChariotTackle"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Custom Combo: Chariot Tackle]
type = ChangeState
value = 1100
triggerAll = !AILevel
TriggerAll = Var(20)
triggerAll = command = "CustomComboChariotTackle"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Metallic Sphere]
type = ChangeState
value = 1050
triggerAll = !AILevel
triggerAll = command = "EXMetallicSphere"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Metallic Sphere]
type = ChangeState
value = 1000
triggerAll = !AILevel
triggerAll = command = "MetallicSphere"
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) && !(StateNo = 1100 && AnimElemTime(3) >= 0 && MoveContact)

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
trigger1 = command = "c+z"
trigger1 = RoundState = 2
trigger1 = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp" || command = "kk")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger3 = var(4)

[State -1, Standing Medium Punch]
type = ChangeState
value = 210 + (command = "holdfwd") * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact && (!command = "holdfwd")
trigger3 = var(4)

[State -1, FWD Standing Heavy Punch]
type = ChangeState
value = 225
triggerAll = !AILevel
triggerAll = (command = "z") && (command = "holdfwd" && command = "z")
triggerAll = command != "holddown"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 215 && AnimElemTime(5) <= 0  && MoveContact
trigger3 = var(4)

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220 + (command = "holdfwd") * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 230) && (MoveContact && AnimElemTime(6) >= 0)
trigger3 = var(4)

[State -1, Standing Medium Kick]
type = ChangeState
value = 240 + (command = "holdfwd") * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 5
trigger3 = var(4)

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = !AILevel
triggerAll = command  ="holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 5
trigger3 = var(4)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = !AILevel
triggerAll = command = "x"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = !AILevel
triggerAll = command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = !AILevel
triggerAll = command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = !AILevel
triggerAll = command = "a"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = !AILevel
triggerAll = command = "b"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = !AILevel
triggerAll = command = "c"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = !AILevel
triggerAll = command = "start"
triggerAll = StateType != A
triggerAll = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Dash Forward/Run]
type = ChangeState
value = 110
triggerAll = !AILevel
trigger1 = command = "FF"
trigger1 = roundstate = 2 && StateType = S
trigger1 = ctrl

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = !AILevel
trigger1 = command = "BB"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

;==============================================================================================
;===========================================< A.I >==============================================
;==============================================================================================

[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && CanRecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jump]
type = ChangeState
value = 40
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A && ctrl
trigger1 = EnemyNear, MoveType = A && P2BodyDist x < 160 && EnemyNear, HitDefAttr = SC, AT

[State -1, Roll Forward]
type = ChangeState
value = 710
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [92,122])

[State -1, Dodge]
type = ChangeState
value = 700
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0,60])

[State -1, Run]
type = ChangeState
value = 100
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100,106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100,106]) && var(20) <= 150 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 150, 50) * (AILevel ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,80]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (750 * (AILevel ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger1 = !var(26) || P2BodyDist x >= 40
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A || P2StateType = A
trigger1 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (250 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power < const(data.power) && !var(20)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20)
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (95 * (AILevel ** 2 / 64.0))

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-23,37]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (2000 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (3250 * (AILevel ** 2 / 64.0))

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && (StateType != A || (vel x > 0 && vel y >= 0))
trigger1 = Power >= 1000 && !var(20)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101]))
trigger1 = (EnemyNear, MoveType = A) && (P2BodyDist x = [0,40]) && (P2Dist y = [-60,60]) && (EnemyNear, vel y >= 0)
trigger1 = (EnemyNear, StateNo = [200,699]) && Random < (300 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,35]) && (P2Dist y = [-75,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, SLP Target Combo 1]
type = ChangeState
value = 200
trigger1 = AILevel
trigger1 = StateNo = 230 && AnimElemTime(5) < 0 && MoveContact

[State -1, SLP Target Combo 2]
type = ChangeState
value = 210
trigger1 = AILevel
trigger1 = StateNo = 200 && AnimElemTime(5) < 0 && MoveContact

[State -1, SLP Target Combo 3]
type = ChangeState
value = 230
trigger1 = AILevel
trigger1 = StateNo = 230 && AnimElemTime(5) < 0 && MoveContact

[State -1, Quarrel Punch/Standing Normal Medium Punch]
type = ChangeState
value = ifElse(Random < 50, 215, 210)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-80,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Standing Normal Hard Punch]
type = ChangeState
value = 220
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-100,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Terrible Smash]
type = ChangeState
value = 225
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-100,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, QP < TS Target Combo]
type = ChangeState
value = 225
trigger1 = AILevel
trigger1 = StateNo = 215 && AnimElemTime(6) < 0 && MoveContact

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,53]) && (P2Dist y = [-17,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, SLK Target Combo 1]
type = ChangeState
value = 200
trigger1 = AILevel
trigger1 = StateNo = 230 && AnimElemTime(5) < 0 && MoveContact

[State -1, SLK Target Combo 2]
type = ChangeState
value = 230
trigger1 = AILevel
trigger1 = StateNo = 230 && AnimElemTime(5) < 0 && MoveContact

[State -1, Standing FWD/Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-80,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Standing Hard Kick]
type = ChangeState
value = 250
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,60]) && (P2Dist y = [-120,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,53]) && (P2Dist y = [-30,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,70]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,60]) && (P2Dist y = [-90,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (200 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (200 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,48]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,68]) && (P2Dist y = [-12,10]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,60]) && (P2Dist y = [-20,60]) && P2StateType != A && P2StateType != L
triggerAll = (P2StateType = S || (P2StateType = C && P2MoveType = H))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 6) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,23]) && (P2Dist y = [-28,13]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,40]) && (P2Dist y = [-35,45]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,48]) && (P2Dist y = [-35,45]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,20]) && (P2Dist y = [-25,55]) && P2StateType != L
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (ifElse(P2Dist x < 0, 250, 50) * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,28]) && (P2Dist y = [-25,25]) && P2StateType = A
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-22,40]) && P2StateType = S
trigger1 = ctrl && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Kick CC]
type = ChangeState
value = 650
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-22,40]) && P2StateType = S
trigger1 = ctrl && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Metallic Sphere]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1050, 1000)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 2 / 64.0))
trigger3 = NumHelper(var(44)) && Random < (300 * (AILevel ** 2 / 64.0)) && !StateNo = 1000

[State -1, Chariot Tackle]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1150, 1100)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,115]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (37 * (AILevel ** 2 / 64.0))
trigger2 = P2Dist x <= -146 && P2Dist Y >= -20
trigger3 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (200 * (AIlevel ** 2 / 64.0))
trigger4 = StateNo = 1205 && AnimElemTime(1)>= 0 && Random < (250 * (AIlevel ** 2 / 64.0))
trigger5 = StateNo = 2900 && AnimElemTime(4)>= 1 && MoveContact && Random < (333 * (AIlevel ** 2 / 64.0))

[State -1, Chariot Tackle (Custom Combo)]
type = ChangeState
value = 1100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && var(20) > 30
triggerAll = (P2BodyDist x = [0,115]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = P2Dist x <= -146 && P2Dist Y >= -20
trigger3 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (200 * (AIlevel ** 2 / 64.0))
trigger4 = StateNo = 1205 && AnimElemTime(1)>= 0 && Random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Dangerous HeadButt]
type = ChangeState
value = 1200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,70]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
TriggerALL = Enemy,Name = "Urien" && Enemy, AuthorName = "Froz" && Enemy, NumHelper(44)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (150 * (AILevel ** 2 / 64.0))
trigger2 = P2Dist x <= -70 && P2Dist Y >= -60
trigger3 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (200 * (AIlevel ** 2 / 64.0))
trigger4 = StateNo = 1205 && PrevStateNo = 1250 && AnimElemTime(1)>= 0 && Random < (333 * (AIlevel ** 2 / 64.0))
trigger5 = StateNo = 2900 && AnimElemTime(4)>= 1 && MoveContact && Random < (333 * (AIlevel ** 2 / 64.0))

[State -1, Dangerous HeadButt (Custom Combo)]
type = ChangeState
value = 1200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && var(20) > 30
triggerAll = (P2BodyDist x = [0,70]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (150 * (AILevel ** 2 / 64.0))
trigger2 = P2Dist x <= -70 && P2Dist Y >= -60
trigger3 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (200 * (AIlevel ** 2 / 64.0))
trigger4 = StateNo = 1205 && PrevStateNo = 1250 && AnimElemTime(1)>= 0 && Random < (333 * (AIlevel ** 2 / 64.0))

[State -1, Dangerous HeadButt]
type = ChangeState
value = 1250
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
triggerAll = (P2BodyDist x = [0,70]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (150 * (AILevel ** 2 / 64.0))
trigger1 = P2Dist x <= -80 && P2Dist Y >= -70
trigger2 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (333 * (AIlevel ** 2 / 64.0))
trigger3 = StateNo = 2900 && AnimElemTime(4)>= 1 && MoveContact && Random < (333 * (AIlevel ** 2 / 64.0))
trigger4 = StateNo = 1205 && var(20) <= 60 && AnimElemTime(1)>= 0 && Random < (333 * (AIlevel ** 2 / 64.0))

[State -1, Violence Knee Drop]
type = ChangeState
value = ifElse(Power >= 500 && Random < 75, 1350, 1300)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,70]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (150 * (AILevel ** 2 / 64.0))

[State -1, Temporal Thunder]
type = ChangeState
value = ifElse(Power >= 2000 && Random < 100, 3050, 3000)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && !var(20)
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (15 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Tyrant Punish]
type = ChangeState
value = 3100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && !var(20)
triggerAll = (P2BodyDist x = [0,115]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = P2Dist x <= -146 && P2Dist Y >= -20
trigger3 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (200 * (AIlevel ** 2 / 64.0))
trigger4 = StateNo = 1100 && AnimElemTime(3)>= 0 && MoveContact && Random < (333 * (AIlevel ** 2 / 64.0))

[State -1, Tyrant Punish]
type = ChangeState
value = 3150
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && !var(20)
triggerAll = (P2BodyDist x = [0,115]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = P2Dist x <= -146 && P2Dist Y >= -20
trigger3 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (200 * (AIlevel ** 2 / 64.0))
trigger4 = StateNo = 3100 && AnimElemTime(3)>= 0 && AnimElemTime(26)<= 0 && MoveContact && Random < (333 * (AIlevel ** 2 / 64.0))

[State -1, Tyrant Punish (Custom Combo)]
type = ChangeState
value = 3100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = (P2BodyDist x = [0,115]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = P2Dist x <= -146 && P2Dist Y >= -20
trigger3 = StateNo = 420 && AnimElemTime(4)>= 1 && MoveContact && Random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Aegis Reflector]
type = ChangeState
value = 3200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && !var(20)
triggerAll = P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
triggerAll = !NumHelper(var(44))
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 2 / 64.0))
trigger3 = NumHelper(var(44)) && Random < (300 * (AILevel ** 2 / 64.0)) && !StateNo = 1000

[State -1, Aegis Reflector]
type = ChangeState
value = 3250
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && !var(20)
triggerAll = !NumHelper(var(44))
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (30 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = P2StateType = A

[State -1, Vesuvian Burnout]
type = ChangeState
value = 3300
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 3000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && P2StateNo != 5201
triggerAll = P2Dist x >= 0 && P2BodyDist x <= 35
triggerAll = (EnemyNear, HitOver || !(EnemyNear, MoveType = H) || var(21)) && !(EnemyNear, StateNo = [150,155]) && EnemyNear, Anim != 5040
triggerAll = !(EnemyNear, StateNo = 40 && EnemyNear, Time >= 1) && !(EnemyNear, StateNo = 52 && !(EnemyNear, ctrl) && EnemyNear, PrevStateNo = [5020,5040])
triggerAll = P2StateType != A && P2StateType != L && (P2Dist y = [-48,0])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (400 * (AILevel ** 2 / 64.0))

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2
triggerAll = StateType != A && Life >= 0.5 * LifeMax
triggerAll = (EnemyNear, Life) <= 0.5 * (EnemyNear, LifeMax)
triggerAll = ctrl
trigger1 = P2Dist x >= 160 && !(EnemyNear, ctrl)
trigger1 = (EnemyNear, MoveType = H) && (EnemyNear, HitFall) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = P2Dist x >= 0 && P2Dist x <= 50 && !(EnemyNear, ctrl)
trigger2 = (EnemyNear, MoveType = H) && (EnemyNear, HitFall) && Random < (50 * (AILevel ** 2 / 64.0))

; --- UNIVERSAL GUARD CANCEL (Added by Script) ---
[State -1, Universal Guard Cancel]
type = ChangeState
value = 1100
triggerall = !AILevel
triggerall = StateNo = [150, 155] ; Trigger only when in block stun (standing, crouching, or air)
triggerall = power >= 1000 ; Must have at least 1 bar of power
trigger1 = command = "x" && command = "a" ; Light Punch + Light Kick
trigger1 = command = "holdfwd"
