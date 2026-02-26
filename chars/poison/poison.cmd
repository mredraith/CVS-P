[Command]
name = "HIPER1"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "HIPER1"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "HIPER1"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "HIPER2"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "HIPER2"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "HIPER2"
command = ~D, DF, F, D, DF, F, c
time = 30

;--------------------------------
;Counter 1 & Recovery Roll (BACK)
[Command]
name = "Counter1"
command = ~B, DB, D, z
time = 15

[Command]
name = "Counter1"
command = ~B, DB, D, y
time = 15

[Command]
name = "Counter1"
command = ~B, DB, D, x
time = 15

;Counter 2 & Recovery Roll (Foward)
[Command]
name = "Counter2"
command = ~B, DB, D, c
time = 15

[Command]
name = "Counter2"
command = ~B, DB, D, b
time = 15

[Command]
name = "Counter2"
command = ~B, DB, D, a
time = 15

;-| Special Motions |--------------------------------
[Command]
name = "upper_a"
command = ~F, D, DF, a

[Command]
name = "upper_b"
command = ~F, D, DF, b

[Command]
name = "upper_c"
command = ~F, D, DF, c

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_z"
command = ~F, D, DF, z

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "cat_paw_c"
command = ~60$B, $F, c
time = 10

[Command]
name = "cat_paw_b"
command = ~60$B, $F, b
time = 10

[Command]
name = "cat_paw_a"
command = ~60$B, $F, a
time = 10

;[Command]
;name = "hand_c_z"
;command = ~60$B, $F, z
;time = 10

;[Command]
;name = "hand_c_y"
;command = ~60$B, $F, y
;time = 10

;[Command]
;name = "hand_c_x"
;command = ~60$B, $F, x
;time = 10

;[Command]
;name = "cat_claw_c"
;command = ~60$D, $U, c
;time = 15
;;buffer.time = 4

;[Command]
;name = "cat_claw_b"
;command = ~60$D, $U, b
;time = 15
;;buffer.time = 4

;[Command]
;name = "cat_claw_a"
;command = ~60$D, $U, a
;time = 15
;;buffer.time = 4

[Command]
name = "BYAKKO_HOU"
command = B, F, z+x
time=20

[Command]
name = "BYAKKO_HOU"
command = B, F, x+y
time=20

[Command]
name = "BYAKKO_HOU"
command = B, F, y+z
time=20

; -| CPU Commands |------

[Command]
name = "CPU1"
command = D, D, U, U, D, U
time = 1

[Command]
name = "CPU2"
command = D, U, U, D, D, U
time = 1

[Command] 
name = "CPU3"
command = U, D, D, U, U, D
time = 1

;-| Double Tap |;--------------------------------

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| MvC S-Jump |------------
[Command]
name = "DU"
command = D, U
time = 15

[Command]
name = "DUF"
command = D, UF
time = 15

[Command]
name = "DUB"
command = D, UB
time = 15

;[Command]
;name = "ChargedDU"
;command = ~10$D, $U

;-| 2/3 Button Combination |;--------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z+y
time = 1

