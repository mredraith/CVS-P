;#ADD004BASIC PIEs#
;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[command]
name = "CS Strike"
command = ~D, DF, F, D, DF, a
time = 32

[command]
name = "CS Strike"
command = ~D, DF, F, D, DF, ~a
time = 32

[command]
name = "CS Strike"
command = ~D, DF, F, D, DF, b
time = 32

[command]
name = "CS Strike"
command = ~D, DF, F, D, DF, ~b
time = 32

[command]
name = "CS Strike"
command = ~D, DF, F, D, DF, b
time = 32

[command]
name = "CS Strike"
command = ~D, DF, F, D, DF, ~b
time = 32

[command]
name = "CS Strike MAX"
command = ~D, DF, F, D, DF, a+b
time = 32

[command]
name = "CS Strike MAX"
command = ~D, DF, F, D, DF, b+c
time = 32

[command]
name = "CS Strike MAX"
command = ~D, DF, F, D, DF, c
time = 32

[command]
name = "Poison Kiss"
command = ~D, DF, F, D, DF, x
time = 32

[command]
name = "Poison Kiss"
command = ~D, DF, F, D, DF, ~x
time = 32

[command]
name = "Poison Kiss"
command = ~D, DF, F, D, DF, y
time = 32

[command]
name = "Poison Kiss"
command = ~D, DF, F, D, DF, ~y
time = 32

[command]
name = "Poison Kiss"
command = ~D, DF, F, D, DF, z
time = 32

[command]
name = "Poison Kiss"
command = ~D, DF, F, D, DF, ~z
time = 32

[command]
name = "HH Assault"
command = ~D, DB, B, D, DB, a+b
time = 32

[command]
name = "HH Assault"
command = ~D, DB, B, D, DB, b+c
time = 32

[command]
name = "HH Assault"
command = ~D, DB, B, D, DB, c
time = 32

;-| Special Motions |------------------------------------------------------
[command]
name = "Handcuff"
command = ~D, DF, F, x
time = 15

[command]
name = "Handcuff"
command = ~D, DF, F, ~x
time = 15

[command]
name = "Handcuff"
command = ~D, DF, F, y
time = 15

[command]
name = "Handcuff"
command = ~D, DF, F, ~y
time = 15

[command]
name = "Handcuff"
command = ~D, DF, F, z
time = 15

[command]
name = "Handcuff"
command = ~D, DF, F, ~z
time = 15

[command]
name = "Crescent"
command = ~F, D, DF, a
time = 16

[command]
name = "Crescent"
command = ~F, D, DF, ~a
time = 16

[command]
name = "Crescent"
command = ~F, D, DF, b
time = 16

[command]
name = "Crescent"
command = ~F, D, DF, ~b
time = 16

[command]
name = "Crescent"
command = ~F, D, DF, c
time = 16

[command]
name = "Crescent"
command = ~F, D, DF, ~c
time = 16

[command]
name = "HH Pounce"
command = ~D, DB, B, a
time = 15

[command]
name = "HH Pounce"
command = ~D, DB, B, ~a
time = 15

[command]
name = "HH Pounce"
command = ~D, DB, B, b
time = 15

[command]
name = "HH Pounce"
command = ~D, DB, B, ~b
time = 15

[command]
name = "HH Pounce"
command = ~D, DB, B, c
time = 15

[command]
name = "HH Pounce"
command = ~D, DB, B, ~c
time = 15

[command]
name = "Whiplash"
command = ~D, DB, B, x
time = 15

[command]
name = "Whiplash"
command = ~D, DB, B, ~x
time = 15

[command]
name = "Whiplash2"
command = ~D, DB, B, y
time = 15

[command]
name = "Whiplash2"
command = ~D, DB, B, ~y
time = 15

[command]
name = "Whiplash3"
command = ~D, DB, B, z
time = 15

[command]
name = "Whiplash3"
command = ~D, DB, B, ~z
time = 15

[command]
name = "EX Handcuff"
command = ~D, DF, F, x+y
time = 15

[command]
name = "EX Handcuff"
command = ~D, DF, F, y+z
time = 15

[command]
name = "EX Handcuff"
command = ~D, DF, F, x+z
time = 15

[command]
name = "EX Crescent"
command = ~F, D, DF, a+b
time = 16

[command]
name = "EX Crescent"
command = ~F, D, DF, b+c
time = 16

[command]
name = "EX Crescent"
command = ~F, D, DF, a+c
time = 16

[command]
name = "EX HH Pounce"
command = ~D, DB, B, a+b
time = 15

[command]
name = "EX HH Pounce"
command = ~D, DB, B, b+c
time = 15

[command]
name = "EX HH Pounce"
command = ~D, DB, B, a+c
time = 15

[command]
name = "EX Whiplash"
command = ~D, DB, B, x+y
time = 15

[command]
name = "EX Whiplash"
command = ~D, DB, B, y+z
time = 15

[command]
name = "EX Whiplash"
command = ~D, DB, B, x+z
time = 15

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

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
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

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;-| Single Button |---------------------------------------------------------
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
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;---------------------------------------------------------------------------
;Release Direction
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

;--------------------------------------------------------------------------
;Release Button
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
;---------------------------------------------------------------------------
;Other
[Command]
name = "highjump"
command = $D, $U
time = 15
;---------------------------------------------------------------------------
[Statedef -1]

;//==========================
;// add004-1-sctrls-start
;//==========================
;--- partner_standby
[state 0]
	type=selfstate
	trigger1=ctrl && numpartner && !ishelper && roundstate=2 && pos y=0
	trigger1=sysfvar(4)>0 && sysfvar(0)>0 && playeridexist(floor(sysfvar(0)))
	trigger1=playerid(floor(sysfvar(0))),var(0)=90900 && playerid(floor(sysfvar(0))),var(22)=4
	value=190190
	ctrl=0
	ignorehitpause=1
;//==========================
;// add004-1-sctrls-end
;//==========================




[State -1, Tick Fix]
type = CtrlSet
triggerall = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = (StateNo = [760,762]) && !AnimTime
trigger4 = StateNo = 810 && !AnimTime
trigger5 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger6 = (StateNo = [700,715]) && !AnimTime
value = 1

[State -1, CtrlSet For Helpers];special thanks to 20S
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -1, Juggle Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State -1, ProjContact];special thanks to 20S
type = VarSet
trigger1 = IsHelper
trigger1 = MoveContact = 1 && NumTarget
var(18) = 1

[State -1, Root ProjContact];special thanks to 20S
type = ParentVarSet
trigger1 = IsHelper
trigger1 = MoveContact = 1 && NumTarget
var(18) = 1

