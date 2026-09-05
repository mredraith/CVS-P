; _________________________________________
;| Character by Author Name |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;
;SPECIAL MOVES=
;

;---------------------------------------------------------------------------
;N.D.L.
[Statedef 1000]
type = C
physics = C
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72 * !var(20)
facep2 = 1

[state 1000,Posset]
type = posset
trigger1 = !Time
y = 0

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1010, 1020))

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S4, 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S1, var(10)

[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "Needles"
ID = 1050
stateno = 1050
pos = 100,0;75 * (1 + var(10)),0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

; ==

[Statedef 1010]
type = C
physics = C
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72 * !var(20)
facep2 = 1

[state 1000,Posset]
type = posset
trigger1 = !Time
y = 0

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1010, 1020))

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S4, 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S1, var(10)

[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "Needles"
ID = 1050
stateno = 1050
pos = 200,0;75 * (1 + var(10)),0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

; ==

[Statedef 1020]
type = C
physics = C
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72 * !var(20)
facep2 = 1

[state 1000,Posset]
type = posset
trigger1 = !Time
y = 0

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1010, 1020))

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S4, 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S1, var(10)

[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "Needles"
ID = 1050
stateno = 1050
pos = 250,0;75 * (1 + var(10)),0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX N.D.L.
[Statedef 1030]
type = C
physics = C
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = ifelse(var(53) > 0, 0, -500)
facep2 = 1

[State 1030, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1030, Anim]
type = changeanim
trigger1 = !time
value = 1030

[State 1030,Posset]
type = posset
trigger1 = !time
y = 0

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1030, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1030, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1030, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1030, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 0, -51
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1030, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S4, 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S1, var(10)

[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "EX Needles"
ID = 1060
stateno = 1060
pos = p2dist x,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;no pegou
[Statedef 1199]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
anim=1100
poweradd = 72 * !var(20)
facep2 = 1

[state 1000,Posset]
type=posset
trigger1 = !time
y=0

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = 1;ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

;[State 1000, Button Detect (AI)]
;type = VarSet
;trigger1 = !Time && AILevel
;var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

;[State 1000, ChangeAnim]
;type = ChangeAnim
;trigger1 = !Time
;value = 1100;ifElse(var(10) = 0, 1100, ifElse(var(10) = 1, 1110, 1120))

;[State 1060, hitvar]
;type = varset
;trigger1 = !time
;var(11) = 0

;[State 1060, hitvar]
;type = varadd
;triggerall = ((command = "x" || command = "rlsx") || (command = "y" || command = "rlsy") || (command = "z" || command = "rlsz"))
;trigger1 = var(10) = 1 && Animelemtime(14) >= 0 && Animelemtime(17) < 0
;trigger2 = var(10) = 2 && Animelemtime(12) >= 0 && Animelemtime(15) < 0
;var(11) = 1

[State 200]
type = PlaySnd
;trigger1 = var(10) = 0
trigger1 = animelemtime(7) >= 0 && animelemtime(18) < 0
trigger1 = time % 7 = 0
;trigger2 = var(10) = 1
trigger2 = animelemtime(11) >= 0 && animelemtime(25) < 0
trigger2 = time % 7 = 0
;trigger3 = var(10) = 2
trigger3 = animelemtime(12) >= 0 && animelemtime(29) < 0
trigger3 = time % 7 = 0
value = 5,2
channel = 0

[State 200]
type = PlaySnd
;trigger1 = var(10) = 0
trigger1 = AnimElem = 7 || AnimElem = 16
;trigger2 = var(10) = 1
trigger2 = AnimElem = 11 || AnimElem = 20
;trigger3 = var(10) = 2
trigger3 = AnimElem = 12 || AnimElem = 21
value = 4,0
channel = 1

;[State 0, ChangeAnim]
;type = ChangeAnim
;;triggerall = var(11) < 1
;trigger1 = AnimElem = 20
;trigger2 = AnimElem = 21
;value = anim
;elem = ifelse(var(10) < 2, 24, 28)

[State 1200, Hit]
type=hitdef
;triggerAll = !var(16) && (var(15)<15 || var(20))
trigger1 = var(10) = 0
trigger1 = Animelem = 10 || Animelem = 16
ID = 1100
attr = S,SA
hitflag = HAF
guardflag = M
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -3.62, -4.56), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.62, -4.56)
guard.cornerpush.veloff = 0
air.velocity = -3.8, -5.64
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(17) >= 0 ;&& var(10) = 0
trigger2 = AnimElemTime(24) >= 0 ;&& var(10) = 1
trigger3 = AnimElemTime(28) >= 0 ;&& var(10) = 2
moveType = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

; ==

[Statedef 1100]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
anim = 1110
poweradd = 72 * !var(20)
facep2 = 1

[state 1000,Posset]
type=posset
trigger1 = !time
y=0

;[State 1000, Button Detect]
;type = VarSet
;trigger1 = !Time && !AILevel
;var(10) = 1;ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

;[State 1000, Button Detect (AI)]
;type = VarSet
;trigger1 = !Time && AILevel
;var(10) = 1;ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

;[State 1000, ChangeAnim]
;type = ChangeAnim
;trigger1 = !Time
;value = 1110;ifElse(var(10) = 0, 1100, ifElse(var(10) = 1, 1110, 1120))

;[State 1060, hitvar]
;type = varset
;trigger1 = !time
;var(11) = 0

;[State 1060, hitvar]
;type = varadd
;triggerall = ((command = "x" || command = "rlsx") || (command = "y" || command = "rlsy") || (command = "z" || command = "rlsz"))
;trigger1 = var(10) = 1 && Animelemtime(14) >= 0 && Animelemtime(17) < 0
;trigger2 = var(10) = 2 && Animelemtime(12) >= 0 && Animelemtime(15) < 0
;var(11) = 1

[State 200]
type = PlaySnd
;trigger1 = var(10) = 0
trigger1 = animelemtime(7) >= 0 && animelemtime(18) < 0
trigger1 = time % 7 = 0
;trigger2 = var(10) = 1
trigger2 = animelemtime(11) >= 0 && animelemtime(25) < 0
trigger2 = time % 7 = 0
;trigger3 = var(10) = 2
trigger3 = animelemtime(12) >= 0 && animelemtime(29) < 0
trigger3 = time % 7 = 0
value = 5,2
channel = 0

[State 200]
type = PlaySnd
;trigger1 = var(10) = 0
trigger1 = AnimElem = 7 || AnimElem = 16
;trigger2 = var(10) = 1
trigger2 = AnimElem = 11 || AnimElem = 20
;trigger3 = var(10) = 2
trigger3 = AnimElem = 12 || AnimElem = 21
value = 4,0
channel = 1

;[State 0, ChangeAnim]
;type = ChangeAnim
;triggerall = var(11) < 1
;trigger1 = var(10) = 1 && AnimElem = 20
;trigger2 = var(10) = 2 && AnimElem = 21
;value = anim
;elem = ifelse(var(10) < 2, 24, 28)

[State 1200, Hit]
type=hitdef
;triggerAll = !var(16) && (var(15)<15 || var(20))
;trigger1 = var(10) = 1
trigger1 = Animelem = 11 || Animelem = 14 || Animelem = 17 ;|| Animelem = 21
ID = 1110
attr = S,SA
hitflag = HAF
guardflag = M
damage = ifelse((Animelemtime(12) < 0), ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), ceil(ifElse(fvar(11) * 24 < 7, 7, fvar(11) * 24))), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), ifelse(animelemtime(17) < 0 || var(11), -1.9, -3.62), ifelse(animelemtime(17) < 0 || var(11), -3, -4.56)), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), ifelse(animelemtime(17) < 0 || var(11), -1.9, -3.62), ifelse(animelemtime(17) < 0 || var(11), -3, -4.56))
guard.cornerpush.veloff = 0
air.velocity = -3.8, -5.64
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(17) >= 0 ;&& var(10) = 0
trigger2 = AnimElemTime(24) >= 0 ;&& var(10) = 1
trigger3 = AnimElemTime(28) >= 0 ;&& var(10) = 2
moveType = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

; ==

[Statedef 1110]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
anim = 1110
poweradd = 72 * !var(20)
facep2 = 1

[state 1000,Posset]
type=posset
trigger1 = !time
y=0

;[State 1000, Button Detect]
;type = VarSet
;trigger1 = !Time && !AILevel
;var(10) = 1;ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

;[State 1000, Button Detect (AI)]
;type = VarSet
;trigger1 = !Time && AILevel
;var(10) = 1;ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

;[State 1000, ChangeAnim]
;type = ChangeAnim
;trigger1 = !Time
;value = 1110;ifElse(var(10) = 0, 1100, ifElse(var(10) = 1, 1110, 1120))

;[State 1060, hitvar]
;type = varset
;trigger1 = !time
;var(11) = 0

;[State 1060, hitvar]
;type = varadd
;triggerall = ((command = "x" || command = "rlsx") || (command = "y" || command = "rlsy") || (command = "z" || command = "rlsz"))
;trigger1 = var(10) = 1 && Animelemtime(14) >= 0 && Animelemtime(17) < 0
;trigger2 = var(10) = 2 && Animelemtime(12) >= 0 && Animelemtime(15) < 0
;var(11) = 1