;-| Dir + Button |------------
[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
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
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
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

;-| Single Button |;--------------------------------
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

[Command]
name = "hold-start"
command = /s
time = 1

[Command]
name = "release-start"
command = ~s
time = 1

;-| Hold Dir |;--------------------------------
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
name = "hold_z"
command = /$z
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

;--------------------------------
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


;--------------------------------
;AI AIR Combo
[State -1];	fracos areos
type = ChangeState
value = 600 + 30 * (P2bodyDist x > 16 || var(3) > 1)
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4; && time > 7
triggerall = ctrl;(!movecontact && )
trigger1 = statetype = A && var(3) < 3
trigger1 = P2BodyDist X <= 17 + vel x * 3
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno= 8850
ignorehitpause=1

[State -1];	mdios areos
type = ChangeState
value = 610 + 30 * (P2bodyDist x > 52 || var(3) >= 7)
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype = A && var(3) < 12 && roundstate = 2
triggerall = ctrl;(!movecontact && )
trigger1 = P2BodyDist X <= 57 + vel x * 3
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno = 600 || stateno = 630
trigger2 = var(3) >= 3
ignorehitpause=1

[State -1];	Fortes areos
type = ChangeState
value = 620 + 30 * (P2bodyDist x > 31)
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype = A && var(3) < 16 && roundstate = 2
triggerall = stateno != 620 && stateno < 650; && var(9)=0
triggerall = ctrl;(!movecontact && )
trigger1 = P2BodyDist X <= 77 + vel x * 3
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno = [600,640]
trigger2 = var(3) >= 12
ignorehitpause=1

;AI Ground Combo 1
[State -1];	fracos em p
type = ChangeState
value = 200 + 30 * (P2StateType = A || var(3) > 1)
triggerall = roundstate = 2
triggerall = var(20) = 1 && time > 7
triggerall = random > life && time % 4 && ctrl
trigger1 = StateType != A
trigger1 = P2BodyDist X <= 54
trigger1 = P2Movetype != A
trigger1 = P2StateType != C;A
trigger1 = p2bodydist Y > -20
trigger2 = P2bodyDist y < 10 && stateno = 200; && time > 7
ignorehitpause=1

[State -1];	fracos abaixados
type = ChangeState
value = 430 - 30 * (P2StateType = A || var(3) > 1) ; < ?
triggerall = var(20) = 1
triggerall = random > life && time % 4 && ctrl
triggerall = roundstate = 2 && stateno = 100; && 
triggerall = P2BodyDist X <= 64
trigger1 = P2Movetype != A
trigger1 = P2StateType != A
trigger2 = P2Movetype = A && P2StateType = S
trigger2 = P2life < life
ignorehitpause=1

[State -1];	mdios abaixados
type = ChangeState
value = 440 - (P2statetype = A || var(3) >= 7) * 30; < ?
triggerall = roundstate = 2
triggerall = var(20) = 1
triggerall = stateno = 400 || stateno = 430 || stateno = 200 || stateno = 230
triggerall = ctrl;(!movecontact && )
trigger1 = movecontact || ctrl
trigger1 = random > life && time % 4
trigger1 = P2BodyDist X <= 85
trigger2 = P2Dist Y <= -125;-130
trigger3 = stateno = 430 && movehit;vel x != 0
ignorehitpause=1

[State -1];	mdios em p
type = ChangeState
value = 240 - ((p2statetype != C && P2BodyDist X <= 76) || var(3) >= 7) * 30; < ?
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype != C && roundstate = 2
triggerall = ctrl;(!movecontact && )
triggerall = movecontact || ctrl
triggerall = P2BodyDist X <= 64
trigger1 = stateno = 100
trigger2 = stateno = 400 || stateno = 430
trigger3 = stateno = 200 || stateno = 230
ignorehitpause=1

[State -1];	gancho abaixado
type = ChangeState
value = 420 + (enemynear,statetype=A || P2BodyDist X >= 48) * 30
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = ctrl;(!movecontact && )
triggerall = movecontact || ctrl
triggerall = P2BodyDist X <= 73
trigger1 = stateno != 420 && var(3) >= 12 && stateno = [400,440]
trigger2 = stateno != 220 && var(3) >= 12 && stateno = [200,240]
trigger3 = stateno = 100
trigger4 = (stateno = 400 || stateno = 430) && movehit && P2BodyDist X <= 27
ignorehitpause=1

[State -1];	fortes em p
type = ChangeState
value = 220 + 30 * (P2BodyDist X < 14 && P2Dist y != 0)
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = ctrl;(!movecontact && )
triggerall = movecontact || ctrl
triggerall = P2StateType != C && StateType != A
triggerall = P2BodyDist X <= 86
trigger1 = stateno != 420 && var(3) >= 12 && stateno = [400,440]
trigger2 = stateno != 220 && var(3) >= 12 && stateno = [200,240]
ignorehitpause=1

;-------------------------------
;Normal Jump
[State -1]
type = ChangeState
value = 40
triggerall = Command = "holdfwd" && statetype!=A && ctrl
trigger1 = enemynear, numproj != 0; && stateno = [1000,1500]
trigger1 = var(20) = 1 && random > life && time % 5
trigger1 = p2bodydist X > 220
;--------------------------------
; Auto Combo
[State -1]
type = null;ChangeState 
triggerall = movehit && var(4)= 4 && statetype!=A && var(38) != 3
trigger1 = p2life > life && var(20)= 1
trigger1 = p2bodydist x  < 20 && stateno = [200,450]
value = 1500;2020

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = statetype != A && anim=1000
triggerall = roundstate = 2
trigger1 = var(6)=0 && animtime = 0 
trigger1 = var(20) = 1 && random > life && time % 4

; Auto Combo
[State -1]
type = null;ChangeState 
triggerall = (power>=1000 || var(9)>0) && pos y = 0 && var(20)= 1 && p2life != 0
triggerall = p2bodydist y  > const(size.head.pos.y) && (enemy, vel y > -2)
trigger1 = p2life > life && random > life && ctrl
trigger2 = movehit && (stateno = 1000 || stateno = [1425,2999])
trigger3 = (enemynear, facing) = facing && random > life && ctrl && (enemynear, animtime < -20)
value = 3000 + 1000 * (var(6) > 1)

;--------------------------------

; Counter: SHIDEN / GUREN
[State -1]
type = ChangeState
value = 8300 + 10 * (command="Counter2")
triggerall = power>=1000
triggerall = statetype != A && var(38) != 3
trigger1 = var(20) = 0 && (command="Counter1" || command="Counter2")
triggerall = stateno = [150,152]
trigger2 = var(20) = 1 && P2life > life && time % 4
ignorehitpause=1

; AUTO AI

[State -1, Activate AI] 
type = VarSet 
triggerall = var(20) != 1 
trigger1 = IsHomeTeam = 1 && matchno > 1
trigger2 = command = "CPU1" || command = "CPU2" || command = "CPU3"
v = 20
value = 1

; Reset Air combo

[State -1, reset] 
type = VarSet 
trigger1 = var(3) != 0 && statetype != A
trigger1 = stateNo != [5000,5125]
trigger1 = stateNo != [200,670]
v = 3
value = 0

;--------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = statetype != A && ctrl && anim!=100 && numexplod(8450)=0
triggerall = roundstate = 2
trigger1 = command = "FF"
trigger2 = (P2Movetype = H || var(6)=0) && P2BodyDist X = [70,170]
trigger2 = pos y =0 && var(20) = 1 && random > life && time % 4
trigger2 = stateno != 100 && (enemynear, alive = 1)
trigger3 = var(20) = 1 && p2life > life && p2StateNo = [5100,5110]
trigger3 = stateno != 100 && (enemynear, alive = 1)
trigger4 = var(20) = 1 && numhelper(2630)=1
trigger4 = P2Movetype = H && stateno != 100

;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
triggerall = statetype != A && numexplod(8450)=0
triggerall = roundstate = 2
triggerall = ctrl
trigger2 = stateno = 150 && P2Movetype = A && P2life < life
trigger2 = pos y =0 && var(20) = 1

;--------------------------------
; SUPERS
;--------------------------------
;Mirage Combo Kick
[State -1, Mirage Combo Kick]
type = ChangeState
value = 3000
trigger1 = command = "HIPER1"
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = statetype != A && var(38) != 3
trigger1 = ctrl || movecontact
triggerall = stateno < 3000 || (time > 90 && (stateno = 4000 || stateno = 3500))
triggerall = stateno != [800,999]
triggerall = stateno != 1030
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = (var(20)=1 && animtime=0 && (random + p2life) > life)
trigger3 = stateno = 4000 || stateno = 3500
trigger3 = command = "HIPER1"

;--------------------------------
; Cat Claw
[State -1, Shoot Upper]
type = ChangeState
value = 2005 + 5 * (command = "upper_z") + 15 * (command = "upper_z")
triggerall = command = "upper_x" ^^ command = "upper_y" ^^ command = "upper_z"
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,699]
trigger2 = movecontact

