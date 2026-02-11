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
command.buffer.time = 4

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
name = "TyrantSlaughter"			;systemchange
command = ~D,F,b+c;~D, DF, F, D, DF, F, ~a
time = 30

[Command]
name = "TyrantSlaughter"			;systemchange
command = ~D,F,b+c
time = 30

[Command]
name = "TyrantSlaughter"			;systemchange
command = ~D,F,b+c
time = 30


[Command]
name = "MAXTyrantSlaughter"			;systemchange
command = ~D, DF, F, D, DF, F, b+c;~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "MAXTyrantSlaughter"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[Command]
name = "MAXTyrantSlaughter"			;systemchange
command = ~D, DF, F, D, DF, F, b+c;~D, DF, F, D, DF, F, a+c
time = 30


[Command]
name = "AegisReflector"
command = ~D, DF, F, D, DF, F, x
time = 32

[Command]
name = "AegisReflector"
command = ~D, DF, F, D, DF, F, y
time = 32

[Command]
name = "AegisReflector"
command = ~D, DF, F, D, DF, F, z
time = 32

[Command]
name = "AegisReflector"
command = ~D, DF, F, D, DF, F, ~x
time = 32

[Command]
name = "AegisReflector"
command = ~D, DF, F, D, DF, F, ~y
time = 32

[Command]
name = "AegisReflector"
command = ~D, DF, F, D, DF, F, ~z
time = 32


[Command]
name = "MAXAegisReflector"
command = ~D, DF, F, D, DF, F, x+y
time = 32

[Command]
name = "MAXAegisReflector"
command = ~D, DF, F, D, DF, F, y+z
time = 32

[Command]
name = "MAXAegisReflector"
command = ~D, DF, F, D, DF, F, x+z
time = 32


[Command]
name = "TemporalThunder"
command = ~D, DB, B, D, DB, B, x
time = 32

[Command]
name = "TemporalThunder"
command = ~D, DB, B, D, DB, B, y
time = 32

[Command]
name = "TemporalThunder"
command = ~D, DB, B, D, DB, B, z
time = 32

[Command]
name = "TemporalThunder"			;systemchange
command = ~D,B,y+z;~D, DB, B, D, DB, B, ~x
time = 32

[Command]
name = "TemporalThunder"			;systemchange
command = ~D,B,y+z
time = 32

[Command]
name = "TemporalThunder"			;systemchange
command = ~D,B,y+z
time = 32


[Command]
name = "MAXTemporalThunder"
command = ~D, DB, B, D, DB, B, x+y
time = 32

[Command]
name = "MAXTemporalThunder"
command = ~D, DB, B, D, DB, B, y+z
time = 32

[Command]
name = "MAXTemporalThunder"			;systemchange
command = ~D, DB, B, D, DB, B, y+z;~D, DB, B, D, DB, B, x+z
time = 32


[Command]
name = "VesuvianBurnout"			;systemchange
command = ~D,B,s;~D, DF, F, D, DB, B, x+y
time = 32

[Command]
name = "VesuvianBurnout"			;systemchange
command = ~D,B,s;~D, DF, F, D, DB, B, y+z
time = 32

[Command]
name = "VesuvianBurnout"			;systemchange
command = ~D,B,s;~D, DF, F, D, DB, B, x+z
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
command = ~35$B, F, a
time = 16

[Command]
name = "ChariotTackle"
command = ~35$B, F, b
time = 16

[Command]
name = "ChariotTackle"
command = ~35$B, F, c
time = 16

[Command]
name = "ChariotTackle"		;systemchange
command = ~D,F,a;~35$B, F, ~a
time = 16

[Command]
name = "ChariotTackle"		;systemchange
command = ~D,F,b
time = 16

[Command]
name = "ChariotTackle"		;systemchange
command = ~D,F,c
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
name = "EXChariotTackle"		;systemchange
command = ~D,F,a+b;~35$B, F, a+b
time = 16

[Command]
name = "EXChariotTackle"		;systemchange
command = ~D,F,a+b;~35$B, F, b+c
time = 16

