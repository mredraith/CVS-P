;-| Button Remapping |-----------------------------------------------------
[Remap]
x=x
y=y
z=z
a=a
b=b
c=c
s=s
;-| Default Values |-------------------------------------------------------
[Defaults]
command.time=16
command.buffer.time=4

;-| Super Motions |--------------------------------------------------------
[Command]
name="BoomerangRaid"
command=~D, DF, F, D, DF, F, x
time=32
[Command]
name="BoomerangRaid"
command=~D, DF, F, D, DF, F, y
time=32
[Command]
name="BoomerangRaid"
command=~D, DF, F, D, DF, F, z
time=32

[Command]
name="MaxBoomerangRaid"
command=~D, DF, F, D, DF, F, x+y
time=32
[Command]
name="MaxBoomerangRaid"
command=~D, DF, F, D, DF, F, y+z
time=32
[Command]
name="MaxBoomerangRaid"
command=~D, DF, F, D, DF, F, x+z
time=32

[Command]
name="StungunHeadbutt"
command=~D, DB, B, D, DB, B, x+y
time=32
[Command]
name="StungunHeadbutt"
command=~D, DB, B, D, DB, B, y+z
time=32
[Command]
name="StungunHeadbutt"
command=~D, DB, B, D, DB, B, x+z
time=32

[Command]
name = "HyperBomb"
command = ~$B, $D, $F, $U, x+y
time = 32
[Command]
name = "HyperBomb"
command = ~$D, $F, $U, $B, x+y
time = 32
[Command]
name = "HyperBomb"
command = ~$F, $U, $B, $D, x+y
time = 32
[Command]
name = "HyperBomb"
command = ~$U, $B, $D, $F, x+y
time = 32
[Command]
name = "HyperBomb"
command = ~$F, $D, $B, $U, x+y
time = 32
[Command]
name = "HyperBomb"
command = ~$D, $B, $U, $F, x+y
time = 32
[Command]
name = "HyperBomb"
command = ~$B, $U, $F, $D, x+y
time = 32
[Command]
name = "HyperBomb"
command = ~$U, $F, $D, $B, x+y
time = 32
[Command]
name = "HyperBomb"
command = ~$B, $D, $F, $U, y+z
time = 32
[Command]
name = "HyperBomb"
command = ~$D, $F, $U, $B, y+z
time = 32
[Command]
name = "HyperBomb"
command = ~$F, $U, $B, $D, y+z
time = 32
[Command]
name = "HyperBomb"
command = ~$U, $B, $D, $F, y+z
time = 32
[Command]
name = "HyperBomb"
command = ~$F, $D, $B, $U, y+z
time = 32
[Command]
name = "HyperBomb"
command = ~$D, $B, $U, $F, y+z
time = 32
[Command]
name = "HyperBomb"
command = ~$B, $U, $F, $D, y+z
time = 32
[Command]
name = "HyperBomb"
command = ~$U, $F, $D, $B, y+z
time = 32
[Command]
name = "HyperBomb"
command = ~$B, $D, $F, $U, x+z
time = 32
[Command]
name = "HyperBomb"
command = ~$D, $F, $U, $B, x+z
time = 32
[Command]
name = "HyperBomb"
command = ~$F, $U, $B, $D, x+z
time = 32
[Command]
name = "HyperBomb"
command = ~$U, $B, $D, $F, x+z
time = 32
[Command]
name = "HyperBomb"
command = ~$F, $D, $B, $U, x+z
time = 32
[Command]
name = "HyperBomb"
command = ~$D, $B, $U, $F, x+z
time = 32
[Command]
name = "HyperBomb"
command = ~$B, $U, $F, $D, x+z
time = 32
[Command]
name = "HyperBomb"
command = ~$U, $F, $D, $B, x+z
time = 32


[Command]
name="Heavy Hammer"
command=~D, DF, F, D, DF, F, a+x
time=32
[Command]
name="Heavy Hammer"
command=~D, DF, F, D, DF, F, b+y
time=32
[Command]
name="Heavy Hammer"
command=~D, DF, F, D, DF, F, c+z
time=32

;-| Special Motions |------------------------------------------------------

