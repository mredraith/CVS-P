;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;========================<GADOUKEN>=============================
[StateDef 1000]
type = S
physics = N
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 180, 1]
type = Null;VarRandom (Unused)
trigger1 = Time = 0
v = 45
range = 6

;[State 9550, 50]
;type = PalFX
;trigger1 = !var(45)
;trigger1 = Time = 0
;time = 5
;add = 255,255,255

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1010, 1020))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,0
channel = 0

[State 1000, Gadouken sound effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,1
channel = 1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1005
ID = 1005
name = "Gadouken Projectile"
posType = P1
pos = 60, -65
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX GADOUKEN>=============================
[StateDef 1030]
type = S
physics = N
moveType = A
anim = 1030
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 16

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = -29, -88
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,0
channel = 0

[State 1000, Gadouken sound effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,1
channel = 1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1005
ID = 1005
name = "Gadouken Projectile"
posType = P1
pos = 60, -65
size.xScale = .55
size.yScale = .55
ownPal = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

[State 220, Position]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
x = 6

[State 1030, EX Flash off]
type = VarSet
trigger1 = AnimElem = 7
var(25) = 0

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;=====================<KORYUKEN>==========================
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

[State 180, 1]
type = VarRandom
trigger1 = Time = 0
v = 45
range = 6
[State 170, 1]
type = NotHitBy
trigger1 = !var(45)
trigger1 = AnimElemTime(3) < 0
value = SCA
ignorehitpause = 1

[State 9550, 50]
type = PalFX
trigger1 = !var(45)
trigger1 = Time = 0
time = 5
add = 255,255,255

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

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
value = 1100,0
channel = 0

[State 1100, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 40,0
channel = 4

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 2
x = ifElse(var(10) = 2, 7.262569, ifElse(var(10) = 1, 5.027932, 3.351955))
y = ifElse(var(10) = 2, -10.78125, ifElse(var(10) = 1, -8.28125, -5.78125))

[State 1100, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(3) > 2
x = -0.78125

[State 1100, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 2
y = 0.5859375

[State 1100, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10) = 1, 119, 112)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10) = 1, 119, 112)))), 7
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
ground.velocity = -2.5, -9.5703125
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -9.5703125
air.cornerPush.velOff = 0
yAccel = 0.4296875
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -66
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Air Hit]
type = HitDef
triggerAll = !var(16) && (var(15) < (2 + HitCount) || var(20))
trigger1 = AnimElem = 3 && !MoveContact && !MoveReversed
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
ground.velocity = -2.5, -9.5703125
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -9.5703125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.45
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -103
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
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

;=====================<KORYUKEN>==========================
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1120
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 170, 1]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
ignorehitpause = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 16

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 19, -48
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000

[State 1100, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100,0
channel = 0

[State 1100, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 40,0
channel = 4

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = PosAdd
trigger1 = AnimElem = 2
x = 12

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 1
x = 7.5
y = -13

[State 1100, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(3) > 2
x = -0.78125

[State 1100, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 2
y = 0.67

[State 1100, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 74 < 7, 7, fvar(11) * 74)), 7
getPower = 0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.5, -9.5703125
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -9.5703125
air.cornerPush.velOff = 0
yAccel = 0.4296875
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -66
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Air Hit]
type = HitDef
triggerAll = !var(16) && (var(15) < (3 + HitCount) || var(20))
trigger1 = AnimElem = 3 ;&& !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 7
getPower = 0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.5, -9.5703125
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -9.5703125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.4296875
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -103
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1100, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101



;=====================<DANKUUKYAKU>==========================
[StateDef 1200]
type = S
physics = N
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1210, 1220))

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1200,0
channel = 0
[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 8 && anim!=1200
value = 1200,0
channel = 0
[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 11 && anim!=1210
value = 4,2
channel = 0
[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 3
[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 7 && anim!=1200
value = 1,5
channel = 3
[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 11 && anim!=1210
value = 1,5
channel = 3

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(2) = 2
StateType = A
physics = N

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(3) = 2
x = 3+(var(10)*1.5)
y = ifelse(!var(10), -7, ifelse(var(10) = 1, -6, -5))

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemTime(3) > 2
y = ifelse(!var(10), .6, ifelse(var(10) = 1, .5, .28))

[State 250, First Hit]
type=hitdef
triggerAll= !var(10)
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= AnimElem = 4
ID = 1200
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.32, -6.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=38), var(36):=-62
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, First Hit]
type=hitdef
triggerAll= var(10)
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= AnimElem = 4
ID = 1200
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.32
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.41
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=38), var(36):=-62
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, Hit]
type=hitdef
triggerAll= var(10)=1
trigger1= !var(16) && (var(15)<(1 + HitCount) || var(20))
trigger1= AnimElem = 8
ID = 1200
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.32, -6.41
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.41
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=74), var(36):=-44
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, Hit]
type=hitdef
triggerAll= var(10)=2
trigger1= !var(16) && (var(15)<(1 + HitCount) || var(20))
trigger1= AnimElem = 8
ID = 1200
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.32
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.41
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=74), var(36):=-44
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, Hit]
type=hitdef
triggerAll= var(10)=2
trigger1= !var(16) && (var(15)<(1 + HitCount) || var(20))
trigger1= AnimElem = 12
ID = 1200
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.32, -6.41
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.41
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=71), var(36):=-54
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = !var(10) && AnimElemTime(5) >= 0
trigger2 = var(10)=1 && AnimElemTime(9) >= 0
trigger3 = var(10)=2 && AnimElemTime(13) >= 0
moveType = I

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
trigger1 = AnimElemTime(4) > 0
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

