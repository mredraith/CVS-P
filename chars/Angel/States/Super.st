; ________________________________________________
;| Angel by KarmaCharmeleon			|
; 
;
;SUPER STATES=
;

;LOYALTY TEST FOR LIBERALISTS>=
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

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

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
trigger1 = AnimElemTime(6) < 0
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
pos = 15, -88
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

[State 3000, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000, 0
channel = 0

[State 3000, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 110, 0

[State 3000, Dust Helper]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 7.82122905028

[State 3000, VelSet]
type = VelAdd
trigger1 = AnimElemTime(15) > 0 && AnimElemTime(16) < 0
x = -0.34916201117

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElemTime(16) = 0
x = 0

[State 3000, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8 && !MoveGuarded && !MoveReversed
trigger3 = AnimElem = 9 && !MoveGuarded && !MoveReversed
trigger4 = AnimElem = 10 && !MoveGuarded && !MoveReversed
trigger5 = AnimElem = 11 && !MoveGuarded && !MoveReversed
trigger6 = AnimElem = 12 && !MoveGuarded && !MoveReversed
trigger7 = AnimElem = 13 && !MoveGuarded && !MoveReversed
trigger8 = AnimElem = 14 && !MoveGuarded && !MoveReversed
ID = 3000
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0 ,0
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
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
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -60
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

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(15) >= 0
moveType = I

[State 3000, Stopping Sound]
type = PlaySnd
trigger1 = AnimElem = 15
value = 101, 0

[State 3000, Skid Dust]
type = Explod
trigger1 = AnimElem = 15
anim = 8104
sprPriority = 3
posType = P1
pos = 0, 0
vel = 0, 0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 3000, End]
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

[State 3010, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(62) < 0
value = SCA
time = 1

[State 3010, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(57) < 0
pos = 50, 0

[State 3010, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(57) < 0
edge = 50, 0

[State 3010, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3010, 0
channel = 0

[State 3010, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 60
value = 2220, 0
channel = 0

[State 3010, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1 || AnimElem = 6 || AnimElem = 13 || AnimElem = 24
trigger2 = AnimElem = 32 || AnimElem = 42 || AnimElem = 51 || AnimElem = 60
value = 1, 2
channel = 1

[State 3010, PosAdd]
type = PosAdd
trigger1 = AnimElem = 59
x = 2

[State 3010, PosAdd]
type = PosAdd
trigger1 = AnimElem = 60
trigger2 = AnimElem = 61
x = 13

[State 3010, PosAdd]
type = PosAdd
trigger1 = AnimElem = 66
x = 12

[State 3010, Hit Sound]
type = Null
trigger1 = AnimElem = 2 || AnimElem = 7 || AnimElem = 8 || AnimElem = 14 || AnimElem = 25 || AnimElem = 33 || AnimElem = 43 || AnimElem = 52
trigger1 = var(31) := 2

[State 3010, SparkNo]
type = Null
trigger1 = AnimElem = 2 || AnimElem = 7 || AnimElem = 8 || AnimElem = 14 || AnimElem = 25 || AnimElem = 33 || AnimElem = 43 || AnimElem = 52
trigger1 = var(33) := 8014

[State 3010, Spark XY]
type = Null
trigger1 = AnimElem = 2
trigger1 = var(35) := 40 || var(36) := -88
trigger2 = AnimElem = 7
trigger2 = var(35) := 48 || var(36) := -70
trigger3 = AnimElem = 8
trigger3 = var(35) := 50 || var(36) := -44
trigger4 = AnimElem = 14
trigger4 = var(35) := 49 || var(36) := -74
trigger5 = AnimElem = 25
trigger5 = var(35) := 35 || var(36) := -72
trigger6 = AnimElem = 33
trigger6 = var(35) := 40 || var(36) := -84
trigger7 = AnimElem = 43
trigger7 = var(35) := 76 || var(36) := -87
trigger8 = AnimElem = 52
trigger8 = var(35) := 58 || var(36) := -16

[State 3010, HitDef: Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7 || AnimElem = 8 || AnimElem = 25 || AnimElem = 52
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
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1
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
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 2 || AnimElem = 14 || AnimElem = 33 || AnimElem = 43
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
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1
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

[State 3010, HitDef: Final]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 61
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 24, 24
guard.pauseTime = 24, 24
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
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
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 20
envShake.ampl = 8
envShake.freq = 120

[State 3110, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(62) >= 0
moveType = I

[State 3110, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Target
[StateDef 3015]
type = S
moveType = H
physics = N
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



;MAX LOYALTY TEST FOR LIBERALISTS>=
[StateDef 3050]
type = S
physics = N
moveType = A
anim = 3050
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
trigger1 = AnimElemTime(6) < 0
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
pos = 15, -88
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, Voice]
type = PlaySnd
trigger1 = !Time
value = 3050, 0
channel = 0

[State 3050, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 110, 0

[State 3050, Dust Helper]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 7.82122905028

[State 3050, VelSet]
type = VelAdd
trigger1 = AnimElemTime(23) > 0 && AnimElemTime(24) < 0
x = -0.34916201117

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElemTime(24) = 0
x = 0

[State 3050, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8 && !MoveGuarded && !MoveReversed
trigger3 = AnimElem = 9 && !MoveGuarded && !MoveReversed
trigger4 = AnimElem = 10 && !MoveGuarded && !MoveReversed
trigger5 = AnimElem = 11 && !MoveGuarded && !MoveReversed
trigger6 = AnimElem = 12 && !MoveGuarded && !MoveReversed
trigger7 = AnimElem = 13 && !MoveGuarded && !MoveReversed
trigger8 = AnimElem = 14 && !MoveGuarded && !MoveReversed
trigger9 = AnimElem = 15 && !MoveGuarded && !MoveReversed
trigger10 = AnimElem = 16 && !MoveGuarded && !MoveReversed
trigger11 = AnimElem = 17 && !MoveGuarded && !MoveReversed
trigger12 = AnimElem = 18 && !MoveGuarded && !MoveReversed
trigger13 = AnimElem = 19 && !MoveGuarded && !MoveReversed
trigger14 = AnimElem = 20 && !MoveGuarded && !MoveReversed
trigger15 = AnimElem = 21 && !MoveGuarded && !MoveReversed
trigger16 = AnimElem = 22 && !MoveGuarded && !MoveReversed
ID = 3050
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0 ,0
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
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
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3050) > 1
ID = 3050
keepOne = 1
excludeID = 3050
ignoreHitPause = 1

[State 3050, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3050)
value = 3015
ID = 3050
ignoreHitPause = 1
persistent = 0

[State 3050, ChangeState]
type = ChangeState
trigger1 = NumTarget(3050)
trigger1 = MoveHit && Target, Alive
value = 3060

[State 3050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(23) >= 0
moveType = I

[State 3050, Stopping Sound]
type = PlaySnd
trigger1 = AnimElem = 23
value = 101, 0

[State 3050, Skid Dust]
type = Explod
trigger1 = AnimElem = 23
anim = 8104
sprPriority = 3
posType = P1
pos = 0, 0
vel = 0, 0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 3050, End]
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

[State 3060, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(62) < 0
value = SCA
time = 1

[State 3060, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(75) < 0
pos = 50, 0

[State 3060, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(75) < 0
edge = 50, 0

[State 3060, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3060, 0
channel = 0

[State 3060, Woosh Sound 1]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 12 || AnimElem = 20 || AnimElem = 27
trigger2 = AnimElem = 35 || AnimElem = 43 || AnimElem = 53 || AnimElem = 65 || AnimElem = 94
value = 1, 5
channel = 1

[State 3060, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(88) >= 0 && AnimElemTime(114) < 0
value = 30, 0

[State 3060, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(92) = 0
trigger2 = AnimElemTime(92) = 1
x = 21

[State 3060, PosAdd]
type = PosAdd
trigger1 = AnimElem = 93
x = 13

[State 3060, PosAdd]
type = PosAdd
trigger1 = AnimElem = 96
x = 16

[State 3060, PosAdd]
type = PosAdd
trigger1 = AnimElem = 104
x = 10

[State 3060, PosAdd]
type = PosAdd
trigger1 = AnimElem = 105
trigger2 = AnimElem = 107
x = 5

[State 3060, PosAdd]
type = PosAdd
trigger1 = AnimElem = 115
trigger2 = AnimElem = 116
trigger3 = AnimElem = 117
x = 5

[State 3060, PosAdd]
type = PosAdd
trigger1 = AnimElem = 121
x = 10

[State 3060, PosAdd]
type = PosAdd
trigger1 = AnimElem = 122
trigger2 = AnimElem = 129
x = 15

[State 3060, PosAdd]
type = PosAdd
trigger1 = AnimElem = 132
x = -5

[State 3060, PosAdd]
type = PosAdd
trigger1 = AnimElem = 133
x = -25

[State 3060, Spark XY]
type = Null
trigger1 = AnimElem = 3
trigger1 = var(35) := 42 || var(36) := -22
trigger2 = AnimElem = 13
trigger2 = var(35) := 45 || var(36) := -55
trigger3 = AnimElem = 21
trigger3 = var(35) := 33 || var(36) := -103
trigger4 = AnimElem = 28
trigger4 = var(35) := 60 || var(36) := -2
trigger5 = AnimElem = 36
trigger5 = var(35) := 72 || var(36) := -12
trigger6 = AnimElem = 44
trigger6 = var(35) := 35 || var(36) := -85
trigger7 = AnimElem = 54
trigger7 = var(35) := 50 || var(36) := -100
trigger8 = AnimElem = 66
trigger8 = var(35) := 68 || var(36) := -58
trigger9 = AnimElem = 68
trigger9 = var(35) := 25 || var(36) := -58
trigger10 = AnimElem = 95
trigger10 = var(35) := 67 || var(36) := -77
trigger11 = AnimElem = 99
trigger11 = var(35) := 55 || var(36) := -55
trigger12 = AnimElem = 100
trigger12 = var(35) := 40 || var(36) := -25

[State 3060, HitDef: Low]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 3 || AnimElem = 28 || AnimElem = 36 || AnimElem = 68 || AnimElem = 99 || AnimElem = 100
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
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
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
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3060, HitDef: High]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 13 || AnimElem = 21 || AnimElem = 44 || AnimElem = 54 || AnimElem = 66 || AnimElem = 95
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
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
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
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3060, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 75
value = 3066

[State 3060, BindToTarget]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(76) >= 0 && AnimElemTime(84) < 0
pos = 0, 0, Head

[State 3060, PosSet]
type = PosSet
trigger1 = NumTarget && AnimElemTime(85) = 0
y = 0

[State 3060, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 80
value = floor(ifElse(21 * fvar(11) < 7, -7, -21 * fvar(11)))
kill = 0

[State 3060, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 80
value = 36

[State 3060, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 80
value = 1

[State 3060, HitCount]
type = VarAdd
trigger1 = NumTarget && AnimElem = 80
var(13) = 1

[State 3060, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 80
var(15) = 1
ignoreHitPause = 1

[State 3060, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 80
value = 2, 820
channel = 2

[State 3060, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(75) >= 0 && AnimElemTime(83) < 0
value = -1

[State 3060, SprPriority 2]
type = SprPriority
trigger1 = AnimElemTime(83) >= 0
value = 1

[State 3060, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 84
trigger2 = NumTarget && AnimElem = 85
trigger3 = NumTarget && AnimElem = 86
x = 15

[State 3060, Turn]
type = Turn
trigger1 = NumTarget && AnimElem = 86

[State 3060, Landing Dust Explod]
type = Explod
trigger1 = NumTarget && AnimElem = 86
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3060, Landing Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 86
value = 52, 0
channel = 1

[State 3060, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 107
value = 3060, 1
channel = 0

[State 3060, Woosh Sound 2]
type = PlaySnd
trigger1 = AnimElem = 107 || AnimElem = 122
value = 1, 2
channel = 1

[State 3060, HitDef: Launcher]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 108
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1.11731843575, -10 - (0.9375 * GameWidth / GameHeight)
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -10 - (0.9375 * GameWidth / GameHeight)
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -84
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3060, HitDef: Finisher]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 123
attr = S, HA
hitFlag = MAF
guardFlag = 
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 24, 24
guard.pauseTime = 24, 24
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, -6.25
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -6.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 20
envShake.ampl = 8
envShake.freq = 120

[State 3060, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(124) >= 0
moveType = I

[State 3060, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Being Thrown
[StateDef 3066]
type = S
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 3066, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3066

[State 3066, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1

[State 3066, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3067


;Dizzy
[Statedef 3067]
type = S
moveType = H
physics = N
velSet = 0, 0

[State 3067, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3067, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3067, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5300




;WIND FAIRGROUND/BLUE MONDAY PARADE>=
[Statedef 3100]
type = S
physics = S
movetype = I
anim = 3100
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -1000
facep2 = 1

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
trigger1 = 1
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
trigger1 = AnimElemTime(6) < 0
time = 1
value = SCA

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100, 0
channel = 0

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 3
channel = 1

[State 3100, ReversalDef]
type = ReversalDef
trigger1 = !MoveHit && var(26) <= 0
trigger1 = AnimElem = 5
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
pos = 10, -80
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
value = ifElse(Target(3100), StateType = A, 3125, 3115)
ignoreHitPause = 1
persistent = 0

[State 3100, ChangeState]
type = ChangeState
trigger1 = NumTarget(3100)
trigger1 = !(Target(3100), IsHelper) && MoveHit
value = ifElse(Target(3100), StateType = A, 3120, 3110)

[State 3100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 3100, End]
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

[State 3110, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(32) < 0
value = SCA
time = 1

[State 3110, SuperPause FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -20, -65
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
sound = s8500, 0
darken = 0

[State 3110, TargetBind]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = 60, 0

[State 3110, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(2) < 0
edge = 60, 0

[State 3110, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3110, 0
channel = 0

[State 3110, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 17
value = 3110, 1
channel = 0

[State 3110, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 28
value = 3110, 2
channel = 0

[State 3110, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 11 || AnimElem = 18 || AnimElem = 29
value = 1, 2
channel = 1

[State 3110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = 15

[State 3110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 12
trigger4 = AnimElem = 16
trigger5 = AnimElem = 27
trigger6 = AnimElem = 29
x = 5

[State 3110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 14
trigger5 = AnimElem = 17
trigger6 = AnimElem = 20
trigger7 = AnimElem = 21
trigger8 = AnimElem = 31
x = 3

[State 3110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = 7

[State 3110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 2

[State 3110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
x = 13

[State 3110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 18
trigger2 = AnimElem = 30
trigger3 = AnimElem = 33
x = 8

[State 3110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 19
trigger2 = AnimElem = 25
x = 10

[State 3110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 22
trigger2 = AnimElem = 23
x = -5

[State 3110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 32
x = -12

[State 3110, HitDef: High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5 || AnimElem = 12 || AnimElem = 19
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 4, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 50
guard.hittime = (50) - 6
ground.slideTime = 50
air.hitTime = 120
ground.velocity = -4.68937069644, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
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
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3110, HitDef: Final]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 30
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 24, 24
guard.pauseTime = 24, 24
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, -6.25
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -6.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3110, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Target
[StateDef 3115]
type = S
moveType = H
physics = N
velSet = 0, 0

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
value = 5002

[State 3115, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim



;Success
[Statedef 3120]
type = S
physics = N
moveType = A
anim = 3120
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 3120, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
value = SCA
time = 1

[State 3120, SuperPause FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 28, -86
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3120, SuperPause]
type = SuperPause
trigger1 = !Time
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500, 0
darken = 0

[State 3120, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3120, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(6) < 0
edge = 0, 45

[State 3120, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
edge = 0, 80

[State 3120, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 15, -8

[State 3120, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 25, -15

[State 3120, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 30, -40

[State 3120, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = -5, -30

[State 3120, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = -10, -42

[State 3120, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = -60, 15

[State 3120, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3120, 0
channel = 0

[State 3120, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 3120, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 2, 2
channel = 2

[State 3120, Impact Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 2, 3210
channel = 3

[State 3120, EnvShake]
type = EnvShake
trigger1 = AnimElem = 6
time = 18
ampl = -6
freq = 120

[State 3120, Impact Dust]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
facing = -1
pos = -60, 0
ownPal = 1

[State 3120, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 6
value = floor(ifElse(175 * fvar(11) < 7, -7, -175 * fvar(11)))

[State 3120, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 6
value = 36

[State 3120, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 6
value = 72

[State 3120, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 6
value = 1

[State 3120, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 6
var(13) = 1

[State 3120, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 6
var(15) = 1
ignoreHitPause = 1

[State 3120, TargetState]
type = TargetState
trigger1 = NumTarget && AnimElem = 7
value = 3126

[State 3120, Turn]
type = Turn
trigger1 = AnimElem = 9

[State 3120, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;ISSETSU SEGI NAGE (TARGET)=
;Being Thrown
[StateDef 3125]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 3125, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3125

[State 3125, Turn]
type = Turn
trigger1 = AnimElem = 2
ignoreHitPause = 1

[State 3125, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 3126]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -5.58659217877, -6.25
sprPriority = 0

[State 3126, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 3126, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 3126, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.537109375

[State 3126, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3126, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;SURVIVOR'S BANQUET>=
[StateDef 3200]
type = S
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

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
trigger1 = 1
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 5 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 47

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255, 255, 255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 5
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = 0, -40
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = Time = 5
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500, 0
darken = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3200, 0
channel = 0

[State 3200, Woosh]
type = PlaySnd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 14
value = 1, 0
channel = 1

[State 3200, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
ID = 3200
attr = S, HA
hitFlag = FD
guardFlag = 
priority = 4, Hit
damage = 0, 0
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
numHits = 0

[State 3200, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3200) > 1
ID = 3200
keepOne = 1
excludeID = 3200
ignoreHitPause = 1

[State 3200, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3200)
value = 3215
ID = 3200
ignoreHitPause = 1
persistent = 0

[State 3200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger1 = NumTarget(3200)
trigger1 = MoveHit && Target, Alive
value = 3210

[State 3200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 3200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Success
[StateDef 3210]
type = S
anim = 3210
physics = N
moveType = A
velSet = 0, 0

[State 3210, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(38) < 0
value = SCA
time = 1

[State 3210, Voice]
type = PlaySnd
trigger1 = !Time
value = 3210, 0
channel = 0

[State 3210, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 15
value = 1000, 1
channel = 1

[State 3210, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3210, 1
channel = 0

[State 3210, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 24
value = 3210, 2
channel = 0

[State 3210, Voice 4]
type = PlaySnd
trigger1 = AnimElem = 35
value = 3210, 3
channel = 0

[State 3210, PosAdd]
type = PosSet
triggerAll = facing = 1
trigger1 = AnimElem = 6
trigger2 = AnimElem = 17
x = (Enemy, Pos X)

[State 3210, PosAdd]
type = PosSet
triggerAll = facing = -1
trigger1 = AnimElem = 6
trigger2 = AnimElem = 17
x = (Enemy, Pos X)

[State 3210, VelSet]
type = VelSet
trigger1 = AnimElem = 7
trigger2 = AnimElem = 18
x = 4.46927374302

[State 3210, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(7) > 0 && AnimElemTime(11) < 0
trigger2 = AnimElemTime(18) > 0 && AnimElemTime(22) < 0
x = -0.34916201117

[State 3210, VelSet]
type = VelSet
trigger1 = AnimElem = 11
trigger2 = AnimElem = 22
x = 0

[State 3210, Turn]
type = Turn
trigger1 = AnimElem = 12
trigger2 = AnimElem = 23

[State 3210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 33
trigger2 = AnimElem = 34
trigger3 = AnimElem = 35
x = 8

[State 3210, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 15
value = 110, 0

[State 3210, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
trigger2 = AnimElem = 15
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3210, Stopping Sound]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 20
value = 101, 0

[State 3210, Skid Dust]
type = Explod
trigger1 = AnimElem = 9
trigger2 = AnimElem = 20
anim = 8104
sprPriority = 3
posType = P1
pos = 0, 0
vel = 0, 0
scale = 0.5, 0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 3210, HitDef: People's Elbow]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 36
ID = 3210
attr = S, HA
hitFlag = FD
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 490 < 7, 7, fvar(11) * 490)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 32, 32
guard.pauseTime = 32, 32
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
down.hitTime = 18
ground.velocity = -5.58659217877, -3.75
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -3.75
air.cornerPush.velOff = 0
down.velocity = -5.58659217877, -3.75
down.cornerpush.veloff = 0
down.bounce = 1
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -2
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 20
envShake.ampl = 8
envShake.freq = 120

[State 3210, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3210) > 1
ID = 3210
keepOne = 1
excludeID = 3210

[State 3210, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3210)
trigger1 = !(Target(3210), Time)
value = 3216
ID = 3210
ignoreHitPause = 1

[State 3210, Impact Sound]
type = PlaySnd
trigger1 = AnimElemTime(36) = 0
value = 2, 3210
channel = 3

[State 3210, Impact Dust]
type = Helper
trigger1 = AnimElemTime(36) = 0
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P2
facing = -1
ownPal = 1

[State 3210, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Target
[StateDef 3215]
type = L
moveType = H
physics = N
velSet = 0, 0

[State 3215, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3215, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3215, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5110

[State 3215, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 3215, SelfState]
type = SelfState
trigger1 = Time >= 250
value = 5120


;Hit by People's Elbow
[StateDef 3216]
type = L
moveType = H
physics = N
velSet = 0, 0

[State 3216, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignoreHitPause = 1

[State 3216, VarSet]
type = VarSet
trigger1 = !Time
sysvar(2) = 5080

[State 3216, VarAdd]
type = VarAdd
trigger1 = !Time
trigger1 = (Anim = [5081, 5089]) || (Anim = [5111, 5119])
trigger1 = SelfAnimExist(sysvar(2) + (Anim % 10))
sysvar(2) = Anim % 10

[State 3216, VarSet]
type = VarSet
trigger1 = !Time
trigger1 = SysVar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 3216, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = SysVar(2)

[State 3216, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 3217


;Knocked back
[StateDef 3217]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -4.46927374302, -5
sprPriority = 0

[State 3217, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 3217, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3217, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.78125

[State 3217, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3217, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100