[State 200]
type = PlaySnd
;trigger1 = var(10) = 0
trigger1 = animelemtime(7) >= 0 && animelemtime(18) < 0
trigger1 = time % 7 = 0
;trigger2 = var(10) = 1
trigger2 = animelemtime(11) >= 0 && animelemtime(25) < 0
trigger2 = time % 7 = 0
;trigger3 = var(10) = 2
trigger3 = animelemtime(12) >= 0 && animelemtime(29) < 0
trigger3 = time % 7 = 0
value = 5,2
channel = 0

[State 200]
type = PlaySnd
;trigger1 = var(10) = 0
trigger1 = AnimElem = 7 || AnimElem = 16
;trigger2 = var(10) = 1
trigger2 = AnimElem = 11 || AnimElem = 20
;trigger3 = var(10) = 2
trigger3 = AnimElem = 12 || AnimElem = 21
value = 4,0
channel = 1

;[State 0, ChangeAnim]
;type = ChangeAnim
;triggerall = var(11) < 1
;trigger1 = var(10) = 1 && AnimElem = 20
;trigger2 = var(10) = 2 && AnimElem = 21
;value = anim
;elem = ifelse(var(10) < 2, 24, 28)

[State 1200, Hit]
type=hitdef
;triggerAll = !var(16) && (var(15)<15 || var(20))
;trigger1 = var(10) = 1
trigger1 = Animelem = 11 || Animelem = 13 || Animelem = 15 ;|| Animelem = 21
ID = 1110
attr = S,SA
hitflag = HAF
guardflag = M
damage = ifelse((Animelemtime(12) < 0), ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), ceil(ifElse(fvar(11) * 24 < 7, 7, fvar(11) * 24))), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), ifelse(animelemtime(17) < 0 || var(11), -1.9, -3.62), ifelse(animelemtime(17) < 0 || var(11), -3, -4.56)), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), ifelse(animelemtime(17) < 0 || var(11), -1.9, -3.62), ifelse(animelemtime(17) < 0 || var(11), -3, -4.56))
guard.cornerpush.veloff = 0
air.velocity = -3.8, -5.64
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(17) >= 0 ;&& var(10) = 0
trigger2 = AnimElemTime(24) >= 0 ;&& var(10) = 1
trigger3 = AnimElemTime(28) >= 0 ;&& var(10) = 2
moveType = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

; ==

[Statedef 1120]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
anim = 1120
poweradd = 72 * !var(20)
facep2 = 1

[state 1000,Posset]
type=posset
trigger1 = !time
y=0

;[State 1000, Button Detect]
;type = VarSet
;trigger1 = !Time && !AILevel
;var(10) = 2;ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

;[State 1000, Button Detect (AI)]
;type = VarSet
;trigger1 = !Time && AILevel
;var(10) = 2;ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

;[State 1000, ChangeAnim]
;type = ChangeAnim
;trigger1 = !Time
;value = 1110;ifElse(var(10) = 0, 1100, ifElse(var(10) = 1, 1110, 1120))

;[State 1060, hitvar]
;type = varset
;trigger1 = !time
;var(11) = 0

;[State 1060, hitvar]
;type = varadd
;triggerall = ((command = "x" || command = "rlsx") || (command = "y" || command = "rlsy") || (command = "z" || command = "rlsz"))
;trigger1 = var(10) = 1 && Animelemtime(14) >= 0 && Animelemtime(17) < 0
;trigger2 = var(10) = 2 && Animelemtime(12) >= 0 && Animelemtime(15) < 0
;var(11) = 1

[State 200]
type = PlaySnd
;trigger1 = var(10) = 0
trigger1 = animelemtime(7) >= 0 && animelemtime(18) < 0
trigger1 = time % 7 = 0
;trigger2 = var(10) = 1
trigger2 = animelemtime(11) >= 0 && animelemtime(25) < 0
trigger2 = time % 7 = 0
trigger3 = var(10) = 2
trigger3 = animelemtime(12) >= 0 && animelemtime(29) < 0
trigger3 = time % 7 = 0
value = 5,2
channel = 0

[State 200]
type = PlaySnd
;trigger1 = var(10) = 0
trigger1 = AnimElem = 7 || AnimElem = 16
;trigger2 = var(10) = 1
trigger2 = AnimElem = 11 || AnimElem = 20
;trigger3 = var(10) = 2
trigger3 = AnimElem = 12 || AnimElem = 21
value = 4,0
channel = 1

;[State 0, ChangeAnim]
;type = ChangeAnim
;triggerall = var(11) < 1
;trigger1 = var(10) = 1 && AnimElem = 20
;trigger2 = var(10) = 2 && AnimElem = 21
;value = anim
;elem = ifelse(var(10) < 2, 24, 28)

;[State 1200, Hit]
;type=hitdef
;triggerAll = !var(16) && (var(15)<15 || var(20))
;trigger1 = var(10) = 0
;trigger1 = Animelem = 7 || Animelem = 10
;ID = 1100
;attr = S,SA
;hitflag = HAF
;guardflag = M
;damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 7
;getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
;givepower = 36, 36
;pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
;guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
;animtype = Hard
;air.animtype = back
;fall.animtype = back
;ground.type = Low
;air.type = Low
;ground.hittime = 18
;ground.slidetime = 18
;guard.hittime = 18
;air.hittime = 120
;ground.velocity = ifelse(var(20), -3.62, -4.56), 0
;ground.cornerpush.veloff = 0
;guard.velocity = ifelse(var(20), -3.62, -4.56)
;guard.cornerpush.veloff = 0
;air.velocity = -3.8, -5.64
;air.cornerPush.velOff = 0
;yaccel = .45
;fall = 0
;air.fall = 1
;fall.recover = 0
;fall.recovertime = 120
;hitsound = -1 + 0*(var(31):=(var(10)))
;guardsound = -1 + 0*(var(32):=0)
;sparkno = -1 + 0*(var(33):=8013)
;guard.sparkno = -1 + 0*(var(34):=8001)
;sparkxy = -10 + 0*(var(35):=66), var(36):=-80
;palfx.time = 12*var(9)
;palfx.add = 255,255,255
;palfx.sinadd= -255,-255,-255,48

;[State 1200, Hit]
;type=hitdef
;triggerAll = !var(16) && (var(15)<15 || var(20))
;trigger1 = var(10) = 1
;trigger1 = Animelem = 11 || Animelem = 14 || Animelem = 17 || Animelem = 21
;ID = 1100
;attr = S,SA
;hitflag = HAF
;guardflag = M
;damage = ifelse((Animelemtime(12) < 0), ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), ceil(ifElse(fvar(11) * 24 < 7, 7, fvar(11) * 24))), 7
;getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
;givepower = 36, 36
;pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
;guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
;animtype = Hard
;air.animtype = back
;fall.animtype = back
;ground.type = Low
;air.type = Low
;ground.hittime = 18
;ground.slidetime = 18
;guard.hittime = 18
;air.hittime = 120
;ground.velocity = ifelse(var(20), ifelse(animelemtime(17) < 0 || var(11), -1.9, -3.62), ifelse(animelemtime(17) < 0 || var(11), -3, -4.56)), 0
;ground.cornerpush.veloff = 0
;guard.velocity = ifelse(var(20), ifelse(animelemtime(17) < 0 || var(11), -1.9, -3.62), ifelse(animelemtime(17) < 0 || var(11), -3, -4.56))
;guard.cornerpush.veloff = 0
;air.velocity = -3.8, -5.64
;air.cornerPush.velOff = 0
;yaccel = .45
;fall = 0
;air.fall = 1
;fall.recover = 0
;fall.recovertime = 120
;hitsound = -1 + 0*(var(31):=(var(10)))
;guardsound = -1 + 0*(var(32):=0)
;sparkno = -1 + 0*(var(33):=8013)
;guard.sparkno = -1 + 0*(var(34):=8001)
;sparkxy = -10 + 0*(var(35):=66), var(36):=-80
;palfx.time = 12*var(9)
;palfx.add = 255,255,255
;palfx.sinadd= -255,-255,-255,48

[State 1200, Hit]
type=hitdef
;triggerAll = !var(16) && (var(15)<15 || var(20))
;trigger1 = var(10) = 2
trigger1 = Animelem = 12 || Animelem = 14 || Animelem = 16 || Animelem = 18; || Animelem = 23
ID = 1120
attr = S,SA
hitflag = HAF
guardflag = M
damage = ifelse((Animelemtime(13) < 0), ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), ceil(ifElse(fvar(11) * 23 < 7, 7, fvar(11) * 23))), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), ifelse(animelemtime(15) < 0 || var(11), -1.18, -3.62), ifelse(animelemtime(15) < 0 || var(11), -2.25, -4.56)), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), ifelse(animelemtime(15) < 0 || var(11), -1.18, -3.62), ifelse(animelemtime(15) < 0 || var(11), -2.25, -4.56))
guard.cornerpush.veloff = 0
air.velocity = -3.8, -5.64
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

;[State 1000, Idle]
;type = StateTypeSet
;trigger1 = AnimElemTime(17) >= 0 && var(10) = 0
;trigger2 = AnimElemTime(24) >= 0 && var(10) = 1
;trigger3 = AnimElemTime(28) >= 0 && var(10) = 2
;moveType = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX A.X.E.
[Statedef 1150]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = ifelse(var(53) > 0, 0, -500)
facep2 = 1

[State 1150, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1150, Anim]
type = changeanim
trigger1 = !time
value = 1150

[state 1150,Posset]
type = posset
trigger1 = !time
y = 0