[Command]
name = "EXChariotTackle"		;systemchange
command = ~D,F,a+b;~35$B, F, c+a
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
name = "ViolenceKneeDrop"		;systemchange
command = ~D,B,a;~45$D, $U, ~a
time = 16

[Command]
name = "ViolenceKneeDrop"		;systemchange
command = ~D,B,b
time = 16

[Command]
name = "ViolenceKneeDrop"		;systemchange
command = ~D,B,c
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
name = "EXViolenceKneeDrop"		;systemchange
command = ~D,B,a+b;~45$D, $U, a+b
time = 16

[Command]
name = "EXViolenceKneeDrop"		;systemchange
command = ~D,B,b+c
time = 16

[Command]
name = "EXViolenceKneeDrop"		;systemchange
command = ~D,B,a+c
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
name = "DangerousHeadbutt"		;systemchange
command = ~D,B,x;~45$D, $U, ~x
time = 16

[Command]
name = "DangerousHeadbutt"		;systemchange
command = ~D,B,y
time = 16

[Command]
name = "DangerousHeadbutt"		;systemchange
command = ~D,B,z
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
name = "EXDangerousHeadbutt"		;systemchange
command = ~D,B,x+y;~45$D, $U, x+y
time = 16

[Command]
name = "EXDangerousHeadbutt"		;systemchange
command = ~D,B,x+y;~45$D, $U, y+z
time = 16

[Command]
name = "EXDangerousHeadbutt"		;systemchange
command = ~D,B,x+y;~45$D, $U, z+x
time = 16


[Command]
name = "412p"
command = ~B, DB, D, x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, z
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~z
time = 16


[Command]
name = "412k"
command = ~B, DB, D, a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k"
command = ~B, DB, D, c
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~c
time = 16

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

; --- Chain: LP -> MP (Added by Script) ---
[State -1, Chain_200_to_210]
type = ChangeState
value = 210
triggerall = StateNo = 200
triggerall = MoveContact = 1
trigger1 = command = "y"

; --- Chain: LP -> HP (Added by Script) ---
[State -1, Chain_200_to_220]
type = ChangeState
value = 220
triggerall = StateNo = 200
triggerall = MoveContact = 1
trigger1 = command = "z"

; --- Chain: MP -> HP (Added by Script) ---
[State -1, Chain_210_to_220]
type = ChangeState
value = 220
triggerall = StateNo = 210
triggerall = MoveContact = 1
trigger1 = command = "z"

; --- Chain: cr.LP -> cr.MP (Added by Script) ---
[State -1, Chain_400_to_410]
type = ChangeState
value = 410
triggerall = StateNo = 400
triggerall = MoveContact = 1
trigger1 = command = "y"

; --- Chain: cr.LP -> cr.HP (Added by Script) ---
[State -1, Chain_400_to_420]
type = ChangeState
value = 420
triggerall = StateNo = 400
triggerall = MoveContact = 1
trigger1 = command = "z"

; --- Chain: cr.MP -> cr.HP (Added by Script) ---
[State -1, Chain_410_to_420]
type = ChangeState
value = 420
triggerall = StateNo = 410
triggerall = MoveContact = 1
trigger1 = command = "z"

; --- Chain: LK -> MK (Added by Script) ---
[State -1, Chain_230_to_240]
type = ChangeState
value = 240
triggerall = StateNo = 230
triggerall = MoveContact = 1
trigger1 = command = "b"

; --- Chain: LK -> HK (Added by Script) ---
[State -1, Chain_230_to_250]
type = ChangeState
value = 250
triggerall = StateNo = 230
triggerall = MoveContact = 1
trigger1 = command = "c"

; --- Chain: MK -> HK (Added by Script) ---
[State -1, Chain_240_to_250]
type = ChangeState
value = 250
triggerall = StateNo = 240
triggerall = MoveContact = 1
trigger1 = command = "c"

