; _______________________________________________
;|            Cody Travers by Trololo            |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
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
name = "LastDreadDust"
command = ~D, DB, B, D, DB, B, x+y
time = 32

[Command]
name = "LastDreadDust"
command = ~D, DB, B, D, DB, B, y+z
time = 32

[Command]
name = "LastDreadDust"
command = ~D, DB, B, D, DB, B, x+z
time = 32

[Command]
name = "LastDreadDust"
command = ~D, B, D, B, x+y
time = 32

[Command]
name = "LastDreadDust"
command = ~D, B, D, B, y+z
time = 32

[Command]
name = "LastDreadDust"
command = ~D, B, D, B, x+z
time = 32

[Command]
name = "DeadEndIrony"
command = ~D, DF, F, D, DF, F, a
time = 32

[Command]
name = "DeadEndIrony"
command = ~D, DF, F, D, DF, F, b
time = 32

[Command]
name = "DeadEndIrony"
command = ~D, DF, F, D, DF, F, c
time = 32

[Command]
name = "DeadEndIrony"
command = ~D, DF, F, D, DF, F, ~a
time = 32

[Command]
name = "DeadEndIrony"
command = ~D, DF, F, D, DF, F, ~b
time = 32

[Command]
name = "DeadEndIrony"
command = ~D, DF, F, D, DF, F, ~c
time = 32

[Command]
name = "DeadEndIrony"
command = ~D, F, D, F, a
time = 32

[Command]
name = "DeadEndIrony"
command = ~D, F, D, F, b
time = 32

[Command]
name = "DeadEndIrony"
command = ~D, F, D, F, c
time = 32

[Command]
name = "MAXDeadEndIrony"
command = ~D, DF, F, D, DF, F, a+b
time = 32

[Command]
name = "MAXDeadEndIrony"
command = ~D, DF, F, D, DF, F, b+c
time = 32

[Command]
name = "MAXDeadEndIrony"
command = ~D, DF, F, D, DF, F, a+c
time = 32

[Command]
name = "MAXDeadEndIrony"
command = ~D, F, D, F, a+b
time = 32

[Command]
name = "MAXDeadEndIrony"
command = ~D, F, D, F, b+c
time = 32

[Command]
name = "MAXDeadEndIrony"
command = ~D, F, D, F, a+c
time = 32

[Command]
name = "FinalDestruction"
command = ~D, DF, F, D, DF, F, x
time = 32

[Command]
name = "FinalDestruction"
command = ~D, DF, F, D, DF, F, y
time = 32

[Command]
name = "FinalDestruction"
command = ~D, DF, F, D, DF, F, z
time = 32

[Command]
name = "FinalDestruction"
command = ~D, DF, F, D, DF, F, ~x
time = 32

[Command]
name = "FinalDestruction"
command = ~D, DF, F, D, DF, F, ~y
time = 32

[Command]
name = "FinalDestruction"
command = ~D, DF, F, D, DF, F, ~z
time = 32

[Command]
name = "FinalDestruction"
command = ~D, F, D, F, x
time = 32

[Command]
name = "FinalDestruction"
command = ~D, F, D, F, y
time = 32

[Command]
name = "FinalDestruction"
command = ~D, F, D, F, z
time = 32

[Command]
name = "MAXFinalDestruction"
command = ~D, DF, F, D, DF, F, x+y
time = 32

[Command]
name = "MAXFinalDestruction"
command = ~D, DF, F, D, DF, F, y+z
time = 32

[Command]
name = "MAXFinalDestruction"
command = ~D, DF, F, D, DF, F, x+z
time = 32

[Command]
name = "MAXFinalDestruction"
command = ~D, F, D, F, x+y
time = 32

[Command]
name = "MAXFinalDestruction"
command = ~D, F, D, F, y+z
time = 32

[Command]
name = "MAXFinalDestruction"
command = ~D, F, D, F, x+z
time = 32


;====================<SPECIAL MOTIONS>====================
[Command]
name = "Fake"
command = ~D, DF, F, s
time = 12

[Command]
name = "Fake"
command = ~D, DF, F, ~s
time = 12

[Command]
name = "Knife"
command = ~D, x+y
time = 6

[Command]
name = "Knife"
command = ~D, x+z
time = 6

[Command]
name = "Knife"
command = ~D, y+z
time = 6

