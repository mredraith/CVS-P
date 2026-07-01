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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15
; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1
 
;-| Super Motions |--------------------------------------------------------
[Command]
name = "QCFx2"
command = ~D, DF, F, D, DF
time = 24

[Command]
name = "QCBx2"
command = ~D, DB, B, D, DB
time = 24

;-| Special Motions |--------------------------------------------------------
[Command]
name = "DP"
command = ~F, D, DF
time = 16

[Command]
name = "RDP"
command = ~B, D, DB
time = 16

[Command]
name = "QCF"
command = ~D, DF, F
time = 15

[Command]
name = "QCB"
command = ~D, DB, B
time = 15

[Command]
name = "QCBD"
command = ~B, DB, D
time = 15

[Command]
name = "QCFD"
command = ~F, DF, D
time = 15

[Command]
name = "FwdFwd"
command = ~F, F
time = 14

[Command]
name = "BackBack"
command = ~B, B
time = 14

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10
 
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
buffer.time = 1
 
[Command]
name = "b"
command = b
time = 1
buffer.time = 1
 
[Command]
name = "c"
command = c
time = 1
buffer.time = 1
 
[Command]
name = "x"
command = x
time = 1
buffer.time = 1
 
[Command]
name = "y"
command = y
time = 1
buffer.time = 1
 
[Command]
name = "z"
command = z
time = 1
buffer.time = 1
 
[Command]
name = "start"
command = s
time = 1
buffer.time = 1
 
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

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

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_a"
command = /a
time = 1
buffer.time = 1
 
[Command]
name = "hold_b"
command = /b
time = 1
buffer.time = 1
 
[Command]
name = "hold_c"
command = /c
time = 1
buffer.time = 1
 
[Command]
name = "hold_x"
command = /x
time = 1
buffer.time = 1
 
[Command]
name = "hold_y"
command = /y
time = 1
buffer.time = 1
 
[Command]
name = "hold_z"
command = /z
time = 1
buffer.time = 1
 
[Command]
name = "hold_start"
command = /s
time = 1
buffer.time = 1

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
buffer.time = 1;Not sure if this is nessecary?

[Command]
name = "rlsy"
command = ~y
time = 1
buffer.time = 1

[Command]
name = "rlsz"
command = ~z
time = 1
buffer.time = 1

[Command]
name = "rlsa"
command = ~a
time = 1
buffer.time = 1

[Command]
name = "rlsb"
command = ~b
time = 1
buffer.time = 1

[Command]
name = "rlsc"
command = ~c
time = 1
buffer.time = 1

[Command]
name = "rlss"
command = ~s
time = 1
buffer.time = 1

;---------------------------------------------------------------------------
;Other
[Command]
name = "highjump"
command = $D, $U
time = 15

;---------------------------------------------------------------------------
;It is VERY important to note, that the placement of Changestates, 
;here are HEAVILY important with this buffering system! 
;Even more so than default! I'm adding this notation as a constant, 
;reminder. Don't forget DW to adjust as needed!

;Also ALWAYS and I mean ALWAYS add these two triggers:
;triggerall = !IsHelper(10371) 
;triggerall = numhelper(10371)
;To EVERY Changestate that uses the buffer. You know why!
[Statedef -1]

[State -1, Glide]
type = ChangeState
value = 555
triggerall = !ailevel
triggerall = statetype = A
triggerall = command = "holdupfwd" && time >25
trigger1 = statetype != S
trigger1 = ctrl

[State -1, Tick Fix]
type = CtrlSet
triggerall = !ctrl
trigger1 = (stateno = 52 || stateno = 101 || stateno = 5120) && !AnimTime
trigger2 = (stateno = [200,499]) && !AnimTime
trigger3 = (stateno = [760,762]) && !AnimTime
trigger4 = stateno = 810 && !AnimTime
trigger5 = (stateno = 5001 || stateno = 5011 || stateno = 151 || stateno = 153) && HitOver
trigger6 = (stateno = [700,715]) && !AnimTime
value = 1

[State -1, CtrlSet For Helpers];special thanks to 20S
type = CtrlSet
trigger1 = IsHelper
value = 0

;[State -1, Hit Count For Helpers];special thanks to 20S
;type = ParentVarAdd
;trigger1 = IsHelper
;trigger1 = MoveHit = 1
;trigger1 = !HitPauseTime 
;trigger1 = !(hitdefattr = SCA, AT)
;var(13) = 1

;[State -1, Juggle Count For Helpers];special thanks to 20S
;type = ParentVarAdd
;trigger1 = IsHelper
;trigger1 = MoveHit = 1
;trigger1 = !HitPauseTime 
;trigger1 = !(hitdefattr = SCA, AT)
;var(15) = 1

;[State -1, ProjContact];special thanks to 20S
;type = VarSet
;trigger1 = IsHelper
;trigger1 = MoveContact = 1 && NumTarget
;var(18) = 1

;[State -1, Root ProjContact];special thanks to 20S
;type = ParentVarSet
;trigger1 = IsHelper
;trigger1 = MoveContact = 1 && NumTarget
;var(18) = 1

;[State -1, Grand KF Upper]
;type = ChangeState
;value = 3100
;triggerall = !ailevel
;triggerall = !IsHelper(10371) ;Always add this as well!
;triggerall = numhelper(10371)
;triggerall = helper(10371), var(41)
;triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
;triggerall = roundstate = 2 && statetype != A
;triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)
;trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
;trigger2 = var(6)

;[State -1, Kung Fu Barrage Max]
;type = ChangeState
;value = 3050
;triggerall = !ailevel
;triggerall = !IsHelper(10371) ;Always add this as well!
;triggerall = numhelper(10371)
;triggerall = helper(10371), var(40)
;triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
;triggerall = roundstate = 2 && statetype != A
;triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
;trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
;trigger2 = var(6) || var(7)

;[State -1, Kung Fu Barrage]
;type = ChangeState
;value = 3000
;triggerall = !ailevel
;triggerall = !IsHelper(10371) ;Always add this as well!
;triggerall = numhelper(10371)
;triggerall = helper(10371), var(40)
;triggerall = (helper(10371), var(0))  || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7))  || (helper(10371), var(8)) || (helper(10371), var(9))
;triggerall = roundstate = 2 && statetype != A
;triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
;trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
;trigger2 = var(6)

;[State -1, EX KF Upper]
;type = ChangeState
;value = 1120
;triggerall = !ailevel
;triggerall = !IsHelper(10371) ;Always add this as well!
;triggerall = numhelper(10371)
;;triggerall = helper(10371), var(24)
;triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
;triggerall = roundstate = 2 && statetype != A
;triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
;trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
;trigger2 = var(5)

[State -1, EX KF Palm]
type = ChangeState
value = 3000
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 0)
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger2 = var(5)