[Command]
name="FlashChop1"
command=~D, DF, F, x
time=16
[Command]
name="FlashChop2"
command=~D, DF, F, y
time=16
[Command]
name="FlashChop3"
command=~D, DF, F, z
time=16
[Command]
name="FlashChop1"
command=~D, DF, F, ~x
time=16
[Command]
name="FlashChop2"
command=~D, DF, F, ~y
time=16
[Command]
name="FlashChop3"
command=~D, DF, F, ~z
time=16

[Command]
name="FlashChopEX"
command=~D, DF, F, x+y
time=16
[Command]
name="FlashChopEX"
command=~D, DF, F, y+z
time=16
[Command]
name="FlashChopEX"
command=~D, DF, F, x+z
time=16

[command]
name="PowerBombEX"
command=~F,$D,B,x+y
time=24

[command]
name="PowerBombEX"
command=~F,$D,B,y+z
time=24

[command]
name="PowerBombEX"
command=~F,$D,B,x+z
time=24

[command]
name="PowerBomb3"
command=~F,$D,B,~z
time=24

[command]
name="PowerBomb2"
command=~F,$D,B,~y
time=24

[command]
name="PowerBomb1"
command=~F,$D,B,~x
time=24

[command]
name="PowerBomb3"
command=~F,$D,B,z
time=24

[command]
name="PowerBomb2"
command=~F,$D,B,y
time=24

[command]
name="PowerBomb1"
command=~F,$D,B,x
time=24

[command]
name="SlashElbow1"
command=~$B, $F, a
time=16

[command]
name="SlashElbow2"
command=~$B, $F, b
time=16

[command]
name="SlashElbow3"
command=~$B, $F, c
time=16

[command]
name="SlashElbow1"
command=~$B, $F, ~a
time=16

[command]
name="SlashElbow2"
command=~$B, $F, ~b
time=16

[command]
name="SlashElbow3"
command=~$B, $F, ~c
time=16

[command]
name="SlashElbowEX"
command=~$B, $F,a+b
time=16

[command]
name="SlashElbowEX"
command=~$B, $F,b+c
time=16

[command]
name="SlashElbowEX"
command=~$B, $F,a+c
time=16

[command]
name="KneeSmashEX"
command=~F,D,DF,a+b
time=16

[command]
name="KneeSmashEX"
command=~F,D,DF,b+c
time=16

[command]
name="KneeSmashEX"
command=~F,D,DF,a+c
time=16

[command]
name="KneeSmash1"
command=~F,D,DF,~a
time=16

[command]
name="KneeSmash2"
command=~F,D,DF,~b
time=16

[command]
name="KneeSmash3"
command=~F,D,DF,~c
time=16

[command]
name="KneeSmash1"
command=~F,D,DF,a
time=16

[command]
name="KneeSmash2"
command=~F,D,DF,b
time=16

[command]
name="KneeSmash3"
command=~F,D,DF,c
time=16

[command]
name="AirStampedeEX"
command=~$D, $U,a+b
time=16

[command]
name="AirStampedeEX"
command=~$D, $U,b+c
time=16

[command]
name="AirStampedeEX"
command=~$D, $U,a+c
time=16

[command]
name="AirStampede1"
command=~$D, $U,~a
time=16

[command]
name="AirStampede2"
command=~$D, $U,~b
time=16

[command]
name="AirStampede3"
command=~$D, $U,~c
time=16

[command]
name="AirStampede1"
command=~$D, $U,a
time=16

[command]
name="AirStampede2"
command=~$D, $U,b
time=16

[command]
name="AirStampede3"
command=~$D, $U,c
time=16

[command]
name="SpiralDDTEX"
command=~F,$D,B,a+b
time=24

[command]
name="SpiralDDTEX"
command=~F,$D,B,b+c
time=24

[command]
name="SpiralDDTEX"
command=~F,$D,B,a+c
time=24

[command]
name="SpiralDDT1"
command=~F,$D,B,~a
time=24

[command]
name="SpiralDDT2"
command=~F,$D,B,~b
time=24

[command]
name="SpiralDDT3"
command=~F,$D,B,~c
time=24

[command]
name="SpiralDDT1"
command=~F,$D,B,a
time=24

[command]
name="SpiralDDT2"
command=~F,$D,B,b
time=24

[command]
name="SpiralDDT3"
command=~F,$D,B,c
time=24