;========================<EX DANKUUKYAKU>=============================
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

[State 1230, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1230, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 23

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 11, -81
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1200,0
channel = 0

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(3) = 2
x = 6
y = -5

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem=4
y = 0

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemTime(5) > 0
y = .5

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 3

[State 40, Snd]
type = playsnd
trigger1 = AnimElemTime(3) = 2
value = 1200,1
[State 1400, Dust Helper (Sliding)]
type = Helper
trigger1 = AnimElemTime(3) = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dankuu Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1


[State 250, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<2 || var(20))
trigger1= AnimElem = 4
ID = 1230
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 41 < 7, 7, fvar(11) * 41)), 7
getPower = 0,0
givepower = 36, 36
pausetime = 8,8
guard.pausetime = 12,12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -2.91
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=74), var(36):=-44
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 0, ChangeState]
type = ChangeState
trigger1 = NumTarget(1230) && MoveHit
value = 1231
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
trigger1 = AnimElemTime(4) > 0
value = 1201



;Follow-up
[Statedef 1231]
type=A
physics=N
movetype=A
anim=1231
ctrl=0
sprpriority=1
powerAdd = 0

[State 1130, ExFX]
type = varset
trigger1 = !time
var(25) = 28

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1200,0
channel = 0
[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 4,2
channel = 0

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
value = 1,5
channel = 3

[State 1100, Velocity]
type = VelSet
trigger1 = !time
x = 2
y = 0

[State 1100, Velocity]
type = PosAdd
trigger1 = AnimElem = 7 || AnimElem = 8
x = 12

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemTime(9) > 1
y = .25

[State 250, Hit]
type=hitdef
triggerall= !var(16) && (var(15)<(2+Hitcount) || var(20))
trigger1= AnimElem = 4
ID = 1231
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 57 < 7, 7, fvar(11) * 57)), 7
getpower = 0,0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 8), ifelse(var(20), 6, 8)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -2.91
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=71), var(36):=-54
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
[State 250, Hit]
type=hitdef
triggerall= !var(16) && (var(15)<(3 + HitCount) || var(20))
trigger1= AnimElem = 8
ID = 1231
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11)*57<7, 7, fvar(11)*57)), 7
getpower = 0,0
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.12, -6.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.12, -6.91
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=38), var(36):=-62
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1221, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
trigger1 = AnimElemTime(9) > 1
value = 1232

;Landing
[StateDef 1232]
type = S
anim = 1232
physics = N
moveType = I
velSet = 0,0

[State 210, Woosh]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,1
channel = 1

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

;=====================<DANKUUKYAKU>==========================
[StateDef 1250]
type = A
physics = N
moveType = A
anim = 1250
ctrl = 0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1250, ifElse(var(10) = 1, 1260, 1270))

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200,0
channel = 0
[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 6 && anim!=1250
value = 1200,0
channel = 0
[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 9 && anim!=1260
value = 4,2
channel = 0
[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,5
channel = 3
[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && anim!=1250
value = 1,5
channel = 3
[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 9 && anim!=1260
value = 1,5
channel = 3

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(1) = 2
x = ifelse(!vel X,2,vel X) * ifelse(!var(10), .8, ifelse(var(10) = 1, 1, 1.3))
y = -4.5 

[State 1100, Gravity]
type = Veladd
trigger1 = 1
y = ifelse(!var(10), .7, ifelse(var(10) = 1, .5, .25))

[State 250, First Hit]
type=hitdef
triggerAll= !var(10)
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= AnimElem = 2
ID = 1200
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.32, -6.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=38), var(36):=-62
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, First Hit]
type=hitdef
triggerAll= var(10)
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= AnimElem = 2
ID = 1200
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.32
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=38), var(36):=-62
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, Hit]
type=hitdef
triggerAll= var(10)=1
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= AnimElem = 6
ID = 1200
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.32, -6.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=74), var(36):=-44
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, Hit]
type=hitdef
triggerAll= var(10)=2
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= AnimElem = 6
ID = 1200
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.32
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=74), var(36):=-44
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, Hit]
type=hitdef
triggerAll= var(10)=2
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= AnimElem = 10
ID = 1200
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.32, -6.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=71), var(36):=-54
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = !var(10) && AnimElemTime(3) >= 0
trigger2 = var(10)=1 && AnimElemTime(7) >= 0
trigger3 = var(10)=2 && AnimElemTime(11) >= 0
moveType = I

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
trigger1 = AnimElemTime(2) > 0
value = 1201