;[State -1, EX KF Zankou]
;type = ChangeState
;value = 1430
;triggerall = !ailevel
;triggerall = !IsHelper(10371) ;Always add this as well!
;triggerall = numhelper(10371)
;triggerall = helper(10371), var(21)
;triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
;triggerall = roundstate = 2 && statetype != A
;triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
;trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
;trigger2 = var(5)

;[State -1, EX KF Blow]
;type = ChangeState
;value = 1220
;triggerall = !ailevel
;triggerall = !IsHelper(10371) ;Always add this as well!
;triggerall = numhelper(10371)
;triggerall = helper(10371), var(23)
;triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
;triggerall = roundstate = 2 && statetype != A
;triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
;trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
;trigger2 = var(5)
;
;[State -1, EX KF Knee]
;type = ChangeState
;value = 1330
;triggerall = !ailevel
;triggerall = !IsHelper(10371) ;Always add this as well!
;triggerall = numhelper(10371)
;triggerall = helper(10371), var(22)
;triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
;triggerall = roundstate = 2 && statetype != A
;triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
;trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
;trigger2 = var(5)

;[State -1, Strong Kung Fu Upper]
;type = ChangeState
;value = 1110
;triggerall = !ailevel
;triggerall = !IsHelper(10371) ;Always add this as well!
;triggerall = numhelper(10371)
;triggerall = helper(10371), var(24)
;triggerall = (helper(10371), var(2)) || (helper(10371), var(9))
;triggerall = roundstate = 2 && statetype != A
;trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
;trigger2 = var(5)
;
;[State -1, Light+Med Kung Fu Upper]
;type = ChangeState
;value = 1100
;triggerall = !ailevel
;triggerall = !IsHelper(10371) ;Always add this as well!
;triggerall = numhelper(10371)
;triggerall = helper(10371), var(24)
;triggerall = (helper(10371), var(0)) || (helper(10371), var(7)) || (helper(10371), var(1)) || (helper(10371), var(8))
;triggerall = roundstate = 2 && statetype != A
;trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
;trigger2 = var(5)
;
[State -1, Strong KF Palm]
type = ChangeState
value = 1000
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(2)) || (helper(10371), var(9))
triggerall = roundstate = 2 && statetype != A;
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger2 = var(5)

[State -1, Med KF Palm]
type = ChangeState
value = 1000
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(1)) || (helper(10371), var(8))
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger2 = var(5)

[State -1, Light KF Palm]
type = ChangeState
value = 1000
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(0)) || (helper(10371), var(7))
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger2 = var(5)

[State -1, Strong KF Palm]
type = ChangeState
value = 8804
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(2)) || (helper(10371), var(9))
triggerall = roundstate = 2 && statetype = A;
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger2 = var(5)

[State -1, Med KF Palm]
type = ChangeState
value = 8804
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(1)) || (helper(10371), var(8))
triggerall = roundstate = 2 && statetype = A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger2 = var(5)

[State -1, Light KF Palm]
type = ChangeState
value = 8804
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(0)) || (helper(10371), var(7))
triggerall = roundstate = 2 && statetype = A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger2 = var(5)
;
[State -1, Strong Kung Fu Zankou]
type = ChangeState
value = 1400
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(5)) || (helper(10371), var(12))
triggerall = roundstate = 2 && statetype = A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger2 = var(5)
;
[State -1, Med Kung Fu Zankou]
type = ChangeState
value = 1400
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(4)) || (helper(10371), var(11))
triggerall = roundstate = 2 && statetype = A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger2 = var(5)
;
[State -1, Light Kung Fu Zankou]
type = ChangeState
value = 1400
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(3)) || (helper(10371), var(10))
triggerall = roundstate = 2 && statetype = A
triggerall = statetype != S
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger2 = var(5)
;
[State -1, Strong Kung Fu Blow]
type = ChangeState
value = 8805
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(2)) || (helper(10371), var(9))
triggerall = roundstate = 2 && statetype = A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger2 = var(5)
;
[State -1, Light+Med Kung Fu Blow]
type = ChangeState
value = 8805
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(0)) || (helper(10371), var(7)) || (helper(10371), var(1)) || (helper(10371), var(8))
triggerall = roundstate = 2 && statetype = A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger2 = var(5)
;
;[State -1, Strong KF Knee]
;type = ChangeState
;value = 1320
;triggerall = !ailevel
;triggerall = !IsHelper(10371) ;Always add this!
;triggerall = numhelper(10371)
;triggerall = helper(10371), var(22)
;triggerall = (helper(10371), var(5)) || (helper(10371), var(12))
;triggerall = roundstate = 2 && statetype != A
;trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
;trigger2 = var(5)
;
;[State -1, Med KF Knee]
;type = ChangeState
;value = 1310
;triggerall = !ailevel
;triggerall = !IsHelper(10371) ;Always add this!
;triggerall = numhelper(10371)
;triggerall = helper(10371), var(22)
;triggerall = (helper(10371), var(4)) || (helper(10371), var(11))
;triggerall = roundstate = 2 && statetype != A
;trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
;trigger2 = var(5)
;
;[State -1, Light KF Knee]
;type = ChangeState
;value = 1300
;triggerall = !ailevel
;triggerall = !IsHelper(10371) ;Always add this!
;triggerall = numhelper(10371)
;triggerall = helper(10371), var(22)
;triggerall = (helper(10371), var(3)) || (helper(10371), var(10))
;triggerall = roundstate = 2 && statetype != A
;trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
;trigger2 = var(5)
;
;[State -1, Alpha Counter(Kick)]
;type = ChangeState
;value = 750
;triggerall = !ailevel
;triggerall = !IsHelper(10371) ;Always add this!
;triggerall = numhelper(10371)
;triggerall = helper(10371), var(20)
;triggerall = (helper(10371), var(3))  || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10))  || (helper(10371), var(11)) || (helper(10371), var(12))
;trigger1 = stateno = 150 || stateno = 152
;trigger1 = roundstate = 2 && statetype != A
;trigger1 = power >= 1000 && !var(20)
;
;[State -1, Alpha Counter(Punch)]
;type = ChangeState
;value = 750
;triggerall = !ailevel
;triggerall = !IsHelper(10371) ;Always add this!
;triggerall = numhelper(10371)
;triggerall = helper(10371), var(20)
;triggerall = (helper(10371), var(0))  || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7))  || (helper(10371), var(8)) || (helper(10371), var(9))
;trigger1 = stateno = 150 || stateno = 152
;trigger1 = roundstate = 2 && statetype != A
;trigger1 = power >= 1000 && !var(20)
;
;[State -1, Counter Movement]
;type = ChangeState
;value = 740
;triggerall = !ailevel
;triggerall = !IsHelper(10371) ;Always add this!
;triggerall = numhelper(10371)
;triggerall = helper(10371), var(14);LP+LK detection
;triggerall = (helper(10371),command = "holdfwd") || (helper(10371),command = "holdback")
;trigger1 = stateno = 150 || stateno = 152
;trigger1 = roundstate = 2 && statetype != A
;trigger1 = power >= 1000 && !var(20)
;
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = (helper(10371), var(0) && helper(10371), var(1)) || (helper(10371), var(1) && helper(10371), var(2)) || (helper(10371), var(0) && helper(10371), var(2))
trigger1 = (helper(10371),command = "holdfwd")|| (helper(10371),command = "holdback")
trigger1 = RoundState = 2 && statetype = S
trigger1 = ctrl

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14) ;LP+LK detection
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl || (stateno = [100,101])) && command = "holdfwd"
;^Usually I assumed you were supposed to specify the Tiny Buffer helper
; in conjuction with "hold" dir triggers. However doing this with rolls
; makes said movement absolute, as the helper doesn't turn with the player.
; So, in this instance, we leave it alone...? When facing right, it works
; as intended. Though when facing left, the helper doesn't turn(and isn't-
; supposed to) so the player will roll the opposite way of intention.