[Command]
name="412p" ;Zero Counter
command=~B, DB, D, x
time=16
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, y
time=16
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, z
time=16
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, ~x
time=16
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, ~y
time=16
[Command]
name="412p" ;Zero Counter
command=~B, DB, D, ~z
time=16
[Command]
name="412k" ;Zero Counter
command=~B, DB, D, a
time=16
[Command]
name="412k" ;Zero Counter
command=~B, DB, D, b
time=16
[Command]
name=  "412k" ;Zero Counter
command=~B, DB, D, c
time=16
[Command]
name="412k" ;Zero Counter
command=~B, DB, D, ~a
time=16
[Command]
name="412k" ;Zero Counter
command=~B, DB, D, ~b
time=16
[Command]
name="412k" ;Zero Counter
command=~B, DB, D, ~c
time=16
;-| Double Tap |-----------------------------------------------------------
[Command]
name="FF"     ;Required (do not remove)
command=F, F
time=10

[Command]
name="BB"     ;Required (do not remove)
command=B, B
time=10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name="recovery";Required (do not remove)
command=x+y
time=1
[Command]
name="recovery"
command=a+x
time=1
[Command]
name="recovery"
command=y+z
time=1
[Command]
name="recovery"
command=x+z
time=1
[Command]
name="recovery"
command=a+b
time=1
[Command]
name="recovery"
command=b+c
time=1
[Command]
name="recovery"
command=a+c
time=1

[Command]
name="pp"
command=x+y
time=1
[Command]
name="pp"
command=x+z
time=1
[Command]
name="pp"
command=y+z
time=1
[Command]
name="kk"
command=a+b
time=1
[Command]
name="kk"
command=a+c
time=1
[Command]
name="kk"
command=b+c
time=1
[Command]
name="a+x"
command=a+x
time=1
[Command]
name="b+y"
command=b+y
time=1
[Command]
name="c+z"
command=c+z
time=1
;-| Single Button |---------------------------------------------------------
[Command]
name="a"
command=a
time=1
[Command]
name="b"
command=b
time=1
[Command]
name="c"
command=c
time=1
[Command]
name="x"
command=x
time=1
[Command]
name="y"
command=y
time=1
[Command]
name="z"
command=z
time=1
[Command]
name="s"
command=s
time=1
;-| Single Dir |------------------------------------------------------------
[Command]
name="fwd" ;Required (do not remove)
command=$F
time=1
[Command]
name="downfwd"
command=$DF
time=1
[Command]
name="down" ;Required (do not remove)
command=$D
time=1
[Command]
name="downback"
command=$DB
time=1
[Command]
name="back" ;Required (do not remove)
command=$B
time=1
[Command]
name="upback"
command=$UB
time=1
[Command]
name="up" ;Required (do not remove)
command=$U
time=1
[Command]
name="upfwd"
command=$UF
time=1
;-| Hold Button |--------------------------------------------------------------
[Command]
name="hold_x"
command=/x
time=1
[Command]
name="hold_y"
command=/y
time=1
[Command]
name="hold_z"
command=/z
time=1
[Command]
name="hold_a"
command=/a
time=1
[Command]
name="hold_b"
command=/b
time=1
[Command]
name="hold_c"
command=/c
time=1
[Command]
name="hold_s"
command=/s
time=1
;-| Hold Dir |--------------------------------------------------------------
[Command]
name="holdfwd";Required (do not remove)
command=/$F
time=1
[Command]
name="holdback";Required (do not remove)
command=/$B
time=1
[Command]
name="holdup" ;Required (do not remove)
command=/$U
time=1
[Command]
name="holddown";Required (do not remove)
command=/$D
time=1
[Command]
name="holdfwd" ;Required (do not remove)
command=/$F
time=1
[Command]
name="holddownfwd"
command=/$DF
time=1
[Command]
name="holddown" ;Required (do not remove)
command=/$D
time=1
[Command]
name="holddownback"
command=/$DB
time=1
[Command]
name="holdback" ;Required (do not remove)
command=/$B
time=1
[Command]
name="holdupback"
command=/$UB
time=1
[Command]
name="holdup" ;Required (do not remove)
command=/$U
time=1
[Command]
name="holdupfwd"
command=/$UF
time=1
;---------------------------------------------------------------------------
;Release Direction
[Command]
name="rlsfwd"
command=~$F
time=1
[Command]
name="rlsback"
command=~$B
time=1
[Command]
name="rlsup"
command=~$U
time=1
[Command]
name="rlsdown"
command=~$D
time=1
;--------------------------------------------------------------------------
;Release Button
[Command]
name="rlsx"
command=~x
time=1
[Command]
name="rlsy"
command=~y
time=1
[Command]
name="rlsz"
command=~z
time=1
[Command]
name="rlsa"
command=~a
time=1
[Command]
name="rlsb"
command=~b
time=1
[Command]
name="rlsc"
command=~c
time=1
;---------------------------------------------------------------------------
;Other
[Command]
name="highjump"
command=$D, $U
time=16
[Command]
name="DU"
command=D, U
time=18
[Command]
name="DU"
command=DB, UF
time=18
[Command]
name="DU"
command=DF, UB
time=18
[Command]
name="DU"
command=$D, UF
time=18
[Command]
name="DU"
command=$D, UB
time=18
;---------------------------------------------------------------------------
[Statedef -1]

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