; --- Chain: cr.LK -> cr.MK (Added by Script) ---
[State -1, Chain_430_to_440]
type = ChangeState
value = 440
triggerall = StateNo = 430
triggerall = MoveContact = 1
trigger1 = command = "b"

; --- Chain: cr.LK -> cr.HK (Added by Script) ---
[State -1, Chain_430_to_450]
type = ChangeState
value = 450
triggerall = StateNo = 430
triggerall = MoveContact = 1
trigger1 = command = "c"

; --- Chain: cr.MK -> cr.HK (Added by Script) ---
[State -1, Chain_440_to_450]
type = ChangeState
value = 450
triggerall = StateNo = 440
triggerall = MoveContact = 1
trigger1 = command = "c"


[State -1]			;addAI
Type=Changestate
Triggerall=Inguarddist
Triggerall=AIlevel ; and the AI is on
Triggerall=ctrl ; and we have control
Trigger1 = 1
value=120

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

[State -1, Roll Forward]		;;
type = ChangeState
value = 710
triggerAll = AILevel
triggerAll = RoundState = 2 && random < 500 && StateType != A
triggerAll = p2dist x <= 100 && backedgedist <= 80
trigger1 = ctrl || (StateNo = [100,101])
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
trigger2 = var(7) || var(8)

[State -1, Vesuvian Burnout]		;addAI
type = ChangeState
value = 3300
triggerAll = AILevel
triggerAll = random < 500 && p2dist x <= 80 && p2statetype != A && p2statetype != L && RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Aegis Reflector]
type = ChangeState
value = 3250
triggerAll = !AILevel
triggerAll = command = "MAXAegisReflector"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)
trigger3 = StateNo = 1003 && AnimElemTime(5) >= 0
trigger4 = StateNo = 1100 && MoveContact && AnimElemTime(4) >= 0

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
trigger4 = StateNo = 1100 && MoveContact && AnimElemTime(4) >= 0

[State -1, Aegis Reflector]		;;
type = ChangeState
value = 3200
triggerAll = AILevel
triggerAll = RoundState = 2 && random < 500 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60 && !inguarddist
triggerall = p2statetype != A && p2dist x >= 140 && p2dist x <= 160 
triggerall = var(10) := 0
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Aegis Reflector]		;;
type = ChangeState
value = 3200
triggerAll = AILevel
triggerAll = RoundState = 2 && random < 500 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60 && !inguarddist
triggerall = p2statetype != A && p2dist x > 170 && p2dist x <= 220 
triggerall = var(10) := 1
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Aegis Reflector]		;;
type = ChangeState
value = 3200
triggerAll = AILevel
triggerAll = RoundState = 2 && random < 500 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60 && !inguarddist
triggerall = p2statetype != A && p2dist x > 170 && p2dist x <= 230 
triggerall = (enemynear, stateno = [150, 151])
triggerall = (enemynear, stateno = [5000, 5001])
triggerall = var(10) := 2
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

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

[State -1, Tyrant Slaughter]		;addAI
type = ChangeState
value = 3100
triggerAll = AILevel
triggerAll = random < 500 && RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
triggerAll = p2statetype != L && p2statetype != A && p2dist x <= 120 && p2dist x >= 100 && p2movetype != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])

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

[State -1, Violence Knee Drop]		;addAI
type = ChangeState
value = 1300
triggerAll = AILevel
triggerAll = random < 400 && RoundState = 2 && p2statetype != L && p2statetype != A && p2dist x >= 70 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
;trigger2 = var(6)

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

[State -1, EX Chariot Tackle]		;;
type = ChangeState
value = 1150
triggerAll = AILevel
triggerAll = RoundState = 2 && random < 500 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
triggerAll = (enemynear, stateno = [5000, 5001])
triggerAll = p2statetype != A && p2statetype != L && p2dist x <= 130
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) 

[State -1, Chariot Tackle]
type = ChangeState
value = 1100
triggerAll = !AILevel
triggerAll = command = "ChariotTackle"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
;trigger2 = var(6)						;systemchange