[State 1150, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1150, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1150, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1150, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1150, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 23, -70
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1150, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 0

[State 1150, hitvar]
type = varset
trigger1 = !time
var(11) = 0

[State 1150, hitvar]
type = varadd
triggerall = ((command = "x" || command = "rlsx") || (command = "y" || command = "rlsy") || (command = "z" || command = "rlsz"))
trigger1 = Animelemtime(12) >= 0 && Animelemtime(15) < 0
var(11) = 1

[State 200]
type = PlaySnd
trigger1 = animelemtime(9) >= 0 && animelemtime(30) < 0
trigger1 = time % 7 = 0
value = 5,2
channel = 1

[State 1150]
type = PlaySnd
trigger1 = AnimElem = 9 || AnimElem = 18 || AnimElem = 28
value = 4,0
channel = 2

[State 1150, ChangeAnim]
type = ChangeAnim
trigger1 = var(11) < 1
trigger1 = animelem = 19
value = anim
elem = 30

[State 1150, Hit]
type=hitdef
triggerAll = !var(16) && var(15) < 15
trigger1 = AnimElem = 9 || AnimElem = 11 || AnimElem = 13 || AnimElem = 15 || AnimElem = 17; || AnimElem = 25
ID = 1150
attr = S,SA
hitflag = HAF
guardflag = M
damage = ifelse((Animelemtime(10) < 0), ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), ceil(ifElse(fvar(11) * 25 < 7, 7, fvar(11) * 25))), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = ifelse(animelemtime(15) < 0 || var(11), -2, -4.56), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(animelemtime(15) < 0 || var(11), -2, -4.56)
guard.cornerpush.veloff = 0
air.velocity = -3.8, -5.64
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0

air.fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1150, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(29) >= 0
moveType = I

[State 1150, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;AIR A.X.E.
[Statedef 1200]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 1
velset = vel x, 0
poweradd = 72 * !var(20)

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = 0;ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 0;ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1200;ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1210, 1220))

;[State 1060, hitvar]
;type = varset
;trigger1 = !time
;trigger2 = anim = 1240
;trigger2 = animelemtime(3) < 0
;var(11) = 0

[State 0, VarSet]
type = VarSet
trigger1 = !time
fv = 12
value = vel x

[State 0, VarSet]
type = VarSet
trigger1 = anim = [1200,1220]
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1240
trigger2 = animelemtime(3) >= 1
fv = 13
value = vel y

[State 0, VelSet]
type = VelSet
trigger1 = anim = [1200,1220]
trigger1 = animelemtime(6) < 0
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1240
trigger1 = animelemtime(3) < 0
x = 0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = anim = [1200,1220]
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1240
trigger2 = animelemtime(3) >= 0
x = fvar(12)

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1240
trigger1 = animelemtime(3) >= 0
y = fvar(13)

[State 0, Gravity]
type = Gravity
trigger1 = anim = [1200,1220]
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1240
trigger2 = animelemtime(3) >= 0

[State 1060, hitvar]
type = varset
triggerall = ((command = "x" || command = "rlsx") || (command = "y" || command = "rlsy") || (command = "z" || command = "rlsz"))
trigger1 = anim = [1200,1220]
trigger1 = AnimElemTime(9) >= 0
trigger2 = anim = 1240
trigger2 = AnimElemTime(4) >= 0
var(11) = 1

[State 200]
type = PlaySnd
triggerall = time % 7 = 0
trigger1 = anim = [1200,1220]
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1240
value = 5,2
channel = 0

[State 200]
type = PlaySnd
trigger1 = AnimElem = 6 || AnimElem = 15
value = 4,0
channel = 1

[State 1200, Hit]
type=hitdef
;triggerAll = !var(16) && (var(15)<15 || var(20))
;trigger1 = anim != 1240
trigger1 = Animelem = 6 || Animelem = 9; ||Animelem = 12
;trigger2 = anim = 1240
;trigger2 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7
ID = 1200
attr = S,SA
hitflag = HAF
guardflag = M
damage = ceil(ifElse(fvar(11) * ifelse(anim != 1240, 25 + (var(10) * 5), 24 + (var(10) * 5)) < 7, 7, fvar(11) * ifelse(anim != 1240, 25 + (var(10) * 5), 24 + (var(10) * 5)))), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = High
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -3.62, -4.56), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.62, -4.56)
guard.cornerpush.veloff = 0
air.velocity = -3.8, -5.64
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !animtime
trigger1 = (anim = [1200,1220]) || anim = 1240
value = ifelse(var(11) = 1, 1240, 1250)

[State 1000, ChangeState]
type = ChangeState
trigger1 = pos y >= 0 && vel y >= 0
value = 52
ctrl = 1

; ==

[Statedef 1210]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 1
velset = vel x, 0
poweradd = 72 * !var(20)

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = 1;ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 1;ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1210;ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1210, 1220))

;[State 1060, hitvar]
;type = varset
;trigger1 = !time
;trigger2 = anim = 1240
;trigger2 = animelemtime(3) < 0
;var(11) = 0

[State 0, VarSet]
type = VarSet
trigger1 = !time
fv = 12
value = vel x

[State 0, VarSet]
type = VarSet
trigger1 = anim = [1200,1220]
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1240
trigger2 = animelemtime(3) >= 1
fv = 13
value = vel y

[State 0, VelSet]
type = VelSet
trigger1 = anim = [1200,1220]
trigger1 = animelemtime(6) < 0
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1240
trigger1 = animelemtime(3) < 0
x = 0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = anim = [1200,1220]
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1240
trigger2 = animelemtime(3) >= 0
x = fvar(12)

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1240
trigger1 = animelemtime(3) >= 0
y = fvar(13)

[State 0, Gravity]
type = Gravity
trigger1 = anim = [1200,1220]
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1240
trigger2 = animelemtime(3) >= 0

;[State 1060, hitvar]
;type = varset
;triggerall = ((command = "x" || command = "rlsx") || (command = "y" || command = "rlsy") || (command = "z" || command = "rlsz"))
;trigger1 = anim = [1200,1220]
;trigger1 = AnimElemTime(9) >= 0
;trigger2 = anim = 1240
;trigger2 = AnimElemTime(4) >= 0
;var(11) = 1

[State 200]
type = PlaySnd
triggerall = time % 7 = 0
trigger1 = anim = [1200,1220]
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1240
value = 5,2
channel = 0

[State 200]
type = PlaySnd
trigger1 = AnimElem = 6 || AnimElem = 15
value = 4,0
channel = 1

[State 1200, Hit]
type=hitdef
;triggerAll = !var(16) && (var(15)<15 || var(20))
;trigger1 = anim != 1240
trigger1 = Animelem = 6 || Animelem = 8 ||Animelem = 10
;trigger2 = anim = 1240
;trigger2 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7
ID = 1200
attr = S,SA
hitflag = HAF
guardflag = M
damage = ceil(ifElse(fvar(11) * ifelse(anim != 1240, 25 + (var(10) * 5), 24 + (var(10) * 5)) < 7, 7, fvar(11) * ifelse(anim != 1240, 25 + (var(10) * 5), 24 + (var(10) * 5)))), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = High
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -3.62, -4.56), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.62, -4.56)
guard.cornerpush.veloff = 0
air.velocity = -3.8, -5.64
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !animtime
trigger1 = (anim = [1200,1220]) || anim = 1240
value = ifelse(var(11) = 1, 1240, 1250)

[State 1000, ChangeState]
type = ChangeState
trigger1 = pos y >= 0 && vel y >= 0
value = 52
ctrl = 1

; ==

[Statedef 1220]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 1
velset = vel x, 0
poweradd = 72 * !var(20)

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = 2;ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 2;ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1220;ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1210, 1220))

;[State 1060, hitvar]
;type = varset
;trigger1 = !time
;trigger2 = anim = 1240
;trigger2 = animelemtime(3) < 0
;var(11) = 0

[State 0, VarSet]
type = VarSet
trigger1 = !time
fv = 12
value = vel x

[State 0, VarSet]
type = VarSet
trigger1 = anim = [1200,1220]
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1240
trigger2 = animelemtime(3) >= 1
fv = 13
value = vel y

[State 0, VelSet]
type = VelSet
trigger1 = anim = [1200,1220]
trigger1 = animelemtime(6) < 0
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1240
trigger1 = animelemtime(3) < 0
x = 0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = anim = [1200,1220]
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1240
trigger2 = animelemtime(3) >= 0
x = fvar(12)

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1240
trigger1 = animelemtime(3) >= 0
y = fvar(13)

[State 0, Gravity]
type = Gravity
trigger1 = anim = [1200,1220]
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1240
trigger2 = animelemtime(3) >= 0

;[State 1060, hitvar]
;type = varset
;triggerall = ((command = "x" || command = "rlsx") || (command = "y" || command = "rlsy") || (command = "z" || command = "rlsz"))
;trigger1 = anim = [1200,1220]
;trigger1 = AnimElemTime(9) >= 0
;trigger2 = anim = 1240
;trigger2 = AnimElemTime(4) >= 0
;var(11) = 1

[State 200]
type = PlaySnd
triggerall = time % 7 = 0
trigger1 = anim = [1200,1220]
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1240
value = 5,2
channel = 0

[State 200]
type = PlaySnd
trigger1 = AnimElem = 6 || AnimElem = 15
value = 4,0
channel = 1