[Command]
name = "Knife"
command = ~D, ~x+y
time = 6

[Command]
name = "Knife"
command = ~D, ~x+z
time = 6

[Command]
name = "Knife"
command = ~D, ~y+z
time = 6

[Command]
name = "Knife"
command = ~D+x+y
time = 8

[Command]
name = "Knife"
command = ~D+x+z
time = 8

[Command]
name = "Knife"
command = ~D+y+z
time = 8

[Command]
name = "RuffianKick"
command = ~D, DF, F, a
time = 12

[Command]
name = "RuffianKick"
command = ~D, DF, F, b
time = 12

[Command]
name = "RuffianKick"
command = ~D, DF, F, c
time = 12

[Command]
name = "RuffianKick"
command = ~D, DF, F, ~a
time = 12

[Command]
name = "RuffianKick"
command = ~D, DF, F, ~b
time = 12

[Command]
name = "RuffianKick"
command = ~D, DF, F, ~c
time = 12

[Command]
name = "EXRuffianKick"
command = ~D, DF, F, a+b
time = 12

[Command]
name = "EXRuffianKick"
command = ~D, DF, F, a+c
time = 12

[Command]
name = "EXRuffianKick"
command = ~D, DF, F, b+c
time = 12

[Command]
name = "EXRuffianKick"
command = ~D, DF, F, ~a+b
time = 12

[Command]
name = "EXRuffianKick"
command = ~D, DF, F, ~a+c
time = 12

[Command]
name = "EXRuffianKick"
command = ~D, DF, F, ~b+c
time = 12

[Command]
name = "CriminalUpper"
command = ~D, DB, B, x
time = 12

[Command]
name = "CriminalUpper"
command = ~D, DB, B, y
time = 12

[Command]
name = "CriminalUpper"
command = ~D, DB, B, z
time = 12

[Command]
name = "CriminalUpper"
command = ~D, DB, B, ~x
time = 12

[Command]
name = "CriminalUpper"
command = ~D, DB, B, ~y
time = 12

[Command]
name = "CriminalUpper"
command = ~D, DB, B, ~z
time = 12

[Command]
name = "EXCriminalUpper"
command = ~D, DB, B, x+y
time = 12

[Command]
name = "EXCriminalUpper"
command = ~D, DB, B, x+z
time = 12

[Command]
name = "EXCriminalUpper"
command = ~D, DB, B, y+z
time = 12

[Command]
name = "EXCriminalUpper"
command = ~D, DB, B, ~x+y
time = 12

[Command]
name = "EXCriminalUpper"
command = ~D, DB, B, ~x+z
time = 12

[Command]
name = "EXCriminalUpper"
command = ~D, DB, B, ~y+z
time = 12

[Command]
name = "BadStone"
command = ~D, DF, F, x
time = 12

[Command]
name = "BadStone"
command = ~D, DF, F, y
time = 12

[Command]
name = "BadStone"
command = ~D, DF, F, z
time = 12

[Command]
name = "BadStone"
command = ~D, DF, F, ~x
time = 12

[Command]
name = "BadStone"
command = ~D, DF, F, ~y
time = 12

[Command]
name = "BadStone"
command = ~D, DF, F, ~z
time = 12

[Command]
name = "EXBadStone"
command = ~D, DF, F, x+y
time = 12

[Command]
name = "EXBadStone"
command = ~D, DF, F, x+z
time = 12

[Command]
name = "EXBadStone"
command = ~D, DF, F, y+z
time = 12

[Command]
name = "EXBadStone"
command = ~D, DF, F, ~x+y
time = 12

[Command]
name = "EXBadStone"
command = ~D, DF, F, ~x+z
time = 12

[Command]
name = "EXBadStone"
command = ~D, DF, F, ~y+z
time = 12

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
trigger4 = StateNo = 810 && !AnimTime
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