;=====================<DANKUUKYAKU>==========================
[StateDef 1280]
type = A
physics = N
moveType = A
anim = 1280
ctrl = 0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1230, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1230, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 28

[State 170, 1]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
ignorehitpause = 1

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 11, -81
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200,0
channel = 0
[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 6 && anim!=1250
value = 1200,0
channel = 0
[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 9 && anim!=1260
value = 4,2
channel = 0
[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,5
channel = 3
[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && anim!=1250
value = 1,5
channel = 3
[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 9 && anim!=1260
value = 1,5
channel = 3

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(1) = 2
x = 0.5
y = 0 

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemTime(11) >= 0
y = .5

[State 250, First Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= AnimElem = 2
ID = 1200
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getpower = 0
givepower = 36, 36
pausetime = 8,8
guard.pausetime = 8,8
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -1.32, -5.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -1.32, -5.91
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=38), var(36):=-62
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<(1 + HitCount) || var(20))
trigger1= AnimElem = 6
ID = 1200
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = 8,8
guard.pausetime = 8,8
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -1.32, -5.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -1.32, -5.91
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=74), var(36):=-44
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<(1 + HitCount) || var(20))
trigger1= AnimElem = 10
ID = 1200
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = 12,12
guard.pausetime = 12,12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.32, -6.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=71), var(36):=-54
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(11) >= 0
moveType = I

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
trigger1 = AnimElemTime(2) > 0
value = 1201


;========================<PREMIUM SIGN>=============================
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

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1300, ifElse(var(10) = 1, 1310, 1320))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1300,2
channel = 0

[State 200, Woosh]
type = PlaySnd
trigger1 = !var(10) && AnimElem = 5
trigger2 = var(10)=1 && AnimElem = 9
trigger3 = var(10)=2 && AnimElem = 11
value = 1,0
channel = 1
[State 1000, Voice]
type = PlaySnd
trigger1 = !var(10) && AnimElem = 10
trigger2 = var(10)=1 && AnimElem = 14
trigger3 = var(10)=2 && AnimElem = 16
value = 1,2
channel = 1
[State 1000, Voice]
type = PlaySnd
trigger1 = !var(10) && AnimElem = 5
trigger2 = var(10)=1 && AnimElem = 9
trigger3 = var(10)=2 && AnimElem = 11
value = 1300,0
channel = 0
[State 1000, Voice]
type = PlaySnd
trigger1 = !var(10) && AnimElem = 10
trigger2 = var(10)=1 && AnimElem = 14
trigger3 = var(10)=2 && AnimElem = 16
value = 1300,1
channel = 0


[State 1000, Projectile]
type = Helper
trigger1 = !var(10) && AnimElem = 10
trigger2 = var(10)=1 && AnimElem = 14
trigger3 = var(10)=2 && AnimElem = 16
helperType = Normal
stateNo = 1305
ID = 1305
name = "Gadouken Projectile"
posType = P1
pos = 60, -65
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 200, HitDef]
type = HitDef
triggerall = !var(16) && (var(15) < 2 || var(20))
trigger1 = !var(10) && AnimElem = 6
trigger2 = var(10)=1 && AnimElem = 10
trigger3 = var(10)=2 && AnimElem = 12
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
yAccel = 0.4
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36):= -85
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48

[State 200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = !var(10) && AnimElemTime(7) >= 0
trigger2 = var(10)=1 && AnimElemTime(11) >= 0
trigger2 = var(10)=2 && AnimElemTime(13) >= 0
moveType = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<DANRETSUKEN>==========
[StateDef 1400]
type = S
physics = S
moveType = A
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1400, ifElse(var(10) = 1, 1410, 1420))

[State 220, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1400, 0
channel = 0

[State 1400, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4  || AnimElem = 6
value = 1,2
channel = 1

[State 1400, PosAdd]
type = PosAdd
trigger1 = AnimElem=3 && !var(10)
x = 10
[State 1400, PosAdd]
type = PosAdd
trigger1 = AnimElem=3 && var(10)=1
x = 13
[State 1400, PosAdd]
type = PosAdd
trigger1 = AnimElem=3 && var(10)=2
x = 16

[State 1400, HitDef (LP)]
type = HitDef
triggerAll= !var(10)
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 3 || AnimElem = 5
attr = A,SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 6)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 6)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -3.66)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -70
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120