[State 1200, Hit]
type=hitdef
;triggerAll = !var(16) && (var(15)<15 || var(20))
;trigger1 = anim != 1240
trigger1 = Animelem = 6 || Animelem = 8 ||Animelem = 10 ||Animelem = 12
;trigger2 = anim = 1240
;trigger2 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7
ID = 1200
attr = S,SA
hitflag = HAF
guardflag = M
damage = ceil(ifElse(fvar(11) * ifelse(anim != 1240, 25 + (var(10) * 5), 24 + (var(10) * 5)) < 7, 7, fvar(11) * ifelse(anim != 1240, 25 + (var(10) * 5), 24 + (var(10) * 5)))), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = High
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -3.62, -4.56), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.62, -4.56)
guard.cornerpush.veloff = 0
air.velocity = -3.8, -5.64
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !animtime
trigger1 = (anim = [1200,1220]) || anim = 1240
value = ifelse(var(11) = 1, 1240, 1250)

[State 1000, ChangeState]
type = ChangeState
trigger1 = pos y >= 0 && vel y >= 0
value = 52
ctrl = 1


;---------------------------------------------------------------------------
;EX AIR A.X.E.
[Statedef 1250]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 1
velset = vel x, 0
poweradd = ifelse(var(53) > 0, 0, -500)

[State 1150, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1230

[State 1150, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1150, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1150, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1150, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1150, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 12, -76
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1150, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 0

[State 1060, hitvar]
type = varset
trigger1 = !time
trigger2 = anim = 1240
trigger2 = animelemtime(3) < 0
var(11) = 0

[State 0, VarSet]
type = VarSet
trigger1 = !time
fv = 12
value = vel x

[State 0, VarSet]
type = VarSet
trigger1 = anim = 1230
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1240
trigger2 = animelemtime(3) >= 1
fv = 13
value = vel y

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1230
trigger1 = animelemtime(6) < 0
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1240
trigger1 = animelemtime(3) < 0
x = 0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1230
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1240
trigger2 = animelemtime(3) >= 0
x = fvar(12)

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1240
trigger1 = animelemtime(3) >= 0
y = fvar(13)

[State 0, Gravity]
type = Gravity
trigger1 = anim = 1230
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1240
trigger2 = animelemtime(3) >= 0

;[State 1060, hitvar]
;type = varset
;triggerall = ((command = "x" || command = "rlsx") || (command = "y" || command = "rlsy") || (command = "z" || command = "rlsz"))
;trigger1 = anim = 1230
;trigger1 = AnimElemTime(9) >= 0
;trigger2 = anim = 1240
;trigger2 = AnimElemTime(4) >= 0
;var(11) = 1

[State 200]
type = PlaySnd
triggerall = time % 7 = 0
trigger1 = anim = 1230
trigger1 = animelemtime(6) >= 0
trigger2 = anim = 1240
value = 5,2
channel = 1

[State 200]
type = PlaySnd
trigger1 = AnimElem = 6 || AnimElem = 15
value = 4,0
channel = 2

[State 1200, Hit]
type=hitdef
;triggerAll = !var(16) && (var(15)<15 || var(20))
;trigger1 = anim != 1240
trigger1 = Animelem = 6 || Animelem = 8 ||Animelem = 10 ||Animelem = 12 ||Animelem = 14
;trigger2 = anim = 1240
;trigger2 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7
ID = 1250
attr = S,SA
hitflag = HAF
guardflag = M
damage = ceil(ifElse(fvar(11) * ifelse(anim != 1240, 37, 35) < 7, 7, fvar(11) * ifelse(anim != 1240, 37, 35))), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = High
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -3.62, -4.56), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.62, -4.56)
guard.cornerpush.veloff = 0
air.velocity = -3.8, -5.64
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !animtime
trigger1 = anim = [1230,1240]
value = ifelse(var(11) = 1, 1240, 1250)

[State 1000, ChangeState]
type = ChangeState
trigger1 = pos y >= 0 && vel y >= 0
value = 52
ctrl = 1

;---------------------------------------------------------------------------
;D.R.A.
[Statedef 1300]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 1
velset = 0, 0
poweradd = 72 * !var(20)

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = 0;ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1300, ChangeAnim]
type = ChangeAnim
;trigger1 = (anim != [1300, 1320]) && anim != 1350
trigger1 = !Time
value = 1300;ifElse(var(10) = 0, 1300, ifElse(var(10) = 1, 1310, 1320))

[State 1300, VelSet]
type = VelSet
trigger1 = anim != 1350
trigger1 = animelem = 12
x = 3.6;ifElse(var(10) = 0, 5.9, ifElse(var(10) = 1, 9.6, 13.7))
y = 10.5

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = anim != 1350
trigger1 = animelem = 9
value = 4, 5

[State 1300, Hit]
type=hitdef
triggerAll = anim != 1350
;triggerAll = !var(16) && (var(15)<15 || var(20))
trigger1 = !time
ID = 1300
attr = S,SA
hitflag = HAF
guardflag = M
damage = ceil(ifelse(fvar(11)*95<7, 7, fvar(11)*95)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = High
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -3,-4;ifelse(var(20), -3.62, -4.56), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.62, -4.56)
guard.cornerpush.veloff = 0
air.velocity = -3.8, 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = s2, 2
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 1350
trigger1 = movecontact || movereversed
value = 1350

[State 1300, VelSet]
type = VelSet
trigger1 = anim = 1350
trigger1 = animelem = 1
x = ifelse(movehit, -1, 0)
y = ifelse(movehit, -2, -4)

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 1350
statetype = A ;S,A,C,L
movetype = I ;I,A,H
physics = A ;A,C,S,N

[State 1300, ChangeState]
type = ChangeState
trigger1 = anim = 1350
trigger1 = pos y >= 0 && vel y >= 0
value = 52
ctrl = 1

[State 1300, ChangeAnim]
type = ChangeState
trigger1 = !movecontact && !movereversed
trigger1 = pos y >= 0 && vel y >= 0
value = 1305

; ==

[Statedef 1310]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 1
velset = 0, 0
poweradd = 72 * !var(20)

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = 1;ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1300, ChangeAnim]
type = ChangeAnim
;trigger1 = (anim != [1300, 1320]) && anim != 1350
trigger1 = !Time
value = 1310;ifElse(var(10) = 0, 1300, ifElse(var(10) = 1, 1310, 1320))

[State 1300, VelSet]
type = VelSet
trigger1 = anim != 1350
trigger1 = animelem = 12
x = 6.6;ifElse(var(10) = 0, 5.9, ifElse(var(10) = 1, 9.6, 13.7))
y = 10.5

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = anim != 1350
trigger1 = animelem = 9
value = 4, 5

[State 1300, Hit]
type=hitdef
triggerAll = anim != 1350
;triggerAll = !var(16) && (var(15)<15 || var(20))
trigger1 = !time
ID = 1300
attr = S,SA
hitflag = HAF
guardflag = M
damage = ceil(ifelse(fvar(11)*95<7, 7, fvar(11)*95)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = High
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -3,-4;ifelse(var(20), -3.62, -4.56), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.62, -4.56)
guard.cornerpush.veloff = 0
air.velocity = -3.8, 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = s2, 2
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 1350
trigger1 = movecontact || movereversed
value = 1350

[State 1300, VelSet]
type = VelSet
trigger1 = anim = 1350
trigger1 = animelem = 1
x = ifelse(movehit, -1, 0)
y = ifelse(movehit, -2, -4)

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 1350
statetype = A ;S,A,C,L
movetype = I ;I,A,H
physics = A ;A,C,S,N

[State 1300, ChangeState]
type = ChangeState
trigger1 = anim = 1350
trigger1 = pos y >= 0 && vel y >= 0
value = 52
ctrl = 1

[State 1300, ChangeAnim]
type = ChangeState
trigger1 = !movecontact && !movereversed
trigger1 = pos y >= 0 && vel y >= 0
value = 1305

; ==

[Statedef 1320]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 1
velset = 0, 0
poweradd = 72 * !var(20)

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = 2;ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1300, ChangeAnim]
type = ChangeAnim
;trigger1 = (anim != [1300, 1320]) && anim != 1350
trigger1 = !Time
value = 1320;ifElse(var(10) = 0, 1300, ifElse(var(10) = 1, 1310, 1320))

[State 1300, VelSet]
type = VelSet
trigger1 = anim != 1350
trigger1 = animelem = 12
x = 9.6;ifElse(var(10) = 0, 5.9, ifElse(var(10) = 1, 9.6, 13.7))
y = 10.5

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = anim != 1350
trigger1 = animelem = 9
value = 4, 5

[State 1300, Hit]
type=hitdef
triggerAll = anim != 1350
;triggerAll = !var(16) && (var(15)<15 || var(20))
trigger1 = !time
ID = 1300
attr = S,SA
hitflag = HAF
guardflag = M
damage = ceil(ifelse(fvar(11)*95<7, 7, fvar(11)*95)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = High
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -3,-4;ifelse(var(20), -3.62, -4.56), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.62, -4.56)
guard.cornerpush.veloff = 0
air.velocity = -3.8, 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = s2, 2
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 1350
trigger1 = movecontact || movereversed
value = 1350

[State 1300, VelSet]
type = VelSet
trigger1 = anim = 1350
trigger1 = animelem = 1
x = ifelse(movehit, -1, 0)
y = ifelse(movehit, -2, -4)

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 1350
statetype = A ;S,A,C,L
movetype = I ;I,A,H
physics = A ;A,C,S,N