[State -1, HH Assault]
type = ChangeState
value = 3200
triggerall = !AILevel
triggerall = command = "HH Assault"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, CS Strike Max]
type = ChangeState
value = 3050
triggerall = !AILevel
triggerall = command = "CS Strike MAX"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)

[State -1, Poison Kiss]
type = ChangeState
value = 3100
triggerall = !AILevel
triggerall = command = "Poison Kiss" && !numhelper(1010) && !numhelper(3110)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
triggerall = Enemy, StateNo != 5300 && (Enemy, StateNo != [1115020,1115120])
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
;trigger2 = var(6)

[State -1, CS Strike]
type = ChangeState
value = 3000
triggerall = !AILevel
triggerall = command = "CS Strike"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Crescent]
type = ChangeState
value = 1600
triggerall = !AILevel
triggerall = command = "EX Crescent"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX HH Pounce]
type = ChangeState
value = 1700
triggerall = !AILevel
triggerall = command = "EX HH Pounce"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Whiplash]
type = ChangeState
value = 1800
triggerall = !AILevel
triggerall = command = "EX Whiplash"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Air Whiplash]
type = ChangeState
value = 1900
triggerall = !AILevel
triggerall = command = "EX Whiplash"
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = var(3)!=[1,2]
trigger1= ctrl && pos y <= -30
trigger2 = var(5)

[State -1, EX Handcuff]
type = ChangeState
value = 1500
triggerall = !AILevel
triggerall = command = "EX Handcuff" && !numhelper(3110)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = Helper(1010),StateNo = [1015,1016]

[State -1, Crescent]
type = ChangeState
value = 1100
triggerall = !AILevel
triggerall = command = "Crescent"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, HH Pounce]
type = ChangeState
value = 1200
triggerall = !AILevel
triggerall = command = "HH Pounce"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Whiplash]
type = ChangeState
value = 1300
triggerall = !AILevel
triggerall = command = "Whiplash"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Whiplash2]
type = ChangeState
value = 1301
triggerall = !AILevel
triggerall = command = "Whiplash2"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Whiplash3]
type = ChangeState
value = 1302
triggerall = !AILevel
triggerall = command = "Whiplash3"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Air Whiplash]
type = ChangeState
value = 1400
triggerall = !AILevel
triggerall = command = "Whiplash" || command = "Whiplash2" || command = "Whiplash3"
triggerall = RoundState = 2 && StateType = A
triggerall = var(3)!=[1,2]
trigger1= ctrl && pos y <= -30
trigger2 = var(5)

[State -1, Handcuff]
type = ChangeState
value = 1000
triggerall = !AILevel
triggerall = command = "Handcuff" && !numhelper(3110)
triggerall = RoundState = 2 && StateType != A
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = Helper(1010),StateNo = [1015,1016]

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerall = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Throw]
type = ChangeState
value = 800
triggerall = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp" || command = "kk")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Air Throw]
type = ChangeState
value = 850
triggerall = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp" || command = "kk")
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && pos y <= -30
trigger1 = statetype != S

[State -1, Headbutt]
type = Changestate
value = 223
triggerall = !AILevel
triggerall = command = "z" && command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

[State -1, Headbutt Chain]
type = Changestate
value = 224
triggerall = !AILevel
triggerall = command = "z" && command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = var(4)

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerall = !AILevel
triggerall = command = "a+x"
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"

[State -1, Roll Back]
type = ChangeState
value = 715
triggerall = !AILevel
triggerall = command = "a+x"
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Avalanche]
type = ChangeState
value = 611
triggerall = !AILevel
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = !AILevel
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, MAX Mode]
type = ChangeState
value = 770
triggerall = !AILevel
triggerall = command = "c+z"
triggerall = RoundState = 2 && StateType != A
triggerall = var(20) <= 0 && Power >= 1000
trigger1 = ctrl || (Stateno = [100,101])

[State -1, Dodge]
type = ChangeState
value = 700
triggerall = !AILevel
triggerall = command = "a+x"
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !AILevel
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !AILevel
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !AILevel
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210 + (Abs(P2BodyDist X) <= 15) * 1
triggerall = !AILevel
triggerall = command != "holddown" && command = "y"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) <= 20) * 1
triggerall = !AILevel
triggerall = command != "holddown" && command = "z"
triggerall = command != "holdfwd"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !AILevel
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) <= 20) * 1
triggerall = !AILevel
triggerall = command != "holddown" && command = "b"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist X) <= 20) * 1
triggerall = !AILevel
triggerall = command != "holddown" && command = "c"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !AILevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >=5
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !AILevel
triggerAll = command = "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !AILevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400) && Time >=5
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !AILevel
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !AILevel
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !AILevel
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !AILevel
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !AILevel
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !AILevel
triggerall = (command = "a") && (Vel X != 0)
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Kick No Vel]
type = ChangeState
value = 631
triggerall = !AILevel
triggerall = (command = "a") && (Vel X = 0)
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !AILevel
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !AILevel
triggerall = (command = "c") && (Vel X != 0)
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Kick No Vel]
type = ChangeState
value = 651
triggerall = !AILevel
triggerall = (command = "c") && (Vel X = 0)
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !AILevel
triggerall = command = "s"
triggerall = StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)


;-------------------------------------------Ai By Renaws--------------------------------------------------------


;------------------------------------------System moves--------------------------------------------------------


[State -1, Guarding Remove Var]
type=VarSet
trigger1= AILevel && roundstate=2
trigger1= var(28)
var(28)=0
ignorehitpause=1

[State -1, No Guarding Var]
type=VarSet
triggerall= AILevel && roundstate=2
trigger1= ((stateno=[760,762]) || (prevstateno=[760,762]))
trigger2= enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (enemynear,stateno=3020 || enemynear,numhelper(3025))
trigger3= enemynear,name="Ryu" && enemynear,authorname="Phantom.of.the.Server" && (enemynear,stateno=3040 || enemynear,numhelper(3045) || enemynear,numhelper(3055))
trigger4= enemynear,name="Ryu" && enemynear,authorname="5theone/x_vyn_x" && (enemynear,stateno=[1600,1603])
trigger5= enemynear,name="Evil Ryu Hoshi" && enemynear,authorname="Vyn" && (enemynear,stateno=[1600,1603])
trigger6= enemynear,name="Orochi Gill" && enemynear,authorname="Shin_Lvl2_Akuma, Orochi Gill, SlayerGatsu" && enemynear,stateno=1420
trigger7= (enemynear,name="God Akuma" || enemynear,name="Orochi Shin Akuma" || enemynear,name="Another God Akuma") && enemynear,stateno=9980
trigger8= enemynear,name="Another God Akuma" && enemynear,authorname="Phantom.of.the.Server"
trigger8= (enemynear,stateno=2210 || enemynear,stateno=9800 || (enemynear,stateno=[78954,78995]))
trigger9= enemynear,hitdefattr=SCA,AT
trigger10= (prevstateno=[700,715])
var(28)=1
ignorehitpause=1