;--------------------------------
; Cat Knee
[State -1, Sliding Arrow]
type = ChangeState
value = 1005 + 5 * (command = "cat_paw_b") + 15 * (command = "cat_paw_c")
triggerall = (command = "cat_paw_a" ^^ command = "cat_paw_b" ^^ command = "cat_paw_c")||(var(20)=1 && (gametime%20)=0 && (random > life))
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = ctrl || (movecontact && stateno = [200,499])
trigger2 = (var(6) > 0 || enemynear, numproj!=0) && Stateno=100

;--------------------------------
; Hand Cuff
[State -1, Hand Cuff]
type = ChangeState
value = 1505 + 5 * (command = "QCF_y") + 15 * (command = "QCF_z")
triggerall = (command = "QCF_x" ^^ command = "QCF_y" ^^ command = "QCF_z")||(var(20)=1 && (gametime%20)=0 && (random > life))
triggerall = statetype != A && numprojid(1100)=0
triggerall = roundstate = 2
trigger1 = ctrl || (movecontact && stateno = [200,499])
trigger2 = (var(6) > 0 || enemynear, numproj!=0) && Stateno=100

; Cat Parry
[State -1]
type = ChangeState
value = 1400
triggerall = command = "BYAKKO_HOU"
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = movecontact && stateno = [200,450]
trigger3 = MoveContact && var(20)=1 && random > life && time % 4
trigger3 = stateno = [200,450]