[State 1300, ChangeState]
type = ChangeState
trigger1 = anim = 1350
trigger1 = pos y >= 0 && vel y >= 0
value = 52
ctrl = 1

[State 1300, ChangeAnim]
type = ChangeState
trigger1 = !movecontact && !movereversed
trigger1 = pos y >= 0 && vel y >= 0
value = 1305


;---------------------------------------------------------------------------
;EX D.R.A.
[Statedef 1350]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = ifelse(var(53) > 0, 0, -500)

[State 1350, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1320
Elem = 7

[State 1350, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3
[State 1350, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1350, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1350, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1350, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1 
pos = 17, -72
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1350, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 0

[State 1350, VelSet]
type = VelSet
trigger1 = animelem = 12
x = 14.6
y = 8.2

[State 1350, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = 4, 5

[State 1350, VarSet]
type = VarSet
trigger1 = !time
v = 11
value = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = movehit || movecontact
v = 11
value = 1

[State 1300, Hit]
type=hitdef
triggerAll = !var(16) && (var(15)<15 || var(20))
trigger1 = var(11) <= 1
ID = 1300
attr = S,SA
hitflag = HAF
guardflag = M
damage = ceil(ifelse(fvar(11)*65<7, 7, fvar(11)*65)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = High
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = ifelse(var(20), -3.62, -4.56), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.62, -4.56)
guard.cornerpush.veloff = 0
air.velocity = -3.8, 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = s2, 2
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1300, ChangeAnim]
type = ChangeState
trigger1 = pos y >= 0 && vel y >= 0
value = 1305


;---------------------------------------------------------------------------
;D.R.A. Landing
[Statedef 1305]
type = C
physics = C
movetype = I
ctrl = 0
sprpriority = 1
velset = 10, 0

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 1355

[State 0, PosSet]
type = PosSet
trigger1 = !time
x = pos x + 25
y = 0

[State 1300, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1


;--------------------------------------------
;PUNCH ZERO COUNTER
[STATEDEF 2900]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
faceP2 = 1

[STATE 2900,POSSET]
type=posset
trigger1=!time
y=0

[STATE 2900,ANIM]
type=changeanim
trigger1=!time
value=2900

[STATE 2900,DUST]
type = helper
trigger1 = Animelem=3
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[STATE 2900,WIDTH]
type = Width
trigger1 = 1
edge = 30,0

[STATE 2900,NOT HIT BY]
type = NotHitBy
trigger1 = Anim = 2900
trigger1 = AnimElemNo(0) = [1,5]
value = SCA
time = 1

[STATE 2900,HIT]
type=hitdef
trigger1= !var(16) && (var(15)<15 || var(20))
trigger1= !Time
ID = 2900
attr = S,SA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getpower = 0
givepower = 0, 0
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animtype = Heavy
air.animtype = Heavy
fall.animtype = Diagup
ground.type = hIGH
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -3,-7.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2,-7
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-77
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120

[STATE 2900,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[STATE 2900,CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; NOVOS =

[Statedef 1400]
type = A
movetype = I
physics = N
velset = 0, 0
ctrl = 0
anim = 1400
juggle = 0
poweradd = 20

;[State 1200, palfx]
;type = PalFx
;triggerall = time = 0 && var(20) > 0
;trigger1 = prevStateno = [1000,1999]
;trigger2 = prevStateno = 510
;trigger3 = prevStateno = 210
;trigger4 = prevStateno = 250
;trigger5 = prevStateno = 230
;trigger6 = prevStateno = 270
;trigger7 = prevStateno = 530
;trigger8 = prevStateno = 310
;trigger9 = prevStateno = 610
;trigger10 = prevStateno = 330
;trigger11 = prevStateno = 640
;trigger12=prevstateno=[400,499]
;trigger13=prevstateno=[700,799]
;time = 15
;add = 255,255,255
;mul = 255,255,255
;ignorehitpause = 1
;persistent = 0

;[State 1200, varadd]
;type = VarAdd
;triggerall = time = 0 && var(20) > 0
;trigger1 = prevStateno = [1000,1999]
;trigger2 = prevStateno = 510
;trigger3 = prevStateno = 210
;trigger4 = prevStateno = 250
;trigger5 = prevStateno = 230
;trigger6 = prevStateno = 270
;trigger7 = prevStateno = 530
;trigger8 = prevStateno = 310
;trigger9 = prevStateno = 610
;trigger10 = prevStateno = 330
;trigger11 = prevStateno = 640
;trigger12=prevstateno=[400,499]
;trigger13=prevstateno=[700,799]
;V = 20
;value = -100

[State 000, snd]
type = playsnd
trigger1 = time = 0
;trigger1 = random <= 500
value = 200,1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time >= 12
value = 1
[State 0, PosAdd]
type = PosAdd
trigger1 = time=0
y = -10

[State 0, VelSet]
type = VelSet
trigger1 = time >= 9
x = 7
[State 0, VelSet]
type = VelSet
trigger1 = time >= 42
x = 4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 50
x = 2

[State 0, VelSet]
type = VelSet
trigger1 = time >= 9
y = 4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 19
y = 1.5
[State 0, VelSet]
type = VelSet
trigger1 = time >= 26
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = time >= 32
y = -1.5
[State 0, VelSet]
type = VelSet
trigger1 = time >= 37
y = -3

[State 0,ChangeState]
type = ChangeState
trigger1 = time = 42
value = 1410
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time <= 10
value = 1
movecamera = 0,1

; ==

[Statedef 1410]
type = A
movetype = I
physics = N
velset = 0, 0
ctrl = 1
anim = 1410
juggle = 0
poweradd = 0

[State 0, VarSet]
type = null;VarSet
trigger1 = time = 0
v = 36
value = 1

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = 3
[State 0, VelSet]
type = VelSet
trigger1 = time >= 4
x = 2
[State 0, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
y = 4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 3
y = 6
[State 0, VelSet]
type = VelSet
trigger1 = time >= 6
y = 6

[State 0,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = backedgebodydist <= 40
value = 1
movecamera = 0,1

; ==

[Statedef 1420]
type = A
movetype = I
physics = N
velset = 0, 0
ctrl = 0
anim = 1420
juggle = 0
poweradd = 20

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 6
value = 1421;1451
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

; ==

[Statedef 1421]
type = A
movetype = I
physics = N
velset = 0, 0
ctrl = 0
anim = 1421
juggle = 0
poweradd = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time<=14
value = 1
movecamera = 0,1

[State 000, snd]
type = playsnd
trigger1 = time = 0
;trigger1 = random <= 500
value = 200,1
[State 0, PosAdd]
type = PosAdd
trigger1 = time=0
y = -10

[State 0, Turn]
type = Turn
trigger1 = time = 6
;ignorehitpause =
persistent = 0
[State 0, CtrlSet]
type = CtrlSet
trigger1 = time >= 12
value = 1

[State 0, VelSet]
type = VelSet
trigger1 = time >= 9
x = 7
[State 0, VelSet]
type = VelSet
trigger1 = time >= 42
x = 5
[State 0, VelSet]
type = VelSet
trigger1 = time >= 50
x = 3

[State 0, VelSet]
type = VelSet
trigger1 = time >= 9
y = 4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 19
y = 1.5
[State 0, VelSet]
type = VelSet
trigger1 = time >= 26
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = time >= 32
y = -1.5
[State 0, VelSet]
type = VelSet
trigger1 = time >= 37
y = -3

[State 0,ChangeState]
type = ChangeState
trigger1 = time = 40
value = 1460
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = frontedgebodydist <= 20
trigger1 = command = "holdfwd"
trigger1 = time >= 8
trigger1 = pos Y <= -45
value = 1490
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = frontedgebodydist <= 30
value = 1
movecamera = 0,1

; ==

[Statedef 1460]
type = A
movetype = I
physics = N
velset = 0, 0
ctrl = 1
anim = 1460
juggle = 0
poweradd = 0

[State 0, VarSet]
type = null;VarSet
trigger1 = time = 0
v = 36
value = 1

[State 0, Turn]
type = null;Turn
trigger1 = time = 0
persistent = 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = 3;-3
y = 3
[State 0, VelSet]
type = VelSet
trigger1 = time >= 4
x = 2
y = 4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 7
[State 0, VelSet]
type = VelSet
trigger1 = time >= 12
y = 9
[State 0, VelSet]
type = VelSet
trigger1 = time >= 16
y = 11
[State 0, VelSet]
type = VelSet
trigger1 = time >= 20
y = 11
[State 0, VelSet]
type = VelSet
trigger1 = time >= 24
y = 11
[State 0, VelSet]
type = VelSet
trigger1 = time >= 28
y = 11

[State 0,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

; ==

[Statedef 1490]
type = A
movetype = I
physics = N
velset = 0, 0
ctrl = 1
anim = 1490
juggle = 0
poweradd = 0

[State 0, PosSet]
type = null;PosSet
trigger1 = time = 0
y = -40
[State 0, PosSet]
type = PosSet
trigger1 = time = 0
x = -220

[State 0, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 0,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1400
ctrl = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

; ==
;NO FUNCIONA
[Statedef 1500]
type = S
movetype = I
physics = S
velset = 0, 0
ctrl = 0
anim = 195
juggle = 0
poweradd = 0

[State 000, snd]
type = playsnd
trigger1 = time = 0
value = 200,1

;For TWELVE ONLY var(15) ##21#
[State 1500, Var15 set]
type = VarSet
trigger1 = time = 74
v = 15
value = 300

[State 0, Trans]
type = Trans
trigger1 = time >= 0
trans = add
alpha = 222,222
ignorehitpause = 1

[State 0,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

; ==
; LIGHT DRILL
[Statedef 1600]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 1600
juggle = ifelse ( var(20) > 0,3, 5)
poweradd = ifelse ( var(20) > 0, 25, 50)

;925/ 920 add jump smnoke
;[State 0, jump up explode]
;type = Explod
;trigger1 = Time = 0
;anim = 6020
;sprpriority = 4
;postype = p1
;pos = 0,10
;bindtime = 1
;pausemovetime = 22
;removetime = -2
;ignorehitpause = 1
;scale = 0.6,0.3
;ownpal = 1

[State 40, Dust]
type = helper
;trigger1 = !animtime
trigger1 = Time = 0
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 000, snd]
type = playsnd
trigger1 = time = 0
;trigger1 = random <= 500
value = 40,0

[State 000, snd]
type = playsnd
trigger1 = time = 0
;trigger1 = random <= 500
value = 200,1

;[State 1200, palfx]
;type = PalFx
;triggerall = time = 0 && var(20) > 0
;trigger1 = prevStateno = [1000,1999]
;trigger2 = prevStateno = [240,270]
;trigger3 = prevStateno = 630
;trigger4 = prevStateno = [220,230]
;trigger5 = prevStateno = 530
;time = 15
;add = 255,255,255
;mul = 255,255,255
;ignorehitpause = 1
;persistent = 0

;[State 1200, varadd]
;type = VarAdd
;triggerall = time = 0 && var(20) > 0
;trigger1 = prevStateno = [1000,1999]
;trigger2 = prevStateno = [240,270]
;trigger3 = prevStateno = 630
;trigger4 = prevStateno = [220,230]
;trigger5 = prevStateno = 530
;V = 20
;value = -100

[State 1400,3]
type = HitDef
trigger1 = animelem = 2
priority = 4, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
attr = S,SA			;STAND / NORMAL ATTACK
hitflag = MAF			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up", or "diagup"
air.animtype = hard			;2p ANIM
ground.type = high
damage = 45,5
getpower = ifelse ( var(20) > 0,40, 120)
GivePower = ifelse ( var(20) > 0,40, 40) ; = ifelse ( var(20) > 0,40, 40)
pausetime = 10,10
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 10
guard.hittime = (10) - 6
air.hittime = 10
guard.ctrltime =14
ground.velocity = 0,0
air.velocity = -1,-7
yAccel = (0.5 + (ComboCount * 0.01))
guard.velocity = -12
ground.cornerpush.veloff = ifelse ( var(20) > 0,-5, -5)
guard.cornerpush.veloff = ifelse ( var(20) > 0,-5, -5);
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=115), var(36):=-85
fall = 0
air.fall = 1
fall.recover = 0;
envshake.time = 5
envshake.freq = 100
envshake.ampl = 10;
fall.envshake.time = 5
fall.envshake.freq = 100 ;speed
fall.envshake.ampl = 10	;strong weak

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1610
ctrl = 0

; ==

[Statedef 1610]
type = A
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 1610
juggle = ifelse ( var(20) > 0,3, 5)
poweradd = ifelse ( var(20) > 0, 25, 50)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 0
flag = invisible

[State 0, jump up explode]
type = Explod
trigger1 = Time = 0
anim = 1610
sprpriority = 1
postype = p1
pos = 0,0
bindtime = -1
pausemovetime = 0
removetime =-2
ignorehitpause = 0
scale = 1 , 0.80
ownpal = 1
removeongethit = 1

[State 1400,3]
type = HitDef
trigger1 = time = 0
priority = 4, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
attr = A,SA			;STAND / NORMAL ATTACK
hitflag = MAF			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up", or "diagup"
air.animtype = hard			;2p ANIM
ground.type = high
damage = 45,5
getpower = ifelse ( var(20) > 0,40, 120)
GivePower = ifelse ( var(20) > 0,40, 40) ; = ifelse ( var(20) > 0,40, 40)
pausetime = 10,10
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 10
guard.hittime = (10) - 6
air.hittime = 10
guard.ctrltime =14
ground.velocity = -4, -8
air.velocity = -4, -8
yAccel = (0.5 + (ComboCount * 0.01))
guard.velocity = -12
ground.cornerpush.veloff = ifelse ( var(20) > 0,-15, -20)
guard.cornerpush.veloff = ifelse ( var(20) > 0,-15, -20);
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=115), var(36):=-80
fall = 1
air.fall = 1
fall.recover = 1;
envshake.time = 5
envshake.freq = 100
envshake.ampl = 10;
fall.envshake.time = 5
fall.envshake.freq = 100 ;speed
fall.envshake.ampl = 10	;strong weak

[State 0, VelSet]
type = VelSet
trigger1 = time>=0
x = 4
y = -8

[State 0, PosAdd]
type = PosAdd
trigger1 = time>=0
x = 4
;y = 0
;ignorehitpause =
;persistent =


[State 0, VelSet]
type = VelSet
trigger1 = time>=3
y = -6
[State 0, VelSet]
type = VelSet
trigger1 = time>=6
y = -4
[State 0, VelSet]
type = VelSet
trigger1 = time>=9
x = 2
y = -2
[State 0, VelSet]
type = VelSet
trigger1 = time>=12
x = 1
y = -2
[State 0, VelSet]
type = VelSet
trigger1 = time>=15
y = -1
x = 0
[State 0, VelSet]
type = VelSet
trigger1 = time>=18
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 13
value = 1620
ctrl = 0

; ==

[Statedef 1620]
type = A
movetype = I
physics = N
velset = 0, 0
ctrl = 0
anim = 1620

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
y = 1
[State 0, VelSet]
type = VelSet
trigger1 = time >= 3
y = 2
[State 0, VelSet]
type = VelSet
trigger1 = time >= 6
y = 3
[State 0, VelSet]
type = VelSet
trigger1 = time >= 9
y = 4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 12
y = 6
[State 0, VelSet]
type = VelSet
trigger1 = time >= 15
y = 7
[State 0, VelSet]
type = VelSet
trigger1 = time >= 18
y = 9

[State 0, ChangeState]
type = ChangeState
trigger1 = vel Y > 0 && pos Y >= 0
value = 1999
ctrl = 0

; ==

[Statedef 1999]
type = S
movetype = I
physics = N
velset = 0, 0
ctrl = 0
anim =1999

;52 add landing smoke
[State 103, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 52,0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

; ==
; MEDIUM DRILL
[Statedef 1670]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 1600
juggle = ifelse ( var(20) > 0,3, 5)
poweradd = ifelse ( var(20) > 0, 25, 50)

;925/ 920 add jump smnoke
[State 40, Dust]
type = helper
;trigger1 = !animtime
trigger1 = Time = 0
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 000, snd]
type = playsnd
trigger1 = time = 0
;trigger1 = random <= 500
value = 40,0

[State 000, snd]
type = playsnd
trigger1 = time = 0
;trigger1 = random <= 500
value = 200,1

[State 1400,3]
type = HitDef
trigger1 = animelem = 2
priority = 4, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
attr = S,SA			;STAND / NORMAL ATTACK
hitflag = MAF			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up", or "diagup"
air.animtype = hard			;2p ANIM
ground.type = high
damage = 45,5
getpower = ifelse ( var(20) > 0,40, 120)
GivePower = ifelse ( var(20) > 0,40, 40) ; = ifelse ( var(20) > 0,40, 40)
pausetime = 10,16
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 10
guard.hittime = (10) - 6
air.hittime = 10
guard.ctrltime =14
ground.velocity = 0,0
air.velocity = -1,-7
yAccel = (0.5 + (ComboCount * 0.01))
guard.velocity = -12
ground.cornerpush.veloff = ifelse ( var(20) > 0,-5, -5)
guard.cornerpush.veloff = ifelse ( var(20) > 0,-5, -5);
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=115), var(36):=-85;
fall = 0
air.fall = 1
fall.recover = 0;
envshake.time = 5
envshake.freq = 100
envshake.ampl = 10;
fall.envshake.time = 5
fall.envshake.freq = 100 ;speed
fall.envshake.ampl = 10	;strong weak

[State 1400,3]
type = HitDef
trigger1 = animelem = 4
priority = 4, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
attr = S,SA			;STAND / NORMAL ATTACK
hitflag = MAF			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up", or "diagup"
air.animtype = hard			;2p ANIM
ground.type = high
damage = 30,5
getpower = ifelse ( var(20) > 0,40, 120)
GivePower = ifelse ( var(20) > 0,40, 40) ; = ifelse ( var(20) > 0,40, 40)
pausetime = 10,14
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 10
guard.hittime = (10) - 6
air.hittime = 10
guard.ctrltime =14
ground.velocity = -1,-8
air.velocity = -1,-8
yAccel = (0.5 + (ComboCount * 0.01))
guard.velocity = -12
ground.cornerpush.veloff = ifelse ( var(20) > 0,-5, -5)
guard.cornerpush.veloff = ifelse ( var(20) > 0,-5, -5);
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=115), var(36):=-85
fall = 1
air.fall = 1
fall.recover = 0;
envshake.time = 5
envshake.freq = 100
envshake.ampl = 10;
fall.envshake.time = 5
fall.envshake.freq = 100 ;speed
fall.envshake.ampl = 10	;strong weak

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1680
ctrl = 0

; ==

[Statedef 1680]
type = A
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 1670
juggle = ifelse ( var(20) > 0,3, 5)
poweradd = ifelse ( var(20) > 0, 25, 50)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 0
flag = invisible

[State 0, jump up explode]
type = Explod
trigger1 = Time = 0
anim = 1670
sprpriority = 1
postype = p1
pos = 0,0
bindtime = -1
pausemovetime = 0
removetime =-2
ignorehitpause = 0
scale = 1 , 0.80
ownpal = 1
removeongethit = 1

[State 1400,3]
type = HitDef
trigger1 = time = 0
priority = 4, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
attr = A,SA			;STAND / NORMAL ATTACK
hitflag = MAF			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up", or "diagup"
air.animtype = hard			;2p ANIM
ground.type = high
damage = 45,5
getpower = ifelse ( var(20) > 0,40, 120)
GivePower = ifelse ( var(20) > 0,40, 40) ; = ifelse ( var(20) > 0,40, 40)
pausetime = 10,10
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 10
guard.hittime = (10) - 6
air.hittime = 10
guard.ctrltime =14
ground.velocity = -4, -8
air.velocity = -4, -8
yAccel = (0.5 + (ComboCount * 0.01))
guard.velocity = -12
ground.cornerpush.veloff = ifelse ( var(20) > 0,-15, -20)
guard.cornerpush.veloff = ifelse ( var(20) > 0,-15, -20);
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=115), var(36):=-80
fall = 1
air.fall = 1
fall.recover = 0
envshake.time = 5
envshake.freq = 100
envshake.ampl = 10
fall.envshake.time = 5
fall.envshake.freq = 100 ;speed
fall.envshake.ampl = 10	;strong weak

[State 0, VelSet]
type = VelSet
trigger1 = time>=0
x = 4
y = -10
[State 0, VelSet]
type = VelSet
trigger1 = time>=3
y = -8
[State 0, VelSet]
type = VelSet
trigger1 = time>=6
y = -6
[State 0, VelSet]
type = VelSet
trigger1 = time>=9
x = 2
y = -4
[State 0, VelSet]
type = VelSet
trigger1 = time>=12
y = -2
[State 0, VelSet]
type = VelSet
trigger1 = time>=15
x = 1
y = -1
x = 0
[State 0, VelSet]
type = VelSet
trigger1 = time>=18
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 18
value = 1620
ctrl = 0
; HEAVY DRILL
[Statedef 1650]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 1600
juggle = ifelse ( var(20) > 0,3, 5)
poweradd = ifelse ( var(20) > 0, 25, 50)

;925/ 920 add jump smnoke
[State 40, Dust]
type = helper
;trigger1 = !animtime
trigger1 = Time = 0
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 000, snd]
type = playsnd
trigger1 = time = 0
;trigger1 = random <= 500
value = 40,0

[State 000, snd]
type = playsnd
trigger1 = time = 0
;trigger1 = random <= 500
value = 200,1

[State 1400,3]
type = HitDef
trigger1 = animelem = 2
priority = 4, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
attr = S,SA			;STAND / NORMAL ATTACK
hitflag = MAF			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up", or "diagup"
air.animtype = hard			;2p ANIM
ground.type = high
damage = 45,5
getpower = ifelse ( var(20) > 0,40, 120)
GivePower = ifelse ( var(20) > 0,40, 40) ; = ifelse ( var(20) > 0,40, 40)
pausetime = 10,16
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 10
guard.hittime = (10) - 6
air.hittime = 10
guard.ctrltime =14
ground.velocity = 0,0
air.velocity = -1,-7
yAccel = (0.5 + (ComboCount * 0.01))
guard.velocity = -12
ground.cornerpush.veloff = ifelse ( var(20) > 0,-5, -5)
guard.cornerpush.veloff = ifelse ( var(20) > 0,-5, -5);
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=115), var(36):=-85;
fall = 0
air.fall = 1
fall.recover = 0;
envshake.time = 5
envshake.freq = 100
envshake.ampl = 10;
fall.envshake.time = 5
fall.envshake.freq = 100 ;speed
fall.envshake.ampl = 10	;strong weak

[State 1400,3]
type = HitDef
trigger1 = animelem = 4
priority = 4, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
attr = S,SA			;STAND / NORMAL ATTACK
hitflag = MAF			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up", or "diagup"
air.animtype = hard			;2p ANIM
ground.type = high
damage = 30,5
getpower = ifelse ( var(20) > 0,40, 120)
GivePower = ifelse ( var(20) > 0,40, 40) ; = ifelse ( var(20) > 0,40, 40)
pausetime = 10,14
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 10
guard.hittime = (10) - 6
air.hittime = 10
guard.ctrltime =14
ground.velocity = -1,-8
air.velocity = -1,-8
yAccel = (0.5 + (ComboCount * 0.01))
guard.velocity = -12
ground.cornerpush.veloff = ifelse ( var(20) > 0,-5, -5)
guard.cornerpush.veloff = ifelse ( var(20) > 0,-5, -5);
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=115), var(36):=-85
fall = 1
air.fall = 1
fall.recover = 0;
envshake.time = 5
envshake.freq = 100
envshake.ampl = 10;
fall.envshake.time = 5
fall.envshake.freq = 100 ;speed
fall.envshake.ampl = 10	;strong weak

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1660
ctrl = 0

; ==

[Statedef 1660]
type = A
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 1670
juggle = ifelse ( var(20) > 0,3, 5)
poweradd = ifelse ( var(20) > 0, 25, 50)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 0
flag = invisible

[State 0, jump up explode]
type = Explod
trigger1 = Time = 0
anim = 1670
sprpriority = 1
postype = p1
pos = 0,0
bindtime = -1
pausemovetime = 0
removetime =-2
ignorehitpause = 0
scale = 1 , 0.80
ownpal = 1
removeongethit = 1

[State 200, Hit]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
damage = 45,5
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slidetime = 12 + 2 * var(9)
air.hittime = 120
ground.velocity = ifelse(var(20), -3.48, -6.35)
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.48, -6.35)
guard.cornerpush.veloff = 0
air.velocity = -1.52, -5.76
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 0)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 139), var(36) := -73
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 1400,3]
type = HitDef
;trigger1 = time = 20
trigger1 = animelem = 5
priority = 4, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
attr = A,SA			;STAND / NORMAL ATTACK
hitflag = MAF			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up", or "diagup"
air.animtype = hard			;2p ANIM
ground.type = high
damage = 45,5
getpower = ifelse ( var(20) > 0,40, 120)
GivePower = ifelse ( var(20) > 0,40, 40) ; = ifelse ( var(20) > 0,40, 40)
pausetime = 10,10
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 10
guard.hittime = (10) - 6
air.hittime = 10
guard.ctrltime =14
ground.velocity = -4, -8
air.velocity = -4, -8
yAccel = (0.5 + (ComboCount * 0.01))
guard.velocity = -12
ground.cornerpush.veloff = ifelse ( var(20) > 0,-15, -20)
guard.cornerpush.veloff = ifelse ( var(20) > 0,-15, -20);
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=115), var(36):=-80
fall = 1
air.fall = 1
fall.recover = 0
envshake.time = 5
envshake.freq = 100
envshake.ampl = 10
fall.envshake.time = 5
fall.envshake.freq = 100 ;speed
fall.envshake.ampl = 10	;strong weak

