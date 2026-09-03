; _________________________________________
;| Character by Author Name |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>========================================
;==============================================================================================

;========================<KAMEN PUNCH>=======================
[Statedef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0
poweradd = 70 * !var(20)
sprpriority = 2
facep2 = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 1001
ID = 1001
pos = 40,-70
postype = P1 ;P2, Front, Back, Left, Right
facing = 1
vfacing = 1
bindtime = 22
removetime = 22
scale = 0.8,0.8
sprpriority = 1
ontop = 1
ownpal = 0
removeongethit = 0
persistent = 1
ignorehitpause = 1

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1000,0
channel = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1000,1
channel = 0

[State 1000, Swing Snd]
type = PlaySnd
trigger1 = Animelem = 7
value = 1000,2

[State 1000, PosAdd Elem 2]
type = PosAdd
trigger1 = AnimElem = 6
x = 20

[State 1000, PosAdd Elem 3&13]
type = PosAdd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
x = 10

[State 1000, PosAdd Elem 5]
type = PosAdd
trigger1 = AnimElem = 8
x = 5

[State 1000, Hit Near] 
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = p2bodydist X < 40 ;this trigger changes the hit defs based on p2's distance
trigger1 = AnimElem = 8
attr = S, SA
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound = S2,2
guardsound = S130,0
pausetime = 10,10
guard.pausetime = 10,10
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 103), var(36) := -66
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -6, -6
air.velocity = -6,-5
guard.velocity = -10
airguard.velocity = -8, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120

[State 1000, Hit Far] 
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = p2bodydist X >= 40 ;this trigger changes the hit defs based on p2's distance
trigger1 = AnimElem = 8
attr = S, SA
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound = S2,2
guardsound = S130,0
pausetime = 10,10
guard.pausetime = 10,10
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -61
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -9, 0
air.velocity = -6, -5
guard.velocity = -10
airguard.velocity = -8, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120

[State 1000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
movetype = I

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Medium
[Statedef 1010]
type = S
movetype = A
physics = S
anim = 1010
ctrl = 0
velset = 0,0
poweradd = 70 * !var(20)
sprpriority = 2
facep2 = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 1001
ID = 1001
pos = 40,-70
postype = P1 ;P2, Front, Back, Left, Right
facing = 1
vfacing = 1
bindtime = 22
removetime = 22
scale = 0.8,0.8
sprpriority = 1
ontop = 1
ownpal = 0
removeongethit = 0
persistent = 1
ignorehitpause = 1

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1000,0
channel = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1000,1
channel = 0

[State 1000, Swing Snd]
type = PlaySnd
trigger1 = Animelem = 7
value = 1000,2

[State 1010, PosAdd Elem 2]
type = PosAdd
trigger1 = AnimElem = 6
x = 20

[State 1010, PosAdd Elem 3&13]
type = PosAdd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
x = 10

[State 1010, PosAdd Elem 5]
type = PosAdd
trigger1 = AnimElem = 8
x = 5

[State 1010, PosAdd Elem 9]
type = PosAdd
trigger1 = AnimElem = 8
x = 2

[State 1010, Hit Near] 
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = p2bodydist X < 40 ;this trigger changes the hit defs based on p2's distance
trigger1 = AnimElem = 8
attr = S, SA
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound = S2,2
guardsound = S130,0
pausetime = 10,10
guard.pausetime = 10,10
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 103), var(36) := -66
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -6, -6
air.velocity = -6,-5
guard.velocity = -10
airguard.velocity = -8, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120

[State 1010, Hit Far] 
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = p2bodydist X >= 40 ;this trigger changes the hit defs based on p2's distance
trigger1 = AnimElem = 6
attr = S, SA
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound = S2,2
guardsound = S130,0
pausetime = 10,10
guard.pausetime = 10,10
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -61
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -9, 0
air.velocity = -6, -5
guard.velocity = -10
airguard.velocity = -8, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120

