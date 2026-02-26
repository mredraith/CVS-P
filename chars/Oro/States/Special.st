; _________________________________________
;| Oro by varo_hades                       |
; 
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;=====================<NICHIRIN SHOU>==========================
[StateDef 1000]
type = S
physics = S
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !(var(20) || var(28))
faceP2 = 1

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
value = ifElse(var(10) = 2, 1020, ifElse(var(10) = 1, 1010, 1000))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4,3
channel = 0

[State 1000, Sonic Boom Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,1
channel = 1

[State 1000, Projectile]
type = Helper
trigger1 = var(10) = 0
trigger1 = AnimElem = 12
helperType = Normal
stateNo = 1005
ID = 1005
name = "Nichirin Shou Projectile"
posType = P1
pos = ceil(85 * const(size.xScale)), ceil(-65 * const(size.yScale))
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 1000, Projectile]
type = Helper
trigger1 = var(10) = 1
trigger1 = AnimElem = 12
helperType = Normal
stateNo = 1005
ID = 1005
name = "Nichirin Shou Projectile"
posType = P1
pos = ceil(65 * const(size.xScale)), ceil(-85 * const(size.yScale))
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 1000, Projectile]
type = Helper
trigger1 = var(10) = 2
trigger1 = AnimElem = 11
helperType = Normal
stateNo = 1005
ID = 1005
name = "Nichirin Shou Projectile"
posType = P1
pos = ceil(50 * const(size.xScale)), ceil(-100 * const(size.yScale))
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(12) = 0
value = 30,0

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<EX NICHIRIN SHOU>=============================
[StateDef 1030]
type = S
physics = N
moveType = A
anim = 1000
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
var(25) = 124

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4,3
channel = 0

[State 1030, Sonic Boom Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,1
channel = 3

[State 1030, Projectile]
type = Helper
trigger1 = AnimElem = 12
helperType = Normal
stateNo = 1035
ID = 1005
name = "EX Nichirin Shou Projectile"
posType = P1
pos = ceil(85 * const(size.xScale)), ceil(-65 * const(size.yScale))
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 1030, Width]
type = Width
trigger1 = AnimElemTime(12) = 0
value = 30,0

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<ONI YANMA>=============================
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !(var(20) || var(28))
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1100))

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 0
x = 6

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 2
x = 4

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 3
x = 1

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 6
x = 0

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 0
y = 0

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 8
y = -8

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 11
y = -6

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 14
y = -5

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 11
y = -4

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 11
y = -2

[State 1100, PosAdd]
type = PosAdd
trigger1 = var(10) = 1
trigger1 = animelem = 3
x = 15

[State 1100, PosAdd]
type = PosAdd
trigger1 = var(10) = 1
trigger1 = animelem = 4
x = 15

[State 1100, PosAdd]
type = PosAdd
trigger1 = var(10) = 1
trigger1 = animelem = 5
x = 15

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 10
x = 1.5

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 13
x = 1

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 16
x = 0.5

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 24
x = 0

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 0
y = 0

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 9
y = -9

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 12
y = -7

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 15
y = -5

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 19
y = -2

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 23
y = -1

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 26
y = -0.5

[State 1100, PosAdd]
type = PosAdd
trigger1 = var(10) = 2
trigger1 = animelem = 3
x = 20

[State 1100, PosAdd]
type = PosAdd
trigger1 = var(10) = 2
trigger1 = animelem = 4
x = 20

[State 1100, PosAdd]
type = PosAdd
trigger1 = var(10) = 2
trigger1 = animelem = 5
x = 20

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 10
x = 3

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 14
x = 2

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 18
x = 1

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 24
x = 0

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 0
y = 0

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 10
y = -10

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 13
y = -9

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 16
y = -7

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 19
y = -5

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 22
y = -2

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 25
y = -1