[State 0, VelSet]
type = VelSet
trigger1 = time>=0
x = 4
y = -10
[State 0, VelSet]
type = VelSet
trigger1 = time>=3
y = -8
[State 0, VelSet]
type = VelSet
trigger1 = time>=6
y = -6
[State 0, VelSet]
type = VelSet
trigger1 = time>=9
x = 2
y = -4
[State 0, VelSet]
type = VelSet
trigger1 = time>=12
y = -2
[State 0, VelSet]
type = VelSet
trigger1 = time>=15
x = 1
y = -1
x = 0
[State 0, VelSet]
type = VelSet
trigger1 = time>=18
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 18
value = 1620
ctrl = 0

; ==
; giro 1 hit
[Statedef 1700]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 250, Anim]
type=changeanim
trigger1=!time
value=250

[State 250,Posset]
type=posset
trigger1=!time
y=0

[State 250, Snd]
type=playsnd
trigger1 = animelem = 2 && random < 750
value = 4, 3
channel = 0

[State 250, Snd]
type=playsnd
trigger1= animelem=3
value=1,5
channel=1

[State 250, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*87<7, 7, fvar(11)*87)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = 4,4;ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = ifElse(PrevStateNo = 700, -5.16, ifElse(var(20), -3.87, -8.36)), ifElse(PrevStateNo = 700, -5.25, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = ifElse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=211), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(7)>=0
movetype=I