[State -1, Tick Fix]
type=CtrlSet
triggerall=!ctrl
trigger1=(StateNo=52 || StateNo=101 || StateNo=5120) && !AnimTime
trigger2=(StateNo=[200,499]) && !AnimTime
trigger3=StateNo=810 && !AnimTime
trigger4=(StateNo=5001 || StateNo=5011 || StateNo=151 || StateNo=153) && HitOver
trigger5=(StateNo=[700,715]) && !AnimTime
trigger6=(StateNo=[6080,6082]) && !AnimTime
value=1
;-----------------------------------------------------------------
[State -1, Parry Stand]
type=HitOverride
triggerall =!AILevel
triggerall=command="fwd" && command!= "back" && command != "up" && command != "down"
trigger1=Ctrl
attr=SA,AA,AP
stateno=6080
slot=0
time=5
;------------------------------------------------------------------
[State -1, Crouching Parry]
type=HitOverride
triggerall =!AILevel
triggerall=(statetype=S && command="down")|| (statetype=C && command="fwd") && command != "back" && command != "up"
trigger1=Ctrl
attr=C,AA,AP
stateno=6081
slot=0
time =5
;-------------------------------------------------------------------
[State -1, Aerial Parry]
type= HitOverride
triggerall =!AILevel
triggerall=(statetype= A && command="fwd") && command != "back" && command != "up" && command != "down"
trigger1=Ctrl
attr=SA,AA,AP
stateno=6082
forceair=1
slot=0
time=5
 