[State -1, Chariot Tackle]		;addAI
type = ChangeState
value = 1100
triggerAll = AILevel
triggerAll = random < 400 && RoundState = 2 && p2statetype != L && p2dist x <= 150 && p2dist y >= -20 && StateType != A && MoveType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
;trigger2 = var(6)

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

[State -1, Throw]		;;
type = ChangeState
value = 800
triggerAll = AILevel
triggerAll = RoundState = 2 && random < 100 && StateType != A
triggerAll = p2statetype != A && p2statetype != L && p2dist x <= 100
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
trigger2 = var(4)

[State -1, Standing Light Punch]		;addAI
type = ChangeState
value = 200
triggerAll = AILevel
triggerAll = random < 200 && p2statetype != L && p2statetype != A && p2statetype != C && p2dist x<=60 && StateType != A
trigger1 = ctrl || (StateNo = [100,101])
;trigger2 = var(4)

[State -1, Standing Medium Punch]
type = ChangeState
value = 210 + (command = "holdfwd") * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact && (!command = "holdfwd")
trigger3 = var(4)

[State -1, Standing Medium Punch]		;addAI
type = ChangeState
value = 210 + (command = "holdfwd") * 5
triggerAll = AILevel
triggerAll = random < 200 && p2statetype != L && p2statetype != A && p2statetype != C && p2dist x<=80 && StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = StateNo = 200 && MoveContact
;trigger3 = var(4)

[State -1, FWD Standing Heavy Punch]
type = ChangeState
value = 225
triggerAll = !AILevel
triggerAll = command != "holddown" && (command = "holdfwd" && command = "z")
triggerAll = StateType != A
triggerAll = StateNo = 215 && AnimElemTime(3) >= 0  && MoveContact
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220 + (command = "holdfwd") * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Standing Heavy Punch]		;addAI
type = ChangeState
value = 220 + (command = "holdfwd") * 5
triggerAll = AILevel
triggerAll = random < 200 && p2statetype != L && p2statetype != A && p2dist x<=80 && StateType != A
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

[State -1, Standing Light Kick]		;addAI
type = ChangeState
value = 230
triggerAll = AILevel
triggerAll = random < 200 && p2statetype != L && p2statetype != A && p2statetype != C && p2dist x<=50 && StateType != A
trigger1 = ctrl || (StateNo = [100,101])
;trigger3 = var(4)

[State -1, Standing Medium Kick]
type = ChangeState
value = 240 + (command = "holdfwd") * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Medium Kick]		;addAI
type = ChangeState
value = 240 + (command = "holdfwd") * 5
triggerAll = AILevel
triggerAll = random < 300 && p2statetype != L && p2statetype != A && p2statetype != C && p2dist x<=80 && StateType != A
trigger1 = ctrl || (StateNo = [100,101])
;trigger2 = var(4)

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Heavy Kick]		;addAI
type = ChangeState
value = 250
triggerAll = AILevel
triggerAll = random < 200 && p2statetype != L && p2statetype != A && p2dist x<=80 && StateType != A
trigger1 = ctrl || (StateNo = [100,101])
;trigger2 = var(4)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 5
trigger3 = var(4)

[State -1, Crouching Light Punch]		;addAI
type = ChangeState
value = 400
triggerAll = AILevel
triggerAll = random < 200 && p2statetype != L && p2statetype != A && p2dist x<=60 && StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 5
;trigger3 = var(4)

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = !AILevel
triggerAll = command  ="holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Punch]		;addAI
type = ChangeState
value = 410
triggerAll = AILevel
triggerAll = random < 200 && p2statetype != L && p2statetype != A && p2dist x<=80 && StateType != A
trigger1 = ctrl || (StateNo = [100,101])
;trigger2 = var(4)

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Heavy Punch]		;addAI
type = ChangeState
value = 420
triggerAll = AILevel
triggerAll = random < 200 && p2statetype != L && p2statetype != A && p2statetype != C && p2dist x<=60 && StateType != A
trigger1 = ctrl || (StateNo = [100,101])
;trigger2 = var(6)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 5
trigger3 = var(4)