[State 1100, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 28
y = -0.5

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4,1
channel = 0

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = var(10) = [0,1]
trigger1 = AnimElem = 5
value = 1100,1
channel = 1

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = var(10) = 0
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = var(10) = 1
trigger1 = AnimElem = 11
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = var(10) = [0,1]
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = var(10) = 0
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = var(10) = 1
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = var(10) = 0
trigger1 = Time = 0
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 106 < 7, 7, fvar(11) * 106)), 7
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
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
ground.velocity = -0.75, -10
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -0.75, -10
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = var(10) = 1
trigger1 = Time = 0
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 117 < 7, 7, fvar(11) * 117)), 7
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 7, 14), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 7, 14), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -0.75, -10
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -0.75, -10
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = var(10) = 2
trigger1 = Time = 0
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 64 < 7, 7, fvar(11) * 64)), 7
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
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
ground.velocity = -4
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -0.75, -10
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, ChangeState]
type = ChangeState
trigger1 = var(10) = 0
trigger1 = time = 18
value = 1101

[State 1100, ChangeState]
type = ChangeState
trigger1 = var(10) = 1
trigger1 = time = 28
value = 1101

[State 1100, ChangeState]
type = ChangeState
trigger1 = var(10) = 2
trigger1 = !AnimTime
value = 1110

;High Version
[Statedef 1110]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 1121
juggle = 3

[State 1110, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A
movetype = A
physics = N

[State 1110, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,1
channel = 0

[State 1110, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100,1
channel = 1

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 1110, PosAdd]
type = PosAdd
trigger1 = animelem = 1
x = 20

[State 1110,PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 20

[State 1110, VelSet]
type = VelSet
trigger1 = time >= 3
x = 3

[State 1110, VelSet]
type = VelSet
trigger1 = time >= 7
x = 2

[State 1110, VelSet]
type = VelSet
trigger1 = time >= 11
x = 1

[State 1110, VelSet]
type = VelSet
trigger1 = time >= 17
x = 0

[State 1110, VelSet]
type = VelSet
trigger1 = time >= 3
y = -10

[State 1110, VelSet]
type = VelSet
trigger1 = time >= 6
y = -9

[State 1110, VelSet]
type = VelSet
trigger1 = time >= 9
y = -7

[State 1110, VelSet]
type = VelSet
trigger1 = time >= 12
y = -5

[State 1110, VelSet]
type = VelSet
trigger1 = time >= 15
y = -2

[State 1110, VelSet]
type = VelSet
trigger1 = time >= 18
y = -1

[State 1110, VelSet]
type = VelSet
trigger1 = time >= 21
y = -0.5

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = Time = 0
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 64 < 7, 7, fvar(11) * 64)), 7
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
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
ground.velocity = -1.2, -12
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -1.2, -12
air.cornerPush.velOff = 0
yAccel = 0.65
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, ChangeState]
type = ChangeState
trigger1 = time = 26
value = 1101

;Air
[Statedef 1101]
type = A
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 1101
juggle = 0
poweradd = 0

[State 1101, VelSet]
type = VelSet
trigger1 = time >= 0
y = 0

[State 1101, VelSet]
type = VelSet
trigger1 = time >= 4
y = 2

[State 1101, VelSet]
type = VelSet
trigger1 = time >= 8
y = 4

[State 1101, VelSet]
type = VelSet
trigger1 = time >= 12
y = 6

[State 1101, VelSet]
type = VelSet
trigger1 = time >= 16
y = 8

[State 1101, VelSet]
type = VelSet
trigger1 = time >= 20
y = 10

[State 1101, VelSet]
type = VelSet
trigger1 = time >= 24
y = 12