[State 250, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; ==
; giro 2 hits
[Statedef 1710]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
juggle=1
anim=1987
powerAdd = 18 * !var(20)
faceP2 = 1

;[State 250, Anim]
;type=changeanim
;trigger1=!time
;value=1987;250

[State 250,Posset]
type=posset
trigger1=!time
y=0

[State 250, Snd]
type=playsnd
trigger1 = animelem = 2 ;&& random < 750
trigger2 = animelem = 10
value = 4, 3
channel = 0

[State 250, Snd]
type=playsnd
trigger1= animelem=3
trigger2= animelem=12
value=1,5
channel=1

[State 250, Hit]
type=hitdef
;trigger1= !var(16) && (var(15)<1 || var(20))
trigger1 = animelem = 6;Time
;forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = 50,20;ceil(ifelse(fvar(11)*87<7, 7, fvar(11)*87)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = 4,4;ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = -2;ifElse(PrevStateNo = 700, -5.16, ifElse(var(20), -3.87, -8.36)), ifElse(PrevStateNo = 700, -5.25, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0;ifElse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=211), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, Hit]
type=hitdef
;trigger1= !var(16) && (var(15)<1 || var(20))
trigger1 = animelem = 15;Time
;forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = 50,20;ceil(ifelse(fvar(11)*87<7, 7, fvar(11)*87)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = 4,4;ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = -4,-5;ifElse(PrevStateNo = 700, -5.16, ifElse(var(20), -3.87, -8.36)), ifElse(PrevStateNo = 700, -5.25, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1;ifElse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=211), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

;[State 200, Type]
;type=statetypeset
;trigger1= animelemtime(7)>=0
;movetype=I

[State 250, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; ==

; giro 3 hits
[Statedef 1720]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
juggle=1
anim=1986
powerAdd = 18 * !var(20)
faceP2 = 1

;[State 250, Anim]
;type=changeanim
;trigger1=!time
;value=1987;250

[State 250,Posset]
type=posset
trigger1=!time
y=0

[State 250, Snd]
type=playsnd
trigger1 = animelem = 2 ;&& random < 750
trigger2 = animelem = 10
trigger3 = animelem = 19
value = 4, 3
channel = 0

[State 250, Snd]
type=playsnd
trigger1= animelem=3
trigger2= animelem=12
trigger2= animelem=21
value=1,5
channel=1

[State 250, Hit]
type=hitdef
;trigger1= !var(16) && (var(15)<1 || var(20))
trigger1 = animelem = 6;Time
;forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = 50,20;ceil(ifelse(fvar(11)*87<7, 7, fvar(11)*87)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = 4,4;ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = -2;ifElse(PrevStateNo = 700, -5.16, ifElse(var(20), -3.87, -8.36)), ifElse(PrevStateNo = 700, -5.25, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0;ifElse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=211), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, Hit]
type=hitdef
;trigger1= !var(16) && (var(15)<1 || var(20))
trigger1 = animelem = 15;Time
;forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = 50,20;ceil(ifelse(fvar(11)*87<7, 7, fvar(11)*87)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = 4,4;ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = -2;ifElse(PrevStateNo = 700, -5.16, ifElse(var(20), -3.87, -8.36)), ifElse(PrevStateNo = 700, -5.25, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0;ifElse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=211), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, Hit]
type=hitdef
;trigger1= !var(16) && (var(15)<1 || var(20))
trigger1 = animelem = 24;Time
;forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = 50,20;ceil(ifelse(fvar(11)*87<7, 7, fvar(11)*87)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = 4,4;ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = -4,-5;ifElse(PrevStateNo = 700, -5.16, ifElse(var(20), -3.87, -8.36)), ifElse(PrevStateNo = 700, -5.25, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1;ifElse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=211), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

;[State 200, Type]
;type=statetypeset
;trigger1= animelemtime(7)>=0
;movetype=I

[State 250, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; ==

[Statedef 1800]
type = C
physics = C
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1
Anim = 450

;[State 450, StateTypeSet]
;type = StateTypeSet
;trigger1 = animElem = 6
;physics = N

[State 450]
type = VelSet
trigger1 = animElemTime(6) = 1
x = 12

[State 450,Posset]
type=posset
trigger1=!time
y=0

[State 450, Snd]
type=playsnd
trigger1 = animelem = 2 ;&& random < 750
value = 4, 3
channel = 0

[State 450, Snd]
type=playsnd
trigger1= animelem=2
value=30,4
channel=1

[State 450, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
ID = 450
attr = C,NA
hitflag = MAF
guardflag = L
damage = 40,20;ceil(ifelse(fvar(11)*91<7, 7, fvar(11)*91)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = -1.14, -4.7
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.87, -8.36)
guard.cornerPush.velOff = 0
air.velocity = -1.14, -4.7
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 450, 5]
type = ChangeState
trigger1 = !AnimTime
value = 1801

;---------------------------------------------------------------------------
[Statedef 1801]
type = C
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
Anim = 451

[State 450]
type = VelSet
trigger1 = time = 0
x = 12

[State 451, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
ID = 450
attr = C,NA
hitflag = MAF
guardflag = L
damage = 40,20;ceil(ifelse(fvar(11)*91<7, 7, fvar(11)*91)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = -1.14, -4.7
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.87, -8.36)
guard.cornerPush.velOff = 0
air.velocity = -1.14, -4.7
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 451, 5]
type = ChangeState
trigger1 = !AnimTime
value = 1802

;---------------------------------------------------------------------------
[Statedef 1802]
type = C
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
Anim = 452

[State 450]
type = VelSet
trigger1 = time = 0
x = 12

[State 452, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
ID = 450
attr = C,NA
hitflag = MAF
guardflag = L
damage = 40,20;ceil(ifelse(fvar(11)*91<7, 7, fvar(11)*91)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = -1.14, -4.7
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.87, -8.36)
guard.cornerPush.velOff = 0
air.velocity = -1.14, -4.7
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 452, 5]
type = ChangeState
trigger1 = !AnimTime
value = 1803

;---------------------------------------------------------------------------
[Statedef 1803]
type = C
physics = C
moveType = I
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
Anim = 453

[State 453]
type = PosAdd
trigger1 = animElem = 4
trigger2 = animElem = 5
trigger3 = animElem = 6
x = 10 * const(size.xscale)

[State 453]
type = PosAdd
trigger1 = animElem = 7
x = 20 * const(size.xscale)

[State 452, 5]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl=1

; ==

[StateDef 1900]
type = S
physics = N
moveType = A
anim = 1900;1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500 || NumTarget(325)), 2, ifElse(Random < 500, 1, 0))

;[State 1100, ChangeAnim]
;type = ChangeAnim
;trigger1 = !Time
;value = ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1900))

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 10;ifElse(var(10) = 2, 12.5, ifElse(var(10) = 1, 10, 7.5))

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 9 && !var(10)
trigger2 = AnimElem = 13 && var(10) = 1
trigger3 = AnimElem = 21 && var(10) = 2
x = 0

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(10) < 0 && !var(10)
trigger2 = AnimElemTime(3) >= 0 && AnimElemTime(14) < 0 && var(10) = 1
trigger3 = AnimElemTime(3) >= 0 && AnimElemTime(22) < 0 && var(10) = 2
stateType = A
physics = N

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0
channel = 0

[State 1100, Woosh]
type = PlaySnd
trigger1 = !var(10)
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(10) < 0
trigger1 = TimeMod = 6, 0
trigger2 = var(10) = 1
trigger2 = AnimElemTime(3) >= 0 && AnimElemTime(14) < 0
trigger2 = TimeMod = 6, 0
trigger3 = var(10) = 2
trigger3 = AnimElemTime(3) >= 0 && AnimElemTime(22) < 0
trigger3 = TimeMod = 6, 0
value = 1, 3
channel = 4

[State 1100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10), 91, 84)) < 7, 4, fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10), 91, 84)))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -10.52
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5, -6.15234375
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=97), var(36) := -59
PalFX.time = 12 * var(9)
PalFX.add = 255, 255, 255
PalFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0 && !var(10)
trigger2 = AnimElemTime(14) >= 0 && var(10) = 1
trigger3 = AnimElemTime(22) >= 0 && var(10) = 2
moveType = I