;--------------------------------
;Stand_Throw - Punch
;--------------------------------
[State -1]
type = ChangeState
value = 800
triggerall = statetype != A && p2statetype != A
triggerall = stateno != 100 && p2bodydist X <= 10 && ctrl
trigger1 = command = "fwd_z"
trigger2 = command = "fwd_y"
trigger3 = command = "back_z"
trigger4 = command = "back_y"

;--------------------------------
;Stand_Throw - Kick
;--------------------------------
[State -1]
type = null;ChangeState
value = 830
triggerall = statetype != A && p2statetype != A
triggerall = stateno != 100 && p2bodydist X <= 10 && ctrl
trigger1 = command = "fwd_c"
trigger2 = command = "fwd_b"
trigger3 = command = "back_c"
trigger4 = command = "back_b"

;--------------------------------
; Ground basics
;--------------------------------
; Light Punch
[State -1, Light Punch]
type = ChangeState
value = 200 + 200 * (command = "holddown")
triggerall = roundstate = 2
triggerall = (statetype != A) && var(3) < 3
trigger1 = (stateno = 230) && movecontact && ctrl
trigger2 = (stateno = 430) && movecontact && ctrl
trigger3 = (stateno = 200 || stateno = 400) && time > 7
trigger3 = command = "x"
trigger4 = command = "x" && ctrl
ignorehitpause=1

;--------------------------------
;Extra Light Punch
[State -1, Extra Light Punch]
type = ChangeState
value = 205
triggerall = command = "x" &&  command != "holddown"
triggerall = (statetype != A); && var(3) < 3; && command != "holddown"
trigger1 = anim = 201 && movecontact
ignorehitpause=1

;--------------------------------
;Crounch Light Kick
[State -1, Crounch Light Kick]
type = ChangeState
value = 230 + 200 * (command = "holddown")
triggerall = roundstate = 2
triggerall = (statetype != A) && var(3) < 3
trigger1 = (stateno = 200) && movecontact && ctrl
trigger2 = (stateno = 400) && movecontact && ctrl
trigger3 = (stateno = 230 || stateno = 430) && time > 7
trigger3 = command = "a"
trigger4 = command = "a" && ctrl
ignorehitpause=1

;--------------------------------
;Crounch Medium Punch
[State -1, Crounch Medium Punch]
type = ChangeState
value = 210 + 200 * (command = "holddown")
triggerall = roundstate = 2
triggerall = ctrl && (statetype != A) && var(3) < 12
trigger1 = stateno = 200 && movecontact
trigger2 = movecontact && stateno = [230,240]
trigger3 = movecontact && stateno = [430,440]
trigger4 = stateno = 400 && movecontact
trigger5 = command = "y"
ignorehitpause=1