[State -1, Roll Back]
type = ChangeState
value = 715
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14) ;LP+LK detection
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl || (stateno = [100,101])) && command = "holdback"; <--- See above why no Tiny Buffer!

[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = !ailevel
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = roundstate = 2 && statetype != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (stateno = [100,101])
;^I'm gonna have to adapt this to the buffering system(maybe?) 
;I think it's good... I'll keep this as a reminder still though

[State -1, MAX Mode]
type = ChangeState
value = 770
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(16) ;HP+HK detection
triggerall = roundstate = 2 && statetype != A
triggerall = var(20) <= 0 && Power >= 1000
trigger1 = ctrl || (stateno = [100,101])

[State -1, Dodge]
type = ChangeState
value = 700
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14) ;LP+LK detection
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl || (stateno = [100,101]))

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ailevel
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !ailevel
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;|Normal Commands|--------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(0) ; The buffered version of LP
triggerall = (helper(10371),command != "holddown")
;^Be sure to include the dir buffer check if needed DW!
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2= (stateno = 200 || stateno = 230 || stateno = 400) && Time >=5

[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(1) ; The buffered version of MP
triggerall = (helper(10371),command != "holddown")  
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2= (stateno = 200 || stateno = 230 || stateno = 410 || stateno = 400) && Time >=5

[State -1, Stand Strong Punch]
type = ChangeState
value = 220 
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(2) ; The buffered version of HP
triggerall = (helper(10371),command != "holddown") 
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2= (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400 || stateno = 410) && Time >=5

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3) ; The buffered version of LK
triggerall = (helper(10371),command != "holddown")
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2= (stateno = 200 || stateno = 210 || stateno = 400 || stateno = 410) && Time >=5

[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
triggerall = (helper(10371),command != "holddown")
triggerall = command !="holdfwd"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2= (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400) && Time >=5

[State -1, Ram1]
type = ChangeState
value = 8800
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
triggerall = (helper(10371),command != "holddown")
triggerall = command ="holdfwd"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2= (stateno = 200 || stateno = 210 || stateno = 230 || stateno = 400) && Time >=5

[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = (helper(10371),command != "holddown")
triggerall = command !="holdfwd"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2= (stateno = 200 || stateno = 210 || stateno = 400 || stateno = 230) && Time >=5

[State -1, Ram2]
type = ChangeState
value = 8802
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = (helper(10371),command != "holddown")
triggerall = command ="holdfwd"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2= (stateno = 200 || stateno = 210 || stateno = 400 || stateno = 230) && Time >=5

[State -1, Crouching Light Punch]
type = ChangeState
value = 200
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(0) ; The buffered version of LP
triggerall = (helper(10371),command = "holddown")
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2= (stateno = 200 || stateno = 400 || stateno = 230) && Time >=5

[State -1, Crouching Medium Punch]
type = ChangeState
value = 210
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(1) ; The buffered version of MP
triggerall = (helper(10371),command = "holddown")
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2= (stateno = 200 || stateno = 400 || stateno = 230) && Time >=5

[State -1, Crouching Strong Punch]
type = ChangeState
value = 220
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(2) ; The buffered version of HP
triggerall = (helper(10371),command = "holddown")
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2= (stateno = 200 || stateno = 400 || stateno = 230) && Time >=5

[State -1, Crouching Light Kick]
type = ChangeState
value = 230
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3) ; The buffered version of LK
triggerall = (helper(10371),command = "holddown")
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2= (stateno = 200 || stateno = 400 || stateno = 230) && Time >=5

[State -1, Crouching Medium Kick]
type = ChangeState
value = 240
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
triggerall = (helper(10371),command = "holddown")
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2= (stateno = 230 || stateno = 400 || stateno = 230) && Time >=5

[State -1, Crouching Strong Kick]
type = ChangeState
value = 250
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = (helper(10371),command = "holddown")
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger2= (stateno = 240 || stateno = 400 || stateno = 230) && Time >=5

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(0) ; The buffered version of LP
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Med Punch]
type = ChangeState
value = 610
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(1) ; The buffered version of MP
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(2) ; The buffered version of HP
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3) ; The buffered version of LK
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Med Kick]
type = ChangeState
value = 640
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(6) ; The buffered version of Start
triggerall = statetype != A
triggerall = stateno != [200,699]
trigger1 = ctrl || (stateno = [100,101])
trigger2 = var(5)

;------------------------------------------------
; AI System Moves
;------------------------------------------------
[State -1, AI 5210 Fall Recovery (Air)]
type = changestate
value = 5210
trigger1 = ailevel && numenemy
trigger1 = roundstate = 2 && alive
; condition
trigger1 = stateno = 5050 && canrecover
trigger1 = vel y > const(movement.air.gethit.airrecover.threshold)
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))

[State -1, AI 5200 Fall Recovery (Ground)]
type = changestate
value = 5200
trigger1 = ailevel && numenemy
trigger1 = roundstate = 2 && alive
; condition
trigger1 = stateno = 5050 && canrecover
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))