;--------------------------------------------------------------------
[State -1, Hyper Bomb]
type=ChangeState
value=3300
triggerall=!AILevel && RoundState=2 && StateType != A && power >= 3000&&var(20) <= 60&&command ="HyperBomb"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)
;----------------------------------------------------------------------
[State -1, Max Boomerang Raid]
type=ChangeState
value=3050
triggerall=!AILevel && RoundState=2 && StateType != A &&var(20) <= 60 && power >= 2000&&command ="MaxBoomerangRaid"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Boomerang Raid]
type=ChangeState
value=3000
triggerall=!AILevel && RoundState=2 && StateType != A && power >= 1000&&var(20) <= 60&&command ="BoomerangRaid"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)
;----------------------------------------------------------------------
[State -1, Stungun Headbutt]
type=ChangeState
value=3100
triggerall=!AILevel && RoundState=2 && StateType != A && power >= 2000&&var(20) <= 60&&command ="StungunHeadbutt"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;========================================================================
[State -1, Power Bomb]
type=ChangeState
value=Ifelse(command="PowerBombEX"&&var(20) <= 60&&power>=500,1330,1300)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="PowerBomb1")||(command="PowerBomb2")||(command="PowerBomb3")||(command="PowerBombEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno=450) && movecontact && (command="PowerBombEX"&&power>=500&&var(20) <= 60)
;----------------------------------------------------------------------
[State -1, Power Bomb]
type=ChangeState
value=Ifelse(command="SpiralDDTEX"&&var(20) <= 60&&power>=500,1530,1500)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="SpiralDDT1")||(command="SpiralDDT2")||(command="SpiralDDT3")||(command="SpiralDDTEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno=450) && movecontact && (command="SpiralDDTEX"&&power>=500&&var(20) <= 60)
;----------------------------------------------------------------------
[State -1, Air Stampede]
type=ChangeState
value=Ifelse(command="AirStampedeEX"&&var(20) <= 60&&power>=500,1630,1600)
triggerall=ifElse(var(20) > 0 || (StateNo=[1000,4999]), 1, var(50) > 16)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="AirStampede1")||(command="AirStampede2")||(command="AirStampede3")||(command="AirStampedeEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno=450) && movecontact && (command="AirStampedeEX"&&power>=500&&var(20) <= 60)
;----------------------------------------------------------------------
[State -1, Slash Elbow]
type=ChangeState
value=Ifelse(command="SlashElbowEX"&&var(20) <= 60&&power>=500,1230,1200)
triggerall=ifElse(var(20) > 0 || (StateNo=[1000,4999]), 1, var(48) > 16)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="SlashElbow1")||(command="SlashElbow2")||(command="SlashElbow3")||(command="SlashElbowEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno=450) && movecontact && (command="SlashElbowEX"&&power>=500&&var(20) <= 60)
trigger4=(stateno=840)&& movecontact 
;----------------------------------------------------------------------
[State -1, Air Knee Smash]
type=ChangeState
value=Ifelse(command="KneeSmashEX"&&var(20) <= 60&&power>=500,1130,1100)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="KneeSmash1")||(command="KneeSmash2")||(command="KneeSmash3")||(command="KneeSmashEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno=450) && movecontact && (command="KneeSmashEX"&&power>=500&&var(20) <= 60)
;----------------------------------------------------------------------
[State -1, Flash Chop]
type=ChangeState
value=Ifelse(command="FlashChopEX"&&var(20) <= 60&&power>=500,1030,1000)
triggerall=!NumExplod(5600)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="FlashChop1")||(command="FlashChop2")||(command="FlashChop3")||(command="FlashChopEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno=450) && movecontact && (command="FlashChopEX"&&power>=500&&var(20) <= 60)
;========================================================================
[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = !AILevel&&RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)
;------------------------------------------------------------------------
[State -1, Throw]
type=ChangeState
value =800
trigger1=(command="holdfwd"||command="holdback")&&(command="pp"||command="kk")
trigger1=!AILevel&&RoundState=2 && Statetype!=A
trigger1=ctrl
;------------------------------------------------------------------------
[State -1, Air Throw]
type=Null;ChangeState
value =850
trigger1=(command="holdfwd"||command="holdback")&&(command="pp")
trigger1=!AILevel&&RoundState=2 && Statetype=A && Pos Y<=-30 && !var(20)
trigger1=ctrl
;-------------------------------------------------------------------------
[State -1, Power Charge]
type = ChangeState
value = 730
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = !AILevel&&RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])
;--------------------------------------------------------------------------
[State -1, Custom Combo]
type = ChangeState
value = Ifelse(StateType = A,905,900)
triggerAll = !AILevel && command = "c+z" && RoundState = 2 && power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])
trigger1 = !var(41)
;---------------------------------------------------------------------
[State -1, SIdestep/Dodge]
type = ChangeState
value = Ifelse(command="holdfwd",710,Ifelse(command="holdback",715,700))
triggerall = command = "a+x"
triggerall = !AILevel && RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))
;trigger2 = stateno=420 && animelemtime(6)>=1 && movehit && command = "holdup"
;--------------------------------------------------------------------------
[State -1, Run /Dash Back]
type = ChangeState
value = Ifelse(command = "BB",105,110)
triggerall = !AILevel&& roundstate=2 && statetype = S
triggerall = command = "FF"||command = "BB"
trigger1 = ctrl
;trigger2 = p2bodydist x >= 0
;trigger2 = stateno=103||stateno=106||stateno=52 
;--------------------------------------------------------------------------
[State -1, Lariat]
type=ChangeState
value=225
triggerall=!AILevel&&Roundstate=2&&statetype!=A&&statetype!=C&&command="z" && command="holdfwd"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact&&var(55)

[State -1, Lariat]
type=ChangeState
value=300
triggerall=!AILevel&&Roundstate=2&&statetype!=A&&statetype!=C&&command="b" && command="holdfwd"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact&&var(55)

