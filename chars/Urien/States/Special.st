;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;=====================<METALLIC SPHERE>==========================
[Statedef 1000]
type = S
physics = S
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 1000, VarSet]
type = VarSet
trigger1 = !Time && !AILevel
var(1) = 0

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) =  1;ifElse(P2BodyDist X >= 30 && P2BodyDist Y >= -60, 2, ifElse(P2BodyDist X >= 60 && P2BodyDist Y >= -60, 1, 0))

[State 1000, Changestate: Button Release]
type = Changestate
triggerall = !AILevel
triggerall = !AnimTime
trigger1 = Command != "holdx" && !var(10)
trigger2 = Command != "holdy" && var(10) = 1
trigger3 = Command != "holdz" && var(10) = 2
value = 1003

[State 1000, Changestate: Button Release]
type = Changestate
TriggerAll = AILevel
triggerall = !AnimTime
trigger1 = (InGuardDist || P2BodyDist x <= 120)
value = 1003

[State 1000, Changestate]
type = Changestate
trigger1 = !AnimTime
value = 1001

;=====================<METALLIC SPHERE (CHARGE)>==========================
[Statedef 1001]
type = S
physics = S
moveType = A
ctrl = 0
velset = 0,0

[State 1001, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1001, ifElse(var(10) = 1, 1011, 1021))

[State 1001, VarSet]
type = VarSet
trigger1 = Time = 21
var(1) = 1

[State 1001, VarSet (AI)]
type = VarSet
trigger1 = Time = 21
var(1) = 1

[State 1001, Static Particles]
type = Helper
trigger1 = Time = 21
helperType = Normal
stateNo = 1010
ID = 1010
name = "Static Particles"
posType = P1
ownPal = 1
size.xscale = 0.35
size.yscale = 0.35
ignoreHitPause = 1

[State 1001, Changestate: Button Release]
type = Changestate
TriggerAll = !AILevel
trigger1 = Command != "holdx" && !var(10)
trigger2 = Command != "holdy" && var(10) = 1
trigger3 = Command != "holdz" && var(10) = 2
value = 1003

[State 1001, Changestate: Button Release]
type = Changestate
TriggerAll = AILevel
trigger1 = (InGuardDist || P2BodyDist x <= 120)
value = 1003

[State 1001, Changestate: Hold]
type = Changestate
trigger1 = time = 21
value = 1002

[Statedef 1002]
type = S
physics = S
moveType = A
ctrl = 0
velset = 0,0

[State 1002, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1002, ifElse(var(10) = 1, 1012, 1022))

[State 1002, VarSet]
type = VarSet
trigger1 = Time = 42
var(1) = 2

[State 1002, Static Particles]
type = Helper
trigger1 = Time = 42
helperType = Normal
stateNo = 1010
ID = 1010
name = "Static Particles"
posType = P1
ownPal = 1
size.xscale = 0.35
size.yscale = 0.35
ignoreHitPause = 1

[State 1002, ChangeState]
type = Changestate
TriggerAll = !AILevel
trigger1 = Command != "holdx" && !var(10)
trigger2 = Command != "holdy" && var(10) = 1
trigger3 = Command != "holdz" && var(10) = 2
trigger4 = Time = 42
value = 1003

[State 1000, Changestate: Button Release]
type = Changestate
TriggerAll = AILevel
trigger1 = (InGuardDist || P2BodyDist x <= 120)
trigger2 = Time = 42
value = 1003

;=====================<METALLIC SPHERE (SHOOT)>==========================
[Statedef 1003]
type = S
physics = S
moveType = A
velset = 0,0
ctrl = 0

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1003, ifElse(var(10) = 1, 1013, 1023))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,0
channel = 0