[State -1, No Guarding]
type=AssertSpecial
trigger1= AILevel && roundstate=2
trigger1= var(28)
flag=nostandguard
flag2=nocrouchguard
flag3=noairguard
ignorehitpause=1

[State -1, Stop Guarding]
type=ChangeState
triggerall= AILevel && roundstate=2
triggerall= stateno=[120,130]
trigger1= var(28)
value=140
ignorehitpause=1

[State -1, Enemy Starts To Attack]
type=VarSet
triggerall= AILevel && roundstate=2 && var(46)=0
trigger1= enemynear,movetype=A && enemynear,time<=2
var(46)=1

[State -1, Enemy Attacking]
type=VarSet
triggerall= AILevel && roundstate=2 && var(46)!=2
trigger1= enemynear,hitdefattr=SCA,AA,AP,AT
trigger2= enemynear,movetype=A && (enemynear,stateno=[3000,4999]) && enemynear,time<=2
var(46)=2
ignorehitpause=1

[State -1, Enemy Attacking Ending]
type=VarSet
triggerall= AILevel && roundstate=2 && var(46)=2
trigger1= !(enemynear,ctrl) && !(enemynear,hitdefattr=SCA,AA,AP,AT)
trigger1= ifelse(enemynear,stateno<=3000,1,enemynear,time>=60)
trigger2= abs(enemynear,animtime)<=10
var(46)=3
ignorehitpause=1

[State -1, Enemy Not Attacking At All]
type=VarSet
triggerall= AILevel && roundstate=2 && var(46)
trigger1= (enemynear,ctrl)
trigger2= enemynear,stateno<=200
var(46)=0
ignorehitpause=1

[State -1, DCEA]
type=VarSet
triggerall= AILevel && roundstate=2
trigger1= var(50)
var(50)=0
ignorehitpause=1

[State -1, DCEA]
type=VarSet
triggerall= AILevel && roundstate=2
trigger1= enemynear,movetype=A && (enemynear,stateno=[1000,4999]) && enemynear,animtime<=-30
var(50)=1
ignorehitpause=1

[State -1, DWMTCETOSM]
type=VarSet
triggerall= AILevel && roundstate=2
trigger1= var(51)
var(51)=0
ignorehitpause=1

[State -1, DWMTCETOSM]
type=VarSet
triggerall= AILevel && roundstate=2
trigger1= enemynear,statetype=S && enemynear,authorname="Phantom.of.the.Server" && enemynear,stateno=1400
trigger2= enemynear,name="Psylocke" && enemynear,authorname="DivineWolf" && (enemynear,stateno=[1500,1510])
trigger3= enemynear,name="Ryu" && enemynear,authorname="5theone/x_vyn_x" && (enemynear,stateno=[1600,1603])
trigger4= enemynear,name="Evil Ryu Hoshi" && enemynear,authorname="Vyn" && (enemynear,stateno=[1600,1603])
trigger5= enemynear,name="Another God Akuma" && enemynear,authorname="Phantom.of.the.Server"
trigger5= (enemynear,stateno=2210 || (enemynear,stateno=[4700,4722]) || enemynear,stateno=7318 || enemynear,stateno=9800 || enemynear,stateno=22050)
trigger6= enemynear,name="Orochi Shin Akuma" && enemynear,authorname="Phantom.of.the.Server"
trigger6= (enemynear,stateno=[2200,2222])
trigger7= enemynear,name="God Akuma" && enemynear,authorname="Plaza (Shadow Leo)"
trigger7= ((enemynear,stateno=[2200,2222]) || enemynear,stateno=1400)
var(51)=1
ignorehitpause=1

[State -1, Guard]
type=ChangeState
value=120
triggerall= AILevel && numenemy
triggerall= roundstate=2 && inguarddist
triggerall= enemynear,p2dist x>=0 && !(stateno=[120,155]) && !var(26) && !var(28)
trigger1= (ctrl || stateno=0 || stateno=21 || (stateno=[100,101]))
trigger1= !(enemynear,hitdefattr=SCA,AT) && (enemynear,time<=120)
trigger1= statetype!=A || enemynear,statetype=A
trigger1= ifelse(statetype=A,((var(3)!=[1,2]) || stateno=5210),1)
trigger1= random<((500*(var(46)=[1,2])+ifelse((enemynear,stateno=[200,699]),333,ifelse((enemynear,stateno=[1000,2999]),666,1000))))*(AILevel**2/64.0)

[State -1, Walk]
type=ChangeState
value=21
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=S && !inguarddist && anim!=5
triggerall= !((stateno=[10,12]) || stateno=21 || (stateno=[100,101]) || (stateno=[760,761]))
trigger1= ctrl && p2bodydist x>=75 && random<500*(AILevel**2/64.0)

[State -1, Run]
type = ChangeState
value = 100
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=S && (ctrl || stateno=21)
triggerall= !(stateno=[100,106]) && !(prevstateno=[100,106]) && !(stateno=[760,761]) && !(prevstateno=[760,761])
trigger1= !numhelper(1010) && !(enemynear,movetype=A) && p2bodydist x>=200 && random<100*(AILevel**2/64.0)
trigger2= numhelper(1010) && !(enemynear,movetype=A) && (enemynear,stateno=[120,140]) && p2bodydist x>=160 && random<200*(AILevel**2/64.0)

[State -1, Standing Parry]
type=HitOverRide
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl || stateno=0 || stateno=21) && random<(300+200*((stateno=5120 || stateno=5201) && !animtime || (var(46)=[1,2])))*(AILevel**2/64.0)
trigger1= var(11):=1
trigger2= (stateno=[760,761]) && random<(500+250*((var(46)=[1,2]) || (prevstateno=[760,761]) && !animtime))*(AILevel**2/64.0)
trigger2= var(11):=1
trigger3= ctrl && statetype=C && enemynear,hitdefattr=SA,AA,AP && random<(200+100*(var(46)=[1,2]))*(AILevel**2/64.0)
trigger3= var(11):=1
attr=SA,AA,AP
stateno=760
slot=0
time=8