[State 250, 3rd Hit (LP)]
type=hitdef
triggerAll= !var(10)
trigger1= !var(16) && (var(15)<(1 + HitCount) || var(20))
trigger1= AnimElem = 7
;ID = 1200
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.32, -6.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -70
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1400, HitDef (MP)]
type = HitDef
triggerAll= var(10)
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 3 || AnimElem = 5 || AnimElem = 7
attr = A,SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 6)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 6)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -3.66)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -70
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
id=1400

[State 220, End]
type = ChangeState
trigger1 = MoveHit && NumTarget(1400)
trigger1 = animelem=9
value = 1405

[State 220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<DANRETSUKEN>==========
[StateDef 1405]
type = S
physics = S
moveType = A
anim = 1405
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1415, 1405)

[State 220, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, ifElse(var(10) = 2, 2, 1)
channel = 0

[State 1400, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 1400, PosAdd]
type = PosAdd
trigger1 = AnimElem=3
x = 14

[State 250, 3rd Hit (LP)]
type=hitdef
triggerAll= var(10) =1
trigger1= !var(16) && (var(15)<(1 + HitCount) || var(20))
trigger1= AnimElem = 4
;ID = 1200
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.32, -6.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -70
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, 3rd Hit (LP)]
type=hitdef
triggerAll= var(10)=2
trigger1= !var(16) && (var(15)<(1 + HitCount) || var(20))
trigger1= AnimElem = 4
;ID = 1200
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.32, -6.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -70
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<EX DANRETSUKEN>==========
[StateDef 1430]
type = S
physics = S
moveType = A
anim = 1430
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 16

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 17, -63
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 220, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1400, 0
channel = 0

[State 1400, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4  || AnimElem = 6 || AnimElem = 8 || AnimElem = 10  || AnimElem = 12
value = 1,2
channel = 3

[State 1400, PosAdd]
type = PosAdd
trigger1 = AnimElem=1
trigger2 = AnimElem=2
x = 9

[State 1400, PosAdd]
type = PosAdd
trigger1 = AnimElem=3
x = 16

[State 1400, HitDef]
type = HitDef
triggerAll= var(10)
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 3 || AnimElem = 5 || AnimElem = 7 || AnimElem = 9 || AnimElem = 11 || AnimElem = 13
attr = A,SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givepower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -3.66)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -70
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
id=1400

[State 220, End]
type = ChangeState
trigger1 = MoveHit && NumTarget(1400)
trigger1 = animelem=15
value = 1435

[State 220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<DANRETSUKEN>==========
[StateDef 1435]
type = S
physics = S
moveType = A
anim = 1435
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 220, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 197, 0
channel = 0

[State 1400, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 1400, PosAdd]
type = PosAdd
trigger1 = AnimElem=2
x = 14
[State 1400, PosAdd]
type = PosAdd
trigger1 = AnimElem=3
x = 14

[State 250, 3rd Hit (LP)]
type=hitdef
trigger1= !var(16) && (var(15)<(1 + HitCount) || var(20))
trigger1= AnimElem = 4
ID = 1435
attr = A,SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givepower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -0.5, -9.5703125
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -0.5, -9.5703125
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -70
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1305, Juggle Reset]
type = VarSet
trigger1 = MoveHit && NumTarget(1435)
trigger1 = !var(11)
var(15) = 0

[State 1305, Shiki: Kai juggle limiter]
type = VarSet
trigger1 = MoveHit && NumTarget(1435)
var(11) = 1
persistent = 0

[State 220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;========================<PUNCH ZERO COUNTER>=============================
[StateDef 2900]
type = S
physics = N
moveType = A
anim = 2900
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100,0
channel = 0

[State 2900, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2
channel = 1

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = 40,0
channel = 4

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oniyaki Dust"
posType = P1
ownPal = 1

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 2
x = 7.262569
y = -10.78125

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 2 && vel x >= 0
x = -0.78125

[State 2900, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 2
y = 0.5859375

[State 2900, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Hard
fall.animType = Hard
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
yAccel = 0.4296875
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, Air Hit]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 3 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
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
yAccel = 0.4296875
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 2900, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101


;Landing
[StateDef 2901]
type = S
anim = 1101
physics = N
moveType = I
velSet = 0,0

[State 2901, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 2901, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2901, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 3

[State 2901, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<KICK ZERO COUNTER>=============================
[StateDef 2910]
type = S
physics = N
moveType = A
anim = 2910
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,2
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0,0
givepower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.54, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.54, -5.25
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
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(6) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