[State -1, Last Dread Dust]
type = ChangeState
value = 3200
triggerAll = !AILevel
triggerAll = command = "LastDreadDust"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Dead End Irony]
type = ChangeState
value = 3150
triggerAll = !AILevel
triggerAll = command = "MAXDeadEndIrony"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Final Destruction]
type = ChangeState
value = 3050
triggerAll = !AILevel
triggerAll = command = "MAXFinalDestruction"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Dead End Irony]
type = ChangeState
value = 3100
triggerAll = !AILevel
triggerAll = command = "DeadEndIrony"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Final Destruction]
type = ChangeState
value = 3000
triggerAll = !AILevel
triggerAll = command = "FinalDestruction"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, EX Ruffian Kick]
type = ChangeState
value = 1230
triggerAll = !AILevel
triggerAll = command = "EXRuffianKick"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Criminal Upper]
type = ChangeState
value = 1130
triggerAll = !AILevel
triggerAll = command = "EXCriminalUpper"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Bad Stone]
type = ChangeState
value = 1030
triggerAll = !AILevel
triggerAll = command = "EXBadStone"
triggerAll = RoundState = 2 && StateType != A && !var(40)
triggerAll = power >= 500 && var(20) <= 60
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Knife Pick-Up (Enemy)]
type = ChangeState
value = 1400
triggerAll = !AILevel
triggerAll = command = "Knife" && !NumHelper(15000)
triggerAll = RoundState = 2 && StateType != A
triggerAll = Enemy,Name = "Cody Travers" && Enemy,AuthorName = "Trololo"
triggerAll = Enemy, NumProjID(15000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Knife Pick-Up (Own)]
type = ChangeState
value = 1400
triggerAll = !AILevel
triggerAll = command = "Knife" && NumHelper(15000)
triggerAll = RoundState = 2 && StateType != A
triggerAll = Helper(15000), var(40)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Bad Spray]
type = ChangeState
value = 1300
trigger1 = Command = "412p"
trigger1 = pos y >= -30 && vel y > 0
trigger1 = Alive && HitFall && GetHitVar(fall.recover)
trigger1 = MoveType = H && (StateNo = 5030 || StateNo = 5035 || StateNo = 5050 || StateNo = 5071)
ignoreHitPause = 1

[State -1, Ruffian Kick]
type = ChangeState
value = 1200
triggerAll = !AILevel
triggerAll = command = "RuffianKick"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Criminal Upper]
type = ChangeState
value = 1100
triggerAll = !AILevel
triggerAll = command = "CriminalUpper"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Bad Stone/Knife Throw]
type = ChangeState
value = ifelse(var(40), 1500, 1000)
triggerAll = !AILevel
triggerAll = command = "BadStone"
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
trigger1 = command = "c+z"
trigger1 = RoundState = 2
trigger1 = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

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

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp" || command = "kk")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Air Throw]
type = ChangeState
value = 850
triggerAll = !AILevel
triggerAll = RoundState = 2 && StateType = A
triggerAll = ctrl && pos y <= -32
trigger1 = (command = "holdfwd" || command = "holdback") && command = "kk"

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250
triggerAll = !AILevel
triggerall = command != "holddown" && command != "holdfwd" && command = "c"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crack Kick]
type = ChangeState
value = 256
triggerAll = !AILevel
triggerall = command != "holddown" && command = "holdfwd" && command = "c"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerAll = !AILevel
triggerAll = command != "holddown" && command != "holdfwd" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Stomach Blow]
type = ChangeState
value = ifelse(var(40), 210, 216)
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "holdfwd" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Light Punch]
type = ChangeState
value = 200 + (Abs(P2bodydist X) <= 25) * 5 * !var(40)
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3 = !var(40) && (stateno = 200 || stateno = 205) && animelemtime(3)>=2 && movecontact
trigger4 = !var(40) && stateno = 400 && animelemtime(3)>=1 && movecontact
trigger5 = var(40) && (stateno = 200 || stateno = 400) && ifelse(movecontact, animelemtime(3)>=-1, animelemtime(3)>=0)

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = !AILevel
triggerall = command != "holddown" && command = "a"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3 = (stateno = 200 || stateno = 205) && animelemtime(3)>=2 && movecontact
trigger4 = stateno = 400 && animelemtime(3)>=1 && movecontact

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "z"
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

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = !AILevel
triggerAll = command  ="holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "b"
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
trigger2 = var(4)
trigger3 = !var(40) && (stateno = 200 || stateno = 205) && animelemtime(3)>=2 && movecontact
trigger4 = !var(40) && stateno = 400 && animelemtime(3)>=1 && movecontact
trigger5 = var(40) && (stateno = 200 || stateno = 400) && ifelse(movecontact, animelemtime(3)>=-1, animelemtime(3)>=0)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3 = (stateno = 200 || stateno = 205) && animelemtime(3)>=2 && movecontact
trigger4 = stateno = 400 && animelemtime(3)>=1 && movecontact

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = !AILevel
triggerAll = command = "z"
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

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = !AILevel
triggerAll = command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Kick]
type = ChangeState
value = ifelse(vel x != 0, 645, 640)
triggerAll = !AILevel
triggerAll = command = "b"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = !AILevel
triggerAll = command = "x"
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