[State -1, AI 40 Jump]
type = changestate
value = 40
triggerall = ailevel && numenemy
triggerall = roundstate = 2 && statetype != A && ctrl
; condition
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT
trigger1 = random < (200 * (ailevel ** 2.0 / 64.0))
; condition for Divine KFM in particular
trigger2 = numtarget(1220)
trigger2 = target, stateno = 1290
trigger2 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 710 Roll Forward]
type = changestate
value = 710
triggerall = ailevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (ctrl || (stateno = [100, 101]))
; condition
trigger1 = backedgebodydist > 40
trigger1 = enemynear, movetype = A && p2bodydist x < 80
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, AI 715 Roll Back]
type = ChangeState
value = 715
triggerall = ailevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = (ctrl || (stateno = [100, 101]))
; condition
trigger1 = p2bodydist x = [0, 32]
trigger1 = p2statetype != A && p2movetype = A
trigger1 = !(enemynear, hitdefattr = SCA, NA) || (enemynear, animtime = [-32, -42])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, AI 700 Dodge]
type = changestate
value = 700
triggerall = ailevel && numenemy
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl || (stateno = [100, 101]))
; condition
trigger1 = (enemynear, movetype = A) && !(enemynear, hitdefattr = SCA, AT) && (p2bodydist x = [0,60])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, AI 105 Dash Backward]
type = changestate
value = 105
triggerall = ailevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = ctrl && (stateno != [100, 106])
; condition
trigger1 = (enemynear, movetype = A) && backedgedist >= 80
trigger1 = (p2bodydist x = [const240p(80), const240p(120)])
trigger1 = (enemynear, vel x)
trigger1 = random < (ifelse((enemynear, hitdefattr = SC, AT), 250, 50) * (ailevel ** 2 / 64.0))
; condition
; condition
trigger2 = frontedgedist < backedgedist && p2statetype = L && p2bodydist x = [-8, 32]
trigger2 = random < 200 * (ailevel ** 2.0 / 64.0)

[State -1, AI 120 Guard]
type = changestate
value = 120
trigger1 = ailevel && numenemy
trigger1 = roundstate = 2 && inguarddist
; condition
trigger1 = ctrl && (stateno != [120, 155])
trigger1 = !var(26) || p2bodydist x >= 40
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = ifelse(statetype = A, ((var(3) != [1, 2]) || stateno = 5210), 1)
trigger1 = random < (cond((enemynear, hitdefattr = SCA, NA), 100, cond((enemynear, hitdefattr = SCA, SA), 333, 1000)) * (ailevel ** 2.0 / 64.0))

[State -1, AI 750 Zero Counter]
type = changestate
value = 750
trigger1 = ailevel && numenemy
trigger1 = stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && statetype != A
trigger1 = power >= 1000
; condition
trigger1 = (p2bodydist x = [0,50]) && (life < 0.5 * lifemax)
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))

[State -1, AI 740 Counter Movement]
type = ChangeState
value = 740
trigger1 = ailevel && numenemy
trigger1 = stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && statetype != A
trigger1 = power >= 1000 && !var(20)
; condition
trigger1 = (p2bodydist x = [0,50]) && (life < 0.5 * lifemax)
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))

[State -1, AI 730 Power Charge]
type = changestate
value = 730
triggerall = ailevel && numenemy
trigger1 = roundstate = 2 && statetype != A
; condition
trigger1 = ctrl && power < const(data.power) && power < powerMax && prevstateno != 5120 && !var(20)
trigger1 = !inguarddist && p2bodydist x >= 160
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, AI 770 MAX Mode]
type = ChangeState
value = 770
triggerall = ailevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = var(20) <= 0 && Power >= 1000
triggerall = enemynear, life > (enemynear, lifemax / 6.0)
triggerall = life > (lifemax / 5.0)
triggerall = ctrl || (stateno = [100,101])
; condition
trigger1 = p2bodydist x >= 160
trigger1 = enemynear, movetype != A
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = enemynear, stateno = 5110
trigger2 = enemynear, time < enemynear, const(data.liedown.time) - 20
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = p2statetype = L
trigger3 = p2bodydist x >= 160
trigger3 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, AI 800 Throw]
type = changestate
value = 800
triggerall = ailevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
;Clsn1: 1
;  Clsn1[0] = 7, -48, 35, 0
triggerall = (p2bodydist x = [-8, 35 - const(size.ground.front)]) && (p2dist y = [-72, 8])
; condition
trigger1 = ctrl
trigger1 = random < (125 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = ctrl && (p2stateno = [120,140])
trigger2 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 100 Run]
type = changestate
value = 100
triggerall = ailevel && numenemy
triggerall = roundstate = 2 && statetype = S
trigger1 = ctrl && (stateno != [100,106])
trigger1 = (enemynear, movetype != A) && p2bodydist x >= 120
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))

