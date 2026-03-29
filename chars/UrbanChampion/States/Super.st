; ________________________________________________
;| Urban Champion by NovaMagnolia  			|
; 
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;---------------------------------------------------------------------------
; Urban Beatdown
[StateDef 3000]
type = S
physics = N
moveType = A
anim = 3000
ctrl = 0
velSet = 0, 0
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
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3000, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

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
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 43

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
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
pos = ceil(-15*const(size.xscale)), ceil(-25*const(size.yscale))
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
sound = s8500, (var(40) = 2)
darken = 0

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3000, Voice 1]
type = PlaySnd
trigger1 = time = 3
value = 3000, 0
channel = 0

[State 1200, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 0
channel = 3

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 13

[State 1200, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(9) < 0
x = -.65

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 9 || vel x < 0
x = 0

[State 3000, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
ID = 3000
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0, 0
getPower = 0, 0
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
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3000) > 1
ID = 3000
keepOne = 1
excludeID = 3000
ignoreHitPause = 1

[State 3000, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3000)
value = 3015
ID = 3000
ignoreHitPause = 1
persistent = 0

[State 3000, ChangeState]
type = ChangeState
trigger1 = NumTarget(3000)
trigger1 = MoveHit && Target, Alive
value = 3010

[State 3000, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact
value = 3000
elem = 8
persistent = 0
ignorehitpause = 1

[State 3000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Success
[StateDef 3010]
type = S
anim = 3010
physics = N
moveType = A
velSet = 0, 0

[State 3010, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(29) < 1
pos = 50 + (Target, const(size.ground.front)), 0

[State 3010, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(29) < 1
edge = 50 + (Target, const(size.ground.front)), 0

[State 3010, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 7 || AnimElem = 12 || AnimElem = 16 || AnimElem = 21 || AnimElem = 26 || AnimElem = 34
value = 1, 5
channel = 1

[State 3010, Punch Out Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 7 || AnimElem = 12 || AnimElem = 16 || AnimElem = 21 || AnimElem = 26 || AnimElem = 34
value = 3010, (AnimElem = 34)
channel = 0

[State 3010, Dodge Sound]
type = PlaySnd
trigger1 = AnimElem = 29
value = 1300, 0
channel = 0

[State 3010, Spark XY]
type = Null
trigger1 = AnimElem = 2
trigger1 = var(35) := 80 || var(36) := -46
trigger2 = AnimElem = 7
trigger2 = var(35) := 86 || var(36) := -72
trigger3 = AnimElem = 12
trigger3 = var(35) := 60 || var(36) := -45
trigger4 = AnimElem = 16
trigger4 = var(35) := 52 || var(36) := -78
trigger5 = AnimElem = 21
trigger5 = var(35) := 52 || var(36) := -25
trigger6 = AnimElem = 26
trigger6 = var(35) := 78 || var(36) := -60

[State 3010, HitDef: Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 2 || AnimElem = 12
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
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
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3010, HitDef: High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7 || AnimElem = 16 || AnimElem = 21 || AnimElem = 26
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
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
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3030, HitDef (Final Hit)]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 34
attr = S, HA
hitFlag = MAF
guardFlag = ;lol unblockable
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 12
getPower = 0, 0
givePower = 36, 36
pauseTime = 24, 24
guard.pauseTime = 24, 24
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -7.34375
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3302, 3]
type = PosAdd
trigger1 = AnimElem = 30
x = -20*const(size.xscale)

[State 3302, 4]
type = VelSet
trigger1 = AnimElem = 34
x = 8.93854748603

[State 1200, VelSet]
type = VelAdd
trigger1 = AnimElemTime(34) > 0 && AnimElemTime(37) < 0
x = -.65

[State 3302, 4]
type = VelSet
trigger1 = AnimElem = 37
x = 0

[State 3302, 5]
type = PosAdd
trigger1 = AnimElemTime(34) = 0 || AnimElemTime(34) = 1
x = 10*const(size.xscale)

[State 3302, 7]
type = Width
trigger1 = AnimElemTime(34) > 0 && AnimElemTime(36) < 0
value = ceil(10*const(size.xscale)),ceil(10*const(size.xscale))

[State 200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(34) >= 0 && AnimElemTime(35) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 3010
elem = 35
ignoreHitPause = 1

[State 3010, AI End]
type = ChangeState
trigger1 = AILevel >= 6
trigger1 = Cond(NumTarget,target,gethitvar(fall) = 1,enemynear,stateno = 5201)
trigger1 = !AnimTime
value = Cond((enemynear,BackEdgeBodyDist > 10 || p2bodydist x > 10),110,500)

[State 3010, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Target
[StateDef 3015]
type = S
moveType = H
physics  = N
velSet = 0, 0

[State 3015, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3015, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3015, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5002

[State 3015, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

;---------------------------------------------------------------------------
; MAX Urban Beatdown
[StateDef 3050]
type = S
physics = N
moveType = A
anim = 3050
ctrl = 0
velSet = 0, 0
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
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

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
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
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
pos = ceil(-15*const(size.xscale)), ceil(-25*const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, (var(40) = 2)
darken = 0

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3000, Voice 1]
type = PlaySnd
trigger1 = time = 3
value = 3000, 0
channel = 0

[State 1200, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 0
channel = 3

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 13

[State 1200, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) > 10 && AnimElemTime(9) < 0
x = -.65

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 9 || vel x < 0
x = 0

[State 3000, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
ID = 3050
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0, 0
getPower = 0, 0
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
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3050) > 1
ID = 3000
keepOne = 1
excludeID = 3050
ignoreHitPause = 1

[State 3000, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3050)
value = 3015
ID = 3050
ignoreHitPause = 1
persistent = 0

[State 3000, ChangeState]
type = ChangeState
trigger1 = NumTarget(3050)
trigger1 = MoveHit && Target, Alive
value = 3060

[State 3000, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact
value = 3050
elem = 8
persistent = 0
ignorehitpause = 1

[State 3000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Success
[StateDef 3060]
type = S
anim = 3060
physics = N
moveType = A
velSet = 0, 0

[State 3010, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(29) < 1
pos = 50 + (Target, const(size.ground.front)), 0

[State 3010, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(29) < 1
edge = 50 + (Target, const(size.ground.front)), 0

[State 3010, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 7 || AnimElem = 12 || AnimElem = 16 || AnimElem = 21 || AnimElem = 26
trigger2 = AnimElem = 29 || AnimElem = 31 || AnimElem = 33 || AnimElem = 35 || AnimElem = 37 || AnimElem = 39 || AnimElem = 46
value = 1, 5
channel = 1

[State 3010, Punch Out Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 7 || AnimElem = 12 || AnimElem = 16 || AnimElem = 21 || AnimElem = 26
trigger2 = AnimElem = 29 || AnimElem = 31 || AnimElem = 33 || AnimElem = 35 || AnimElem = 37 || AnimElem = 39 || AnimElem = 46
value = 3010, (AnimElem = 46)
channel = 0

[State 3010, Dodge Sound]
type = PlaySnd
trigger1 = AnimElem = 41
value = 1300, 0
channel = 0

[State 3010, Spark XY]
type = Null
trigger1 = AnimElem = 2
trigger1 = var(35) := 80 || var(36) := -46
trigger2 = AnimElem = 7
trigger2 = var(35) := 86 || var(36) := -72
trigger3 = AnimElem = 12
trigger3 = var(35) := 60 || var(36) := -45
trigger4 = AnimElem = 16
trigger4 = var(35) := 52 || var(36) := -78
trigger5 = AnimElem = 21
trigger5 = var(35) := 52 || var(36) := -25
trigger6 = AnimElem = 26
trigger6 = var(35) := 78 || var(36) := -60
trigger7 = AnimElem = 26
trigger7 = var(35) := 78 || var(36) := -60

[State 3010, HitDef: Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 2 || AnimElem = 12
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
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
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(33) := 8014)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3010, HitDef: High]
type = HitDef
triggerall = !var(16) && var(15) < 1
trigger1 = AnimElem = 7 || AnimElem = 16 || AnimElem = 21 || AnimElem = 26
trigger2 = AnimElem = 29 || AnimElem = 31 || AnimElem = 33 || AnimElem = 35 || AnimElem = 37 || AnimElem = 39
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
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
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3030, HitDef (Final Hit)]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 46
attr = S, HA
hitFlag = MAF
guardFlag = ;lol unblockable
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 12
getPower = 0, 0
givePower = 36, 36
pauseTime = 24, 24
guard.pauseTime = 24, 24
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -7.34375
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3302, 3]
type = PosAdd
trigger1 = AnimElem = 42
x = -20*const(size.xscale)

[State 3302, 4]
type = VelSet
trigger1 = AnimElem = 46
x = 8.93854748603

[State 1200, VelSet]
type = VelAdd
trigger1 = AnimElemTime(46) > 0 && AnimElemTime(49) < 0
x = -.65

[State 3302, 4]
type = VelSet
trigger1 = AnimElem = 49
x = 0

[State 3302, 5]
type = PosAdd
trigger1 = AnimElemTime(46) = 0 || AnimElemTime(46) = 1
x = 10*const(size.xscale)

[State 3302, 7]
type = Width
trigger1 = AnimElemTime(46) > 0 && AnimElemTime(48) < 0
value = ceil(10*const(size.xscale)),ceil(10*const(size.xscale))

[State 200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(46) >= 0 && AnimElemTime(47) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 3060
elem = 47
ignoreHitPause = 1

[State 3010, AI End]
type = ChangeState
trigger1 = AILevel >= 6
trigger1 = Cond(NumTarget,target,gethitvar(fall) = 1,enemynear,stateno = 5201)
trigger1 = !AnimTime
value = Cond((enemynear,BackEdgeBodyDist > 10 || p2bodydist x > 10),110,500)

[State 3010, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Scapegoat
[StateDef 3100]
type = S
physics = N
moveType = I
anim = 3100
ctrl = 0
velSet = 0, 0
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
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

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
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 43

[State 3100, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3100, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, Startup NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
value = SCA
time = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
value = , AA
time = 1

[State 3100, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 4
value = 195,0
channel = 0

[State 3100, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 4
value = 1,0
channel = 1

[State 3100, ReversalDef]
type = ReversalDef
trigger1 = !MoveHit && var(26) <= 0
trigger1 = AnimElem = 3
ID = 3100
attr = S, HT
reversal.attr = SCA, NA, SA, HA
pauseTime = 12, 12
sparkNo = -1
sparkXY = 0, 0
hitSound = S3, 0
fall = 1
fall.recover = 0
numHits = 0

[State 3100, Reversal Spark]
type = Helper
trigger1 = NumTarget(3100)
trigger1 = !(Target(3100), IsHelper) && MoveHit
helperType = Normal
stateNo = 8020
ID = 8000
name = "Spark"
postype = P1
pos = 5, -80
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
persistent = 0

[State 3100, TargetState]
type = TargetState
trigger1 = NumTarget(3100)
trigger1 = !(Target(3100), IsHelper) && MoveHit
value = 3115
ignoreHitPause = 1
persistent = 0

[State 3100, ChangeState]
type = ChangeState
trigger1 = NumTarget(3100)
trigger1 = !(Target(3100), IsHelper) && MoveHit
value = 3110

[State 3100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Success
[StateDef 3110]
type = S
anim = 3110
physics = N
moveType = A
velSet = 0, 0

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(10) = Cond(var(40) = 2,random > 500,random > 990)

[State 3110, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 3110, SuperPause FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = back
pos = 0, -75
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3110, SuperPause]
type = SuperPause
trigger1 = !Time
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,(var(40) = 2)
darken = 0

[State 3103, 5]
type = PlaySnd
trigger1 = !Time
value = S3100,var(10)
abspan = 0

[State 3103, 5]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1300,0
channel = 0

[State 3101, 1]
type = Helper
trigger1 = Time = 43
name = "Police Car"
ID = 3105
stateno = 3105
pos = -140,0
postype = back
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 3010, AI End]
type = ChangeState
trigger1 = AILevel >= 6
trigger1 = Cond(NumTarget,target,gethitvar(fall) = 1,enemynear,stateno = 5201)
trigger1 = !AnimTime
value = Cond((enemynear,BackEdgeBodyDist > 10 || p2bodydist x > 10),110,500)

[State 3100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Target
[StateDef 3115]
type = S
moveType = H
physics  = N
velSet = 0, 0

[State 3115, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3115, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 0, Offset]
type = Offset
trigger1 = 1
x = Const480p(-2)*(Time % 2 = 0)

[State 3115, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5010

[State 3115, FailSafe]
type = SelfState
trigger1 = Time >= 180
value = 5110

;---------------------------------------------------------------------------
; Flowerpot Crash
[StateDef 3200]
type = S
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 3100, AI Button Detect]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 2

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

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
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 43

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
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
pos = ceil(15*const(size.xscale)), ceil(-25*const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3200, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,(var(40) = 2)
darken = 0

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 41, 0
channel = 4

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = 110, 0
channel = 5

[State 3150, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Flowerpot Crash Dust"
posType = P1
ownPal = 1

[State 1200, Push Helper]
type = Helper
trigger1 = !NumHelper(3203) && AnimElemTime(3) >= 0
helperType = Normal
stateNo = 3203
ID = 3203
name = "Flowerpot Crash Pushbox"
posType = P1
size.ground.front = 18
size.ground.back = 18
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 193, 0
channel = 0

[State 3200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 1
x = ifElse(var(10) = 2, 7.82122905028, ifElse(var(10) = 1, 5.58659217877, 3.35195530726))
y = -7.5

[State 1200, PosAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 1
y = 0.5859375

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) >= 0
value = , AP
time = 1

[State 3200, Test End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3205


;Landing
[StateDef 3205]
type = S
physics = N
moveType = A
anim = 3205
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1201, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1200, Jump Land Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 4

[State 1201, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 193, 1
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 2
channel = 1

[State 1201, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !MoveContact && !MoveReversed
trigger1 = AnimElem = 1
ID = 3200
attr = S, HA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 126 < 7, 7, fvar(11) * 126)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -ifElse(var(56), 5.58659217877, 4.40734669781), ifElse(var(56), -5.78125, 0)
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(var(56), 1, 0)
air.fall = 1
fall.recover = ifElse(var(56), 1, 0)
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 67), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1705, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 3205
elem = 2
ignoreHitPause = 1

[State 1201, AI Overhead Cheat] ;Shhhhh don't tell anyone
type = AssertSpecial
trigger1 = enemynear,AILevel
flag = unguardable
ignoreHitPause = 1

[State 1201, TargetDrop]
type = TargetDrop
triggerall = !var(56)
trigger1 = NumTarget(3200) > 1
ID = 3200
keepOne = 1
excludeID = 3200
ignoreHitPause = 1

[State 1330, EX Flowerpot Drop Crumple Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(3200)
trigger1 = !(Target(3200), StateType = A)
var(56) = 1
persistent = 0

[State 1201, TargetState]
type = TargetState
triggerall = !var(56)
trigger1 = MoveHit && NumTarget(3200)
trigger1 = !(Target(3200), Time) && !(Target(3200), StateType = A)
value = 5450
ID = 3200
ignoreHitPause = 1

[State 1201, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 1201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; MAX Flowerpot Crash
[StateDef 3250]
type = S
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3250, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3250, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3250, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3250, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3250, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

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

[State 3250, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3250, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(15*const(size.xscale)), ceil(-25*const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3250, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, (var(40) = 2)
darken = 0

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 41, 0
channel = 4

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = 110, 0
channel = 5

[State 3150, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Flowerpot Crash Dust"
posType = P1
ownPal = 1

[State 1200, Push Helper]
type = Helper
trigger1 = !NumHelper(3203) && AnimElemTime(3) >= 0
helperType = Normal
stateNo = 3203
ID = 3203
name = "Flowerpot Crash Pushbox"
posType = P1
size.ground.front = 18
size.ground.back = 18
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 193, 0
channel = 0

[State 3200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 1
x = 5.5865921787
y = -7.5

[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 1
y = 0.5859375

[State 3150, VelSet]
type = VelSet
triggerAll = AnimElemTime(3) > 1
trigger1 = !AILevel
;command = "holdfwd"
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
trigger2 = AILevel && P2BodyDist x >= 50
x = 7.82122905028

[State 3150, VelSet]
type = VelSet
triggerAll = AnimElemTime(3) > 1
trigger1 = !AILevel
;command = "holdback"
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
trigger2 = AILevel && P2BodyDist x < 50
x = 3.35195530726

[State 3150, VelSet]
type = VelSet
triggerAll = AnimElemTime(3) > 1
trigger1 = !AILevel
;command != "holdfwd"
trigger1 = !((ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004)))
;command != "holdback"
trigger1 = !((ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006)))
x = 5.58659217877

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) >= 0
value = , AP
time = 1

[State 3250, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3255

;Landing
[StateDef 3255]
type = S
physics = N
moveType = A
anim = 3205
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1201, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1200, Jump Land Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 4

[State 1201, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 193, 1
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 2
channel = 1

[State 1201, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !MoveContact && !MoveReversed
trigger1 = AnimElem = 1
ID = 3250
attr = S, HA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 218 < 7, 7, fvar(11) * 218)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -4.46927374302, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = ifElse(var(56), 1, 0)
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 67), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1705, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 3205
elem = 2
ignoreHitPause = 1

[State 1201, AI Overhead Cheat] ;Shhhhh don't tell anyone
type = AssertSpecial
trigger1 = enemynear,AILevel
flag = unguardable
ignoreHitPause = 1

[State 1201, TargetDrop]
type = TargetDrop
triggerall = !var(57)
trigger1 = NumTarget(3250) > 1
ID = 3200
keepOne = 1
excludeID = 3250
ignoreHitPause = 1

[State 1330, EX Flowerpot Drop Crumple Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(3250)
trigger1 = !(Target(3250), StateType = A)
var(57) = 1
persistent = 0

[State 1201, TargetState]
type = TargetState
triggerall = !var(57)
trigger1 = MoveHit && NumTarget(3250)
trigger1 = !(Target(3250), Time) && !(Target(3250), StateType = A)
value = 55030
ID = 3250
ignoreHitPause = 1

[State 1201, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 3010, AI End]
type = ChangeState
trigger1 = AILevel >= 6
trigger1 = Cond(NumTarget,target,gethitvar(fall) = 1,enemynear,stateno = 5201)
trigger1 = !AnimTime
value = 1000

[State 1201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Sewer Brawl
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3300
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3300, Button Detect Reset]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
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
trigger1 = AnimElemTime(6) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = -22, -68
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, (var(40) = 2)
darken = 0

[State 3310, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1200, 0
channel = 0

[State 3300, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 1
x = 10.0558659218

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 1 && AnimElemTime(5) < 0
x = 0.39280726257

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
x = 0

[State 1010, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 5
ID = 3300
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 22
air.hitTime = 120
ground.velocity = -1.34468534822, -14.375
ground.cornerPush.velOff = 0
guard.velocity = -11.3689709948
guard.cornerPush.velOff = 0
air.velocity = -1.34468534822, -14.375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 255
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -78
kill = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3300) > 1
ID = 3300
keepOne = 1
excludeID = 3300
ignoreHitPause = 1

[State 3310, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3300)
value = 3315
ID = 3300
ignoreHitPause = 1
persistent = 0

[State 3300, ChangeState]
type = ChangeState
trigger1 = NumTarget(3300)
trigger1 = MoveHit && Target, Alive
value = 3310
ignoreHitPause = 1
persistent = 0

[State 3300, End]
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
velSet = 0, 0
sprPriority = 1

[State 3010, TargetBind]
type = TargetBind
trigger1 = NumTarget && !time
pos = 25 + (Target, const(size.ground.front)), 0
ignorehitpause = 1

[State 3010, Width]
type = Width
trigger1 = time < 12;AnimElemTime(18) < 0
edge = ceil((100/12)*time),0

[State 3310, Lost Target]
type = ChangeState
trigger1 = !NumTarget
value = 0
ctrl = 1

[State 3310, Woosh]
type = PlaySnd
trigger1 = AnimElem = 10 || AnimElem = 19 || AnimElem = 20
value = 1, 2 + 3*(AnimElem = 10)
channel = 1

[State 3310, Opponent Falling SFX]
type = PlaySnd
trigger1 = Cond(NumTarget,target,stateno = 3316 && target,vel y >= 0,0)
value = 3300, 0
persistent = 0

[State 3305, 1]
type = Helper
trigger1 = Time = 12
name = "Manhole"
ID = 3305
stateno = 3305
pos = ceil(72*const(size.xscale)),ceil(3*const(size.yscale))
facing = 1
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 4001, 5]
type = Explod
trigger1 = AnimElem = 13
anim = 3306
ID = 3306
pos = -32,-83
postype = p1
vel = -4.7*const(size.xscale),-7.3*const(size.yscale)
accel = 0,.44*const(size.yscale)
facing = 1
vfacing = 1
bindtime = 1
removetime = 100
scale = 1*const(size.xscale),1*const(size.yscale)
sprpriority = -4

[State 3310, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 18
value = 41, 0
channel = 4

[State 3310, Dust Helper]
type = Helper
trigger1 = AnimElem = 18
helperType = Normal
stateNo = 8100
ID = 8100
name = "Sewer Brawl Dust"
posType = P1
ownPal = 1

[State 3310, 1]
type = VelSet
trigger1 = AnimElem = 18
x = 2.03*const(size.xscale)
y = -7.1*const(size.yscale)

[State 3310, 2]
type = VelAdd
trigger1 = AnimElemTime(18) >= 0 && Pos Y < 0
y = .44*const(size.yscale)

[State 3310, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3311

;Yooooo Raging Demon
[StateDef 3311]
type = S
anim = 3311
physics = N
moveType = A
velSet = 0, 0

[State 3317, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 1351, Ground Impact SFX]
type = PlaySnd
trigger1 = time = 10
value = 2,820

[State 1351, Ground Impact EnvShake]
type = EnvShake
trigger1 = time = 10
time = 18
freq = 90
ampl = -15

[State 3610, Fade Out Helper]
type = Helper
trigger1 = !Time && !NumHelper(3613)
trigger1 = teammode != simul
helpertype = Normal
stateNo = 3613
ID = 3613
name = "Fade Out"
posType = P1

[State 3300, Button Detect Reset]
type = VarSet
trigger1 = time = 12 && NumHelper(3613)
var(10) = 1

[State 3411, AfterImage Off]
type = AfterImage
trigger1 = time = 12
time = 1

[State 3610, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 8
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 16
trigger5 = AnimElemTime(2) = 20
trigger6 = AnimElemTime(2) = 24
trigger7 = AnimElemTime(2) = 28
trigger8 = AnimElemTime(2) = 32
trigger9 = AnimElemTime(2) = 36
trigger10 = AnimElemTime(2) = 40
trigger11 = AnimElemTime(2) = 44
trigger12 = AnimElemTime(2) = 48
trigger13 = AnimElemTime(2) = 52
trigger14 = AnimElemTime(2) = 56
value = floor(ifElse(14 * fvar(11) < 7, -7, -14 * fvar(11)))
kill = 0

[State 3610, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 3
value = floor(ifElse(98 * fvar(11) < 7, -7, -98 * fvar(11)))
kill = 0

[State 3610, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 8
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 16
trigger5 = AnimElemTime(2) = 20
trigger6 = AnimElemTime(2) = 24
trigger7 = AnimElemTime(2) = 28
trigger8 = AnimElemTime(2) = 32
trigger9 = AnimElemTime(2) = 36
trigger10 = AnimElemTime(2) = 40
trigger11 = AnimElemTime(2) = 44
trigger12 = AnimElemTime(2) = 48
trigger13 = AnimElemTime(2) = 52
trigger14 = AnimElemTime(2) = 56
trigger15 = AnimElem = 3
value = 36

[State 3610, HitAdd]
type = HitAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 8
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 16
trigger5 = AnimElemTime(2) = 20
trigger6 = AnimElemTime(2) = 24
trigger7 = AnimElemTime(2) = 28
trigger8 = AnimElemTime(2) = 32
trigger9 = AnimElemTime(2) = 36
trigger10 = AnimElemTime(2) = 40
trigger11 = AnimElemTime(2) = 44
trigger12 = AnimElemTime(2) = 48
trigger13 = AnimElemTime(2) = 52
trigger14 = AnimElemTime(2) = 56
trigger15 = AnimElem = 3
value = 1

[State 3610, HitAdd]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 8
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 16
trigger5 = AnimElemTime(2) = 20
trigger6 = AnimElemTime(2) = 24
trigger7 = AnimElemTime(2) = 28
trigger8 = AnimElemTime(2) = 32
trigger9 = AnimElemTime(2) = 36
trigger10 = AnimElemTime(2) = 40
trigger11 = AnimElemTime(2) = 44
trigger12 = AnimElemTime(2) = 48
trigger13 = AnimElemTime(2) = 52
trigger14 = AnimElemTime(2) = 56
trigger15 = AnimElem = 3
var(13) = 1

[State 3610, Juggle]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 8
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 16
trigger5 = AnimElemTime(2) = 20
trigger6 = AnimElemTime(2) = 24
trigger7 = AnimElemTime(2) = 28
trigger8 = AnimElemTime(2) = 32
trigger9 = AnimElemTime(2) = 36
trigger10 = AnimElemTime(2) = 40
trigger11 = AnimElemTime(2) = 44
trigger12 = AnimElemTime(2) = 48
trigger13 = AnimElemTime(2) = 52
trigger14 = AnimElemTime(2) = 56
trigger15 = AnimElem = 3
var(15) = 1
ignoreHitPause = 1

[State 3610, Hit Sound]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 8
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 16
trigger5 = AnimElemTime(2) = 20
trigger6 = AnimElemTime(2) = 24
trigger7 = AnimElemTime(2) = 28
trigger8 = AnimElemTime(2) = 32
trigger9 = AnimElemTime(2) = 36
trigger10 = AnimElemTime(2) = 40
trigger11 = AnimElemTime(2) = 44
trigger12 = AnimElemTime(2) = 48
trigger13 = AnimElemTime(2) = 52
trigger14 = AnimElemTime(2) = 56
trigger15 = AnimElem = 3
value = 2, ifElse((AnimElem = 3), 3610, 2)
channel = 2

[State 3610, Hit Spark]
type = Helper
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 8
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 16
trigger5 = AnimElemTime(2) = 20
trigger6 = AnimElemTime(2) = 24
trigger7 = AnimElemTime(2) = 28
trigger8 = AnimElemTime(2) = 32
trigger9 = AnimElemTime(2) = 36
trigger10 = AnimElemTime(2) = 40
trigger11 = AnimElemTime(2) = 44
trigger12 = AnimElemTime(2) = 48
trigger13 = AnimElemTime(2) = 52
trigger14 = AnimElemTime(2) = 56
trigger15 = AnimElem = 3
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P2
pos = ((Random % 25) * ifElse(Random < 500, 1, -1)),  - ((Random % 25) * ifElse(Random < 500, 1, -1))
facing = ifElse(Random % 2, -1, 1)
ownPal = 1
onTop = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3610, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 8
trigger3 = AnimElemTime(2) = 12
trigger4 = AnimElemTime(2) = 16
trigger5 = AnimElemTime(2) = 20
trigger6 = AnimElemTime(2) = 24
trigger7 = AnimElemTime(2) = 28
trigger8 = AnimElemTime(2) = 32
trigger9 = AnimElemTime(2) = 36
trigger10 = AnimElemTime(2) = 40
trigger11 = AnimElemTime(2) = 44
trigger12 = AnimElemTime(2) = 48
trigger13 = AnimElemTime(2) = 52
trigger14 = AnimElemTime(2) = 56
trigger15 = AnimElem = 3
time = 18
ampl = -6
freq = 120

[State 3300, Button Detect Reset]
type = VarSet
trigger1 = animelem = 3
var(10) = 2

[State 3300, TargetState]
type = TargetState
trigger1 = AnimElem = 3
value = 3318

[State 1100, Voice]
type = PlaySnd
trigger1 = time = 130
value = 1100, 0 
channel = 0

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = time = 130
value = 41, 0
channel = 4

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 3311, PosSet]
type = PosSet
trigger1 = AnimElem = 4
y = 2

[State 3311, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Sewer Shoryuken Dust"
posType = P1
ownPal = 1

[State 3311, VelSet]
type = VelSet
trigger1 = AnimElem = 4
y = -13

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 0.5859375

[State 3310, Air Hit 2]
type = HitDef
;trigger1 = !var(16) ;&& var(15) < (2 + HitCount)
trigger1 = AnimElem = 4
ID = 3311
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 9
getPower = 0, 0
givePower = 36, 36
pauseTime = 36, 36
guard.pauseTime = 36, 36
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -15
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -15
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 3300)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3310, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3312

;Landing
[StateDef 3312]
type = S
anim = 3312
physics = N
moveType = I
velSet = 0, 0

[State 3311, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3311, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3311, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 3311, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; TARGET HITSTOP
[Statedef 3315]
type    = S
movetype= H
physics = N
velset = 0,0

[State 0, Destroy Helpers]
type = DestroySelf
trigger1 = IsHelper

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 3316

;---------------------------------------------------------------------------
; TARGET HIT
[Statedef 3316]
type    = A
movetype= H
physics = N
ctrl = 0

[State 3316, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA
time = 1

[State 3316, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1, 0
ignoreHitPause = 1

[State 3316, ScreenBound]
type = Width
trigger1 = 1
edge = 0,0

[State 5030, 1]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
value = 5030

[State 5030, 2]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yaccel)

[State 5030, 3]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 3]
type = VelSet
trigger1 = BackEdgeBodyDist <= 0
x = 0
persistent = 0

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, Const(movement.air.gethit.groundlevel))
value = 3317 ;Downed get-hit (hit ground from fall)

;---------------------------------------------------------------------------
; TARGET INVISIBLE
[Statedef 3317]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0

[State 3317, ChangeAnim]
type = ChangeAnim2
trigger1 = !time
value = 1

[State 3317, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 3317, AssertSpecial]
type = AssertSpecial
trigger1 = time > 0
flag = invisible

;---------------------------------------------------------------------------
;TARGET LAUNCHED
[Statedef 3318]
type    = A
movetype= H
physics = N
ctrl = 0
anim = 5050 + SelfAnimExist(5051)
velset = 0,-12
sprpriority = -2

[State 4012, 1]
type = PosSet
trigger1 = !Time
y = 0

[State 4012, 2]
type = VelAdd
trigger1 = 1
y = Cond(PrevStateNo = 3715,.5,.4)

[State 4013, 1]
type = ChangeAnim
trigger1 = Vel Y > 0 && Pos Y <= -10 && SelfAnimExist(5061)
value = 5061
persistent = 0

[State 5050, FailSafe]
type = SelfState
trigger1 = pos y > -vel y
value = 5100

;---------------------------------------------------------------------------
; Street Fight
[StateDef 3400]
type = S
physics = N
moveType = A
anim = 3400
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3400, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3400, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3400, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 3400, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3400, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3400, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 43

[State 3400, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3400, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3400, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3400, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -20, -48
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3400, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,(var(40) = 2)
darken = 0

[State 3000, Voice 1]
type = PlaySnd
trigger1 = time = 3
value = 900,1
channel = 0

[State 3010, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 9 || AnimElem = 15 || AnimElem = 20
value = 1, 5
channel = 1

[State 3010, Punch Out Sound]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 9 || AnimElem = 15 || AnimElem = 20
value = 3010, (AnimElem = 20)
channel = 0

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 3 || AnimElem = 9 || AnimElem = 15 || AnimElem = 20
x = 6.70391061453

[State 1200, VelAdd]
type = VelAdd
trigger1 = vel x > 0
x = -0.39280726257

[State 1200, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3000, HitDef: First]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -46
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, HitDef: Second]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 9
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, HitDef: Third]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 15
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, HitDef: Final]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 20
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -7.34375
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(21) >= 0
moveType = I

[State 3010, AI End]
type = ChangeState
trigger1 = AILevel >= 6
trigger1 = Cond(NumTarget,target,gethitvar(fall) = 1,enemynear,stateno = 5201)
trigger1 = !AnimTime
value = Cond((enemynear,BackEdgeBodyDist > 10 || p2bodydist x > 10),110,500)

[State 3405, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; MAX Street Fight
[StateDef 3450]
type = S
physics = N
moveType = A
anim = 3450
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3450, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3450, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3450, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3450, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3450, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3450, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3450, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3450, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3450, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -20, -48
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3450, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, (var(40) = 2)
darken = 0

[State 3000, Voice 1]
type = PlaySnd
trigger1 = time = 3
value = 900,1
channel = 0

[State 3010, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 9 || AnimElem = 15 || AnimElem = 21 || AnimElem = 25 || AnimElem = 27 || AnimElem = 30
value = 1, 5
channel = 1

[State 3010, Punch Out Sound]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 9 || AnimElem = 15 || AnimElem = 21 || AnimElem = 25 || AnimElem = 27 || AnimElem = 30
value = 3010, (AnimElem = 30)
channel = 0

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 3 || AnimElem = 9 || AnimElem = 15 || AnimElem = 21 || AnimElem = 25 || AnimElem = 30
x = 6.70391061453

[State 1200, VelAdd]
type = VelAdd
trigger1 = vel x > 0
x = -0.39280726257

[State 1200, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3000, HitDef: First]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -46
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, HitDef: Second]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 9 || AnimElem = 21 
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, HitDef: Third]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 15 || AnimElem = 25 || AnimElem = 27
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, HitDef: Final]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 30
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -7.34375
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(31) >= 0
moveType = I

[State 3010, AI End]
type = ChangeState
trigger1 = AILevel >= 6
trigger1 = Cond(NumTarget,target,gethitvar(fall) = 1,enemynear,stateno = 5201)
trigger1 = !AnimTime
value = Cond((enemynear,BackEdgeBodyDist > 10 || p2bodydist x > 10),110,500)

[State 3450, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Alley Uppercut
[StateDef 3500]
type = S
physics = N
moveType = A
anim = 3500
ctrl = 0
velSet = 0, 0
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
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3000, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

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
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 43

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3500, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3500, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-2*const(size.xscale)), ceil(-25*const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, (var(40) = 2)
darken = 0

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3000, Voice 1]
type = PlaySnd
trigger1 = time = 3
value = 3000, 0
channel = 0

[State 1200, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 0
channel = 3

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 13

[State 1200, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(7) < 0
x = -.65

[State 3000, VelSet]
type = VelSet
trigger1 = vel x < 0 || AnimElem = 18
x = 0

[State 1130, Uppercut Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1100, 0
channel = 0

[State 1130, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 8 || AnimElem = 13 || AnimElem = 17
value = 1, 2
channel = 1

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(8) = 1
value = 41, 0
channel = 5

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElemTime(8) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) = 2
x = 11.1731843575
y = -13.75

[State 1130, VelAdd]
type = VelAdd
triggerAll = vel x > 0
trigger1 = AnimElemTime(8) > 2 && AnimElemTime(18) < 0
x = -0.69832402234

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 2
y = 0.5859375

[State 1100, PosAdd]
type = PosAdd
trigger1 = (AnimElemTime(9) = [0,1])
x = 10*const(size.xscale)

[State 3000, HitDef: First]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 8, 8
guard.pauseTime = 8, 8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -46
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1130, Ground Hit]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 8
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1130, Air Hit 1]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 9
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -15
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1130, Air Hit 2]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 13
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1130, Air Hit 3]
type = HitDef
triggerAll = !var(16) && var(15) < 4
trigger1 = AnimElem = 17
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
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
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3500, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3505

;Landing
[StateDef 3505]
type = S
anim = 3505
physics = N
moveType = I
velSet = 0,0

[State 3405, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3405, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3405, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 3010, AI End]
type = ChangeState
trigger1 = AILevel >= 6
trigger1 = Cond(NumTarget,target,gethitvar(fall) = 1,enemynear,stateno = 5201)
trigger1 = !AnimTime
value = Cond((enemynear,BackEdgeBodyDist > 10 || p2bodydist x > 10),110,500)

[State 3405, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; MAX Alley Uppercut
[StateDef 3550]
type = S
physics = N
moveType = A
anim = 3550
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3450, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3450, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3450, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3450, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3450, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3450, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3450, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3450, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3450, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-2*const(size.xscale)), ceil(-25*const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3450, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, (var(40) = 2)
darken = 0

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3000, Voice 1]
type = PlaySnd
trigger1 = time = 3
value = 3000, 0
channel = 0

[State 1200, Dash Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 0
channel = 3

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 4 || AnimElem = 11
x = 13 + 2*(animelem = 11)

[State 1200, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(19) < 0 && vel x > 0
x = -.65

[State 3000, VelSet]
type = VelSet
trigger1 = vel x < 0 || AnimElem = 30
x = 0

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 7 || AnimElem = 13
value = 4, 0
channel = 0

[State 1130, Uppercut Sound]
type = PlaySnd
trigger1 = AnimElem = 19
value = 1100, 0
channel = 0

[State 1130, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 6 || AnimElem = 12 || AnimElem = 18 || AnimElem = 23 || AnimElem = 27
value = 1, 2
channel = 1

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 19
stateType = A
physics = N

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(19) = 1
value = 41, 0
channel = 5

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElemTime(19) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElemTime(19) = 2
x = 11.1731843575
y = -13.75

[State 1130, VelAdd]
type = VelAdd
triggerAll = vel x > 0
trigger1 = AnimElemTime(19) > 2 && AnimElemTime(30) < 0
x = -0.69832402234

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(19) > 2
y = 0.5859375

[State 1100, PosAdd]
type = PosAdd
trigger1 = (AnimElemTime(19) = [0,1])
x = 10*const(size.xscale)

[State 3450, First DP Ground]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, First DP Air]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 7
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, Second DP Ground]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 = AnimElem = 12
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3450, Second DP Air]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, HitDef: First]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = 0;AnimElem = 18
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 8, 8
guard.pauseTime = 8, 8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -46
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1130, Ground Hit]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 18
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1130, Air Hit 1]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 19
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -15
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1130, Air Hit 2]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 23
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1130, Air Hit 3]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 27
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
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
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3500, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3505

;Landing
[StateDef 3505]
type = S
anim = 3505
physics = N
moveType = I
velSet = 0,0

[State 3405, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3405, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3405, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 3010, AI End]
type = ChangeState
trigger1 = AILevel >= 6
trigger1 = Cond(NumTarget,target,gethitvar(fall) = 1,enemynear,stateno = 5201)
trigger1 = !AnimTime
value = Cond((enemynear,BackEdgeBodyDist > 10 || p2bodydist x > 10),110,500)

[State 3405, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Playing with Power
[StateDef 3600]
type = S
physics = N
moveType = A
anim = 3600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3900, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3900, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3900, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3900, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3900, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3900, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3900, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(11) < 0
time = 1
value = SCA

[State 3900, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 0, -50
;pos = 20, -78
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3900, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, (var(40) = 2)
darken = 0

[State 3900, Voice]
type = PlaySnd
trigger1 = time = 3
value = 3600,0
channel = 0

[State 3900, Taigyaku Mudo Time]
type = VarSet
trigger1 = AnimElemTime(4) >= 0
var(50) = 450

[State 3900, Power]
type = VarSet
trigger1 = AnimElem = 4
var(24) = Power

[State 1100, AI ChangeState]
type = ChangeState
trigger1 = !AnimTime && AILevel >= 6 && roundstate = 2
value = Cond((var(40) = 1 || p2statetype != A),1600,1100)

[State 3900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Raging Champion
[StateDef 3700]
type = S
physics = N
moveType = A
anim = 3700
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3300, Button Detect Reset]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
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
trigger1 = AnimElemTime(14) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-15*const(size.xscale)), ceil(-25*const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, (var(40) = 2)
darken = 0

[State 3010, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 14 || AnimElem = 18 || AnimElem = 22 || AnimElem = 24 || AnimElem = 26 || AnimElem = 32 
value = 1, 5
channel = 1

[State 3010, Punch Out Sound]
type = PlaySnd
trigger1 = AnimElem = 14 || AnimElem = 18 || AnimElem = 22 || AnimElem = 24 || AnimElem = 26 || AnimElem = 32 
value = 3010, (AnimElem = 32)
channel = 0

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 13 || AnimElem = 17 || AnimElem = 21 || AnimElem = 24 || AnimElem = 26 || AnimElem = 31
x = 6.70391061453

[State 1200, VelAdd]
type = VelAdd
trigger1 = vel x > 0
x = -0.39280726257

[State 1200, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3000, HitDef: First]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 14
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
kill = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, HitDef: Second]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 18
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -46
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
kill = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, HitDef: Third]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 22 || AnimElem = 24 
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
kill = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, HitDef: Final]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 26
attr = S, HA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
kill = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1400, HitGrab]
type = HitDef
triggerall = AnimElem = 32 ;&& !var(38)
trigger1 = P2BodyDist x < 36
attr = S, HA
hitFlag = M
guardflag = M
priority = 7, Miss
getPower = 0,0
givePower = 0,0
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.2503630888, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -50
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 3710

[State 3300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Raging Champion (Command Grab)
[Statedef 3710]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3710
sprpriority = 2

[State 1210, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3715

[State 1351, 2]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
pos = 40*const(size.xscale),0

[State 1351, 3]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 24*const(size.xscale), -26*const(size.yscale)

[State 1351, 4]
type = PosAdd
trigger1 = AnimElem = 4
x = 24

[State 1351, 5]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 26*const(size.xscale),-17*const(size.yscale)

[State 1351, 6]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(26) < 0
pos = 18*const(size.yscale),0

[State 1351, 2]
type = TargetBind
trigger1 = AnimElemTime(26) >= 0 && AnimElemTime(27) < 0
pos = 24*const(size.xscale), 0

[State 1351, 7]
type = Width
trigger1 = AnimElemTime(1) >= 0
edge = 40,0

[State 1351, 9]
type = PlaySnd
trigger1 = AnimElem = 6
value = 2,820

[State 1351, Punch Voice]
type = PlaySnd
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 27)
value = S3010,0
channel = 0

[State 1351, 10]
type = PlaySnd
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 27)
value = S1,Cond((AnimElem = 27),5,2)
channel = 1

[State 1351, 10]
type = PlaySnd
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21)
value = S2,2
channel = 2

[State 1351, 9]
type = PlaySnd
trigger1 = AnimElem = 25
value = 2,800

[State 1351, 12]
type = TargetLifeAdd
trigger1 = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21)
value = floor(ifElse(28 * fvar(11) < 7, -7, -28 * fvar(11)))
kill = 0

[State 1210, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21)
value = 36

[State 1351, 14]
type = HitAdd
trigger1 = NumTarget 
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21)
value = 1
 
[State 1351, VarAdd]
type = VarAdd
trigger1 = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21)
var(13) = 1
ignorehitpause = 1

[State 1210, Impact Dust]
type = Helper
trigger1 = NumTarget && AnimElem = 6
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = 48, 0
facing = -1
ownPal = 1

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget && (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21)
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = ceil(29*const(size.xscale)),ceil(-7*const(size.yscale))
ownPal = 1
size.xscale = 1
size.yscale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1210, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = (AnimElem = 6 || AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21)
time = 18
ampl = -6
freq = 120

[State 3300, LIFDOFF]
type = PlaySnd
trigger1 = AnimElem = 27
value = 1200,0
channel = 0

[State 3300, TargetState]
type = TargetState
trigger1 = AnimElem = 27
value = 3318

[State 1130, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 34 || AnimElem = 38 || AnimElem = 42
value = 1, 2
channel = 1

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 34
stateType = A
physics = N

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElemTime(34) = 1
value = 1100, 0 
channel = 0

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(34) = 1
value = 41, 0
channel = 5

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElemTime(34) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElemTime(34) = 2
x = 0;11.1731843575
y = -13.75

[State 1130, VelAdd]
type = VelAdd
triggerAll = vel x > 0
trigger1 = AnimElemTime(34) > 2 && AnimElemTime(43) < 0
x = -0.69832402234

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(34) > 2
y = 0.5859375

[State 1130, Ground Hit]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 33
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 0, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
kill = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1130, Air Hit 1]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 34
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0, -15
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 0, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
kill = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1130, Air Hit 2]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 38
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 0, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
kill = 0
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1130, Air Hit 3]
type = HitDef
triggerAll = !var(16) && var(15) < 4
trigger1 = AnimElem = 42
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 36, 36
guard.pauseTime = 36, 36
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 3300)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3500, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3312

;---------------------------------------------------------------------------
;Raging Champion (Target)
[Statedef 3715]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = -2

[State 1515, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1515, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time || time = 113
value = 3715
elem = Cond(time = 113,6,1)

[State 1515, ChangeAnim]
type = ChangeAnim
trigger1 = time = 42 || time = 49 || time = 56 || time = 63 || time = 70
value = 5080