[State 1010, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
movetype = I

[State 1010, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Strong
[Statedef 1020]
type = S
movetype = A
physics = S
anim = 1020
ctrl = 0
velset = 0,0
poweradd = 70 * !var(20)
sprpriority = 2
facep2 = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 1001
ID = 1001
pos = 40,-70
postype = P1 ;P2, Front, Back, Left, Right
facing = 1
vfacing = 1
bindtime = 22
removetime = 22
scale = 0.8,0.8
sprpriority = 1
ontop = 1
ownpal = 0
removeongethit = 0
persistent = 1
ignorehitpause = 1

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1000,0
channel = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1000,1
channel = 0

[State 1000, Swing Snd]
type = PlaySnd
trigger1 = Animelem = 7
value = 1000,2

[State 1020, PosAdd Elem 2]
type = PosAdd
trigger1 = AnimElem = 6
x = 20

[State 1020, PosAdd Elem 3&13]
type = PosAdd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
x = 10

[State 1020, PosAdd Elem 5]
type = PosAdd
trigger1 = AnimElem = 8
x = 5

[State 1020, PosAdd Elem 9]
type = PosAdd
trigger1 = AnimElem = 8
x = 4

[State 1020, Hit Near] 
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = p2bodydist X < 40 ;this trigger changes the hit defs based on p2's distance
trigger1 = AnimElem = 8
attr = S, SA
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound = S2,2
guardsound = S130,0
pausetime = 10,10
guard.pausetime = 10,10
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 103), var(36) := -66
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -6, -6
air.velocity = -6,-5
guard.velocity = -10
airguard.velocity = -8, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120

[State 1020, Hit Far] 
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = p2bodydist X >= 40 ;this trigger changes the hit defs based on p2's distance
trigger1 = AnimElem = 6
attr = S, SA
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound = S2,2
guardsound = S130,0
pausetime = 10,10
guard.pausetime = 10,10
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -61
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -9, 0
air.velocity = -6, -5
guard.velocity = -10
airguard.velocity = -8, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120

[State 1020, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
movetype = I

[State 1020, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;=======================<EX KAMEN PUNCH>===========================
[Statedef 1030]
type = S
movetype = A
physics = S
anim = 1030
ctrl = 0
velset = 0,0
poweradd = ifelse(var(20) > 0, 0, -500)
sprpriority = 2
facep2 = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 1001
ID = 1001
pos = 40,-70
postype = P1 ;P2, Front, Back, Left, Right
facing = 1
vfacing = 1
bindtime = 22
removetime = 22
scale = 0.8,0.8
sprpriority = 1
ontop = 1
ownpal = 1
removeongethit = 0
persistent = 1
ignorehitpause = 1

[State 1030, Extra Stock Subtract]
type = VarAdd
triggerall = var(8) > 0
trigger1 = MoveHit=1 && NumTarget
var(8) = -1

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1000,0
channel = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1000,1
channel = 0

[State 1000, Swing Snd]
type = PlaySnd
trigger1 = Animelem = 7
value = 1000,2

[State 1030, EX Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 30

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 4, -67
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, Fly Snd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 41,0

[State 1030, Dust Helper]
type = Helper
trigger1 = AnimElem = 7
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1030, Friction]
type = VelMul
trigger1 = 1
x = .85 * ifelse (AnimElemTime(6) < 0, 1, .8)

[State 1030, PosAdd Elem 2]
type = PosAdd
trigger1 = AnimElem = 6
x = 20

[State 1030, PosAdd Elem 3&12]
type = PosAdd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 12
x = 10

[State 1030, PosAdd Elem 4]
type = PosAdd
trigger1 = AnimElem = 8
x = 5

[State 1030, Velocity]
type = VelSet
trigger1 = AnimElem = 8
x = 15

[State 1020, Hit Near] 
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = p2bodydist X < 40 ;this trigger changes the hit defs based on p2's distance
trigger1 = AnimElem = 8
attr = S, SA
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound = S2,2
guardsound = S130,0
pausetime = 10,10
guard.pausetime = 10,10
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 103), var(36) := -66
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -6, -6
air.velocity = -6,-5
guard.velocity = -10
airguard.velocity = -8, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120

[State 1020, Hit Far] 
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = p2bodydist X >= 40 ;this trigger changes the hit defs based on p2's distance
trigger1 = AnimElem = 6
attr = S, SA
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound = S2,2
guardsound = S130,0
pausetime = 10,10
guard.pausetime = 10,10
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -61
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -9, 0
air.velocity = -6, -5
guard.velocity = -10
airguard.velocity = -8, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
air.fall = 1
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120

[State 1020, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
movetype = I

[State 1030, VarSet: No Juggle Check]
type = VarSet
trigger1 = MoveHit=1 && NumTarget
var(15) = 0

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime 
value = 0
ctrl = 1

;=====================<RISING RIDER>==========================
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType = H || P2Dist x > 110 || Random < 333, 2, ifElse(Random < 500 || P2Dist x > 65, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1100, ifElse(var(10) = 1, 1110, 1120))

[State 1100, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,10
channel = 0

[State 1100, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1 && var(40) != 3
trigger2 = AnimElem = 4 && var(40) = 3
value = 40,0
channel = 4

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 1 && var(40) != 3
trigger2 = AnimElem = 4 && var(40) = 3
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElemTime(4) = 1 && var(40) != 3
trigger2 = AnimElem = 4 && var(40) = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 2 && var(40) != 3
trigger2 = AnimElem = 4 && var(40) = 3
x = ifElse(var(10) = 2, 13.75, ifElse(var(10) = 1, 9.375, 5))
y = ifElse(var(10) = 2, -12.5, ifElse(var(10) = 1, -9.375, -6.25))

[State 1100, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(4) > 2 && var(40) != 3
trigger2 = AnimElemTime(4) > 0 && var(40) = 3
x = -0.78125

[State 1100, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 2 && var(40) != 3
trigger2 = AnimElemTime(4) > 0 && var(40) = 3
y = 0.5859375

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0 && var(10) != 2
trigger2 = AnimElemTime(4) < 0 && var(10) = 2
value = SCA
time = 1

[State 1100, Ground Hit (LP/MP)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3 && ifElse(var(40) = 3, !var(10), var(10) != 2)
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 1, 70, 112) < 7, 7, fvar(11) * ifElse(var(10) = 1, 70, 112))), ifElse(var(10) = 1, 9, 14)
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(10), -0.5, -2.5), -10
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(10), -0.5, -2.5), -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 19), var(36) := -115
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Air Hit (LP/MP)]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4 && !var(10) && !MoveContact && !MoveReversed
trigger2 = AnimElem = 4 && var(10) = 1
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -1), var(36) := -148
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Ground Hit 1 (HP)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2 && var(10) = 2 && var(40) != 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -0.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -0.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 19), var(36) := -115
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Ground Hit 2 (HP)]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 3 && var(10) = 2 && var(40) != 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -0.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -0.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 19), var(36) := -115
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Air Hit (HP)]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4 && var(10) = 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -1), var(36) := -148
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1100, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101