[State -1, Crouching Light Kick]		;addAI
type = ChangeState
value = 430
triggerAll = AILevel
triggerAll = random < 200 && p2statetype != L && p2statetype != A && p2dist x<=60 && StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 5
;trigger3 = var(4)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Kick]		;addAI
type = ChangeState
value = 440
triggerAll = AILevel
triggerAll = random < 200 && p2statetype != L && p2statetype != A && p2dist x<=80 && StateType != A
trigger1 = ctrl || (StateNo = [100,101])
;trigger2 = var(4)

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Heavy Kick]		;addAI
type = ChangeState
value = 450
triggerAll = AILevel
triggerAll = random < 300 && p2statetype != L && p2statetype != A && p2dist x<=80 && StateType != A
trigger1 = ctrl || (StateNo = [100,101])
;trigger2 = var(4)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = !AILevel
triggerAll = command = "x"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Punch]		;addAI
type = ChangeState
value = 600
triggerAll = AILevel
triggerAll = random < 200 && p2statetype != L && p2dist x<=60 && StateType = A
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

[State -1, Jumping Medium Punch]		;addAI
type = ChangeState
value = 610
triggerAll = AILevel
triggerAll = random < 200 && p2statetype != L && p2statetype != A && p2dist x<=80 && StateType = A
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

[State -1, Jumping Heavy Punch]		;addAI
type = ChangeState
value = 620
triggerAll = AILevel
triggerAll = random < 200 && p2statetype != L && p2statetype != A && p2dist x<=80 && StateType = A
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

[State -1, Jumping Light Kick]		;addAI
type = ChangeState
value = 630
triggerAll = AILevel
triggerAll = random < 200 && p2statetype != L && p2statetype != A && p2dist x<=60 && StateType = A
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

[State -1, Jumping Medium Kick]		;addAI
type = ChangeState
value = 640
triggerAll = AILevel
triggerAll = random < 200 && p2statetype != L && p2statetype != A && p2dist x<=90 && StateType = A
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

[State -1, Jumping Heavy Kick]		;addAI
type = ChangeState
value = 650
triggerAll = AILevel
triggerAll = random < 200 && p2statetype != L && p2statetype != A && p2dist x<=80 && StateType = A
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

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && (StateType != A || (vel x > 0 && vel y >= 0))
trigger1 = Power >= 1000 && !var(20)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101]))
trigger1 = (EnemyNear, MoveType = A) && (P2BodyDist x = [0,40]) && (P2Dist y = [-60,60]) && (EnemyNear, vel y >= 0)
trigger1 = (EnemyNear, StateNo = [200,699]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Hadoken]
type = ChangeState
value = 1000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = p2dist x >=140			;addAI
;triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, Vel Y >= 0		;AIchange
;triggerAll = P2StateType != A || EnemyNear, Vel X < 0				;AIchange
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (150 * (AILevel ** 2 / 64.0))



[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-23,37]) && P2BodyDist y = 0
trigger1 = ctrl && Random < 50	;Random < (200 * (AIlevel ** 2 / 64.0))		;AIchange
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (325 * (AILevel ** 2 / 64.0))

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, Life) <= 0.5 * (EnemyNear, LifeMax)
trigger1 = P2Dist X >= 160 && (EnemyNear, Vel Y > 0) && Ctrl && Random < (250 * (AILevel ** 2 / 64.0))
trigger1 = !(EnemyNear, Ctrl) && (EnemyNear, MoveType = H)

; --- UNIVERSAL GUARD CANCEL (Added by Script) ---
[State -1, Universal Guard Cancel]
type = ChangeState
value = 1100
triggerall = !AILevel
triggerall = StateNo = [150, 155] ; Trigger only when in block stun (standing, crouching, or air)
triggerall = power >= 1000 ; Must have at least 1 bar of power
trigger1 = command = "x" && command = "a" ; Light Punch + Light Kick
trigger1 = command = "holdfwd"