[State -1, Fake Bad Stone/Fake Knife Throw]
type = ChangeState
value = 197
triggerAll = !AILevel
triggerAll = command = "Fake"
triggerAll = StateType != A
triggerAll = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Taunt]
type = ChangeState
value = ifelse(command = "holdback", 196, 195)
triggerAll = !AILevel
triggerAll = command = "start"
triggerAll = StateType != A
triggerAll = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(6)



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
trigger1 = Random < (100 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0,90])

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
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power < const(data.power) && !var(20)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20)
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (50 * (AILevel ** 2 / 64.0))

;[State -1, Custom Combo]
;type = ChangeState
;value = ifElse(StateType = A, 905, 900)
;trigger1 = AILevel && NumEnemy
;trigger1 = RoundState = 2 && (StateType != A || (vel x > 0 && vel y >= 0))
;trigger1 = Power >= 1000 && !var(20)
;trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101]))
;trigger1 = (EnemyNear, MoveType = A) && (P2BodyDist x = [0,40]) && (P2Dist y = [-60,60]) && (EnemyNear, vel y >= 0)
;trigger1 = (EnemyNear, StateNo = [200,699]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,24]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Air Throw]
type = ChangeState
value = 850
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = A
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = ctrl && pos y <= -32
trigger1 = P2StateType = A && Random < (200 * (AILevel ** 2 / 64.0))
trigger1 = (P2Dist x = [-20,33]) && (P2Dist y = [-118,48])