[State -1, Headbutt]
type=ChangeState
value=830
triggerall=!AILevel&&Roundstate=2&&statetype!=A&&statetype!=C&&command="z" && command="holdback"
trigger1=ctrl||stateno=[100,101]
trigger2=var(5)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact&&var(55)
;--------------------------------------------------------------------------
[State -1, Chop]
type=ChangeState
value=215
triggerall=!AILevel&&Roundstate=2&&statetype!=A&&statetype!=C&&command="y" && command="holdfwd"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact&&var(55)
;--------------------------------------------------------------------------
[State -1, Flying Crosschop]
type=ChangeState
value=625
triggerall=(movetype !=H) && pos y <-25
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="z" && command="holddown"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,649]))&&movecontact&&var(55)=2
;--------------------------------------------------------------------------
[State -1, Standing Low Punch]
type=ChangeState
value=200
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="x"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3 = (StateNo = 200 || StateNo = 400) && Time >= 3
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type=ChangeState
value=210
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="y"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Standing High Punch]
type=ChangeState
value=220
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="z"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Standing Low Kick]
type=ChangeState
value=230
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="a"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=(stateno=[200,209])&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick]
type=ChangeState
value=240 
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="b"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Standing High Kick]
type=ChangeState
value=250
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="c"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,249])||(stateno=[400,449]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type=ChangeState
value=400
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="x"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3 = (StateNo = 200 || StateNo = 400) && Time >= 3
;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type=ChangeState
value=410
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command= "holddown"&& command="y"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type=ChangeState
value=420
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="z"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type=ChangeState
value=430
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="a"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[400,409]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type=ChangeState
value=440
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="b"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439]))&&movecontact&&var(55)
trigger4=(stateno=430)&& movecontact
;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type=ChangeState
value=450
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="c"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,249])||(stateno=[400,449]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type=ChangeState
value=600
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="x"
trigger1=ctrl
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type=ChangeState
value=610
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="y"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,609])||(stateno=[630,639]))&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type=ChangeState
value=620
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="z"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,649]))&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type=ChangeState
value=630
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="a"
trigger1=ctrl
trigger2=var(4)
trigger3=(stateno=[600,609])&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Jumping Medium Kick]
type=ChangeState
value=640
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="b"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,639]))&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type=ChangeState
value=650
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="c"
trigger1=ctrl
trigger2=var(4)
trigger3=(stateno=[600,649])&&movecontact&&var(55)=2

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !AILevel
triggerall = command = "s"
triggerall = StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)

; AI ZONE

;-------------------------------------------------------------------------
[State -1, Standing Low Punch AI]
type = ChangeState
value = 200
triggerall = AILevel && numenemy&&roundstate=2&&StateType != A
triggerall = p2bodydist x <=45&&(p2bodydist y = [-80,5])&&P2statetype != A&&P2statetype != C&&P2statetype != L&& random < (650 * (AIlevel ** 2 / 64.0))
trigger1 = ctrl
trigger2 = (stateno = [100,101]) && random < 100
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch AI]
type = ChangeState
value = 210
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 30]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350
;---------------------------------------------------------------------------
[State -1, Standing High Punch AI]
type = ChangeState
value = 220
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 55]) && (p2bodydist y = [ -80, 80]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (120 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit&&var(55)
trigger2 = random < 650
;---------------------------------------------------------------------------
[State -1, Standing Low Kick AI]
type = ChangeState
value = 230
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 40]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (80 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [400,409]))&& movehit&&var(55)
trigger2 = random < 200
trigger3 = (stateno = [100,101]) && random < 100
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick AI]
type = ChangeState
value = 240
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 55]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350
;---------------------------------------------------------------------------
[State -1, Standing High Kick AI]
type = ChangeState
value = 250
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -60, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [240,249])|| (stateno = [440,449]))&& movehit && stateno != 225&&var(55)
trigger2 = random < 800
;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 40]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [100,101]
;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 55]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 800
;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type = ChangeState
value = 420
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 70]) &&(p2bodydist y = [-80,5]) && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit&&var(55)
trigger2 = random < 600
;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 35]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (90 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [400,409]))&& movehit&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 45]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (120 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350
;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 55]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [220,229])|| (stateno = [240,249])||(stateno = [420,429])||(stateno = [440,449]))&& movehit&&var(55)
trigger2 = random < 900
;---------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0,60]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (500 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (ifelse((vel x > 0 && p2statetype = A), 250, 125) * (AIlevel ** 2 / 64.0)) 
trigger2 = (stateno = [600,609])&& movehit && var(55)=2 && random < 750
trigger3 = (stateno = [630,639])&& movehit && var(55)=2 && random < 250
;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 100]) && (p2bodydist y = [ -80, 50]) && p2statetype != L 
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 700
trigger3 = (stateno = [640,649])&& movehit && var(55)=2 && random < 200
;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [600,609])&& movehit && var(55)=2 && random < 250
;---------------------------------------------------------------------------
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 90]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (250 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 100
trigger3 = (stateno = [630,639])&& movehit && var(55)=2 && random < 750
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = AILevel && numenemy &&roundstate=2&&statetype = A && (p2bodydist x = [0, 130]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (250 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall) 
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 250
trigger3 = (stateno = [640,649])&& movehit && var(55)=2 && random < 750
;---------------------------------------------------------------------------

[State -1, Air Stampede]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100 && var(20) <= 60, 1630, 1600)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200, 499])
triggerAll = (P2BodyDist x = [0,190]) && (P2Dist y = [-30,0]) && (P2StateType != L || P2StateNo = 5120)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))
trigger3 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger3 = EnemyNear, StateType = C && Random < (200 * (AILevel ** 2 / 64.0))