[State -1, Crouching Parry]
type=HitOverRide
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl || stateno=11 || stateno=21) && random<(300+200*((stateno=5120 || stateno=5201) && !animtime || (var(46)=[1,2])))*(AILevel**2/64.0)
trigger1= var(11):=2
trigger2= (stateno=[760,761]) && random<(500+250*((var(46)=[1,2]) || (prevstateno=[760,761]) && !animtime))*(AILevel**2/64.0)
trigger2= var(11):=2
trigger3= ctrl && statetype=S && enemynear,hitdefattr=C,AA,AP && random<(200+100*(var(46)=[1,2]))*(AILevel**2/64.0)
trigger3= var(11):=2
attr=C,AA,AP
stateno=761
slot=0
time=8

[State -1, Air Parry]
type=HitOverRide
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=A
trigger1= (ctrl || (anim=[41,43])) && random<(300+200*(var(46)=[1,2]))*(AILevel**2/64.0)
trigger1= var(11):=3
trigger2= stateno=762 && random<(500+250*((var(46)=[1,2]) || prevstateno=762 && !animtime))*(AILevel**2/64.0)
trigger2= var(11):=3
attr=SA,AA,AP
stateno=762
forceair=1
slot=0
time=7

[State -1, Reset Parry]
type=HitOverRide
trigger1= (!ctrl && !(stateno=[760,762]) && stateno!=5120)
trigger2= movetype!=I || (stateno=[100,106]) || (stateno=[120,132])
trigger3= !AILevel && (command="holdback" || command="holdup")
trigger4= (statetype=S || statetype=C) && var(11)!=1 && var(11)!=2
trigger5= statetype=A && var(11)!=3
slot=0
time=0

[State -1, Fall Recovery Air]
type=ChangeState
value=5210
trigger1= AILevel && numenemy
trigger1= roundstate=2 && alive
trigger1= stateno=5050 && canrecover
trigger1= vel y>=0 && pos y<=-20 && random<150*(AILevel**2/64.0)

[State -1, Fall Recovery Ground]
type=ChangeState
value=5200
trigger1= AILevel && numenemy
trigger1= roundstate=2 && alive
trigger1= stateno=5050 && gethitvar(fall.recover)
trigger1= vel y>=0 && pos y>=-20 && random<200*(AILevel**2/64.0)

[State -1, Jump]
type=ChangeState
value=40
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A && (ctrl || stateno=21)
triggerall= enemynear,p2dist x>=0 || backedgebodydist<=80
trigger1= enemynear,movetype=A && enemynear,vel x>=-1 && p2bodydist x<=120
trigger1= enemynear,hitdefattr=SC,ST,HT && random<400*(AILevel**2/64.0)
trigger2= enemynear,movetype=A && ((enemynear,stateno=[1000,1999]) || (enemynear,stateno=[3000,3999]))
trigger2= p2bodydist x>=120 && (((enemynear,numhelper) && !numhelper(9741)) || (enemynear,numproj))
trigger2= !(enemynear,statetype=A) && random<400*(AILevel**2/64.0)
trigger3= enemynear,statetype=A && (p2bodydist x=[40,60]) && (p2dist y=[-110,-80])
trigger3= enemynear,vel x>=0 && !(enemynear,movetype=A) && random<50*(AILevel**2/64.0)
trigger4= enemynear,name="God Akuma" || enemynear,name="Orochi Shin Akuma" || enemynear,name="Another God Akuma"
trigger4= enemynear,movetype=A && enemynear,stateno=9980 && p2bodydist x>=90 && random<500*(AILevel**2/64.0)

[State -1, Roll Forward]
type=ChangeState
value=710
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A && !var(26) && !var(28)
triggerall= (facing=1 && (enemynear,facing=-1)) || (facing=-1 && (enemynear,facing=1))
triggerall= (ctrl || stateno=21 || (stateno=[100,101])) && p2bodydist x>=80 && !(enemy,hitdefattr=SC,ST,HT,AT)
trigger1= enemynear,movetype=A && enemy,numproj>=0 && inguarddist
trigger1= random<(ifelse((var(46)=[1,2]),enemy,numproj>=0,650))*(AILevel**2/64.0)

[State -1, Roll Backward]
type=ChangeState
value=715
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A && !var(26) && !var(28)
triggerall= (facing=1 && (enemynear,facing=-1)) || (facing=-1 && (enemynear,facing=1))
triggerall= (ctrl || stateno=21 || (stateno=[100,101])) && !(enemy,hitdefattr=SC,ST,HT,AT)
triggerall= (p2bodydist x=[25,50]) && backedgebodydist>=80 && random<150*(AILevel**2/64.0)
trigger1= enemynear,movetype=A || (enemynear,stateno=[5100,5120])

[State -1, Dodge]
type=ChangeState
value=700
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A && !var(26) && !var(28)
triggerall= (facing=1 && (enemynear,facing=-1)) || (facing=-1 && (enemynear,facing=1))
triggerall= (ctrl || stateno=21 || (stateno=[100,101])) && p2bodydist x>=0 && !(enemy,hitdefattr=SC,ST,HT,AT)
trigger1= enemynear,movetype=A && enemy,numproj>=0 && inguarddist
trigger1= random<(ifelse((var(46)=[1,2]),enemy,numproj>=0,200))*(AILevel**2/64.0)

[State -1, Dash Backward]
type=ChangeState
value=105
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=S && !var(26)
triggerall= (ctrl || stateno=21) && !var(50) && !(enemy,hitdefattr=SC,ST,HT,AT)
triggerall= (p2bodydist x=[-10,80]) && backedgebodydist>=80 && !(stateno=[100,106]) && !(prevstateno=[100,106])
triggerall= !((prevstateno=[760,762]) || (stateno=[760,762]))
trigger1= enemynear,movetype=A && p2bodydist x>=40 && random<200*(AILevel**2/64.0)
trigger2= (enemynear,stateno=[5100,5120]) || (enemynear,stateno=[5200,5201])
trigger2= p2bodydist x<=25 && random<150*(AILevel**2/64.0)

[State -1, Zero Counter]
type=ChangeState
value=750
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A && power>=1000 && !var(20)
trigger1= (p2bodydist x=[0,60]) && (stateno=150 || stateno=152) && random<100*(AILevel**2/64.0)

[State -1, Power Charge]
type=ChangeState
value=730
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl || stateno=21 || (stateno=[100,101])) && !var(20)
trigger1= !(enemynear,statetype=A) && !(enemynear,movetype=H) && !(enemynear,movetype=A)
trigger1= power<const(data.power) && power<powermax
trigger1= !enemynear,hitdefattr=SCA,AT
trigger1= !inguarddist && p2bodydist x>=160 && random<(ifelse(enemynear,statetype=L,50,25))*(AILevel**2/64.0)
trigger1= !numhelper(1010) && !numhelper(3010) && !numhelper(3110) && !numhelper(3060) && !numhelper(3160)