[State 1100, StateTypeSet: Land, Physics: Standing]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0 && !var(10)
trigger2 = AnimElemTime(14) >= 0 && var(10) = 1
trigger3 = AnimElemTime(22) >= 0 && var(10) = 2
stateType = S
physics = N

[State 1100, PosSet]
type = PosSet
trigger1 = AnimElem = 10 && !var(10)
trigger2 = AnimElem = 14 && var(10) = 1
trigger3 = AnimElem = 22 && var(10) = 2
y = 0

[State 1100, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 10 && !var(10)
trigger2 = AnimElem = 14 && var(10) = 1
trigger3 = AnimElem = 22 && var(10) = 2
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1100, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 10 && !var(10)
trigger2 = AnimElem = 14 && var(10) = 1
trigger3 = AnimElem = 22 && var(10) = 2
value = 52,0
channel = 3

[State 1100, End]
type = ChangeState
trigger1 = MoveContact || MoveReversed
value = 1901;1101
ctrl = 1

[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; ==

[StateDef 1901]
type = A
physics = N
moveType = I
anim = 1901
ctrl = 0
sprPriority = 1
moveHitPersist = 1

[State 1101, Woosh]
type = PlaySnd
trigger1 = TimeMod = 6, 0
value = 1, 3
channel = 4

[State 1101, VelSet]
type = VelSet
trigger1 = !Time
x = -3.125
y = -11.25

[State 1101, VelSet]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
y = 0.78125

[State 1101, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1902;1102

; ==

[StateDef 1902]
type = S
anim = 1902;1102
physics = N
moveType = I
velSet = 0,0

[State 1102, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1102, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1102, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 3

[State 1102, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