[State 1101, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1102
ctrl = 0

;Landing
[StateDef 1102]
type = C
anim = 1102
physics = N
moveType = I
velSet = 0,0

[State 1102, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

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

[State 1102, End]
type = ChangeState
trigger1 = AnimElemTime(2) = 2 && command = "holddown"
value = 11
ctrl = 1

[State 1102, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<EX ONI YANMA>=============================
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

[State 1130, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

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
var(25) = 131

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1130, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 6
statetype = A
movetype = A
physics = N

[State 1130,playsnd]
type = playsnd
trigger1 = animelem = 2
value = 4,1
channel = 2

[State 1130,playsnd]
type = playsnd
trigger1 = animelem = 3
trigger1 = prevstateno != [39,40]
value = 1100,1
channel = 3

[State 1130,ChangeState]
type = ChangeState
trigger1 = animtime=0
value = 1131
ctrl = 0

[State 1130, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 20

[State 1130, PosAdd]
type = PosAdd
trigger1 = animelem = 4
x = 20

[State 1130, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = 20

[State 1130, VelSet]
type = VelSet
trigger1 = time >= 10
x = 3

[State 1130, VelSet]
type = VelSet
trigger1 = time >= 14
x = 2

[State 1130, VelSet]
type = VelSet
trigger1 = time >= 18
x = 1

[State 1130, VelSet]
type = VelSet
trigger1 = time >= 24
x = 0

[State 1130, VelSet]
type = VelSet
trigger1 = time >= 0
y = 0

[State 1130, VelSet]
type = VelSet
trigger1 = time >= 10
y = -10

[State 1130, VelSet]
type = VelSet
trigger1 = time >= 13
y = -9

[State 1130, VelSet]
type = VelSet
trigger1 = time >= 16
y = -7

[State 1130, VelSet]
type = VelSet
trigger1 = time >= 19
y = -5

[State 1130, VelSet]
type = VelSet
trigger1 = time >= 22
y = -2

[State 1130, VelSet]
type = VelSet
trigger1 = time >= 25
y = -1

[State 1130, VelSet]
type = VelSet
trigger1 = time >= 28
y = -0.5

[State 1130, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = Time = 0
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -0.75, -10
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

;Attack
[Statedef 1131]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 1121
juggle = 3

[State 1131, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 1131, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A
movetype = A
physics = N

[State 1131, PosAdd]
type = PosAdd
trigger1 = animelem = 1
x = 20

[State 1131, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 20

[State 1131, VelSet]
type = VelSet
trigger1 = time >= 3
x = 3

[State 1131, VelSet]
type = VelSet
trigger1 = time >= 7
x = 2

[State 1131, VelSet]
type = VelSet
trigger1 = time >= 11
x = 1

[State 1131, VelSet]
type = VelSet
trigger1 = time >= 17
x = 0

[State 1131, VelSet]
type = VelSet
trigger1 = time >= 3
y = -11

[State 1131, VelSet]
type = VelSet
trigger1 = time >= 6
y = -10

[State 1131, VelSet]
type = VelSet
trigger1 = time >= 9
y = -8

[State 1131, VelSet]
type = VelSet
trigger1 = time >= 12
y = -6

[State 1131, VelSet]
type = VelSet
trigger1 = time >= 15
y = -3

[State 1131, VelSet]
type = VelSet
trigger1 = time >= 18
y = -2

[State 1131, VelSet]
type = VelSet
trigger1 = time >= 21
y = -1.5

[State 1131, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = Time % 3
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6, 12
guard.pauseTime = 6, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1.2, -14
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -1.2, -14
air.cornerPush.velOff = 0
yAccel = 0.65
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1131,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1101
ctrl = 0

;========================<JINCHUU WATARI>=============================
[StateDef 1200]
type = S
physics = S
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !(var(20) || var(28))
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1200, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 1200,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1205
ctrl = 0

;Jump
[Statedef 1205]
type = A
movetype = A
physics = N
velset = 0,0
juggle = 0
velset = 0,0
ctrl = 0
anim = 1205

[State 1205, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1,3

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 0
x = 2.8

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 0
y = -10

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 4
y = -8

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 8
y = -5

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 12
y = -2

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 16
y = 0

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 17
y = 1

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 18
y = 2

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 19
y = 4

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 0
x = 4

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 0
y = -12

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 4
y = -10

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 8
y = -8

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 12
y = -4

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 14
y = -2

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 16
y = 0

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 17
y = 2

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 18
y = 4

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 19
y = 6

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 0
x = 5.6

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 0
y = -14

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 4
y = -12

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 8
y = -8

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 12
y = -4

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 16
y = -2

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 18
y = 0

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 19
y = 2

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 21
y = 4

[State 1205, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 23
y = 6

[State 1205, ChangeState]
type = ChangeState
triggerall = var(10) = 0
trigger1 = time = 20
value = 1210
ctrl = 0

[State 1205, ChangeState]
type = ChangeState
triggerall = var(10) = 1
trigger1 = time = 23
value = 1210
ctrl = 0

[State 1205, ChangeState]
type = ChangeState
triggerall = var(10) = 2
trigger1 = time = 26
value = 1210
ctrl = 0

;Attack
[Statedef 1210]
type = A
movetype = A
physics = N
ctrl = 0
anim = ifElse(var(10) = 2, 1220, ifElse(var(10) = 1, 1215, 1210))
juggle = 0
poweradd = 0

[State 1210, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 4
value = 1,5

[State 1210, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 4,2

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 0
x = 2.5

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 5
x = 0

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 11
x = 2.8

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 0
y = 4

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 3
y = 6

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 5
y = 0

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 6
y = 0

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 9
y = 0

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 11
y = 10

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 15
y = 12

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 18
y = 14

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 0
trigger1 = time >= 21
y = 16

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 0
x = 2.5

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 5
x = 0

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 11
x = 2.8

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 0
y = 8

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 3
y = 10

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 5
y = 0

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 11
y = 10

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 13
y = 11

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 15
y = 13

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 17
y = 15

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 1
trigger1 = time >= 19
y = 17

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 0
x = 3;2.5

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 5
x = 0

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 11
x = 3.5;2.8

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 0
y = 12

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 3
y = 13

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 5
y = 0

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 10
y = 16

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 13
y = 18

[State 1210, VelSet]
type = VelSet
triggerall = var(10) = 2
trigger1 = time >= 16
y = 20

[State 1210, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = animelem = 2
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 65, ifElse(var(10), 60, 55)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 65, ifElse(var(10), 60, 55)))), 7
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -1,-8
air.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1210, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = animelem = 4
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 65, ifElse(var(10), 60, 55)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 65, ifElse(var(10), 60, 55)))), 7
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
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
ground.velocity = -1,-8
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -1,-8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
p1stateno = 1280

[State 1210,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1290
ctrl = 0

;Finish
[Statedef 1280]
type = A
movetype = I
physics = N
velset = 0, 0
ctrl = 0
anim = 1280
juggle = 0
poweradd = 0

[State 1280, VelSet2]
type = VelSet
trigger1 = time >= 0
x = 4
y = -6

[State 1280, VelSet2]
type = VelSet
trigger1 = time >= 3
y = -4

[State 1280, VelSet2]
type = VelSet
trigger1 = time >= 6
y = -2

[State 1280, VelSet2]
type = VelSet
trigger1 = time >= 9
y = 0

[State 1280, VelSet2]
type = VelSet
trigger1 = time >= 12
y = 2

[State 1280, VelSet2]
type = VelSet
trigger1 = time >= 16
y = 4

[State 1280, VelSet2]
type = VelSet
trigger1 = time >= 20
y = 6

[State 1280, VelSet2]
type = VelSet
trigger1 = time >= 24
y = 8

[State 1280, VelSet2]
type = VelSet
trigger1 = time >= 28
y = 10

[State 1280,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 1

;Fail
[Statedef 1290]
type = C
movetype = I
physics = N
velset = 0, 0
ctrl = 0
anim = 1290
juggle = 0
poweradd = 0

[State 1290, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1290, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1290, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1290, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;========================<EX JINCHUU WATARI>=============================
[StateDef 1230]
type = S
physics = S
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1230, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

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
var(25) = 131

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1230, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 1230,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1240
ctrl = 0

;Jump
[Statedef 1240]
type = A
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0
anim = 1205

[State 1240, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1,3

[State 1240]
type = varSet
trigger1 = time = 0
fVar(18) = P2Dist X/25.0

[State 1240]
type = varSet
trigger1 = time = 0
fVar(19) = EnemyNear,Const(Size.Height)/80.0

[State 1240, 8]
type = VelAdd
trigger1 = time = 0
Y = -1 * fVar(19) * 17 * Const(Size.YScale)

[State 1240, 8]
type = VelAdd
trigger1 = time > 0
Y = fVar(19) * Const(Size.YScale)

[State 1240, 102]
type = PosAdd
trigger1 = time >= 0
X = fVar(18) * Const(Size.XScale)

[State 1240, ChangeState]
type = ChangeState
trigger1 = time = 26
value = 1250
ctrl = 0

;Attack
[Statedef 1250]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1230
juggle = 3
poweradd = 0

[State 1250, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1250, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 4
value = 1,5

[State 1250, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 4,2

[State 1250, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2.5

[State 1250, VelSet]
type = VelSet
trigger1 = time >= 5
x = 0

[State 1250, VelSet]
type = VelSet
trigger1 = time >= 17;11
x = 2.8

[State 1250, VelSet]
type = VelSet
trigger1 = time >= 0
y = 4;8

[State 1250, VelSet]
type = VelSet
trigger1 = time >= 3
y = 8;10

[State 1250, VelSet]
type = VelSet
trigger1 = time >= 5
y = 0

[State 1250, VelSet]
type = VelSet
trigger1 = time >=17; 11
y = 10

[State 1250, VelSet]
type = VelSet
trigger1 = time >=19; 13
y = 11

[State 1250, VelSet]
type = VelSet
trigger1 = time >=21; 15
y = 13

[State 1250, VelSet]
type = VelSet
trigger1 = time >=23; 17
y = 15

[State 1250, VelSet]
type = VelSet
trigger1 = time >= 25;19
y = 17

[State 1250, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = animelem = 2
trigger2 = animelem = 4
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 47 < 7, 7, fvar(11) * 47)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -1,-8
air.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1250, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = animelem = 6
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 47 < 7, 7, fvar(11) * 47)), 7
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
ground.velocity = -1,-8
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -1,-8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
p1stateno = 1280

[State 1250,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1290
ctrl = 0

;========================<NIOU RIKI>=============================
[StateDef 1300]
type = S
physics = S
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !(var(20) || var(28))
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 1,0

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 4,0

[State 1300, 1]
type = HitDef
Triggerall = Time = 0
trigger1 = p2statetype != A
attr = S, NT
hitflag = M
guardflag = M
priority = 4, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
sprpriority = 1
p2facing = 1
p1stateno = 1305
p2stateno = 1315
fall = 1
fall.recover = 1

[State 1300, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Attack
[Statedef 1305]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 1305
juggle = 0
poweradd = 0

[State 1305, HitAdd]
type = HitAdd
trigger1 = AnimElem = 4
trigger2 = animelem = 11
trigger3 = animelem = 15
value = 1

[State 1305, SprPriority]
type = SprPriority
trigger1 = 1
value = 2

[State 1305, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 1305, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA;,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 29

[State 1305, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 0,0

[State 1305, Impact Dust]
type = Helper
trigger1 = animelem = 11
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
pos = -60,5
postype = p2
facing = -1
ownPal = 1

[State 1305, Impact Dust]
type = Helper
trigger1 = animelem = 4
trigger2 = animelem = 15
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
pos = 60,5
postype = p2
facing = -1
ownPal = 1

[State 1305, EnvShake]
type = Null;EnvShake
trigger1 = animelem = 4
trigger2 = animelem = 11
trigger3 = animelem = 15
time = 10
ampl = 10
freq = 80

[State 1305, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 11
trigger3 = animelem = 15
value = 810,0

[State 1305, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 11
trigger3 = animelem = 15
value = 4,3

[State 1305, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 4
trigger2 = animelem = 11
value = ifElse(var(10) = 2, -50, ifElse(var(10) = 1, -45, -40))
kill = 0

[State 1305, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 15
value = -60
kill = 1

[State 1305, Turn]
type = Turn
trigger1 = animelem = 22

[State 1305, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Player 2
[Statedef 1315]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0

[State 1315, SprPriority]
type = SprPriority
trigger1 = 1
value = -2

[State 1315, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1315

[State 1315, PosAdd]
type = PosAdd
trigger1 = time = 49
x = 80

[State 1315,ChangeState]
type = selfstate
trigger1 = time = 49
value = 5100

;========================<EX NIOU RIKI>=============================
[StateDef 1330]
type = S
physics = S
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1330, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

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
var(25) = 131

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1330, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 1,0
channel = 0

[State 1330, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 4,0
channel = 2

[State 1330, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA;,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 20

[State 1330, 1]
type = HitDef
Triggerall = Time = 0
trigger1 = p2statetype != A
attr = S, NT
hitflag = M
guardflag = M
priority = 4, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
sprpriority = 1
p2facing = 1
p1stateno = 1335
p2stateno = 1315
fall = 1
fall.recover = 1

[State 1330, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Attack
[Statedef 1335]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 1305
juggle = 0
poweradd = 0

[State 1335, HitAdd]
type = HitAdd
trigger1 = AnimElem = 4
trigger2 = animelem = 11
trigger3 = animelem = 15
value = 1

[State 1335, SprPriority]
type = SprPriority
trigger1 = 1
value = 2

[State 1335, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 1335, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA;,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 29

[State 1335, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 0,0

[State 1335, Impact Dust]
type = Helper
trigger1 = animelem = 11
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
pos = -60,5
postype = p2
facing = -1
ownPal = 1

[State 1335, Impact Dust]
type = Helper
trigger1 = animelem = 4
trigger2 = animelem = 15
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
pos = 60,5
postype = p2
facing = -1
ownPal = 1

[State 1335, EnvShake]
type = Null;EnvShake
trigger1 = animelem = 4
trigger2 = animelem = 11
trigger3 = animelem = 15
time = 10
ampl = 10
freq = 80

[State 1335, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 11
trigger3 = animelem = 15
value = 810,0

[State 1335, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 11
trigger3 = animelem = 15
value = 4,3

[State 1335, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 4
trigger2 = animelem = 11
value = -55
kill = 0

[State 1335, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 15
value = -60
kill = 1

[State 1335, Turn]
type = Turn
trigger1 = animelem = 22

[State 1335, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;========================<HITOBASHIRA NOBORI>=============================
[StateDef 1400]
type = A
physics = A
moveType = A
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !(var(20) || var(28))
faceP2 = 1

[State 1400, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1400, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1400, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1420, ifElse(var(10) = 1, 1410, 1400))

[State 1400, PosAdd]
type = PosAdd
trigger1 = time = 0
y = 5

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 4
value = 1,5

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 4,2

[State 1400, VelSet]
type = VelSet
trigger1 = time > 13
x = 0

[State 1400, PosFreeze]
type = PosFreeze
trigger1 = time = [0,12]
value = 1

[State 1400, VelSet]
type = VelSet
trigger1 = time >= 12
y = -5

[State 1400, VelSet]
type = VelSet
trigger1 = time >= 15
y = -3

[State 1400, VelSet]
type = VelSet
trigger1 = time >= 18
y = -1

[State 1400, VelSet]
type = VelSet
trigger1 = time >= 21
y = 1

[State 1400, VelSet]
type = VelSet
trigger1 = time >= 24
y = 2

[State 1400, VelSet]
type = VelSet
trigger1 = time >= 27
y = 4

[State 1400, VelSet]
type = VelSet
trigger1 = time >= 30
y = 6

[State 1400, VelSet]
type = VelSet
trigger1 = time >= 33
y = 8

[State 1400, VelSet]
type = VelSet
trigger1 = time >= 36
y = 10

[State 1400, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1290
ctrl = 0

[State 1400, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1400, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = animelem = 2
trigger2 = animelem = 6
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 26, ifElse(var(10), 24, 28)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 26, ifElse(var(10), 24, 28)))), 7
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1,-6
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -1,-6
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 0), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 6 || var(20))
triggerall = var(10) = 0
trigger1 = animelem = 4
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 26, ifElse(var(10), 24, 28)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 26, ifElse(var(10), 24, 28)))), 7
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1,-6
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -1,-6
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 0), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 7 || var(20))
triggerall = var(10) = 0
trigger1 = animelem = 8
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 26, ifElse(var(10), 24, 28)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 26, ifElse(var(10), 24, 28)))), 7
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
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
ground.velocity = -1,-6
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -1,-6
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 0), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
p1stateno = 1280

[State 1400, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 6 || var(20))
triggerall = var(10) = [1,2]
trigger1 = animelem = 4
trigger2 = animelem = 8
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 26, ifElse(var(10), 24, 28)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 26, ifElse(var(10), 24, 28)))), 7
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1,-4
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -1,-4
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 0), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 7 || var(20))
triggerall = var(10) = [1,2]
trigger1 = animelem = 10
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 26, ifElse(var(10), 24, 28)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 26, ifElse(var(10), 24, 28)))), 7
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
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
ground.velocity = -1,-6
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -1,-6
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 0), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
p1stateno = 1280

;========================<EX NIOU RIKI>=============================
[StateDef 1430]
type = A
physics = A
moveType = A
anim = 1430
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1430, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1430, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1430, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1430, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 131

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1430, PosAdd]
type = PosAdd
trigger1 = time = 0
y = 5

[State 1430, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 4
value = 1,5
channel = 3

[State 1430, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 4,2
channel = 2

[State 1430, VelSet]
type = VelSet
trigger1 = time > 13
x = 0

[State 1430, PosFreeze]
type = PosFreeze
trigger1 = time = [0,12]
value = 1

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 12
y = -8

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 15
y = -6

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 18
y = -4

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 21
y = -2

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 24
y = 0

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 27
y = 4

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 30
y = 6

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 33
y = 8

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 36
y = 10

[State 1430, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1290
ctrl = 0

[State 1430, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1430, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = animelem = 2
trigger2 = animelem = 6
trigger3 = animelem = 10
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 24 < 7, 7, fvar(11) * 24)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1,-4
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -1,-4
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 0), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 6 || var(20))
trigger1 = animelem = 4
trigger2 = animelem = 8
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 24 < 7, 7, fvar(11) * 24)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1,-4
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -1,-4
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 0), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 7 || var(20))
trigger1 = animelem = 12
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 24 < 7, 7, fvar(11) * 24)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1,-6
ground.cornerPush.velOff = 0
guard.velocity = -12
guard.cornerPush.velOff = 0
air.velocity = -1,-6
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 0), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
p1stateno = 1280

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
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 2900, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 2900, velset]
type = velset
trigger1 = time >= 2
x = 1

[State 2900, velset]
type = velset
trigger1 = time >= 6
x = 2

[State 2900, velset]
type = velset
trigger1 = time >= 10
x = 1

[State 2900, velset]
type = velset
trigger1 = time >= 14
x = 0

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = Time = 0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 72 < 7, 7, fvar(11) * 72)), 0
getpower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 2900, End]
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
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 4
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = Time = 0
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 72 < 7, 7, fvar(11) * 72)), 0
getpower = 0,0
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
sparkXY = -10 + 0 * (var(35) := 196), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
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