;[State -1, MAX Mode]
;type=ChangeState
;value=770
;triggerall= AILevel && numenemy
;triggerall= roundstate=2 && statetype!=A && power>=2000 && var(20)<=0
;trigger1= (ctrl || stateno=21 || (stateno=[100,101])) && p2bodydist x>=160 && !(enemynear,statetype=A) && random<50*(AILevel**2/64.0)


[State -1, Taunt]
type=ChangeState
value=195
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= (ctrl || stateno=21 || (stateno=[100,101])) && prevstateno!=195
trigger1= (enemynear,life)<=(enemynear,lifemax/2)
trigger1= p2bodydist x>=160 && !(enemynear,ctrl) && enemynear,movetype=H
trigger1= enemynear,stateno=5050 && !(enemynear,stateno=[5200,5210]) && random<100*(AILevel**2/64.0)

[State -1, Taunt after K.O.]
type=ChangeState
value=195
triggerall= AILevel && numenemy
triggerall= roundstate=3 && statetype!=A
triggerall= (ctrl || stateno=21 || (stateno=[100,101])) && prevstateno!=195
trigger1= p2bodydist x>=60 && winko && (enemynear,stateno=5050 || enemynear,statetype=L) && random<200*(AILevel**2/64.0)

;------------------------------------------Normal--------------------------------------------------------

[State -1, Throw ]
type = ChangeState
value = 800
triggerall = AILevel
triggerall = p2life != 0
triggerall = ctrl = 1 && (ctrl || stateno=21)
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2movetype != H
triggerall = random < 800
trigger1 = p2bodydist X < 30 && p2bodydist x > -10


[State -1, Standing Light Punch]
type=ChangeState
value=200
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !var(16) && var(15)<1
triggerall= (p2bodydist x=[0,35]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=C) && !(enemynear,statetype=L)
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl || stateno=21 || (stateno=[100,101])) && random<(50+25*(var(46)=0))*(AILevel**2/64.0)
trigger2= stateno=200 && !animtime && ctrl && !(enemynear,statetype=A) && random<25*(AILevel**2/64.0)


[State -1, Stand Medium Punch]
type = ChangeState
value = 210 
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=L) && !(enemynear,statetype=C) && !(enemynear,hitfall) && !inguarddist
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl || stateno=21 || (stateno=[100,101])) && random<(100+50*(var(44)=0))*(AIlevel**2/64.0)
trigger2= (stateno=200 || stateno=212 || (stateno=[230,235])) && !animtime && ctrl
trigger2= movecontact && !(enemynear,statetype=A) && random<850*(AIlevel**2/64.0)


[State -1, Stand Strong Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) <= 15) * 1
triggerall = AILevel && NumEnemy 
triggerall = RoundState = 2 && StateType != A
triggerAll = (P2BodyDist x = [25,55]) && (P2Dist y = [-85,0]) && P2StateType != L && P2StateType != C
trigger1= ctrl || stateno=21 || (stateno=[100,101]) && Random < 100 * (AILevel ** 2 / 64.0)


[State -1,Standing Light Kick ]
type = ChangeState
value = 230
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(46)=0
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=L) && !(enemynear,statetype=A) && !(enemynear,hitfall) && !inguarddist
trigger1= (ctrl || stateno=21 || (stateno=[100,101])) && !numhelper(1005) && random<(50+25*(var(44)=0))*(AIlevel**2/64.0)
trigger2= stateno=245 && !animtime && ctrl && movecontact && p2bodydist x<=40 && random<100*(AIlevel**2/64.0)

[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 81]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype != C && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno=21 || (stateno=[100,101])) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && var(46)=0
triggerall= (p2bodydist x=[-25,50]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=L) && !(enemynear,statetype=C) && !(enemynear,hitfall) && !inguarddist
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (ctrl || stateno=21 || (stateno=[100,101])) && !numhelper(1005) && random<(ifelse(enemynear,statetype=A,var(44)=0,150))*(AIlevel**2/64.0)
trigger2= stateno=200 && anim=201 && !animtime && ctrl && movecontact && !(enemynear,statetype=A) && p2bodydist x<=20 && random<750*(AIlevel**2/64.0)

[State -1, Crouching Light Punch]
type=ChangeState
value=400
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= (p2bodydist x=[0,40]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=L) && !(enemynear,statetype=A) && !(enemynear,hitfall) && !inguarddist
trigger1= (ctrl || stateno=21 || (stateno=[100,101])) && random<50*(AILevel**2/64.0)
trigger2= ((stateno=[200,205]) || stateno=400 || stateno=430) && time>=5 && movecontact && random<100*(AILevel**2/64.0)

[State -1, Crouching Medium Punch]
type=ChangeState
value=410
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=L) && !(enemynear,hitfall) && !(enemynear,statetype=A)
trigger1= (ctrl || stateno=21 || (stateno=[100,101])) && random<100*(AILevel**2/64.0)
trigger2= (stateno=200 || stateno=215 || stateno=249 || (stateno=[400,410])) && !animtime && ctrl && movecontact && random<750*(AILevel**2/64.0)
trigger3= (ctrl || stateno=0 || stateno=11 || stateno=21 || (stateno=[100,101])) && (prevstateno=[1000,1030]) && movecontact && random<250*(AILevel**2/64.0)


[State -1, Crouching Strong Punch]
type=ChangeState
value=420
triggerAll = AILevel && NumEnemy && var(20) <= 60
triggerAll = RoundState = 2 && Statetype != A
triggerAll = (P2BodyDist x = [0,35]) && (P2Dist y = [-135,0])
triggerAll = (EnemyNear, StateType = S) || ((EnemyNear, const(size.head.pos.y) <= -80) && P2StateType = C) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101]) || StateNo = 21) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Kick]
type=ChangeState
value=430
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= (p2bodydist x=[0,45]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=L) && !(enemynear,statetype=A) && !(enemynear,hitfall) && !inguarddist
trigger1= (ctrl || stateno=21 || (stateno=[100,101])) && p2bodydist x<=40 && !numhelper(1005) && random<50*(AILevel**2/64.0)
trigger2= ((stateno=[200,205]) || stateno=400 || stateno=430) && time>=5 && movecontact && random<100*(AILevel**2/64.0)
trigger3= stateno=1400 && movehit && animtime=0 && enemynear,movetype=H && random<300*(AILevel**2/64.0)


[State -1, Crouching Medium Kick]
type=ChangeState
value=440
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !var(16) && var(15)<1
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=A)
triggerall= !(enemynear,statetype=L) && !var(50)
trigger1= (ctrl || stateno=21 || (stateno=[100,101])) && !inguarddist && random<(100+50*(var(46)=0))*(AILevel**2/64.0)
trigger2= ctrl && (stateno=[760,761]) && p2bodydist x>=30 && !(enemynear,movetype=A) && random<200*(AILevel**2/64.0)