;Landing
[StateDef 1101]
type = S
anim = 1101
physics = N
moveType = I
velSet = 0,0

[State 1101, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1101, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1101, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 1101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX RISING RIDER>=============================
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1130
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1130, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1130, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1130, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 25

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 18, -37
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1130, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,10
channel = 0

[State 1130, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 3

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1 && var(40) != 3
trigger2 = AnimElem = 4 && var(40) = 3
value = 40,0
channel = 5

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElemTime(4) = 1 && var(40) != 3
trigger2 = AnimElem = 4 && var(40) = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 2 && var(40) != 3
trigger2 = AnimElem = 4 && var(40) = 3
x = 15.9375
y = -14.0625

[State 1130, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(4) > 2 && var(40) != 3
trigger2 = AnimElemTime(4) > 0 && var(40) = 3
x = -0.78125

[State 1130, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 2 && var(40) != 3
trigger2 = AnimElemTime(4) > 0 && var(40) = 3
y = 0.5859375

[State 1130, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 1130, Ground Hit 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2 && var(40) != 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -0.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -0.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 19), var(36) := -115
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Ground Hit 2]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 3 && var(40) != 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -0.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -0.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 19), var(36) := -115
palFX.time = 53
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Air Hit 1]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -1), var(36) := -148
palFX.time = 55
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Air Hit 2]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -1), var(36) := -148
palFX.time = 56
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1130, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101