[State -1, Run]
type = ChangeState
value = 100
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100,106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = !var(40) && (P2BodyDist x = [0,90]) && (P2Dist y = [-50,0]) && P2StateType != C && P2StateType != L
triggerAll = var(40) && (P2BodyDist x = [0,105]) && (P2Dist y = [-40,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 32.0))

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,120]) && (P2Dist y = [-60,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crack Kick]
type = ChangeState
value = 256
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,150]) && (P2Dist y = [-50,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && Statetype != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,80]) && (p2dist y = [-75,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,100]) && (P2Dist y = [-20,20]) && P2StateType != L
triggerAll = (P2StateType = S || (P2StateType = C && P2MoveType = H))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 6) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = !var(40) && (P2BodyDist x = [0,85]) && (P2Dist y = [-5,35]) && P2StateType = S
triggerAll = var(40) && (P2BodyDist x = [0,95]) && (P2Dist y = [-5,35]) && P2StateType = S
trigger1 = ctrl && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,85]) && (P2Dist y = [-15,65]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = !var(40) && (P2BodyDist x = [0,60]) && (P2Dist y = [-85,0]) && P2StateType != C && P2StateType != L
triggerAll = var(40) && (P2BodyDist x = [0,105]) && (P2Dist y = [-45,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = (PrevStateNo = 200 || PrevStateNo = 205  || PrevStateNo = 400) && (StateNo = 197 || StateNo = 1400) && var(40) && var(4)
trigger3 = (PrevStateNo = 210 || PrevStateNo = 410) && (StateNo = 197 || StateNo = 1400) && var(40) && var(4)
trigger3 = (PrevStateNo = 220 || PrevStateNo = 420) && (StateNo = 197 || StateNo = 1400) && var(40) && var(4)
trigger3 = (PrevStateNo = 230 || PrevStateNo = 430) && (StateNo = 197 || StateNo = 1400) && var(40) && var(4)

[State -1, Stomach Blow]
type = ChangeState
value = 216
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !var(40)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,75]) && (P2Dist y = [-50,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,105]) && (P2Dist y = [-20,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 32.0))

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = !var(40) && (P2BodyDist x = [0,85]) && (P2Dist y = [-45,0]) && P2StateType != L
triggerAll = var(40) && (P2BodyDist x = [0,105]) && (P2Dist y = [-40,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,105]) && (P2Dist y = [-50,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = !var(40) && (P2BodyDist x = [0,70]) && (P2Dist y = [-5,35]) && P2StateType = S
triggerAll = var(40) && (P2BodyDist x = [0,100]) && (P2Dist y = [-5,35]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Kick]
type = ChangeState
value = ifelse(vel x != 0, 645, 640)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,95]) && (P2Dist y = [-5,45]) && P2StateType != C && P2StateType != L
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Punch]
type = ChangeState
value = 200 + (Abs(P2bodydist X) <= 25) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = !var(40) && (P2BodyDist x = [0,85]) && (P2Dist y = [-40,0]) && P2StateType != C && P2StateType != L
triggerAll = var(40) && (P2BodyDist x = [0,100]) && (P2Dist y = [-35,0]) && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = !var(40) && (stateno = 200 || stateno = 205) && animelemtime(3)>=2 && movecontact && Random < (250 * (AILevel ** 2 / 64.0))
trigger4 = !var(40) && stateno = 400 && animelemtime(3)>=1 && movecontact && Random < (250 * (AILevel ** 2 / 64.0))
trigger5 = var(40) && (stateno = 200 || stateno = 400) && animelemtime(3)>=-1 && movecontact && Random < (250 * (AILevel ** 2 / 32.0))

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,90]) && (P2Dist y = [-5,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = (stateno = 200 || stateno = 205) && animelemtime(3)>=2 && movecontact && Random < (250 * (AILevel ** 2 / 64.0))
trigger4 = stateno = 400 && animelemtime(3)>=1 && movecontact && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = !var(40) && (P2BodyDist x = [0,80]) && (P2Dist y = [-15,0]) && P2StateType != L
triggerAll = var(40) && (P2BodyDist x = [0,100]) && (P2Dist y = [-10,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = !var(40) && (stateno = 200 || stateno = 205) && animelemtime(3)>=2 && movecontact && Random < (250 * (AILevel ** 2 / 64.0))
trigger4 = !var(40) && stateno = 400 && animelemtime(3)>=1 && movecontact && Random < (250 * (AILevel ** 2 / 64.0))
trigger5 = var(40) && (stateno = 200 || stateno = 400) && animelemtime(3)>=-1 && movecontact && Random < (250 * (AILevel ** 2 / 32.0))

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,90]) && (P2Dist y = [-5,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = (stateno = 200 || stateno = 205) && animelemtime(3)>=2 && movecontact && Random < (250 * (AILevel ** 2 / 64.0))
trigger4 = stateno = 400 && animelemtime(3)>=1 && movecontact && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = !var(40) && (P2BodyDist x = [0,80]) && (P2Dist y = [-15,25]) && P2StateType = A
triggerAll = var(40) && (P2BodyDist x = [0,95]) && (P2Dist y = [-5,35]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,60]) && (P2Dist y = [-25,15]) && P2StateType != A
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (ifElse(P2Dist x < 0, 250, 50) * (AILevel ** 2 / 64.0))

[State -1, Knife Pick-Up (Enemy)]
type = ChangeState
value = 1400
triggerAll = AILevel && NumEnemy
triggerAll = !NumHelper(15000)
triggerAll = RoundState = 2 && StateType != A
triggerAll = Enemy,Name = "Cody Travers" && Enemy,AuthorName = "Trololo"
triggerAll = (Enemy, NumProjID(15000)) && (p2dist x >= 125 && Enemy, StateType = L) && Random < (250 * (AILevel ** 2 / 32.0))
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Knife Pick-Up (Own)]
type = ChangeState
value = 1400
triggerAll = AILevel && NumEnemy
triggerAll = NumHelper(15000)
triggerAll = RoundState = 2 && StateType != A
triggerAll = (Helper(15000), var(40)) && (p2dist x >= 125 && Enemy, StateType = L) && Random < (250 * (AILevel ** 2 / 32.0))
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Bad Spray]
type = ChangeState
value = 1300
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive && HitFall && GetHitVar(fall.recover)
trigger1 = MoveType = H && (StateNo = 5030 || StateNo = 5035 || StateNo = 5050 || StateNo = 5071)
trigger1 = pos y >= -20 && vel y > 0 && P2BodyDist x <= 85 && Random < (250 * (AILevel ** 2 / 64.0))
ignoreHitPause = 1

[State -1, Ruffian Kick]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1230, 1200)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 7 || var(20))
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200, 499])
triggerAll = (P2BodyDist x = [-150,150]) && P2StateType != A && (P2StateType != L || P2StateNo = 5120) || (P2Dist x = [-120,120]) && (P2Dist y = [-70,0]) && P2StateType = A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x <= 170 && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 6
trigger3 = PrevStateNo = 1100 && !var(10) && MoveHit && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 6