[State -1, Crouching Strong Kick]
type=ChangeState
value=450
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= (p2bodydist x=[0,55]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=L) && !(enemynear,statetype=A) && !(enemynear,hitfall)
trigger1= (ctrl || stateno=21 || (stateno=[100,101])) && !inguarddist && random<150*(AILevel**2/64.0)
trigger2= ctrl && stateno=761 && !(enemynear,ctrl) && !(enemynear,movetype=A) && random<250*(AILevel**2/64.0)
trigger3= ((stateno=[200,205]) || stateno=400 || stateno=410 || stateno=430) && !animtime && ctrl && movecontact && random<750*(AILevel**2/64.0)
trigger4= (ctrl || stateno=21 || (stateno=[100,101])) && p2bodydist x>=25 && enemynear,movetype=A && enemynear,stateno=1000 && (enemynear,numhelper) && inguarddist && random<250*(AILevel**2/64.0)
trigger5= stateno=1400 && movehit && animtime=0 && enemynear,movetype=H && random<200*(AILevel**2/64.0)


[State -1, Jumping Light Punch]
type=ChangeState
value=600
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= (p2bodydist x=[0,40]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=L) && !(enemynear,hitfall) && !inguarddist
trigger1= ctrl && enemynear,statetype=A && vel y<=2 && random<50*(AILevel**2/64.0)


[State -1, Jumping Medium Punch]
type=ChangeState
value=610
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=A 
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= (p2bodydist x=[0,42]) && (p2bodydist y=[-60,60]) && !(enemynear,statetype=L) && !(enemynear,hitfall)
trigger1= ctrl && enemynear,statetype=A && vel y<=2 && random<150*(AILevel**2/64.0)


[State -1,  Jumping Heavy Punch]
type=ChangeState
value=620
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=A 
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-80,80]) && !(enemynear,statetype=L) && !(enemynear,hitfall)
trigger1= ctrl && !(enemynear,statetype=A) && sysvar(1)=1 && vel y>=-2
trigger1= p2bodydist x>=10 && (p2dist y=[-60,80]) && random<(300+100*(enemynear,movetype=A))*(AILevel**2/64.0)
trigger2= ctrl && enemynear,statetype=A && vel y<=2 && random<250*(AILevel**2/64.0)


[State -1, Neutral Jumping Light Kick]
type=ChangeState
value=631
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=A && !vel x
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= (p2bodydist x=[0,30]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=L) && !(enemynear,hitfall) && !inguarddist
trigger1= ctrl && enemynear,statetype=A && vel y<=2 && random<50*(AILevel**2/64.0)

[State -1, Angled Jumping Light Kick]
type=ChangeState
value=630
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=A && vel x
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= (p2bodydist x=[0,30]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=L) && !(enemynear,hitfall) && !inguarddist
trigger1= ctrl && enemynear,statetype=A && vel y<=2 && random<50*(AILevel**2/64.0)


[State -1, Jump Medium Kick]
type=changestate
value=640
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype=A
triggerall= (p2bodydist x=[-15,60]) && (p2bodydist y=[-80,80]) && !(enemynear,statetype=L) && !(enemynear,hitfall)
trigger1= ctrl && !(enemynear,statetype=A) && (sysvar(1)=1 || sysvar(1)=0) && vel y>=-2
trigger1= (p2dist y=[-60,70]) && random<(200+150*(var(44)=3))*(AIlevel**2/64.0)
trigger2= ctrl && enemynear,statetype=A && vel y<=2 && (p2bodydist x=[0,40]) && random<200*(AIlevel**2/64.0)


[State -1, Neutral Jumping Heavy Kick]
type=ChangeState
value=651
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=A && !vel x
triggerall= !var(16) && var(15)<1
triggerall= (p2bodydist x=[0,80]) && (p2bodydist y=[-80,80]) && !(enemynear,statetype=L) && !(enemynear,hitfall)
trigger1= ctrl && !(enemynear,statetype=A) && (sysvar(1)=1 || sysvar(1)=0) && vel y>=-2
trigger1= p2bodydist x>=20 && (p2dist y=[-60,80]) && random<350*(AILevel**2/64.0)
trigger2= ctrl && enemynear,statetype=A && vel y<=2 && random<200*(AILevel**2/64.0)

[State -1, Angled Jumping Heavy Kick]
type=ChangeState
value=650
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype=A && vel x
triggerall= !var(16) && var(15)<1
triggerall= (p2bodydist x=[0,80]) && (p2bodydist y=[-80,80]) && !(enemynear,statetype=L) && !(enemynear,hitfall)
trigger1= ctrl && !(enemynear,statetype=A) && (sysvar(1)=1 || sysvar(1)=0) && vel y>=-2
trigger1= p2bodydist x>=20 && (p2dist y=[-60,80]) && random<350*(AILevel**2/64.0)
trigger2= ctrl && enemynear,statetype=A && vel y<=2 && random<200*(AILevel**2/64.0)

;----------------------------------------Special moves---------------------------------------

[State -1, Handcuff]
type = ChangeState
value = 1000
triggerAll = RoundState = 2 && StateType != A
triggerall = AILevel && NumEnemy 
triggerall = p2dist x >= 75 || (enemynear, vel x <0 && p2movetype != a) 
triggerall = p2dist y <= -90 
triggerall = ctrl || StateNo = 40 || StateNo = 52 || stateno=21 || (StateNo = [100,101]) || var(5) && Random < (ifElse(movehit, 125, 10) * (AILevel ** 2 / 64.0))
trigger1= (stateno=210 || (stateno=[221,230]) || stateno=241 || stateno=410 || (stateno=[430,440])) && movehit && random<100*(AILevel**2/64.0)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = Helper(1010),StateNo = [1012,1016]