[State 1000, Metallic Sphere Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000, 1
channel = 2

[State 1000, Metallic Sphere 0°]
type = Helper
Triggerall = !var(10)
trigger1 = AnimElem = 2
name = "Metallic Sphere"
pos = ceil(50*const(size.xscale)), ceil(-74*const(size.yscale));50,-74
postype = P1
stateno = 1005
id = 1005
helpertype = Normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xScale = 0.9
size.yScale = 0.9

[State 1000, Metallic Sphere 30°]
type = Helper
Triggerall = var(10) = 1
trigger1 = AnimElem = 2
name = "Metallic Sphere"
pos = ceil(18*const(size.xscale)), ceil(-92*const(size.yscale));18,-92
postype = P1
stateno = 1005
id = 1005
helpertype = Normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xScale = 0.9
size.yScale = 0.9

[State 1000, Metallic Sphere 60°]
type = Helper
Triggerall = var(10) = 2
trigger1 = AnimElem = 2
name = "Metallic Sphere"
pos = ceil(10*const(size.xscale)), ceil(-99*const(size.yscale))
postype = P1
stateno = 1005
id = 1005
helpertype = Normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xScale = 0.9
size.yScale = 0.9

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<EX METALLIC SPHERE>=============================
[StateDef 1050]
type = S
physics = N
moveType = A
anim = 1050
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1050, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1050, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 24

[State 1050, Button Detect]
type = VarSet
trigger1 = AnimElem = 8 && !AILevel
var(10) = ifElse(P2Dist Y, 1, 0)

[State 1050, ChangeAnim]
type = ChangeAnim
triggerAll = var(10)
trigger1 = !Time
value = 1051

[State 1050, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 13, -91
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1050, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1050, Metallic Sphere Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000, 1
channel = 2

[State 1050, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
volume = 255
value = 1000,0
channel = 0

[State 1050, Projectile]
type = Helper
trigger1 = AnimElem = 9
helperType = Normal
stateNo = 1055
ID = 1005
name = "Metallic Sphere Projectile"
posType = P1
pos = ceil((50 - var(10)* 30)*const(size.xscale)), ceil((-74 - var(10)* 20)*const(size.yscale));20,-94
ownPal = 1

[State 1050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<CHARIOT TACKLE>=============================
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

[State 1100, Width]
type = Width
trigger1 = AnimElem = 3
edge = 15,0

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist x > 100, 2, ifElse(P2Dist x > 88, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1100));ifElse(var(10) = 2, 1110, 1100)

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100,0
channel = 0

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41,0
channel = 1

[State 1100, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 52,0
channel = 3

[State 1100, Skid Dust]
type = Explod
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(7) < 0
trigger1 = !(AnimElemTime(3) % 3)
anim = 8104
sprPriority = 3
posType = P1
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 11

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 10 + (var(10)*5.33)

[State 1100, VelMul]
type = VelMul
trigger1 = AnimElemTime(3) >= 1
x = 0.901231

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 1100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 28
ground.slideTime = 28
guard.hitTime = 28
air.hitTime = 120
ground.velocity = -11.23, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -10.49
air.cornerPush.velOff = 0
yAccel = 0.65
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<EX CHARIOT TACKLE>=============================
[StateDef 1150]
type = S
physics = N
moveType = A
anim = 1150
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1150, Width]
type = Width
trigger1 = AnimElem = 4 || AnimElem = 9
edge = 15,10

[State 1150, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1150, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 32

[State 1150, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 32, -90
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1150, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 3

[State 1150, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100,0
channel = 0

[State 1150, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41,0
channel = 1

[State 1150, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 52,0
channel = 4

[State 1150, Skid Dust]
type = Explod
trigger1 = (AnimElemTime(3) >= 0 || AnimElemTime(8) >= 0) && AnimElemTime(13) < 0
trigger1 = !(AnimElemTime(3) % 3)
anim = 8104
sprPriority = 3
posType = P1
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 1150, VelSet: First Tackle]
type = VelSet
trigger1 = AnimElem = 3
x = 12

[State 1150, VelSet: First Tackle]
type = VelSet
trigger1 = AnimElem = 4
x = 16

[State 0, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 1
x = 2

[State 1150, VelMul: First Tackle]
type = VelMul
trigger1 = AnimElemTime(4) >= 1
x = 0.87

[State 1150, VelSet: Second Tackle]
type = VelSet
trigger1 = AnimElem = 6
x = 8

[State 1150, VelSet: Second Tackle]
type = VelSet
trigger1 = AnimElem = 8
x = 9

[State 1150, VelSet: Second Tackle]
type = VelSet
trigger1 = AnimElem = 9
x = 15

[State 1150, VelMul: Second Tackle]
type = VelMul
trigger1 = AnimElemTime(9) >= 1
x = 0.87

[State 1150, VelSet: End]
type = VelSet
trigger1 = AnimElem = 14 
x = 0

[State 1150, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
ID = 1150
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.32, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.65
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (3+Hitcount) || var(20))
trigger1 = AnimElem = 10
forceNoFall = !var(20)
ID = 1150
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 25
ground.slideTime = 25
guard.hitTime = 25
air.hitTime = 120
ground.velocity = -2.16, 0
ground.cornerPush.velOff = 0
guard.velocity = -2.16
guard.cornerPush.velOff = 0
air.velocity = -4.32, -10.49
air.cornerPush.velOff = 0
yAccel = 0.65
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(14) >= 0
moveType = I

[State 1150, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<DANGEROUS HEADBUTT>=============================
[Statedef 1200]
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
var(10) = ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist x > 100, 2, ifElse(P2Dist x > 88, 1, 0))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1220, ifElse(var(10) = 1, 1210, 1200))

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Dust"
posType = P1
ownPal = 1

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40,0
channel = 3

[State 1200, ChangeAnim]
type = VelSet
trigger1 = AnimElem = 2
y = -1.657 + (var(10) * -1.01023)
x = 2.543 + (var(10) * 0.7894)

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,3
volume = 255
channel = 0

[State 1200, Width]
type = Width
trigger1 = 1
edge = 20,0

[State 1200, VelAdd]
type = Gravity
trigger1 = AnimElemTime(3) > 0

[State 1200, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 87 < 7, 7, fvar(11) * 87)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 7, 14), ifElse(var(20), 7, 14)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 20
ground.slideTime = 20
guard.hitTime = 20
air.hitTime = 120
ground.velocity = -4, -7.5
ground.cornerPush.velOff = 0
guard.velocity = -9.76
guard.cornerPush.velOff = 0
air.velocity = -4, -7.5
airguard.velocity = -6.67, -1.12
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1200, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1205

;========================<DANGEROUS HEADBUTT LANDING>=============================
[Statedef 1205]
type = S
physics = S
anim = 1305
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1205, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1205, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1205, PosSet]
type = PosSet
trigger1 = !Time
Y = 0

[State 1205, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;========================<EX DANGEROUS HEADBUTT>=============================
[Statedef 1250]
type = S
physics = N
moveType = A
anim = 1250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1250, PosAdd]
type = PosAdd
trigger1 = !Time
y = -12

[State 1250, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1250, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1250, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 32

[State 1250, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 25, -107
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1250, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 3

[State 1250, ChangeAnim]
type = VelSet
trigger1 = AnimElem = 2
y = -4.76879 
x = 7.3175

[State 1250, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,1
volume = 255
channel = 0

[State 1250, Width]
type = Width
trigger1 = 1
edge = 25,0

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
Physics = N

[State 1200, VelAdd]
type = Gravity
trigger1 = AnimElemTime(3) > 0

[State 8150, Flame Explod 1]
type = Explod
trigger1 = AnimElem = 5
anim = 8155
sprPriority = 3
posType = P1
pos = 61, -79
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
scale = 0.4,0.4
ownpal = 1
[State 1010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2,9
channel = 12
volume = -25
lowPriority = 1

[State 1250, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 5
ID = 1250
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 64 < 7, 7, fvar(11) * 64)), 9
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 20
ground.slideTime = 20
guard.hitTime = 20
air.hitTime = 120
ground.velocity = -3, -6.56
ground.cornerPush.velOff = 0
guard.velocity = -9.76
guard.cornerPush.velOff = 0
air.velocity = -1, -3.56
airguard.velocity = -6.67, -1.12
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1250, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 = AnimElem = 6
ID = 1250
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 64 < 7, 7, fvar(11) * 64)), 9
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 20
ground.slideTime = 20
guard.hitTime = 20
air.hitTime = 120
ground.velocity = -4, -8.56
ground.cornerPush.velOff = 0
guard.velocity = -9.76
guard.cornerPush.velOff = 0
air.velocity = -3, -8.56
airguard.velocity = -6.67, -1.12
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1250, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1250)
trigger1 = Target(1250), GetHitVar(HitCount) >= 1
trigger1 = (Target(1250), StateNo = 5000) || (Target(1250), StateNo = 5010) || (Target(1250), StateNo = 5020)
value = 5800
ID = 1250
ignorehitpause = 1

[State 1250, Static Particles]
type = Helper
trigger1 = !NumHelper(8155)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8155
ID = 8155
name = "Static Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1250, ChangeState]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1205

;========================<VIOLENCE KNEE DROP>=============================
[Statedef 1300]
type = A
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist x > 100, 2, ifElse(P2Dist x > 88, 1, 0))

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1300, 0
volume = 255
channel = 0

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 12
value = 1, 5
volume = 255
channel = 1

[State 1300, Dust Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8100
ID = 8100
name = "Dust"
posType = P1
ownPal = 1

[State 1300, Jump Sound]
type = PlaySnd
trigger1 = !Time
value = 40,0
channel = 3

[State 1300, Rise]
type = VelSet
trigger1 = !Time
y = -9

[State 1300, Dive]
type = VelSet
trigger1 = AnimElem = 13
x = IfElse(!var(10), 6.4, IfElse (var(10) = 1, 9.21 , 12.99 ))
y = IfElse(!var(10), 5.67, IfElse (var(10) = 1, 4.42 , 3.25 ))

[State 1300, VelAdd]
type = VelAdd
trigger1 = animelemtime(1) > 0
y = .41

[State 1300, PlayerPush]
type = PlayerPush
trigger1 = abs(p2dist x) < 25
trigger2 = abs(p2dist y) < 25
value = 0
ignorehitpause = 1

[State 1300, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 96 < 7, 7, fvar(11) * 96)), 6
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 20
ground.slideTime = 20
guard.hitTime = 20
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.76
guard.cornerPush.velOff = 0
air.velocity = -1.5, 0
airguard.velocity = -6.67, -1.12
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -53
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1301
ignorehitpause = 1

[State 1300, ChangeState]
type = ChangeState
trigger1 = Pos Y + Vel Y >= 0
value = 1305

;========================<VIOLENCE KNEE DROP HIT>=============================
[Statedef 1301]
type = A
physics = N
moveType = A
anim = 1301
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1301, Gravity]
type = Gravity
trigger1 = 1

[State 1301, Width]
type = Width
trigger1 = 1
edge = 20,0

[State 1301, PosSet]
type = PosSet
trigger1 = Pos Y + Vel Y >= 0
Y = 0

[State 1301, ChangeState]
type = ChangeState
trigger1 = Pos Y + Vel Y >= 0
value = 1305

;========================<VIOLENCE KNEE DROP LANDING>=============================
[Statedef 1305]
type = S
physics = S
anim = 1305
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1305, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1305, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1301, PosSet]
type = PosSet
trigger1 = !Time
Y = 0

[State 1305, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;========================<EX VIOLENCE KNEE DROP>=============================
[Statedef 1350]
type = A
physics = N
moveType = A
anim = 1350
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1350, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1350, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1350, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 32

[State 1350, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 20, -99
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1350, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 3

[State 1350, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1300, 0
volume = 255
channel = 0

[State 1350, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 12
value = 1, 5
volume = 255
channel = 1

[State 1350, Dust Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8100
ID = 8100
name = "Dust"
posType = P1
ownPal = 1

[State 1350, Jump Sound]
type = PlaySnd
trigger1 = !Time
value = 40,0
channel = 5

[State 1350, Width]
type = Width
trigger1 = 1
edge = 20,0

[State 1350, ChangeAnim]
type = VelSet
trigger1 = !Time
x = P2Dist X/35
y = -20

[State 1350, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
y = 1.2

[State 1350, PlayerPush]
type = PlayerPush
trigger1 = Abs(P2Dist X) < 25
trigger2 = Abs(P2Dist Y) < 25
value = 0
ignorehitpause = 1

[State 1350, HitDef]
type = HitDef
trigger1 = !Time
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 7
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
getPower = 0,0
animtype = Heavy
air.animtype = Back
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -1
guard.velocity = -8
air.velocity = -1,-6
airguard.velocity = -6.67,-1
fall = 0
air.fall = 1
yaccel = .49
persistent = 0
givepower = 35, 35
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -53
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1350, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1351
ignorehitpause = 1

[State 1350, ChangeState]
type = ChangeState
trigger1 = Pos Y + Vel Y >= 0
value = 1305

;========================<EX VIOLENCE KNEE DROP HIT>=============================
[Statedef 1351]
type = A
physics = N
moveType = A
anim = 1351
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1351, Gravity]
type = Gravity
trigger1 = 1

[State 1351, HitDef]
type = HitDef
trigger1 = !Time
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 7
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
getPower = 0,0
animtype = Heavy
air.animtype = Back
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
guard.ctrltime = 20
ground.velocity = -1
guard.velocity = -8
air.velocity = -1,-6
airguard.velocity = -6.67,-1
fall = var(40)
air.fall = 1
yaccel = .49
persistent = 0
givepower = 35, 35
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -53
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1351, PosSet]
type = PosSet
trigger1 = Pos Y + Vel Y >= 0
Y = 0

[State 1351, ChangeState]
type = ChangeState
trigger1 = Pos Y + Vel Y >= 0
value = 1305

;========================<PUNCH ZERO COUNTER>=============================
[Statedef 2900]
type = S
physics = N
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 2900, PosAdd]
type = PosAdd
trigger1 = !Time
y = 0

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A

[State 2900, ChangeAnim]
type = VelSet
trigger1 = AnimElem = 2
y = -1.23
x = 3.375

[State 2900, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,1
volume = 255
channel = 0

[State 2900, Width]
type = Width
trigger1 = 1
edge = 20,0

[State 2900, VelAdd]
type = Gravity
trigger1 = AnimElemTime(3) > 0

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 87 < 7, 7, fvar(11) * 87)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 7, 14), ifElse(var(20), 7, 14)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 20
ground.slideTime = 20
guard.hitTime = 20
air.hitTime = 120
ground.velocity = -4, -7.5
ground.cornerPush.velOff = 0
guard.velocity = -9.76
guard.cornerPush.velOff = 0
air.velocity = -4, -7.5
airguard.velocity = -6.67, -1.12
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 2900, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1205

;========================<KICK ZERO COUNTER>=============================
[StateDef 2910]
type = S
physics = N
moveType = A
anim = 2910
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100,0
channel = 0

[State 2910, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41,0
channel = 1

[State 2910, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 52,0
channel = 3

[State 2910, Skid Dust]
type = Explod
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(7) < 0
trigger1 = !(AnimElemTime(3) % 3)
anim = 8104
sprPriority = 3
posType = P1
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 2910, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 9

[State 2910, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 13.53

[State 2910, VelMul]
type = VelMul
trigger1 = AnimElemTime(3) >= 1
x = 0.8583230636993465

[State 2910, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 0
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6.32, -6.34
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.65
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2910, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1