;========================<RIDER SLASH>=============================
[StateDef 1200]
type = S
physics = S
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || P2Dist x > 220 || Random < 333), 2, ifElse(P2Dist x > 190, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(!var(10), 1200, 1210)

[State 1100, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,8
channel = 0

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 41,0
channel = 1

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Slash Kick Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = ifElse(var(10) = 2, 10.05586592, ifElse(var(10) = 1, 8.938547486, 7.82122905)) ;9, 8, 7
y = ifElse(var(10) = 2, -1.25, ifElse(var(10) = 1, -0.859375, -0.78125)) ;-1, -0.0625, -0.625

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 0
y = 0.09765625 ;0.0625

[State 1100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 91, ifElse(var(10) = 1, 84, 77)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 91, ifElse(var(10) = 1, 84, 77)))), ifElse(var(10) = 2, 11, 10)
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6.703910615, -5 ;-6, -4
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6.703910615, -5 ;-6, -4
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125 ;0.328125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201


;Landing
[StateDef 1201]
type = S
anim = 1201
physics = N
moveType = I
velSet = 0,0

[State 1101, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1101, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1101, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 1101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX RIDER SLASH>=============================
[StateDef 1230]
type = S
physics = N
moveType = A
anim = 1230
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1130, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1130, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1130, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 33

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 18, -60
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1130, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1130, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,8
channel = 0

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 41,0
channel = 3

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Slash Kick Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 11.17318436 ;10
y = -1.25 ;-1

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 0
y = 0.09765625 ;0.0625

[State 1130, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
ID = 1130
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3.75, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6.703910615, -2.5 ;-6, -2
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125 ;0.328125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1230) > 1
ID = 1230
keepOne = 1
excludeID = 1230
ignoreHitPause = 1

[State 1130, ChangeState]
type = ChangeState
trigger1 = MoveHit
value = 1140

[State 1130, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201


;Follow-up
[StateDef 1140]
type = A
physics = N
moveType = A
anim = 1240
ctrl = 0
sprPriority = 1
hitCountPersist = 1

[State 1140, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 14

[State 1140, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,5

[State 1140, VelSet]
type = VelSet
trigger1 = !Time
x = 5.75
y = 0

[State 1140, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 6
ID = 1140
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -12, -4.25
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -12, -4.25
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.4850
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -53
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1140, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1140
elem = 7
ignoreHitPause = 1

[State 1140, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1140) > 1
ID = 1140
keepOne = 1
excludeID = 1140
ignoreHitPause = 1

[State 1430, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1140)
trigger1 = !(Target(1140), Time)
value = 1145
ID = 1140
ignoreHitPause = 1

[State 1140, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(27) && NumTarget(1140)
var(15) = 0

[State 1140, VarAdd]
type = VarAdd
trigger1 = MoveHit && NumTarget(1140)
var(27) = 1
persistent = 0

[State 1140, Gravity]
type = Gravity
trigger1 = AnimElemTime(9) > 0

[State 1140, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1140, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201



;========================<HIT BY EX SLASH KICK>=============================
;Being Launched
[StateDef 1145]
type = A
moveType = H
physics = N
velSet = 0,0

[State 1145, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 1145, End]
type = ChangeState
trigger1 = HitShakeOver
value = 1146


;Heading Towards Wall
[StateDef 1146]
type = A
moveType = H
physics = N

[State 1146, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 1146, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel) * 0.67

[State 1146, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = (vel y < 0), 0
ignoreHitPause = 1

[State 1146, ScreenBound]
type = ScreenBound
triggerAll = NumEnemy
trigger1 = pos x > -40 && Enemy, pos x > -40
trigger2 = pos x < 40 && Enemy, pos x < 40
value = 1
moveCamera = 1, 0

[State 1146, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1146, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5900)
value = 5900

[State 1146, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5900)
trigger1 = AnimElemTime(AnimElemNo(0) + 1) = 0
value = 5012
elem = AnimElemNo(0)

[State 1146, Bounce Off Wall]
type = ChangeState
trigger1 = Time >= 4
trigger1 = BackEdgeBodyDist <= 0 || FrontEdgeBodyDist <= 0
value = 1147

[State 1146, End]
type = SelfState
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;Impacting Wall
[StateDef 1147]
type = A
moveType = H
physics = N

[State 1147, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 1147, PosAdd]
type = PosAdd
trigger1 = 1
x = -BackEdgeBodyDist

[State 1147, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1147, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 1147, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1147, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5901)
value = 5901

[State 1147, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5901)
value = 5000

[State 1147, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,0

[State 1147, Hitting the Wall FX]
type = Explod
trigger1 = !Time
anim = F72
pos = 0, floor(ScreenPos y) - 50
posType = Back
sprPriority = 3

[State 1147, End]
type = ChangeState
trigger1 = Time >= 4
value = 1148


;Bouncing Off Wall
[Statedef 1148]
type = A
moveType = H
physics = N

[State 1148, Turn]
type = Turn
trigger1 = !Time && !SelfAnimExist(5902)

[State 1148, Gravity]
type = VelAdd
trigger1 = Time
y = 0.5

[State 1148, VelSet]
type = VelSet
trigger1 = !Time
;x = ((EnemyNear, pos x - pos x) * Facing + 80 - 40) / 36.0 * ifElse(SelfAnimExist(5902), -1, 1); -40 to account for continued forward movement in EX Slash Kick followup
x = ((EnemyNear, pos x - pos x) * Facing + 40) / 36.0 * ifElse(SelfAnimExist(5902), -1, 1)
y = (pos y + 0.5 * 0.4850 * 36 ** 2) / -36.0

[State 1148, VelSet]
type = VelSet
trigger1 = !Time
trigger1 = vel x != [-9, 0]
x = ifElse(vel x < -9, -9, 0)

[State 1148, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5902)
value = 5902

[State 1148, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5902)
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 1148, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1148, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 1148, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 1148, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 1148, End]
type = SelfState
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100





;=====================<KAMEN KICK>==========================
[StateDef 1300]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || P2Dist x > 130 || Random < 333), 2, ifElse(P2Dist x > 110, 1, 0))

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,9
channel = 0

[State 1300, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 1

[State 1300, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3

[State 1300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1300, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Ogon no Kakato Dust"
posType = P1
ownPal = 1

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 1
x = ifElse(var(10) = 2, 6.703910615, ifElse(var(10) = 1, 5.586592179, 4.469273743)) ;6, 5, 4
y = ifElse(var(10) = 2, -9.375, ifElse(var(10) = 1, -8.75, -8.4375)) ;-7.5, -7, -6.75

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1
y = ifElse(var(10), 0.78125, 0.68359375) ;0.5, 0.4375

[State 1300, Ogon no Kakato sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,5
channel = 4

[State 1300, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
ID = 1300
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.586592179, 2.5 ;-5, 2
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.586592179, 2.5 ;-5, 2
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.78125 ;0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -106
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 7
ID = 1300
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 77, ifElse(var(10) = 1, 70, 63)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 77, ifElse(var(10) = 1, 70, 63)))), ifElse(var(10) = 2, 10, ifElse(var(10) = 1, 9, 8))
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.586592179, 2.5 ;-5, 2
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.586592179, 2.5 ;-5, 2
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.78125 ;0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -69
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1300) > 1
ID = 1300
keepOne = 1
excludeID = 1300
ignoreHitPause = 1

[State 1300, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1300)
trigger1 = !(Target(1300), Time)
value = ifElse(Target(1300), StateType = A, 5425, 5420)
ID = 1300
ignoreHitPause = 1

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1300, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301


;Landing
[StateDef 1301]
type = S
anim = ifElse(PrevStateNo = 1330, 1331, 1301)
physics = N
moveType = I
velSet = 0,0

[State 1301, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1301, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1301, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 1301, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SLAMMED AGAINST THE GROUND>=============================
;Being Slammed (Standing)
[StateDef 5420]
type = U
moveType = H
physics = N
velset = 0,0

[State 5420, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = ifElse(SelfAnimExist(5111) || SelfAnimExist(5112), 5012, 5070)

[State 5420, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5420 + (StateType = C))
value = 5420 + (StateType = C)

[State 5420, End]
type = SelfState
trigger1 = HitShakeOver && pos y < 0
trigger2 = StateType = L
value = 5030

[State 5420, End]
type = ChangeState
trigger1 = HitShakeOver && pos y >= 0
value = 5421


;Hitting the Ground
[StateDef 5421]
type = L
moveType = H
physics = N
velSet = 0,0

[State 5421, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5102) && PrevStateNo != 5426, 5102, ifElse(SelfAnimExist(5101) && PrevStateNo != 5426, 5101, 5100))
elem = ifElse(AuthorName = "Team Z2", 2, 1)

[State 5421, ChangeAnim]
type = ChangeAnim
triggerall = !Time && PrevStateNo != 5426
trigger1 = SelfAnimExist(5422)
value = 5422

[State 5421, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5421, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 5421, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = -4

[State 5421, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,1

[State 5421, Hitting the Floor FX]
type = Explod
trigger1 = !Time
anim = F61
posType = P1
pos = 0, 0
sprPriority = -3

[State 5421, End]
type = ChangeState
trigger1 = !AnimTime
trigger2 = Anim = 5100 + (Anim % 10)
trigger2 = Time = 4
trigger2 = Anim != 5422
trigger3 = Anim = 5422
trigger3 = AnimTime = 0 || Time = 12
value = 5422


;Bouncing Off Ground
[StateDef 5422]
type = L
moveType = H
physics = N

[State 5422, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5160 + Anim % 10), 5160 + Anim % 10, 5160)

[State 5422, ChangeAnim]
type = ChangeAnim
triggerall = !Time && Anim = 5422
trigger1 = SelfAnimExist(5424)
value = 5424

[State 5422, VelSet]
type = VelSet
trigger1 = !Time
y = -3.75

[State 5422, PosSet]
type = PosSet
trigger1 = !Time
y = const(movement.down.bounce.offset.y)

[State 5422, PosAdd]
type = PosAdd
trigger1 = !Time
x = const(movement.down.bounce.offset.x)

[State 5422, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.625

[State 5422, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5424
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = ifElse(SelfAnimExist(5162), 5162, ifElse(SelfAnimExist(5161), 5161, 5160))

[State 5422, End]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5110


;Aerial Being Slammed (Hitshake)
[StateDef 5425]
type = A
moveType = H
physics = N
velSet = 0,0

[State 5425, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5070

[State 5425, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5425, ChangeAnim]
type = ChangeState
trigger1 = HitShakeOver
value = 5426


;Aerial Being Slammed (Knocked Away)
[StateDef 5426]
type = A
moveType = H
physics = N
ctrl = 0

[State 5426, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 5426, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 5426, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.trip.groundlevel)
value = 5421



;=====================<EX KAMEN KICK>==========================
[StateDef 1330]
type = S
physics = N
moveType = A
anim = 1330
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1330, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1330, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1330, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 31

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = -11, -55
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1330, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,9
channel = 0

[State 1330, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 3

[State 1330, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 4

[State 1330, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1330, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Ogon no Kakato Dust"
posType = P1
ownPal = 1

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 1
x = 7.82122905 ;7
y = -5

[State 1330, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1
y = 0.5

[State 1330, Ogon no Kakato sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,5
channel = 5

[State 1330, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
ID = 1330
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
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
ground.velocity = -4.68937069644, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.586592179, 2.5 ;-5, 2
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.78125 ;0.5
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -106
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 7
ID = 1330
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.68937069644, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.586592179, 2.5 ;-5, 2
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.78125 ;0.5
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=47), var(36) := -9
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1330) > 1
ID = 1330
keepOne = 1
excludeID = 1330
ignoreHitPause = 1

[State 1330, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1330)
trigger1 = !(Target(1330), Time) && Target(1330), StateType = A
value = 5425
ID = 1330
ignoreHitPause = 1

[State 1330, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1330, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301


 ;========================<KICK ZERO COUNTER>=============================
[StateDef 2900]
type = S
physics = N
movetype = A
anim = 2900
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
facep2 = 1

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2900, Hit]
type = HitDef
trigger1 = !var(16) && (var(15)<15 || var(20))
trigger1 = AnimElem = 3
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

[State 2900, IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 2900, CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

 ;========================<KICK ZERO COUNTER>=============================
[StateDef 2910]
type = S
physics = N
movetype = A
anim = 2910 
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
facep2 = 1

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2910, Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
ID = 2910
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getPower = 0, 0
givepower = 0, 0
pauseTime = ceil(13*(2-(var(20)>0))/2), ceil(13*(2-(var(20)>0))/2)
guard.pauseTime = ceil(10*(2-(var(20)>0))/2), ceil(10*(2-(var(20)>0))/2)
animType = Back
air.animType = Back
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -6, -5.5
ground.cornerPush.velOff = 0
guard.velocity = -6
guard.cornerPush.velOff = 0
air.velocity = -6.46, -4.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 89), var(36) := -9
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2910, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
