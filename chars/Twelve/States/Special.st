; _________________________________________
;| Character by Author Name                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;
;<SPECIAL MOVES>==
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
pos = 75 * (1 + var(10)),0
postype = p1    ;p2,front,back,left,right
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
postype = p1    ;p2,front,back,left,right
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
;A.X.E.
[Statedef 1100]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 72 * !var(20)
facep2 = 1

[state 1000,Posset]
type=posset
trigger1 = !time
y=0

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
value = ifElse(var(10) = 0, 1100, ifElse(var(10) = 1, 1110, 1120))

[State 1060, hitvar]
type = varset
trigger1 = !time
var(11) = 0

[State 1060, hitvar]
type = varadd
triggerall = ((command = "x" || command = "rlsx") || (command = "y" || command = "rlsy") || (command = "z" || command = "rlsz"))
trigger1 = var(10) = 1 && Animelemtime(14) >= 0 && Animelemtime(17) < 0
trigger2 = var(10) = 2 && Animelemtime(12) >= 0 && Animelemtime(15) < 0
var(11) = 1

[State 200]
type = PlaySnd
trigger1 = var(10) = 0
trigger1 = animelemtime(7) >= 0 && animelemtime(18) < 0
trigger1 = time % 7 = 0
trigger2 = var(10) = 1
trigger2 = animelemtime(11) >= 0 && animelemtime(25) < 0
trigger2 = time % 7 = 0
trigger3 = var(10) = 2
trigger3 = animelemtime(12) >= 0 && animelemtime(29) < 0
trigger3 = time % 7 = 0
value = 5,2
channel = 0

[State 200]
type = PlaySnd
trigger1 = var(10) = 0
trigger1 = AnimElem = 7 || AnimElem = 16
trigger2 = var(10) = 1
trigger2 = AnimElem = 11 || AnimElem = 20
trigger3 = var(10) = 2
trigger3 = AnimElem = 12 || AnimElem = 21
value = 4,0
channel = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(11) < 1
trigger1 = var(10) = 1 && AnimElem = 20
trigger2 = var(10) = 2 && AnimElem = 21
value = anim
elem = ifelse(var(10) < 2, 24, 28)

[State 1200, Hit]
type=hitdef
triggerAll = !var(16) && (var(15)<15 || var(20))
trigger1 = var(10) = 0
trigger1 = Animelem = 7 || Animelem = 10
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
yaccel = .45
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

[State 1200, Hit]
type=hitdef
triggerAll = !var(16) && (var(15)<15 || var(20))
trigger1 = var(10) = 1
trigger1 = Animelem = 11 || Animelem = 14 || Animelem = 17 || Animelem = 21
ID = 1100
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
yaccel = .45
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

[State 1200, Hit]
type=hitdef
triggerAll = !var(16) && (var(15)<15 || var(20))
trigger1 = var(10) = 2
trigger1 = Animelem = 12 || Animelem = 15 || Animelem = 18 || Animelem = 22 || Animelem = 25
ID = 1100
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
yaccel = .45
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
trigger1 = AnimElemTime(17) >= 0 && var(10) = 0
trigger2 = AnimElemTime(24) >= 0 && var(10) = 1
trigger3 = AnimElemTime(28) >= 0 && var(10) = 2
moveType = I

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
trigger1 = AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 19 || AnimElem = 22 || AnimElem = 25
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
yaccel = .45
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
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1210, 1220))

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
triggerAll = !var(16) && (var(15)<15 || var(20))
trigger1 = anim != 1240
trigger1 = Animelem = 6 || Animelem = 9 ||Animelem = 12
trigger2 = anim = 1240
trigger2 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7
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
yaccel = .45
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

[State 1060, hitvar]
type = varset
triggerall = ((command = "x" || command = "rlsx") || (command = "y" || command = "rlsy") || (command = "z" || command = "rlsz"))
trigger1 = anim = 1230
trigger1 = AnimElemTime(9) >= 0
trigger2 = anim = 1240
trigger2 = AnimElemTime(4) >= 0
var(11) = 1

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
triggerAll = !var(16) && (var(15)<15 || var(20))
trigger1 = anim != 1240
trigger1 = Animelem = 6 || Animelem = 9 ||Animelem = 12
trigger2 = anim = 1240
trigger2 = AnimElem = 1 || AnimElem = 4 || AnimElem = 7
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
yaccel = .45
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
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = (anim != [1300, 1320]) && anim != 1350
value = ifElse(var(10) = 0, 1300, ifElse(var(10) = 1, 1310, 1320))

[State 1300, VelSet]
type = VelSet
trigger1 = anim != 1350
trigger1 = animelem = 12
x = ifElse(var(10) = 0, 5.9, ifElse(var(10) = 1, 9.6, 13.7))
y = 7.5

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = anim != 1350
trigger1 = animelem = 9
value = 4, 5

[State 1300, Hit]
type=hitdef
triggerAll = anim != 1350
triggerAll = !var(16) && (var(15)<15 || var(20))
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
ground.velocity = ifelse(var(20), -3.62, -4.56), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.62, -4.56)
guard.cornerpush.veloff = 0
air.velocity = -3.8, 0
air.cornerPush.velOff = 0
yaccel = .45
fall = 0
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
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = A         ;A,C,S,N

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
yaccel = .45
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
value = 1353

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
yAccel = 0.5
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