;--------------------------------
;Crounch Medium Kick
[State -1, Crounch Medium Kick]
type = ChangeState
value = 240 + 200 * (command = "holddown")
triggerall = roundstate = 2
triggerall = ctrl && (statetype != A) && var(3) < 12
trigger1 = movecontact && stateno = [200,210]
trigger2 = movecontact && stateno = 230
trigger3 = movecontact && stateno = [400,410]
trigger4 = movecontact && stateno = 430
trigger5 = command = "b"
ignorehitpause=1

;--------------------------------
;Crounch Strong Punch
[State -1, Crounch Strong Punch]
type = ChangeState
value = 220 + 200 * (command = "holddown")
triggerall = (statetype != A)
triggerall = roundstate = 2
triggerall = ctrl
trigger1 = command = "z"
trigger2 = movecontact && stateno = [400,410]
trigger3 = movecontact && stateno = [430,440]
trigger4 = movecontact && stateno = [200,210]
trigger5 = movecontact && stateno = [230,240]
ignorehitpause=1

;--------------------------------
;Crounch Strong Kick
[State -1, Crounch Strong Kick]
type = ChangeState
value = 250 + 200 * (command = "holddown")
triggerall = (statetype != A)
triggerall = roundstate = 2
triggerall = ctrl
trigger1 = command = "c"
trigger2 = movecontact && stateno = [400,410]
trigger3 = movecontact && stateno = [430,440]
trigger4 = movecontact && stateno = [200,210]
trigger5 = movecontact && stateno = [230,240]
ignorehitpause=1

;--------------------------------
; Air basics
;--------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A && var(3) < 3
trigger1 = stateno = 8800 && var(20)=1 && P2MoveType=H && ctrl
trigger2 = (stateno = 630) && movecontact && ctrl
trigger3 = ctrl
ignorehitpause=1

;--------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A  && var(3) < 3
trigger1 = (stateno = 600) && movecontact && ctrl
trigger2 = stateno = 8800 && var(20)=1 && P2MoveType=H && ctrl
trigger3 = ctrl
ignorehitpause=1

;--------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A && var(3) < 12
trigger1 = movecontact && ctrl && stateno = [600,610]
trigger2 = movecontact && stateno = 630 && ctrl
trigger3 = ctrl
ignorehitpause=1

;--------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A && var(3) < 12
trigger1 = (stateno = 600) && movecontact && ctrl
trigger3 = ctrl
trigger2 = movecontact && ctrl && stateno = [630,640]
ignorehitpause=1

;--------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A && var(3) < 16
triggerall = ctrl
trigger2 = movecontact && stateno = [600,610]
trigger3 = movecontact && stateno = [630,640]
ignorehitpause=1

;--------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
triggerall = ctrl
trigger2 = movecontact && stateno = [600,610]
trigger3 = movecontact && stateno = [630,640]
ignorehitpause=1

;---------------------------------------------------------------------------
[State -1, Interrogation mode]
type = varadd
triggerall = stateno = 860
trigger1 = (time%4) = 0
trigger1 = command = "a" || command = "b" || command = "c"
v=4
value = 6

;--------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype != A && ctrl
trigger1 = var(20) != 1
trigger2 = random < life && var(20)=1


; AI Standing Guard
; ==========================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = Statetype = S
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl
triggerall = facing != (enemynear, facing)
trigger1 = random > (enemynear, movecontact)*500
value = 130 ;Default standing guard state


; AI Stand to Crouch Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152


; AI Crouching Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl
triggerall = facing != (enemynear, facing)
trigger1 = random > (enemynear, movecontact)*500;trigger1 = random > life
value = 131


; AI Crouch to Stand Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = random > life;1
trigger1 = stateno = 152
value = 150

; --- UNIVERSAL GUARD CANCEL (Added by Script) ---
[State -1, Universal Guard Cancel]
type = ChangeState
value = 220
triggerall = !AILevel
triggerall = StateNo = [150, 155] ; Trigger only when in block stun (standing, crouching, or air)
triggerall = power >= 1000 ; Must have at least 1 bar of power
trigger1 = command = "x" && command = "a" ; Light Punch + Light Kick
trigger1 = command = "holdfwd"