;------------------------------------------------
; AI Normal Moves
;------------------------------------------------
[State -1, AI 440 Crouching Medium Kick]
type = changestate
value = 440
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 17, -20, 81, 0
triggerall = p2bodydist x = [-const240p(8), (81 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [-20 * const(size.yscale), const240p(8)]
triggerall = p2statetype != A
; condition
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (150 * (enemynear, gethitvar(hittime) >= 4))
; condition
trigger2 = (((stateno = [200, 499]) && !animtime) || (ctrl && (enemynear, gethitvar(hitcount))))
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 4)
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 240 Stand Medium Kick]
type = changestate
value = 240
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 6
;Clsn1: 1
;  Clsn1[0] = 16, -43, 68, -23
triggerall = p2bodydist x = [-const240p(8), (68 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [-43 * const(size.yscale), const240p(8)]
triggerall = p2statetype != A
; condition
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (150 * (enemynear, gethitvar(hittime) >= 6))
; condition
trigger2 = (((stateno = [200, 499]) && !animtime) || (ctrl && (enemynear, gethitvar(hitcount))))
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 6)
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 410 Crouching Medium Punch]
type = changestate
value = 410
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 8, -51, 56, -36
; startup = 8
;Clsn1: 1
;  Clsn1[0] = 25, -88, 55, -43
triggerall = p2statetype != A
; condition
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (55 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [-88 * const(size.yscale), const240p(8)]
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (150 * (enemynear, gethitvar(hittime) >= 4))
; condition
trigger2 = (((stateno = [200, 499]) && !animtime) || (ctrl && (enemynear, gethitvar(hitcount))))
trigger2 = p2bodydist x = [-const240p(8), (56 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [-51 * const(size.yscale), const240p(8)]
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 5)
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 250 Standing Strong Kick]
type = changestate
value = 250
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 8
;Clsn1: 1
;  Clsn1[0] = 5, -70, 70, -50
triggerall = p2bodydist x = [-const240p(8), (70 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [-70 * const(size.yscale), const240p(8)]
triggerall = p2statetype != A
; condition
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (150 * (enemynear, gethitvar(hittime) >= 8))
; condition
trigger2 = (((stateno = [200, 499]) && !animtime) || (ctrl && (enemynear, gethitvar(hitcount))))
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 8)
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 430 Crouching Light Kick]
type = changestate
value = 430
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 10, -15, 68, 0
triggerall = p2bodydist x = [-const240p(8), (68 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [-15 * const(size.yscale), const240p(8)]
triggerall = p2statetype != A
; condition
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (150 * (enemynear, gethitvar(hittime) >= 4))
; condition
trigger2 = (((stateno = [200, 499]) && !animtime) || (ctrl && (enemynear, gethitvar(hitcount))))
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 4)
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 400 Crouching Light Punch]
type = changestate
value = 400
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 8, -51, 56, -36
triggerall = p2bodydist x = [-const240p(8), (56 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [-51 * const(size.yscale), const240p(8)]
triggerall = p2statetype != A
; condition
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (150 * (enemynear, gethitvar(hittime) >= 4))
; condition
trigger2 = (((stateno = [200, 499]) && !animtime) || (ctrl && (enemynear, gethitvar(hitcount))))
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 4)
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 210 Stand Medium Punch]
type = changestate
value = 210
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 7
;Clsn1: 1
;  Clsn1[0] = 27, -88, 73, -59
triggerall = p2bodydist x = [-const240p(8), (73 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [-88 * const(size.yscale), const240p(8)]
triggerall = p2statetype != A
; condition
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (150 * (enemynear, gethitvar(hittime) >= 7))
; condition
trigger2 = (((stateno = [200, 499]) && !animtime) || (ctrl && (enemynear, gethitvar(hitcount))))
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 7)
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 200 Stand Light Punch]
type = changestate
value = 200
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 5
;Clsn1: 1
;  Clsn1[0] = 17, -84, 63, -67
triggerall = p2bodydist x = [-const240p(8), (63 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [-84 * const(size.yscale), const240p(8)]
triggerall = p2statetype != C
; condition
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (150 * (enemynear, gethitvar(hittime) >= 5))
; condition
trigger2 = (((stateno = [200, 499]) && !animtime) || (ctrl && (enemynear, gethitvar(hitcount))))
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 5)
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 230 Stand Light Kick]
type = changestate
value = 230
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 5
;Clsn1: 1
;  Clsn1[0] = 16, -43, 68, -23
triggerall = p2bodydist x = [-const240p(8), (68 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [-43 * const(size.yscale), const240p(8)]
triggerall = p2statetype != A
; condition
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (150 * (enemynear, gethitvar(hittime) >= 5))
; condition
trigger2 = (((stateno = [200, 499]) && !animtime) || (ctrl && (enemynear, gethitvar(hitcount))))
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 5)
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 220 Stand Strong Punch]
type = changestate
value = 220 
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 7
;Clsn1: 1
;  Clsn1[0] = 16, -76, 65, -56
triggerall = p2bodydist x = [-const240p(8), (65 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [-76 * const(size.yscale), const240p(8)]
triggerall = p2statetype != C
; condition
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (150 * (enemynear, gethitvar(hittime) >= 7))
; condition
trigger2 = (((stateno = [200, 499]) && !animtime) || (ctrl && (enemynear, gethitvar(hitcount))))
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 7)
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 420 Crouching Strong Punch]
type = changestate
value = 420
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 7
;Clsn1: 1
;  Clsn1[0] = 20, -65, 64, -42
triggerall = p2bodydist x = [-const240p(8), (64 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [-65 * const(size.yscale), const240p(8)]
triggerall = p2statetype != A
; condition
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (150 * (enemynear, gethitvar(hittime) >= 7))
; condition
trigger2 = (((stateno = [200, 499]) && !animtime) || (ctrl && (enemynear, gethitvar(hitcount))))
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 7)
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 450 Crouching Strong Kick]
type = changestate
value = 450
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 7
;Clsn1: 1
;  Clsn1[0] = 17, -20, 81, 0
triggerall = p2bodydist x = [-const240p(8), (81 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [-20 * const(size.yscale), const240p(8)]
triggerall = (p2statetype = S || (p2statetype = C && p2movetype = H)) && !(enemynear, hitfall)
; condition
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (150 * (enemynear, gethitvar(hittime) >= 7))
; condition
trigger2 = (((stateno = [200, 499]) && !animtime) || (ctrl && (enemynear, gethitvar(hitcount))))
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 7)
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

;------------------------------------------------
;AI Jummping Normal Moves
;------------------------------------------------
[State -1, AI 620 Jump Strong Punch]
type = changestate
value = 620
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
;
triggerall = vel y > 0 || p2statetype = A
; startup = 7
;Clsn1: 1
;  Clsn1[0] = 15, -71, 58, -41
; condition
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (58 + (7 * (vel x + enemynear, vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-71 - 16) * const(size.yscale), (-41 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = vel y > 0 || p2statetype = A
trigger1 = random < (cond((p2statetype != A) && (pos y < -66 * const(size.yscale)), 25, 150) * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = vel y > 0
trigger2 = p2bodydist x > 0
trigger2 = p2dist y > -71 && abs(p2dist y) = [p2dist x, p2dist x + const240p(72)]
trigger2 = p2statetype != A
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 610 Jump Med Punch]
type = changestate
value = 610
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
;
triggerall = vel y > 0 || p2statetype = A
; startup = 7
;Clsn1: 1
;  Clsn1[0] = 15, -71, 58, -41
; condition
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (58 + (6 * (vel x + enemynear, vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-71 - 16) * const(size.yscale), (-41 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (cond((p2statetype != A) && (pos y < -66 * const(size.yscale)), 25, 150) * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = ctrl
trigger2 = vel y > 0
trigger2 = p2bodydist x > 0
trigger2 = p2dist y > -71 && abs(p2dist y) = [p2dist x, p2dist x + const240p(72)]
trigger2 = p2statetype != A
trigger2 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 640 Jump Med Kick]
type = changestate
value = 640
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
;
triggerall = vel y > 0 || p2statetype = A
; startup = 7
;Clsn1: 1
;  Clsn1[0] = -20, -47, 67, -26
; condition
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (67 + (7 * (vel x + enemynear, vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-47 - 16) * const(size.yscale), (-26 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (cond((p2statetype != A) && (pos y < -66 * const(size.yscale)), 25, 150) * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = vel y > 0
trigger2 = p2bodydist x > 0
trigger2 = p2dist y > -47 && abs(p2dist y) = [p2dist x, p2dist x + const240p(72)]
trigger2 = p2statetype != A
trigger2 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 650 Jump Strong Kick]
type = changestate
value = 650
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
;
triggerall = vel y > 0 || p2statetype = A
triggerall = p2statetype != C
; condition for Divine KFM in particular
triggerall = !numtarget(1220)
; startup = 7
;Clsn1: 1
;  Clsn1[0] = 1, -108, 44, -48
; condition
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (44 + (7 * (vel x + enemynear, vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-108 - 16) * const(size.yscale), (-48 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = vel y > 0 || p2statetype = A
trigger1 = random < (cond((p2statetype != A) && (pos y < -66 * const(size.yscale)), 25, 150) * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = vel y > 0
trigger2 = p2bodydist x > 0
trigger2 = p2dist y > -108 && abs(p2dist y) = [p2dist x, p2dist x + const240p(72)]
trigger2 = p2statetype != A
trigger2 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 600 Jump Light Punch]
type = changestate
value = 600
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
;
triggerall = vel y > 0 || p2statetype = A
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 10, -78, 51, -53
; condition
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (51 + (4 * (vel x + enemynear, vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-78 - 16) * const(size.yscale), (-53 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = vel y > 0 || p2statetype = A
trigger1 = random < (cond((p2statetype != A) && (pos y < -66 * const(size.yscale)), 25, 100) * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = vel y > 0
trigger2 = p2bodydist x > 0
trigger2 = p2dist y > -78 && abs(p2dist y) = [p2dist x, p2dist x + const240p(72)]
trigger2 = p2statetype != A
trigger2 = random < 0

[State -1, AI 630 Jump Light Kick]
type = changestate
value = 630
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
;
triggerall = vel y > 0 || p2statetype = A
; startup = 7
;Clsn1: 1
;  Clsn1[0] = 3, -56, 39, -34
; condition
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (39 + (7 * (vel x + enemynear, vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-56 - 16) * const(size.yscale), (-34 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = vel y > 0 || p2statetype = A
trigger1 = random < (cond((p2statetype != A) && (pos y < -66 * const(size.yscale)), 25, 100) * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = vel y > 0
trigger2 = p2bodydist x > 0
trigger2 = p2dist y > -56 && abs(p2dist y) = [p2dist x, p2dist x + const240p(72)]
trigger2 = p2statetype != A
trigger2 = random < 0

;------------------------------------------------
;AI EX Moves
;------------------------------------------------
[State -1, AI 1220 EX KF Blow]
type = changestate
value = 1220
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = p2statetype != A
triggerall = var(4)
; condition
; startup = 10
;Clsn1: 1
;  Clsn1[0] = -14, -76, 93, -50
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (93 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [-76 * const(size.yscale), const240p(8)]
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 5.0) * 93) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 5.0) * -76) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = !(stateno = 210)
trigger2 = p2statetype != A
trigger2 = enemynear, gethitvar(hittime) >= 10
trigger2 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1030 EX KF Palm]
type = changestate
value = 1030
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 499])
triggerall = p2statetype != A
; condition
; startup = 11
;Clsn1: 1
;  Clsn1[0] = 68, -66, 9, -44
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (116 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [-66 * const(size.yscale), const240p(8)]
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 5.0) * 98) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 5.0) * -66) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = p2statetype != A
trigger2 = enemynear, gethitvar(hittime) >= 11
trigger2 = random < (150 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1430 EX KF Zankou]
type = changestate
value = 1430
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = p2statetype != A
; condition
; startup = 9
;Clsn1: 1
;  Clsn1[0] = 22, -57, 48, 0
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (80 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [-57 * const(size.yscale), const240p(8)]
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 5.0) * 80) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 5.0) * -27) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = !(stateno = 210)
trigger2 = p2statetype != A
trigger2 = enemynear, gethitvar(hittime) >= 11
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1330 EX KF Knee]
type = changestate
value = 1330
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
; condition
; startup = 7
;Clsn1: 1
;  Clsn1[0] = 0, -70, 31, -33
;Clsn1: 1
;  Clsn1[0] = 3, -81, 34, -44
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-8, ((54 + ((7 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-81 - enemynear, vel y)* const(size.yscale), -8 - (enemynear, vel y * (enemynear, vel y > 0))]
trigger1 = enemynear, vel x >= 0
trigger1 = enemynear, vel y > const240p(-2)
trigger1 = p2movetype = A || (p2statetype = A && (enemynear, stateno != [120, 155]))
trigger1 = (p2bodydist x > 0) && (facing != enemynear, facing)
trigger1 = random < (cond(p2statetype != A, 25, 50 * (ailevel ** 2.0 / 64.0)))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-8, (54 * 2.0 / 3.0) - const(size.ground.front)]
trigger2 = p2dist y = [-32, 8]
trigger2 = movehit
trigger2 = !(stateno = 210)
trigger2 = p2statetype != A
trigger2 = enemynear, gethitvar(hittime) >= 7
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger3 = p2bodydist x = [-8, (54 + ((7 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)]
trigger3 = p2dist y = [-81, -8 - (enemynear, vel y * (enemynear, vel y > 0))]
trigger3 = enemynear, statetype = A && enemynear, hitfall
trigger3 = !(enemynear, stateno = [820, 821])
trigger3 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1120 EX KF Upper]
type = changestate
value = 1120
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
; condition
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 20, -64, 47, -36
;Clsn1: 1
;  Clsn1[0] = 24, -133, 47, -48
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-8, ((47 + ((4 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-133 - enemynear, vel y)* const(size.yscale), -8 - (enemynear, vel y * (enemynear, vel y > 0))]
trigger1 = enemynear, vel x >= 0
trigger1 = enemynear, vel y > const240p(-2)
trigger1 = p2movetype = A || (p2statetype = A && (enemynear, stateno != [120, 155]))
trigger1 = (p2bodydist x > 0) && (facing != enemynear, facing)
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-8, (47 * 2.0 / 3.0) - const(size.ground.front)]
trigger2 = p2dist y = [-32, 8]
trigger2 = movehit
trigger2 = p2statetype != A
trigger2 = enemynear, gethitvar(hittime) >= 4
trigger2 = stateno != 210 && stateno != 440
trigger2 = random < (25 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger3 = p2bodydist x = [-8, (47 + ((6 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)]
trigger3 = p2dist y = [-133, -8 - (enemynear, vel y * (enemynear, vel y > 0))]
trigger3 = enemynear, statetype = A && enemynear, hitfall
trigger3 = !(enemynear, stateno = [820, 821])
trigger3 = random < (50 * (ailevel ** 2.0 / 64.0))

;------------------------------------------------
;AI Special Moves
;------------------------------------------------
[State -1, AI 1110 Strong Kung Fu Upper]
type = changestate
value = 1110
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
; condition
; startup = 5
;Clsn1: 1
;  Clsn1[0] = 20, -64, 47, -36
; startup = 12
;Clsn1: 1
;  Clsn1[0] = 24, -133, 47, -48
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-8, ((47 + ((5 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-133 - enemynear, vel y)* const(size.yscale), -8 - (enemynear, vel y * (enemynear, vel y > 0))]
trigger1 = enemynear, vel x >= 0
trigger1 = enemynear, vel y > const240p(-2)
trigger1 = p2movetype = A || (p2statetype = A && (enemynear, stateno != [120, 155]))
trigger1 = (p2bodydist x > 0) && (facing != enemynear, facing)
trigger1 = random < (cond(p2statetype != A, 25, 200 * (ailevel ** 2.0 / 64.0)))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-8, 28 - const(size.ground.front)]
trigger2 = p2dist y = [-32, 8]
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 6
trigger2 = stateno != 210 && stateno != 440
trigger2 = p2statetype != A
trigger2 = random < (150 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger3 = p2bodydist x = [-8, ((47 + ((5 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-133 - enemynear, vel y) * const(size.yscale), -20 - (7 * enemynear, vel y * (enemynear, vel y > 0))]
trigger3 = enemynear, statetype = A && enemynear, hitfall
trigger3 = !(enemynear, stateno = [820, 821])
trigger3 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1100 Light+Med Kung Fu Upper]
type = changestate
value = 1100
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
; condition
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 20, -64, 47, -36
; startup = 10
;Clsn1: 1
;  Clsn1[0] = 24, -133, 47, -48
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-8, ((47 + ((4 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-133 - enemynear, vel y)* const(size.yscale), -8 - (enemynear, vel y * (enemynear, vel y > 0))]
trigger1 = enemynear, vel x >= 0
trigger1 = enemynear, vel y > const240p(-2)
trigger1 = p2movetype = A || (p2statetype = A && (enemynear, stateno != [120, 155]))
trigger1 = (p2bodydist x > 0) && (facing != enemynear, facing)
trigger1 = random < (cond(p2statetype != A, 25, 200 * (ailevel ** 2.0 / 64.0)))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-8, 28 - const(size.ground.front)]
trigger2 = p2dist y = [-32, 8]
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 4
trigger2 = stateno != 210 && stateno != 440
trigger2 = p2statetype != A
trigger2 = random < (150 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger3 = p2bodydist x = [-8, ((47 + ((4 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-133 - enemynear, vel y) * const(size.yscale), -20 - (7 * enemynear, vel y * (enemynear, vel y > 0))]
trigger3 = enemynear, statetype = A && enemynear, hitfall
trigger3 = !(enemynear, stateno = [820, 821])
trigger3 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1020 Strong KF Palm]
type = changestate
value = 1020
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200,499])
; condition
; startup = 10
;Clsn1: 1
;  Clsn1[0] = 68, -66, 69, -44
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (72 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [-66 * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x >= (40 * const(size.ground.front)) * const(size.xscale)
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-8, (98 * 2.0 / 3.0) - const(size.ground.front)]
trigger2 = p2dist y = [-66 * 2.0 / 3.0, 8]
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 10
trigger2 = p2statetype != A
trigger2 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1010 Med KF Palm]
type = changestate
value = 1010
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200,499])
; condition
; startup = 10
;Clsn1: 1
;  Clsn1[0] = 68, -66, 9, -44
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (70 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [-66 * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x >= (40 - const(size.ground.front)) * const(size.xscale)
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-8, (70 * 2.0 / 3.0) - const(size.ground.front)]
trigger2 = p2dist y = [-66 * 2.0 / 3.0, 8]
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 11
trigger2 = p2statetype != A
trigger2 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1000 Light KF Palm]
type = changestate
value = 1000
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200,499])
; condition
; startup = 9
;Clsn1: 1
;  Clsn1[0] = 68, -66, 9, -44
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (68 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [-66 * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x >= (40 * const(size.ground.front)) * const(size.xscale)
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 5.0) * 68) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 5.0) * -66) * const(size.yscale)), const240p(8)]
trigger2 = enemynear, gethitvar(hittime) >= 9
trigger2 = p2statetype != A
trigger2 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1420 Strong Kung Fu Zankou]
type = changestate
value = 1420
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 499])
; condition
; startup = 10
;Clsn1: 1
;  Clsn1[0] = 7, -74, 39, 0
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (48 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [-74 * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x >= (36 * const(size.ground.front)) * const(size.xscale)
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 5.0) * 48) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 5.0) * -74) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 9
trigger2 = p2statetype != A
trigger2 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1410 Med Kung Fu Zankou]
type = changestate
value = 1410
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 499])
; condition
; startup = 10
;Clsn1: 1
;  Clsn1[0] = 7, -74, 39, 0
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (48 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [-74 * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x >= (36 * const(size.ground.front)) * const(size.xscale)
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 5.0) * 48) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 5.0) * -74) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 9
trigger2 = p2statetype != A
trigger2 = random < (150 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1400 Light Kung Fu Zankou]
type = changestate
value = 1400
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 499])
; condition
; startup = 10
;Clsn1: 1
;  Clsn1[0] = 7, -74, 39, 0
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (39 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [-74 * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x >= (36 * const(size.ground.front)) * const(size.xscale)
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 5.0) * 39) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 5.0) * -74) * const(size.yscale)), const240p(8)]
trigger2 = enemynear, gethitvar(hittime) >= 10
trigger2 = p2statetype != A
trigger2 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, 1210 AI Strong Kung Fu Blow]
type = changestate
value = 1210
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 499])
; condition
; startup = 18
;Clsn1: 1
;  Clsn1[0] = -14, -76, 93, -50
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (93 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [-76 * const(size.yscale), const240p(8)]
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 5.0) * 93) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 5.0) * -76) * const(size.yscale)), const240p(8)]
trigger2 = enemynear, gethitvar(hittime) >= 18
trigger2 = p2statetype != A
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, 1200 AI Light+Med Kung Fu Blow]
type = changestate
value = 1200
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 499])
; condition
; startup = 14
;Clsn1: 1
;  Clsn1[0] = -14, -76, 93, -50
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (93 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [-76 * const(size.yscale), const240p(8)]
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 5.0) * 93) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 5.0) * -76) * const(size.yscale)), const240p(8)]
trigger2 = enemynear, gethitvar(hittime) >= 14
trigger2 = p2statetype != A
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, 1320 AI Strong KF Knee]
type = changestate
value = 1320
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
; condition
; startup = 7
;Clsn1: 1
;  Clsn1[0] = 0, -70, 31, -33
;Clsn1: 1
;  Clsn1[0] = 3, -81, 34, -44
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-8, ((54 + ((7 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-81 - enemynear, vel y)* const(size.yscale), -8 - (enemynear, vel y * (enemynear, vel y > 0))]
trigger1 = enemynear, vel x >= 0
trigger1 = enemynear, vel y > const240p(-2)
trigger1 = p2movetype = A || (p2statetype = A && (enemynear, stateno != [120, 155]))
trigger1 = (p2bodydist x > 0) && (facing != enemynear, facing)
trigger1 = random < (cond(p2statetype != A, 25, 150 * (ailevel ** 2.0 / 64.0)))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 5.0) * 54) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 5.0) * -70) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = !(stateno = 210)
trigger2 = enemynear, gethitvar(hittime) >= 7
trigger2 = p2statetype != A
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger3 = p2bodydist x = [-8, ((54 + ((7 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-81 - enemynear, vel y) * const(size.yscale), -20 - (7 * enemynear, vel y * (enemynear, vel y > 0))]
trigger3 = enemynear, statetype = A && enemynear, hitfall
trigger3 = !(enemynear, stateno = [820, 821])
trigger3 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, 1310 AI Med KF Knee]
type = changestate
value = 1310
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
; condition
; startup = 7
;Clsn1: 1
;  Clsn1[0] = 0, -70, 31, -33
;Clsn1: 1
;  Clsn1[0] = 3, -81, 34, -44
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-8, ((54 + ((7 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-81 - enemynear, vel y)* const(size.yscale), -8 - (enemynear, vel y * (enemynear, vel y > 0))]
trigger1 = enemynear, vel x >= 0
trigger1 = enemynear, vel y > const240p(-2)
trigger1 = p2movetype = A || (p2statetype = A && (enemynear, stateno != [120, 155]))
trigger1 = (p2bodydist x > 0) && (facing != enemynear, facing)
trigger1 = random < (cond(p2statetype != A, 25, 150 * (ailevel ** 2.0 / 64.0)))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 5.0) * 54) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 5.0) * -70) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = !(stateno = 210)
trigger2 = enemynear, gethitvar(hittime) >= 7
trigger2 = p2statetype != A
trigger2 = random < (25 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger3 = p2bodydist x = [-8, ((54 + ((7 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-81 - enemynear, vel y) * const(size.yscale), -20 - (7 * enemynear, vel y * (enemynear, vel y > 0))]
trigger3 = enemynear, statetype = A && enemynear, hitfall
trigger3 = !(enemynear, stateno = [820, 821])
trigger3 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, 1300 AI Light KF Knee]
type = changestate
value = 1300
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
; condition
; startup = 7
;Clsn1: 1
;  Clsn1[0] = 0, -70, 31, -33
;Clsn1: 1
;  Clsn1[0] = 3, -81, 34, -44
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-8, ((54 + ((7 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-81 - enemynear, vel y)* const(size.yscale), -8 - (enemynear, vel y * (enemynear, vel y > 0))]
trigger1 = enemynear, vel x >= 0
trigger1 = enemynear, vel y > const240p(-2)
trigger1 = p2movetype = A || (p2statetype = A && (enemynear, stateno != [120, 155]))
trigger1 = (p2bodydist x > 0) && (facing != enemynear, facing)
trigger1 = random < (cond(p2statetype != A, 25, 150 * (ailevel ** 2.0 / 64.0)))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 5.0) * 54) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 5.0) * -70) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = !(stateno = 210)
trigger2 = enemynear, gethitvar(hittime) >= 7
trigger2 = p2statetype != A
trigger2 = random < (25 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger3 = p2bodydist x = [-8, ((54 + ((7 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-81 - enemynear, vel y) * const(size.yscale), -20 - (7 * enemynear, vel y * (enemynear, vel y > 0))]
trigger3 = enemynear, statetype = A && enemynear, hitfall
trigger3 = !(enemynear, stateno = [820, 821])
trigger3 = random < (200 * (ailevel ** 2.0 / 64.0))

;------------------------------------------------
;AI Super Moves
;------------------------------------------------
[State -1, AI 3050 Kung Fu Barrage Max]
type = changestate
value = 3050
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = p2statetype != A || (stateno = [1000, 1030]) || stateno = 1430
triggerall = !numtarget(1030) && !numtarget(1220)
; condition
; startup = 11
;Clsn1: 1
;  Clsn1[0] = 68, -66, 69, -44
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (96 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [-66 * const(size.yscale), const240p(8)]
trigger1 = p2movetype != A
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(6) || var(7)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 5.0) * 96) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 5.0) * -66) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 11
trigger2 = !(stateno = 3000 && animelemtime(14) < 0)
trigger2 = random < (cond((stateno = [200, 499]), 50, 200 * (ailevel ** 2.0 / 64.0)))

[State -1, AI 3000 Kung Fu Barrage]
type = changestate
value = 3000
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = p2statetype != A || (stateno = [1000, 1030]) || stateno = 1430
triggerall = !numtarget(1030) && !numtarget(1220)
; condition
; startup = 11
;Clsn1: 1
;  Clsn1[0] = 68, -66, 9, -44
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (96 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [-66 * const(size.yscale), const240p(8)]
trigger1 = p2movetype != A
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(6)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 5.0) * 96) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 5.0) * -66) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 11
trigger2 = random < (cond((stateno = [200, 499]), 50, 200 * (ailevel ** 2.0 / 64.0)))