[State -1, EX Handcuff]
type = ChangeState
value = 1500
triggerall= AILevel&& numenemy
triggerall= roundstate=2 && statetype!=A && power>=500 && var(20)<=60
triggerall= !var(39) && !var(40)
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= p2bodydist x>=10 && p2dist y>=-25 && !(enemynear,statetype=L)
triggerall= !(enemynear,statetype=A) && !(enemynear,stateno=40)
triggerall= !(enemynear,stateno=[120,155]) && !(stateno=[760,761]) && !(prevstateno=[760,761]) && !inguarddist
trigger1= (stateno=210 || (stateno=[221,230]) || stateno=241 || stateno=410 || (stateno=[430,440])) && movehit && random<50*(AILevel**2/64.0)
trigger2= ctrl || stateno=21 || stateno=40 || stateno=52 || (stateno=[100,101])
trigger2= !(enemynear,name="Cyborg" && enemynear,authorname="Victorys") && enemynear,movetype=A
trigger2= (enemynear,stateno=[1000,1030]) && (enemynear,numhelper) && p2bodydist x>=160 && random<50*(AILevel**2/64.0)
trigger3= (ctrl || stateno=21 || stateno=40 || stateno=52 || (stateno=[100,101])) && ((enemynear,stateno=[195,199]) || (enemynear,stateno=[730,740]))
trigger3= p2bodydist x>=160 && random<100*(AILevel**2/64.0)
trigger4= (ctrl || stateno=21 || stateno=40 || stateno=52 || (stateno=[100,101])) && enemynear,movetype=A
trigger4= enemynear,name="Cyborg" && enemynear,authorname="Victorys" || enemynear,name="Sagat" && enemynear,authorname="DivineWolf"
trigger4= (enemynear,stateno=[1100,1150]) && (enemynear,numhelper) && p2bodydist x>=160 && random<50*(AILevel**2/64.0)



[State -1, Crescent Stiletto]
type=changestate
value= ifElse(Power >= 500 && Random < 133, 1600, 1100)
triggerall= AIlevel && numenemy
triggerall= roundstate=2 && statetype!=A && alive && !var(51) && prevstateno!=1100
triggerall= (p2bodydist x=[-25,50]) && (p2bodydist y=[-120,0]) && !(enemynear,stateno=[120,155])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= ctrl || stateno=21 || (stateno=[100,101]) || (stateno=[120,131]) || (stateno=200 || stateno=230 || stateno=245)
trigger1= enemynear,movetype=A && random<(ifelse(((stateno=5120 || stateno=5201) && !animtime || (var(14)=[1,2]) || enemynear,stateno!=var(57)),500,250))*(AIlevel**2/64.0)
trigger2= ((stateno=[200,210]) || (stateno=[211,221]) || (stateno=[230,235]) || (stateno=[241,251]))
trigger2= movehit && p2bodydist x<=15 && random<150*(AIlevel**2/64.0)
trigger2 = var(45) >= 2 
trigger3= stateno=210 && anim=211 && animelemtime(4)<0 || stateno=240 && animelemtime(5)<0
trigger3= enemynear,statetype=A && movehit && (p2bodydist x=[-15,15]) && random<250*(AIlevel**2/64.0)
trigger4= (ctrl || stateno=0 || stateno=21 || (stateno=[100,101])) && enemynear,stateno=5210
trigger4= p2bodydist x<=30 && (p2dist y=[-90,0]) && random<400*(AIlevel**2/64.0)


[State -1, HH Pounce]
type = ChangeState
value = 1200
triggerall = !AILevel
triggerall = command = "HH Pounce"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)


[State -1, Whiplash]
type=ChangeState
value=1300
triggerall=AILevel && RoundState=2 && numenemy && StateType != A && var(20)<=60 
triggerall=(enemynear,statetype != L) && !(enemynear, hitfall) && (enemynear,stateno!=[5100,5220]) && (p2bodydist x =[30,120]) && (p2bodydist y =[-80,5]) && (enemynear, statetype != C) 
trigger1=(ctrl || StateNo=40 || StateNo=52 || stateno=21 || (StateNo=[110,111])||(StateNo=[100,101]))&& random < (150 * (AIlevel ** 2 / 64.0))
trigger2=var(5) && movehit  && random<100
trigger3=(stateno=[200,450]) && movehit && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, Whiplash 2nd Hit ]
type=ChangeState
value=1301
triggerall=AILevel && RoundState=2 && numenemy && StateType != A && var(20)<=60 
triggerall=(enemynear,statetype != L) && !(enemynear, hitfall) && (enemynear,stateno!=[5100,5220]) && (p2bodydist x =[30,120]) && (p2bodydist y =[-20,5]) && (enemynear, statetype != C) 
trigger1=(ctrl || StateNo=40 || StateNo=52 || stateno=21 || (StateNo=[110,111])||(StateNo=[100,101]))&& random < (150 * (AIlevel ** 2 / 64.0))
trigger2=var(5) && movehit  && random<100
trigger3=(stateno=[200,450]) && movehit && random < (700 * (AIlevel ** 2 / 64.0))

[State -1, Whiplash 3rd Hit ]
type=ChangeState
value=1302
triggerall=AILevel && RoundState=2 && numenemy && StateType != A && var(20)<=60 
triggerall=(enemynear,statetype != L) && !(enemynear, hitfall) && (enemynear,stateno!=[5100,5220]) && (p2bodydist x =[30,120]) && (p2bodydist y =[-20,5]) && (enemynear, statetype != C) 
trigger1=(ctrl || StateNo=40 || StateNo=52 || stateno=21 || (StateNo=[110,111])||(StateNo=[100,101]))&& random < (150 * (AIlevel ** 2 / 64.0))
trigger2=var(5) && movehit  && random<100
trigger3=(stateno=[200,450]) && movehit && random < (700 * (AIlevel ** 2 / 64.0))

[State -1, EX Whiplash]
type = ChangeState
value = 1800
triggerall=AILevel && RoundState=2 && numenemy && power >= 500 && StateType != A && var(20)<=60 
triggerall=(enemynear,statetype != L) && !(enemynear, hitfall) && (enemynear,stateno!=[5100,5220]) && (p2bodydist x =[30,120]) && p2bodydist y =0 && (enemynear, statetype != C) 
trigger1=(ctrl || StateNo=40 || StateNo=52 ||stateno=21 || (StateNo=[110,111])||(StateNo=[100,101]))&& random < (133 * (AIlevel ** 2 / 64.0))
trigger2=var(5) && movehit  && random<100
trigger3=(stateno=[200,450]) && movehit && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Air Whiplash]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1900, 1400)
triggerall=AILevel && RoundState=2 && numenemy && StateType = A && var(20)<=60 
triggerall=(enemynear,statetype != L) && !(enemynear, hitfall) && (enemynear,stateno!=[5100,5220]) && (p2bodydist x =[30,120]) && p2bodydist y =0 && (enemynear, statetype != C) 
trigger1=(ctrl || StateNo=40 || StateNo=52 ||stateno=21 || (StateNo=[110,111])||(StateNo=[100,101]))&& random < (133 * (AIlevel ** 2 / 64.0))
trigger2=var(5) && movehit  && random<100
trigger3=(stateno=[200,450]) && movehit && random < (100 * (AIlevel ** 2 / 64.0))

;----------------------------------------Super moves---------------------------------------

