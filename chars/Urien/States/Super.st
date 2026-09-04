;TEMPORAL THUNDER
[StateDef 3000]
type = S
physics = S
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3000, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(8 * const(size.xScale)), ceil(-64 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3000, Super Pause]
type = SuperPause
trigger1 = !Time
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Attack Distance]
type = AttackDist
trigger1 = 1
value = Const(Size.Proj.Attack.Dist)

[State 3000, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000,0
channel = 0

[State 3000, Temporal Thunder Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2, 10
volumescale = 75
channel = 2

[State 3000, Jupiter Thunder Projectile]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 3005
ID = 3005
name = "Jupiter Thunder Projectile"
posType = P1
pos = ceil(52 * const(size.xScale)), ceil(-71 * const(size.yScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;(MAX) TEMPORAL THUNDER
[StateDef 3050]
type = S
physics = S
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3050, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(8 * const(size.xScale)), ceil(-64 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = !Time
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, Attack Distance]
type = AttackDist
trigger1 = 1
value = Const(Size.Proj.Attack.Dist)

[State 3050, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000,0
channel = 0

[State 3050, Temporal Thunder Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2, 10
volumescale = 75
channel = 2

[State 3050, Jupiter Thunder Projectile]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 3055
ID = 3055
name = "Jupiter Thunder Projectile"
posType = P1
pos = ceil(52 * const(size.xScale)), ceil(-71 * const(size.yScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;TYRANT SLAUGHTER
[StateDef 3100]
type = S
physics = S
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3100, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3100, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3100, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3100, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3100, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 17,-84
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, "Tyran Punish!"]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100,0
channel = 0

[State 3100, "Grunts"]
type = PlaySnd
trigger1 = AnimElem = 6 || AnimElem = 11 || AnimElem = 18 || AnimElem = 23
value = 4,0
channel = 0

[State 3100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6 || AnimElem = 12 || AnimElem = 18 
value = 1,2
channel = 1

[State 3100, Skid Dust]
type = Explod
trigger1 = (AnimElemTime(6) >= 0 || AnimElemTime(12) >= 0 || AnimElemTime(18) >= 0) && AnimElemTime(23) < 0
trigger1 = !(AnimElemTime(3) % 3)
anim = 8104
sprPriority = 3
posType = P1
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 6 || AnimElem = 11 || AnimElem = 18 || AnimElem = 23
x = 7

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 9 || AnimElem = 16 || AnimElem = 21
x = 5

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 7 || AnimElem = 13 || AnimElem = 19 || AnimElem = 25
x = 9

[State 3100, VelMul]
type = VelMul
trigger1 = AnimElemTime(27) >= 0
x = 0.87

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElemTime(28) = 0
x = 18.2

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElemTime(33) = 0
x = 0

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < HitCount + 5
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 7,8
guard.pauseTime = 7,8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32,-6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < HitCount + 5
trigger1 = AnimElem = 11
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 7,8
guard.pauseTime = 7,8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32,-6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < HitCount + 5
trigger1 = AnimElem = 18
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 7,8
guard.pauseTime = 7,8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32,-6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < HitCount + 5
trigger1 = AnimElem = 23
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = -6.25,-6.5625
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -6.25,-6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElem = 32
moveType = I

[State 3100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Target (Impact)
[Statedef 3105]
type = A
physics = N
movetype = H
velset = 0,0
ctrl = 0
facep2 = 1
SprPriority = 0

[State 3105, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3105, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3105, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3105, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time
value = 3105

[State 3105, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 3106

;Target (Fall)
[Statedef 3106]
type = A
physics = N
movetype = H
velset = 0,0
ctrl = 0
SprPriority = 0

[State 3106, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3106, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3106, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3106, ChangeAnim]
type = ChangeAnim
Trigger1 = !Time
value = 5030

[State 3106, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5035)
Trigger1 = Anim = 5030
Trigger1 = !AnimTime
value = 5035

[State 3106, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5035)
Trigger1 = Anim = 5035
Trigger1 = !AnimTime
trigger2 = !SelfAnimExist(5035)
Trigger2 = Anim = 5030
Trigger2 = !AnimTime
value = 5050

[State 3106, PosFreeze]
type = PosFreeze
trigger1 = AnimElem = 1

[State 3106, PosAdd]
type = PosAdd
trigger1 = !Time
x = -Const(Size.Head.Pos.X)
y = -Const(Size.Head.Pos.Y)

[State 3106, VelSet]
type = VelSet
trigger1 = !Time
x = -2.0
y = 10.0

[State 3106, VelAdd]
type = VelAdd
trigger1 = 1
y = .60

[State 3106, SelfState]
type = SelfState
trigger1 = Pos Y >= 25 && Vel Y > 0 && Time > 0
value = 5100

;(MAX) TYRANT SLAUGHTER
[StateDef 3150]
type = S
physics = S
moveType = A
anim = 3150
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3150, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3150, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3150, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3150, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3150, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3150, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3150, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 17,-84
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3150, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, "Tyran Punish!"]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100,0
channel = 0

[State 3100, "Grunts"]
type = PlaySnd
trigger1 = AnimElem = 6 || AnimElem = 12 || AnimElem = 18 || AnimElem = 23
value = 4,0
channel = 0

[State 3100, "Grunts"]
type = PlaySnd
trigger1 = AnimElem = 28
value = 4,3
channel = 0

[State 3100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6 || AnimElem = 12 || AnimElem = 18 
value = 1,2
channel = 1

[State 3100, Skid Dust]
type = Explod
trigger1 = (AnimElemTime(6) >= 0 || AnimElemTime(12) >= 0 || AnimElemTime(18) >= 0) && AnimElemTime(23) < 0
trigger1 = !(AnimElemTime(3) % 3)
anim = 8104
sprPriority = 3
posType = P1
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 6 || AnimElem = 12 || AnimElem = 18 || AnimElem = 24
x = 7

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 9 || AnimElem = 16 || AnimElem = 21
x = 5

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 7 || AnimElem = 13 || AnimElem = 19 || AnimElem = 25
x = 9

[State 3100, VelMul]
type = VelMul
trigger1 = AnimElemTime(27) >= 0
x = 0.87

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElemTime(28) = 0
x = 18.2

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElemTime(33) = 0
x = 0

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < HitCount + 5
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 7,8
guard.pauseTime = 7,8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32,-6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < HitCount + 5
trigger1 = AnimElem = 11
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 7,8
guard.pauseTime = 7,8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32,-6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < HitCount + 5
trigger1 = AnimElem = 18
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 7,8
guard.pauseTime = 7,8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32,-6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < HitCount + 5
trigger1 = AnimElem = 23
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 7,8
guard.pauseTime = 7,8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32,-6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Final Hit]
type = HitDef
trigger1 = !var(16) && var(15) < HitCount + 5
trigger1 = AnimElem = 28 
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 15,16
guard.pausetime = 15,16
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 1,0
ground.cornerPush.velOff = 0
guard.velocity = -7.0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -15), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2stateno = 3105
p2Facing = 1
ignorehitpause = 1

[State 3100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElem = 32
moveType = I

[State 3100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;AEGIS REFLECTOR
[StateDef 3200]
type = S
physics = S
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3200, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2Dist X < 120 && P2Dist X > 80), 2, ifElse(P2Dist X < 120 && P2Dist X > 80, 1, 0))

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(19 * const(size.xScale)), ceil(-87 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = !Time
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3200, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3200,0
channel = 0

[State 3200, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 10
value = 3200,1
channel = 2

[State 3200, VarSet]
type = VarSet
trigger1 = var(44) < (3215)
var(44) = 3215

[State 3200, Aegis Reflector Projectile]
type = Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 3210
ID = var(44) := var(44) + 1
name = "Aegis Reflector Projectile"
posType = P1
pos = ceil(71 * const(size.xScale)), ceil(-61 * const(size.yScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[state 3200,Mirror]
type = Varset
trigger1 = NumHelper(var(44))
var(42) = Helper(var(44)), AnimElemNo(0)

[State 3200, Aegis Reflector Projectile]
type = Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 3211
ID = 3211
name = "Aegis Reflector Projectile"
posType = P1
pos = ceil(71 * const(size.xScale)), ceil(-61 * const(size.yScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3200, Aegis Reflector Projectile]
type = Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 3212
ID = 3212
name = "Aegis Reflector Projectile"
posType = P1
pos = ceil(71 * const(size.xScale)), ceil(-61 * const(size.yScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3200, Attack Distance]
type = AttackDist
trigger1 = 1
value = Const(Size.Proj.Attack.Dist)

[State 3200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;(MAX) AEGIS REFLECTOR
[StateDef 3250]
type = S
physics = S
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3250, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3250, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3250, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3250, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3250, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3250, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3250, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 3200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2Dist X < 120 && P2Dist X > 80), 2, ifElse(P2Dist X < 120 && P2Dist X > 80, 1, 0))

[State 3250, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(19 * const(size.xScale)), ceil(-87 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = !Time
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3250, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3200,0
channel = 0

[State 3200, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 10
value = 3200,1
channel = 2

[State 3250, VarSet]
type = VarSet
trigger1 = var(44) < (3215)
var(44) = 3215

[State 3250, Aegis Reflector Projectile]
type = Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 3260
ID = var(44) := var(44) + 1
name = "Aegis Reflector Projectile"
posType = P1
pos = ceil(71 * const(size.xScale)), ceil(-61 * const(size.yScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[state 3250,Mirror]
type = Varset
trigger1 = NumHelper(var(44))
var(42) = Helper(var(44)), AnimElemNo(0)

[State 3250, Aegis Reflector Projectile]
type = Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 3261
ID = 3211
name = "Aegis Reflector Projectile"
posType = P1
pos = ceil(71 * const(size.xScale)), ceil(-61 * const(size.yScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3250, Aegis Reflector Projectile]
type = Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 3262
ID = 3212
name = "Aegis Reflector Projectile"
posType = P1
pos = ceil(71 * const(size.xScale)), ceil(-61 * const(size.yScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3250, Attack Distance]
type = AttackDist
trigger1 = 1
value = Const(Size.Proj.Attack.Dist)

[State 3250, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;DOMINANT CRUSH
[StateDef 3300]
type = S
physics = S
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(17) < 10
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8520
name = "Superpause FX"
posType = p1
pos = ceil(60 * const(size.xScale)), ceil(-92 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 92
moveTime = 92
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3300, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 190,0
channel = 0

[State 3300, Eruption]
type = PlaySnd
trigger1 = AnimElem = 16
value = 3300,0
[State 3300, Eruption]
type = PlaySnd
trigger1 = AnimElem = 16
value = 3300,1
channel = 2

[State 3101, FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 3315
ID = 3315
name = "FX"
postype = p1
supermovetime = 93
size.xscale = 0.3
size.yscale = 0.3
ownpal = 1

[State 195, EnvShake]
type = PlaySnd
trigger1 = animelem = 3
value = 1000,1

[State 195, Impact]
type = PlaySnd
trigger1 = AnimElem = 16
value = 820,1

[State 195, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(16) >= 0 && AnimElemTime(16) <= 40
trigger1 = !(AnimElemTime(16) % 5)
time = 5
freq = 120
ampl = 3

[State 820, Impact Dust]
type = Helper
trigger1 = AnimElem = 16
StateNo = 8110
HelperType = Normal
sprPriority = -3
pos = 0,3
posType = P1
scale = 0.5,0.5
ownPal = 1

[State 3301, Flame Pillar]
type = Helper
trigger1 = AnimElem = 16
helpertype = Normal
stateno = 3305
ID = 3305
name = "Flame Pillar"
postype = p1
pos = 0,0
size.xscale = 0.5
size.yscale = 0.45
ownpal = 1

[State 3300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1