[State -1, Flash Chop]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100 && var(20) <= 60, 1030, 1000)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-20,110]) && P2StateType != A) || ((P2BodyDist x = [-80,80]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(5) && MoveHit && Random < (20 * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Power Bomb]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100 && var(20) <= 60, 1330, 1300)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerall= p2dist x>=0 && p2bodydist x<=ceil(52 * const(size.xscale)) && p2dist y=0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
triggerAll = P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (75 * (AILevel ** 3 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 3 / 64.0))

[State -1, Slash Elbow]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100 && var(20) <= 60, 1230, 1200)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [70,210]) && P2StateType != A) || ((P2BodyDist x = [-80,80]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(5) && MoveHit && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Air Knee Smash]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100 && var(20) <= 60, 1130, 1100)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2Dist y = [-200,-50]
triggerAll = ((P2BodyDist x = [-80,80]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(5) && MoveHit && Random < (100 * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, MAX Shoryureppa]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 1000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-10,140]) && (P2Dist y = [-32,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (150 * (AILevel ** 2 / 64.0))
trigger2 = var(5) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, MAX Shoryureppa]
type = ChangeState
value = 3100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A && !NumProjID(131035)
triggerAll = Power >= 2000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [75,240]) && (P2Dist y = [-32,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (150 * (AILevel ** 3 / 64.0))
trigger2 = var(5) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 3 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, run]
type = changestate
value = 110
trigger1 = AIlevel && numenemy
trigger1 = statetype = S && roundstate = 2 && ctrl && random < (300 * (AIlevel ** 2 / 64.0))
trigger1 = (stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x > 120

[State -1, dash]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (p2bodydist x = [0, 80]) && backedgebodydist > 80 && (stateno != [100, 105])
trigger1 = enemynear, movetype = A && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (300 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
triggerall = AIlevel && numenemy&&random < (50 * (AIlevel ** 2 / 64.0))
triggerall = roundstate = 2 && statetype != A
triggerall = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT
trigger1=ctrl

[State -1, Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155]) && !var(20)
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = random < (ifelse((p2stateno = [200, 699]), 300, ifelse((p2stateno = [1000, 2999]), 500, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = (p2dist x = [-90, 90]) && stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && power >= 2000 && !var(20) && life < 500 && random < (10 * (AIlevel ** 2 / 64.0))

; --- UNIVERSAL GUARD CANCEL (Added by Script) ---
[State -1, Universal Guard Cancel]
type = ChangeState
value = 220
triggerall = !AILevel
triggerall = StateNo = [150, 155] ; Trigger only when in block stun (standing, crouching, or air)
triggerall = power >= 1000 ; Must have at least 1 bar of power
trigger1 = command = "x" && command = "a" ; Light Punch + Light Kick
trigger1 = command = "holdfwd"