[State -1, Criminal Upper]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1130, 1100)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 2 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-60,32])
triggerAll = ((P2BodyDist x = [-100,100]) && P2StateType != A) || ((P2BodyDist x = [-110,110]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Bad Stone/Bad Knife]
type = ChangeState
value = ifelse(var(40), 1500, ifElse(Power >= 500 && Random < 100, 1030, 1000))
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 75
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Last Dread Dust]
type = ChangeState
value = 3200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 3000 && !var(20)
triggerAll = !var(16) && (var(15) < 15 || var(20) || (StateNo = [200,499]))
triggerAll = !(EnemyNear, ctrl) && P2StateNo != 5201
triggerAll = P2Dist x >= 0 && P2BodyDist x <= 155
triggerAll = (EnemyNear, HitOver || !(EnemyNear, MoveType = H) || var(21)) && !(EnemyNear, StateNo = [150,155]) && EnemyNear, Anim != 5040
triggerAll = !(EnemyNear, StateNo = 40 && EnemyNear, Time >= 1) && !(EnemyNear, StateNo = 52 && !(EnemyNear, ctrl) && EnemyNear, PrevStateNo = [5020,5040])
triggerAll = P2StateType != L && (P2Dist y = [-70,0])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, MAX Dead End Irony]
type = ChangeState
value = 3150
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 12 || var(20) || (StateNo = [200,499]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-115,115]) && ifelse(frontedgedist <= 80, (P2Dist y = [-60,0]), P2Dist y = 0)
triggerAll = P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = var(8) && StateNo = 3005 && (AnimElemTime(36)>=0 && AnimElemTime(39) < 0) && MoveHit && Random < 250 * (AILevel ** 2 / 64.0)
trigger3 = EnemyNear, GetHitVar(HitTime) >= 4
trigger4 = var(8) && StateNo = 3100 && (AnimElemTime(22) >= 0 && AnimElemTime(24) < 0) && MoveHit && Random < 250 * (AILevel ** 2 / 64.0)
trigger4 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, MAX Final Destruction]
type = ChangeState
value = 3050
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 12 || var(20) || (StateNo = [200,499]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [-150,150])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = var(8) && StateNo = 3005 && (AnimElemTime(36)>=0 && AnimElemTime(39) < 0) && MoveHit && Random < 250 * (AILevel ** 2 / 64.0)
trigger3 = EnemyNear, GetHitVar(HitTime) >= 4
trigger4 = var(8) && StateNo = 3100 && (AnimElemTime(22) >= 0 && AnimElemTime(24) < 0) && MoveHit && Random < 250 * (AILevel ** 2 / 64.0)
trigger4 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Dead End Irony]
type = ChangeState
value = 3100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 12 || var(20) || (StateNo = [200,499]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-100,100]) && ifelse(frontedgedist <= 80, (P2Dist y = [-40,0]), P2Dist y = 0)
triggerAll = P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Final Destruction]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 12 || var(20) || (StateNo = [200,499]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [-150,150])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Fake-Out]
type = ChangeState
value = 197
triggerAll = AILevel && NumEnemy
triggerAll = StateType != A && Enemy,AILevel = 0
trigger1 = ctrl
trigger1 = P2Dist x >= 160 && !(EnemyNear, ctrl)
trigger1 = (EnemyNear, MoveType = H) && (EnemyNear, HitFall) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Taunt]
type = ChangeState
value = ifelse(random, 196, 195)
triggerAll = AILevel && NumEnemy
triggerAll = StateType != A && Life >= 0.5 * LifeMax
triggerAll = (EnemyNear, Life) <= 0.5 * (EnemyNear, LifeMax)
trigger1 = ctrl
trigger1 = P2Dist x >= 160 && !(EnemyNear, ctrl)
trigger1 = (EnemyNear, MoveType = H) && (EnemyNear, HitFall) && Random < (50 * (AILevel ** 2 / 64.0))