[State -1, AI 3100 Grand KF Upper]
type = changestate
value = 3100
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = !numtarget(1030) && !numtarget(1220)
; condition
; startup = 5
;Clsn1: 1
;  Clsn1[0] = 28, -133, 55, -40
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-8, ((55 + ((5 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-133 - enemynear, vel y)* const(size.yscale), -8 - (enemynear, vel y * (enemynear, vel y > 0))]
trigger1 = enemynear, vel x >= 0
trigger1 = enemynear, vel y > const240p(-2)
trigger1 = p2movetype = A || (p2statetype = A && (enemynear, stateno != [120, 155]))
trigger1 = (p2bodydist x > 0) && (facing != enemynear, facing)
trigger1 = random < (cond(p2statetype != A, 25, 50 * (ailevel ** 2.0 / 64.0)))
; condition
trigger2 = var(6)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 5.0) * 55) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 5.0) * -133) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 5
trigger2 = stateno != 210 && stateno != 440
trigger2 = !(movecontact >= 2)
trigger3 = random < (cond((stateno = [200, 499]), 50, 200 * (ailevel ** 2.0 / 64.0)))
; condition
trigger3 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger3 = p2bodydist x = [-8, ((55 + ((5 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-133 - enemynear, vel y) * const(size.yscale), -20 - (7 * enemynear, vel y * (enemynear, vel y > 0))]
trigger3 = enemynear, statetype = A && enemynear, hitfall
trigger3 = !(enemynear, stateno = [820, 821])
trigger3 = random < (50 * (ailevel ** 2.0 / 64.0))

;------------------------------------------------
[State -1, AI 195 Taunt]
type = changestate
value = 195
triggerall = ailevel && numenemy
triggerall = statetype != A && Life >= 0.5 * LifeMax
triggerall = (enemynear, Life) <= 0.5 * (enemynear, LifeMax)
; condition
trigger1 = ctrl || (stateno = [100,101])
trigger1 = p2dist x >= 160 && !(enemynear, ctrl)
trigger1 = (enemynear, movetype = H) && (enemynear, hitfall)
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))
