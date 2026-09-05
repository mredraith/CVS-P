;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;Shinkuu Gadouken
[StateDef 3000]
type = S
physics = N
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
trigger1 = Time = 3
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

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -25, -93
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000,0
channel = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3000,1
channel = 0

[State 1000, Raijinken sound effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,1
channel = 1

[State 3000, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 3005
ID = 3005
name = "Raikoken Projectile"
posType = P1
pos = 60, -65
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 3000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;MAX Shinkuu Gadouken
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

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 0

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
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

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

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -25, -93
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000,0
channel = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3000,1
channel = 0

[State 1000, Raijinken sound effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,1
channel = 1

[State 3000, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 3055
ID = 3005
name = "Raikoken Projectile"
posType = P1
pos = 60, -65
size.xScale = .55
size.yScale = .55
ownPal = 1

[State 3000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Haoh Gadouken
[StateDef 3060]
type = S
physics = S
moveType = A
anim = 3060
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 0

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
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

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

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 1, -76
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3060,0
channel = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3000,1
channel = 0

[State 1000, Raijinken sound effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,1
channel = 1

[State 3001, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = -5

[State 1100, VelAdd]
type = VelAdd
triggerAll = vel x <= 0
trigger1 = AnimElemTime(5) > 2
x = 0.78125

[State 1100, VelSet]
type = VelSet
trigger1 = vel x > 0
x = 0

[State 3000, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 3065
ID = 3065
name = "Raikoken Projectile"
posType = P1
pos = 40, -65
size.xScale = .55
size.yScale = .55
ownPal = 1

[State 3000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Koryurekka
[StateDef 3100]
type = S
physics = N
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
trigger1 = Time = 3
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

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 19, -48
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3000, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3100,0
channel = 0

[State 3000, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 3100,1
channel = 0

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 4

[State 3000, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 3000, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 41,0
channel = 3

[State 3000, VelAdd]
type = VelMul
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(7) < 0
x = 0.93125

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 3000, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1,2
channel = 5

[State 3000, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 15
value = 41,0
channel = 7

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElemTime(11) = 0
y = -12

[State 3000, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(11) > 1
y = 0.67

[State 3000, Dust Helper]
type = Helper
trigger1 = AnimElemTime(11) = 0
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryureppa Dust (Air)"
posType = P1
ownPal = 1

[State 3000, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 11
stateType = A
physics = N

[State 3000, Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 54 < 7, 7, fvar(11) * 54)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 22
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 51), var(36) := -66
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 22
air.hitTime = 120
ground.velocity = 0
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -101
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, Hit 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 10
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 54 < 7, 7, fvar(11) * 54)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 8,8
guard.pauseTime = 8,8
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 22
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 51), var(36) := -66
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3000, Hit 6]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 11
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 8,8
guard.pauseTime = 8,8
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 22
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -101
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(13) >= 0
moveType = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101



;MAX Koryurekka
[StateDef 3150]
type = S
physics = N
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
trigger1 = Time = 3
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

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 19, -48
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3000, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3100,0
channel = 0

[State 3000, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 3100,1
channel = 0

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 8

[State 3000, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 3000, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 41,0
channel = 3

[State 3000, VelAdd]
type = VelMul
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(7) < 0
x = 0.93125

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 3000, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1,2
channel = 5

[State 3000, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 15
value = 41,0
channel = 7

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElemTime(11) = 0
y = -12

[State 3000, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(11) > 1
y = 0.67

[State 3000, Dust Helper]
type = Helper
trigger1 = AnimElemTime(11) = 0
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryureppa Dust (Air)"
posType = P1
ownPal = 1

[State 3000, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 11
stateType = A
physics = N

[State 3000, Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 59 < 7, 7, fvar(11) * 59)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 22
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -2.5, -7.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 51), var(36) := -66
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 4 || AnimElem = 5
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 22
air.hitTime = 120
ground.velocity = 0
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -7.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -101
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, Hit 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 10
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 59 < 7, 7, fvar(11) * 59)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 8,8
guard.pauseTime = 8,8
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 22
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 51), var(36) := -66
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3000, Hit 6]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 11 || AnimElem = 12
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 8,8
guard.pauseTime =8,8
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 22
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -101
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(13) >= 0
moveType = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101



;Hisshou Buraiken
[StateDef 3200]
type = S
physics = N
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
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
trigger1 = Time = 3
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

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 10, -69
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = !Time
value = 3200,0
channel = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3200,1
channel = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 25
value = 3200,2
channel = 0

[State 3200, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 25
value = 1,2

[State 3200, Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 26 < 7, 7, fvar(11) * 26)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 34
guard.hittime = (34) - 6
ground.slideTime = 34
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5 + 1, -6.5625/2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Hit 3]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 26 < 7, 7, fvar(11) * 26)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 34
guard.hittime = (34) - 6
ground.slideTime = 34
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5 + 1, -6.5625/2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 9 || AnimElem = 10
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 26 < 7, 7, fvar(11) * 26)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 34
guard.hittime = (34) - 6
ground.slideTime = 34
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5 + 1, -6.5625/2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 103), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Hit 4]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 15
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 26 < 7, 7, fvar(11) * 26)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 34
guard.hittime = (34) - 6
ground.slideTime = 34
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5 + 1, -6.5625/2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 86), var(36) := -86
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Hit 4]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 21
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 26 < 7, 7, fvar(11) * 26)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 34
guard.hittime = (34) - 6
ground.slideTime = 34
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5 + 1, -6.5625/2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -6
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 14
trigger3 = AnimElem = 20
value = 1,5

[State 3200, Jump sound]
type = PlaySnd
trigger1 = AnimElem = 26
value = 40,0
channel = 1

[State 3200, Dust Helper]
type = Helper
trigger1 = AnimElem = 26
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shippu Jinraikyaku Dust (Air)"
posType = P1
ownPal = 1

[State 3200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 26
stateType = A
physics = N

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElemTime(26) = 1
x = 7.5

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElem = 26
y = -12

[State 3200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(26) > 0 && vel x >= 0
x = -0.48828125

[State 3200, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(26) > 0
y = 0.57

[State 3200, Hit 5]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 25
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 34
guard.hittime = (34) - 6
ground.slideTime = 34
air.hitTime = 120
ground.velocity = -5,-11.4375
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5, -11.4375
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(27) >= 0
moveType = I

[State 3200, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101


;MAX Hisshou Buraiken
[StateDef 3250]
type = S
physics = N
moveType = A
anim = 3250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
trigger1 = Time = 3
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

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 10, -69
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = !Time
value = 3200,0
channel = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3200,1
channel = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 34
trigger2 = AnimElem = 39
value = 1200,0
channel = 0
[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 37
value = 4,1
channel = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 43
value = 3200,2
channel = 0

[State 3200, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 15 || AnimElem = 19
trigger3 = AnimElem = 37
trigger4 = AnimElem = 35
value = 1,2

[State 3200, Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 34
guard.hittime = (34) - 6
ground.slideTime = 34
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5 + 1, -6.5625/2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 11 || AnimElem = 12
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 34
guard.hittime = (34) - 6
ground.slideTime = 34
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5 + 1, -6.5625/2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 103), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Hit 3]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 16 || AnimElem = 20
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 34
guard.hittime = (34) - 6
ground.slideTime = 34
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5 + 1, -6.5625/2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Hit 4]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 27
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 34
guard.hittime = (34) - 6
ground.slideTime = 34
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5 + 1, -6.5625/2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -83
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Hit 4]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 34
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 34
guard.hittime = (34) - 6
ground.slideTime = 34
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5 + 1, -6.5625/2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 95), var(36) := -8
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Hit 4]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 37
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 34
guard.hittime = (34) - 6
ground.slideTime = 34
air.hitTime = 120
ground.velocity = 5,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5 + 1, -6.5625/2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 102), var(36) := -61
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Hit 4]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 39
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 34
guard.hittime = (34) - 6
ground.slideTime = 34
air.hitTime = 120
ground.velocity = 1,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5 + 1, -6.5625/2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 102), var(36) := -61
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 25
trigger3 = AnimElem = 33
value = 1,5

[State 3200, Jump sound]
type = PlaySnd
trigger1 = AnimElem = 44
value = 40,0
channel = 1

[State 3200, Dust Helper]
type = Helper
trigger1 = AnimElem = 44
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shippu Jinraikyaku Dust (Air)"
posType = P1
ownPal = 1

[State 3200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 44
stateType = A
physics = N

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElemTime(44) = 1
x = 7.5

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElem = 44
y = -12

[State 3200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(44) > 0 && vel x >= 0
x = -0.48828125

[State 3200, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(44) > 0
y = 0.57

[State 3200, Hit 5]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 43
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 8,8
guard.pauseTime = 8,8
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 34
guard.hittime = (34) - 6
ground.slideTime = 34
air.hitTime = 120
ground.velocity = -3.5, -6
ground.cornerPush.velOff = 0
guard.velocity = -3.5
guard.cornerPush.velOff = 0
air.velocity = -3.5, -6
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
[State 3200, Final Hit (Opponent in front)]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 44
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 8,8
guard.pauseTime = 8,8
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -5,-11.4375
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5, -11.4375
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(45) >= 0
moveType = I

[State 3200, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101

;Shissou Buraiken
[StateDef 3300]
type=S
physics=S
movetype=A
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

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

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
var(17) = 47

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
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 1, -76
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0


[State 3300, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100,0
channel = 0

[State 3100, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1200,1
channel = 1

[State 3100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 4
StateType = A
physics = N

[State 3100, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 10
y = -2

[State 3100, Gravity]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 0.15625

[State 40, Dust]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 8103
ID = 8100
name = "Jump Dust"
postype = p1
pauseMoveTime = 255
superMoveTime = 255
ownpal = 1

[State 200, Hit]
type = hitdef
trigger1 = !var(16) && var(15) < 1
trigger1 = animelem = 4
ID = 3300
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 0, 0
getpower = 0, 0
givepower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = High
ground.hittime = 12
guard.hittime = (12) - 6
ground.slidetime = 12
air.hittime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30), var(36) := -51
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
p2Facing = 1

[State 3100, TargetState]
type = TargetState
trigger1 = NumTarget(3300)
trigger1 = MoveHit && Target, Alive
value = 3315
ID = 3300
ignoreHitPause = 1
persistent = 0

[State 3100, ChangeState]
type = ChangeState
trigger1 = NumTarget(3300)
trigger1 = MoveHit && Target, Alive
value = 3310

[State 3100, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3305

[State 3300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Landing (Missed)
[StateDef 3305]
type = A
anim = 3305
physics = N
moveType = I

[State 3105, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3105, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 1100, VelSet]
type = VelSet
trigger1 = !Time
x = 8

[State 1100, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(1) > 1 && AnimElemTime(9) < 1
x = -0.28125

[State 1100, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 800, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 1
value = 800,0
channel = 0

[State 3105, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 101, Stopping Sound]
type = PlaySnd
trigger1 = !Time
value = 101,0

[State 101, Skid Dust]
type = Explod
trigger1 = !Time
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 3105, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1530, Hitting the floor sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = F7,0
channel = 3

[State 1530, Hitting the floor effect]
type = Explod
trigger1 = AnimElem = 9
anim = F60
sprPriority = -10
posType = P1

[State 210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
stateType = S

[State 3105, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Success
[StateDef 3310]
type = S
anim = 3310
physics = N
moveType = A
velSet = 0,0

[State 3110, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3110, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3110, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(82) < 0
pos = 50,0

[State 3110, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(82) < 0
edge = 80,0

[State 3110, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3110, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3200,1
channel = 0

[State 3110, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 40
value = 730,1
channel = 0

[State 3110, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 82
value = 3200,2
channel = 0

[State 3110, LP Woosh Sound]
type = PlaySnd
trigger1 = !Time || AnimElem = 6 || AnimElem = 11
value = 1,0

[State 3110, MP Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 47
value = 1,1

[State 3110, HP Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 40 || AnimElem = 62 || AnimElem = 72 || AnimElem = 79
value = 1,2

[State 3110, LK Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 16
value = 1,3

[State 3110, MK Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 33
value = 1,4

[State 3110, HK Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 25 || AnimElem = 56
value = 1,5

[State 3110, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 90
value = 1,2
channel = 1

[State 3110, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 83
value = 40,0
channel = 4

[State 3110, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(83) >= 0
stateType = A
physics = N

[State 3110, Dust Helper]
type = Helper
trigger1 = AnimElem = 83
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3110, VelSet]
type = VelSet
trigger1 = AnimElem = 83
x = 5.124938
y = -10.5

[State 3110, VelMul]
type = VelMul
trigger1 = AnimElemTime(83) > 6
x= 0.854156

[State 3110, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(83) > 6
y = 0.56

[State 3110, Hit Sound]
type = Null
trigger1 = AnimElem = 4 || AnimElem = 15 || AnimElem = 19 || AnimElem = 36 || AnimElem = 38 || AnimElem = 44 || AnimElem = 55 || AnimElem = 59 || AnimElem = 76 || AnimElem = 78
trigger1 = var(31) := 2
trigger2 = AnimElem = 10 || AnimElem = 11 || AnimElem = 26 || AnimElem = 33 || AnimElem = 50 || AnimElem = 51 || AnimElem = 66 || AnimElem = 73 ;|| AnimElem = 11
trigger2 = var(31) := 5

[State 3110, Spark XY]
type = Null
trigger1 = AnimElem = 4 || AnimElem = 44
trigger1 = var(35) := 95 || var(36) := -42
trigger2 = AnimElem=10||AnimElem=11||AnimElem=50||AnimElem=51
trigger2 = var(35) := 84 || var(36) := -53
trigger3 = AnimElem=15||AnimElem=19||AnimElem=55
trigger3 = var(35) := 55 || var(36) := -53
trigger4 = AnimElem = 26||AnimElem = 86||AnimElem=59
trigger4 = var(35) := 87 || var(36) := -86
trigger5 = AnimElem = 33||AnimElem = 73
trigger5 = var(35) := 95 || var(36) := -10
trigger6 = AnimElem = 36||AnimElem = 76
trigger6 = var(35) := 65 || var(36) := -54
trigger7 = AnimElem = 38||AnimElem = 78
trigger7 = var(35) := 65 || var(36) := -74

[State 3110, HitDef: High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem=10||AnimElem=11||AnimElem=26||AnimElem=38||AnimElem=50||AnimElem=51||AnimElem=56||AnimElem=66||AnimElem=78
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 18 < 7, 4, fvar(11) * 18)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0,0
guard.pauseTime = 0,0
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
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0
p2Facing = 1

[State 3110, HitDef: Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem=4||AnimElem=15||AnimElem=19||AnimElem=33||AnimElem=36||AnimElem=44||AnimElem=55||AnimElem=59||AnimElem=73||AnimElem=76
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 20 < 7, 4, fvar(11) * 20)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0,0
guard.pauseTime = 0,0
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
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0
p2Facing = 1

[State 3110, Koho Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 83
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 24,24
guard.pauseTime = 24,24
animType = Back
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3.06, -13.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -3.06, -13.81
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 7)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3110, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 83
value = 3300,2
[State 5201, Final Hit FX]
type = Helper
trigger1 = AnimElem = 83
helperType = Normal
stateNo = 3120
ID = 8200
name = "Final Hit FX"
posType = P1
pos = 41,-92
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3110, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(84) >= 0
moveType = I

[State 3110, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3311

;Landing
[StateDef 3311]
type = S
anim = 3311
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

[State 1101, Landing Sound]
type = PlaySnd
trigger1 = AnimElem=4
value = 3300,1

[State 1030, EX FX]
type = Explod
trigger1 = AnimElem=4
anim = 8210
sprPriority = 3
posType = P1
pos = -5, -86
scale = 0.2, 0.2
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Target
[StateDef 3315]
type = S
moveType = H
physics  = N
velSet = 0,0

[State 3115, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3115, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3115, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5012

[State 3115, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 3115, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 3316


;Sliding
[StateDef 3316]
type = S
movetype = H
physics = S

[State 3116, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
value = 5017

[State 3116, DefenceMulSet]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 3116, SelfState]
type = SelfState
trigger1 = HitOver
value = 0
ctrl = 1

;Otoko Michi
[StateDef 3400]
type=S
physics=S
movetype=A
anim = 3400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

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
var(17) = 47

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
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 1, -76
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3300, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3400,0
channel = 0

[State 3500, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(3) < 0
x = 3.5

[State 3500, HitDef]
type = HitDef
trigger1 = AnimElemTime(2) >= 0
trigger1 = !var(38)
attr = S, HT
hitFlag = M-
priority = 4, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 3401

[State 101, Stopping Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 101,0

[State 101, Skid Dust]
type = Explod
trigger1 = AnimElem = 3
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 3300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; Otoko Michi Success
[Statedef 3401]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = 0
ctrl = 0
anim = 3401
sprpriority = 5
velset = 0, 0

[State 3501, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3405

[State 3401, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 3401, TargetBind]
type = TargetBind
trigger1 = !time
time = 2
pos = 48, 0

[State 3401, TargetBind]
type = TargetBind
trigger1 = animelem = 3
time = 2
pos = 32, 0

[State 3401, TargetBind]
type = TargetBind
trigger1 = animelem = 4
time = 2
pos = 24, 0

[State 3401, SprPriority]
type = SprPriority
trigger1 = animelem = 4
value = -2

[State 3401, Flash]
type = BGPalFX
trigger1 = animelemtime(4) > 0 && animelemtime(5) < 0
time = 2
mul = 256 - (animelemtime(4) * 2), 256 - (animelemtime(4) * 2), 256 - (animelemtime(4) * 2)

[State 3401, Flash]
type = PalFX
trigger1 = animelemtime(4) > 0 && animelemtime(5) < 0
time = 2
add = 0 + (animelemtime(4) * 2), 0 + (animelemtime(4) * 2), 0 + (animelemtime(4) * 2)

[State 3401, Flash]
type = BGPalFX
trigger1 = animelem = 5
time = 16
add = 256, 256, 256
mul = 256, 256 ,256
sinadd = -256, -256, -256, 64

[State 187, Dust]
type = explod
trigger1 = time > 46 && time <= 145
trigger1 = ifelse(animelemtime(4) >= 0, !(time % 12), !(time % 9))
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
pos = 0, 0
ownpal = 1
scale = 0.6,0.6

[State 187, Shake]
type = envshake
trigger1 = time > 46 && time <= 145 && !(time % 12)
time = 12
freq = 120
ampl = ifelse(animelemtime(4) >= 0, 3, 4)

[State 3401, snd]
type = PlaySnd
trigger1 = animelem = 4
value = 730, 1
channel = 0
[State 3401, snd]
type = PlaySnd
trigger1 = animelem = 5
value = 3400, 2
channel = 0

[State 3401, snd]
type = PlaySnd
trigger1 = animelem = 5
value = 3400, 1

[State 187, Snd]
type = playsnd
trigger1 = animelem = 4
value = 3400, 3
channel = 4
loop = 1

[State 187, Snd]
type = stopsnd
trigger1 = animelem = 5
channel = 4

[State 3401, VelSet]
type = VelSet
trigger1 = animelem = 5
x = -5
y = -16

[State 3401, EnvShake]
type = EnvShake
trigger1 = animelem = 5
time = 64
freq = 128
ampl = 8
ignorehitpause = 1

[State 3401, snd]
type = PlaySnd
trigger1 = animelem = 5
value = 2, 6
[State 820, Hit Spark 1]
type = Helper
trigger1 = NumTarget && AnimElem = 5
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = 20, -62
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3401, Explosion]
type = Explod
trigger1 = animelem = 5
anim = 3410
ID = 3410
pos = 0, 10
postype = p1
facing = 1
removetime = 18
scale = 1, 1.25
ownpal = 1

[State 3401, LifeAdd]
type = lifeset
trigger1 = animelem = 5
value = 1
;kill = 0

[State 810, HitAdd]
type = HitAdd
trigger1 = NumTarget && animelem = 5
value = 1

[State 3401, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 5
value = floor(ifElse(553 * fvar(11) < 7, -7, -553 * fvar(11)))
kill = 1

[State 3401, VelAdd]
type = VelAdd
trigger1 = animelemtime(5) > 0
y = 0.45

[State 3401, End]
type = ChangeState
Trigger1 = animelemtime(6) > 0
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;Otoko Michi Target
[Statedef 3405]
type = A
movetype = H
physics = N
velset = 0, 0
poweradd = 40
sprpriority = 2

[State 3401, Flash]
type = PalFX
trigger1 = animelemtime(4) > 0 && animelemtime(5) < 0
time = 2
add = 0 + (animelemtime(4) * 2), 0 + (animelemtime(4) * 2), 0 + (animelemtime(4) * 2)

[State 4305, ChangeAnim]
type = ChangeAnim2
trigger1  = !time
value = 3405

[State 4305, VelSet]
type = VelSet
trigger1 = animelem = 5
x = -5
y = -16

[State 4305, Gravity]
type = VelAdd
Trigger1 = animelemtime(5) > 0
y = 0.45

[State 4305, End]
type = SelfState
Trigger1 = animelemtime(6) > 0
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;Chouhatsu Densetsu
[StateDef 3500]
type = S
physics = N
moveType = A
anim = 3500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
trigger1 = Time = 3
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

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 10, -40
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 133
StateType = A
physics = N

[State 3500, Voice]
type = Playsnd
trigger1 = AnimElem = 1
value = 190,0
channel = 0
[State 3500, Voice]
type = Playsnd
trigger1 = AnimElem = 22
value = 195,0
channel = 0
[State 3500, Voice]
type = Playsnd
trigger1 = AnimElem = 42
value = 196,0
channel = 0
[State 3500, Voice]
type = Playsnd
trigger1 = AnimElem = 62
value = 181,0
channel = 0
[State 3500, Voice]
type = Playsnd
trigger1 = AnimElem = 82
value = 710,0
channel = 0
[State 3500, Voice]
type = Playsnd
trigger1 = AnimElem = 108
value = 3500,1
channel = 0
[State 3500, Voice]
type = Playsnd
trigger1 = AnimElem = 131
value = 197,0
channel = 0

[State 3500, Voice]
type = Playsnd
trigger1 = AnimElem = 17 || AnimElem = 37 || AnimElem = 57 || AnimElem = 77 || AnimElem = 103 || AnimElem = 127
value = 110,0
channel = 1
[State 3500, Voice]
type = Playsnd
trigger1 = AnimElem = 22 || AnimElem = 42 || AnimElem = 62 || AnimElem = 82 || AnimElem = 108 || AnimElem = 130
value = 1,0
channel = 1

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 18 || AnimElem = 38 || AnimElem = 58 || AnimElem = 78 || AnimElem = 104 || AnimElem = 126
x = 5.027932

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 21 || AnimElem = 41 || AnimElem = 61 || AnimElem = 81 || AnimElem = 107 || AnimElem = 129
x = 0

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 131
x = 2
y = -9

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemTime(131) > 0
y = .5

[State 810, Push]
type = PlayerPush
trigger1 = AnimElemTime(18) > 0 && AnimElemTime(21) < 0
trigger2 = AnimElemTime(38) > 0 && AnimElemTime(41) < 0
trigger3 = AnimElemTime(58) > 0 && AnimElemTime(61) < 0
trigger4 = AnimElemTime(78) > 0 && AnimElemTime(81) < 0
trigger5 = AnimElemTime(104) > 0 && AnimElemTime(107) < 0
trigger6 = AnimElemTime(126) > 0 && AnimElemTime(129) < 0
value = 0

[State 810, Push]
type = turn
triggerall = P2dist X < 0
trigger1 = AnimElem = 22 || AnimElem = 42 || AnimElem = 62 || AnimElem = 82 || AnimElem = 108

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(131) > 0
value = 3505

;Landing
[StateDef 3505]
type = S
anim = 3505
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

[State 5201, Recover Sound]
type = PlaySnd
trigger1 = !Time
value = 3500,0

[State 5201, Flash]
type = PalFX
trigger1 = !Time
add = 255,255,255
sinAdd = -255,-255,-255,40
time = 10

[State 5201, Recover FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8200
ID = 8200
name = "Recover FX"
posType = P1
pos = -5,-66
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Power]
type = powerset
trigger1 = !Time && roundstate = 2
value = powermax

[State 1101, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 191, Kiss sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 183,1
channel = 0

[State 191, Voice]
type = PlaySnd
trigger1 = AnimElem = 23
value = 184,0
channel = 0

[State 1101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1