[State -1, CS Strike]
type = ChangeState
value = 3000
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A && power>=1000 && var(20)<=60 && !var(51)
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= (p2bodydist x=[-20,40]) && (p2dist y=[-90,0]) && !(enemynear,stateno=[5100,5120])
triggerall= !(enemynear,ctrl) && !(enemynear,stateno=[120,155])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=1000 || (stateno=[1200,1500])) && movehit && !(enemynear,statetype=A) && random<(100+50*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)
trigger2= (ctrl || stateno=21 || stateno=40 || stateno=52 || (stateno=[100,101])) && enemynear,movetype=A
trigger2= random<(500+250*(life<333)*(enemynear,life<333)*(enemynear,statetype=A))*(AILevel**2/64.0)
trigger3= ((stateno=[200,230]) || stateno=245 || stateno=255 || (stateno=[410,440])) && !(stateno=210 || stateno=220) && movehit
trigger3= p2bodydist x<=30 && !(enemynear,statetype=A) && random<(150+50*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)
trigger4= stateno=1000 && movehit && enemynear,movetype=H && p2bodydist x<=35
trigger4= frontedgebodydist<=60 && random<(200+50*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)
trigger5= stateno=1000 && animelemtime(5)>=2 && !(enemynear,stateno=[700,740])
trigger5= !(enemynear,stateno=[0,21]) && random<(100+50*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)

[State -1, CS Strike Max]
type = ChangeState
value = 3050
triggerall= AILevel && numenemy
triggerall= roundstate=2 && statetype!=A && power>=2000 && var(20)<=60 && !var(51)
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= (p2bodydist x=[-20,40]) && (p2dist y=[-90,0]) && !(enemynear,stateno=[5100,5120])
triggerall= !(enemynear,ctrl) && !(enemynear,stateno=[120,155])
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= (stateno=1000 || (stateno=[1205,1500])) && movehit && !(enemynear,statetype=A) && random<(100+50*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)
trigger2= (ctrl || stateno=21 || stateno=40 || stateno=52 || (stateno=[100,101])) && enemynear,movetype=A
trigger2= random<(500+250*(life<333)*(enemynear,life<333)*(enemynear,statetype=A))*(AILevel**2/64.0)
trigger3= ((stateno=[200,230]) || stateno=245 || stateno=255 || (stateno=[410,440])) && !(stateno=210 || stateno=220) && movehit
trigger3= p2bodydist x<=30 && !(enemynear,statetype=A) && random<(150+50*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)
trigger4= stateno=1000 && movehit && enemynear,movetype=H && p2bodydist x<=35
trigger4= frontedgebodydist<=60 && random<(200+50*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)
trigger5= stateno=1000 && animelemtime(5)>=2 && !(enemynear,stateno=[700,740])
trigger5= !(enemynear,stateno=[0,21]) && random<(100+50*(life<333)*(enemynear,life<333))*(AILevel**2/64.0)

[State -1, Poison Kiss]
type = ChangeState
value = 3100
triggerall= AIlevel && numenemy
triggerall= var(1)!=2 && roundstate=2 && statetype!=A && power>=1000 && var(20)<=60 && prevstateno!=3020 && !var(52)
triggerall= !numhelper(3005) && !numhelper(3025) && !numhelper(3033) && !numhelper(3045) && !numhelper(3055)
triggerall= !(enemynear,ctrl) && !(enemynear,movetype=A) && !inguarddist
triggerall= (enemynear,const(size.head.pos.y)<=-40) || (enemynear,statetype=A)
trigger1= stateno=1000 && (animelemtime(5)>=2 && animelemtime(8)<0)
trigger1= enemynear,statetype=L && !(enemy,teammode=simul) && p2bodydist x>=180 && random<(100+50*(life<333)*(enemynear,life<333))*(AIlevel**2/64.0)
trigger2= stateno=1100 && enemynear,backedgebodydist<=10 && movehit && enemynear,movetype=H && !var(43) && !(enemynear,stateno=[120,155]) && random<(100+50*(life<333)*(enemynear,life<333))*(AIlevel**2/64.0)
trigger3= (ctrl || stateno=21 || (stateno=[100,101])) && enemynear,statetype=L && !(enemy,teammode=simul) && !(enemynear,stateno=5120)
trigger3= p2bodydist x>=160 && enemynear,vel y>=-2 && random<(200+100*(life<333)*(enemynear,life<333))*(AIlevel**2/64.0)
trigger4= var(1)=1 && stateno=1300 && animelemtime(6)<0 && movehit && enemynear,movetype=H
trigger4= enemynear,backedgebodydist>=120 && !var(43) && !(enemynear,stateno=[120,155]) && random<(100+50*(life<333)*(enemynear,life<333))*(AIlevel**2/64.0)
trigger5= stateno=1000 && numhelper(1005)
trigger5= helper(1005),var(3) && p2bodydist x<=80 && !(enemynear,statetype=A) && random<(100+50*(life<333)*(enemynear,life<333))*(AIlevel**2/64.0)
trigger6= prevstateno!=750 && stateno=255 && movehit && enemynear,movetype=H && enemynear,backedgebodydist>=30
trigger6= !(enemynear,stateno=[120,155]) && random<(150+50*(life<333)*(enemynear,life<333))*(AIlevel**2/64.0)
trigger7= stateno=1000 && (animelemtime(5)>=2 && animelemtime(8)<0) || stateno=1020 && (animelemtime(12)>=2 && animelemtime(15)<0)
trigger7= (enemynear,stateno=[120,140]) && !(enemynear,statetype=A) && !(enemynear,stateno=40) && (p2bodydist x=[70,140]) && random<(100+50*(life<333)*(enemynear,life<333))*(AIlevel**2/64.0)

[State -1, HH Assault]
type = ChangeState
value = 3200
triggerAll = AILevel && NumEnemy && RoundState = 2 && StateType != A && power >= 3000 && var(20) <= 60
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) && p2statetype = S
trigger1 = (ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || stateno = 21)
trigger1 = (p2bodydist x = [0,70]) && (enemynear, vel x >= 0) && (enemynear, movetype != I) && !(EnemyNear, ctrl) && (enemynear, stateno != [120,155])
trigger2 = (stateno = 219 || stateno = 220 || stateno = 251 || stateno = 420 || stateno = 440) && movehit && Random < (450 * (AILevel ** 2 / 64.0))

; --- UNIVERSAL GUARD CANCEL (Added by Script) ---
[State -1, Universal Guard Cancel]
type = ChangeState
value = 1100
triggerall = !AILevel
triggerall = StateNo = [150, 155] ; Trigger only when in block stun (standing, crouching, or air)
triggerall = power >= 1000 ; Must have at least 1 bar of power
trigger1 = command = "x" && command = "a" ; Light Punch + Light Kick
trigger1 = command = "holdfwd"
