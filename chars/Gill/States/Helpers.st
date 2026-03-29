;
;HELPER STATES=
;
;WIN POSE (HAIR)=
[Statedef 100183]
type = S
ctrl = 0
velset = 0,0
anim = 100183
sprpriority = 1

[State 100183, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0,0

[State 100183, DestroySelf]
type = DestroySelf
trigger1 = Root, StateNo != 183

;WIN POSE (MOUTH)=
[Statedef 100184]
type = S
ctrl = 0
velset = 0,0
anim = 10184
sprpriority = 1

[State 100184, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0,0

[State 100183, DestroySelf]
type = DestroySelf
trigger1 = Root, StateNo != 184

;WIN POSE (POSITION)=
[Statedef 100185]
type = A
physics = N
velset = 0,0
anim = 1
ctrl = 0

[State 100185, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 100185, DestroySelf]
type = DestroySelf
trigger1 = Root, StateNo != 185

;Center
[Statedef 100187]
type = A
physics = N
velset = 0,0
anim = 3302
ctrl = 0

[State 100187, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 100187, Width]
type = Width
trigger1 = NumHelper(100185)
trigger1 = NumHelper(100186)
edge = Ceil((Helper(100186), Pos X - Pos X) * Facing) -1 , Ceil((Pos X - Helper(100185), Pos X) * Facing) - 1

[State 100187, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 100187, Playerpush]
type = PlayerPush
trigger1 = 1
value = 0

[State 100187, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 100187, DestroySelf]
type = DestroySelf
trigger1 = Root, StateNo != 185

;SIMUL INTRO (MOUTH)=
[Statedef 6910]
type = S
ctrl = 0
velset = 0,0
anim = 6910
sprpriority = 1

[State 6901, Voice]
type = PlaySnd
trigger1 = !Time
value = 181, 0
channel = 0

[State 6910, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0,0

[State 100183, DestroySelf]
type = DestroySelf
trigger1 = Root, StateNo != 6901
trigger2 = !AnimTime

;KINESIS PROJECTILE=
[StateDef 1005]
type = S
physics = N
moveType = A
ctrl = 0
sprPriority = 3

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(14) < 2, 1005, 1007)
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !PrevStateNo
value = IfElse(Facing = -1, 1015, 1005)

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1005, AngleSet]
type = AngleSet
trigger1 = 1
value = 0

[State 1005, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 0 + var(10) * 10

[State 1005, VelSet]
type = VelSet
trigger1 = 1
y = IfElse((Time < 2 && var(14) > 1), 1, 0.0 + (var(10) * -1.97))
x = IfElse((Time < 2 && var(14) > 1), 1, 7.0 + (var(10) * 1.0))

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1005, Transparency]
type = Trans
trigger1 = Root, var(0) = 90
trans = Sub
ignoreHitPause = 1

[State 1005, Transparency]
type = Trans
trigger1 = Root, var(0) != 90
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1005, VarAdd]
type = VarAdd
trigger1 = !Time
var(14) = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef : Pyrokinesis]
type = HitDef
TriggerAll = Facing = 1
trigger1 = !(Root, var(16)) && (Root, var(15) < 2 || Root, var(20))
trigger1 = var(14) < 2
ID = 1005
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 54 < 7, 7, fvar(11) * 54)), 8
getPower = 72 * (var(45) = 2 && !var(20)), 36 * (var(45) = 2 && !var(20))
givePower = 36, 36
pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
guard.pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.27, 0
ground.cornerPush.velOff = 0
guard.velocity = -5.27
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 35
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, HitDef : Pyrokinesis]
type = HitDef
TriggerAll = Facing = 1
trigger1 = !(Root, var(16)) && (Root, var(15) < 3 || Root, var(20))
trigger1 = var(14) >= 2
ID = 1006
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 54 < 7, 7, fvar(11) * 54)), 8
getPower = 72 * (var(45) = 2 && !var(20)), 36 * (var(45) = 2 && !var(20))
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 35
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, HitDef : Cryokinesis]
type = HitDef
TriggerAll = Facing = -1
trigger1 = !(Root, var(16)) && (Root, var(15) < 2 || Root, var(20))
trigger1 = var(14) < 2
ID = 1015
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 54 < 7, 7, fvar(11) * 54)), 8
getPower = 72 * (var(45) = 2 && !var(20)), 36 * (var(45) = 2 && !var(20))
givePower = 36, 36
pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
guard.pauseTime = ifElse(var(20), 2, 4), ifElse(var(20), 2, 4)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.27, 0
ground.cornerPush.velOff = 0
guard.velocity = -5.27
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, HitDef : Cryokinesis]
type = HitDef
TriggerAll = Facing = -1
trigger1 = !(Root, var(16)) && (Root, var(15) < 3 || Root, var(20))
trigger1 = var(14) >= 2
ID = 1016
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 54 < 7, 7, fvar(11) * 54)), 8
getPower = 72 * (var(45) = 2 && !var(20)), 36 * (var(45) = 2 && !var(20))
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1055, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1
volumescale = 75

[State 1055, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1005, TargetState : Freeze Status]
type = TargetState
triggerall = MoveHit
trigger1 = NumTarget(1015)
trigger1 = Target(1015), StateNo != [5800,5830]
trigger1 = Target(1015), StateType != L
trigger2 = NumTarget(1016)
trigger2 = Target(1016), StateNo != [5800,5830]
trigger2 = Target(1016), StateType != L
value = 5800
ignorehitpause = 1

[State 1005, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget(1006)
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1005, Ice Particles]
type = Helper
trigger1 = !NumHelper(18150)
trigger1 = MoveHit = 1 && NumTarget(1016)
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 18150
ID = 18150
name = "Ice Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1005, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1005, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1
persistent = 0

[State 1005, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1
persistent = 0

[State 1005, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
persistent = 0

[State 1005, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000,1050]
var(18) = 1
persistent = 0

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(var(14) < 2, 1005, 1007)
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-200,200]

;Hit Pause
[StateDef 1006]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 1000
var(18) = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = 1007

;Disappear
[StateDef 1007]
type = A
physics = N
moveType = A
anim = IfElse(Facing = -1, 1017, 1007)
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1007, Transparency]
type = Trans
trigger1 = Root, var(0) != 90
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1007, Transparency]
type = Trans
trigger1 = Root, var(0) = 90
trans = Sub
ignoreHitPause = 1

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008

;Wait
[StateDef 1008]
type = A
physics = N
moveType = A
anim = 1
ctrl = 0
velSet = 0,0

[State 1008, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target,HitShakeOver)

;METEOR STRIKE (HAIR)=
[Statedef 3001]
type = S
ctrl = 0
velset = 0,0
anim = 100183
sprpriority = 2

[State 3001, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0,0

[State 3001, DestroySelf]
type = DestroySelf
trigger1 = Root, StateNo != 3000
trigger1 = Root, StateNo != 3050
trigger1 = Root, StateNo != 3500
trigger2 = Root, StateNo = 3000
trigger2 = Root, AnimElemTime(60) = 0
trigger3 = Root, StateNo = 3050
trigger3 = Root, AnimElemTime(60) = 0
trigger4 = Root, StateNo = 3500
trigger4 = Root, AnimElemTime(17) = 0

;METEOR STRIKE (PYROKINESIS)=
[StateDef 3005]
type = A
physics = N
moveType = A
ctrl = 0
anim = 3005
sprPriority = 3

[State 3005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 3007
ignoreHitPause = 1

[State 3005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1000, Kinises Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 1000, 10
volumescale = 75

[State 3005, VelSet]
type = VelSet
trigger1 = Root, StateNo = 3000
y = 9; + (Random % 2 * 2)
x = 2; + (Random % 3 * 2)

[State 3005, VelSet]
type = VelSet
trigger1 = Root, StateNo = 3050
y = 7; + (Random % 2 * 3)
x = 2; + (Random % 3 * 3)

[State 3005, AngleSet]
type = AngleSet
trigger1 = 1
ignorehitpause = 1

[State 3005, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -45

[State 3005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3005, Dampener]
type = VarSet
trigger1 = var(20)
fvar(10) = 0.72 * (10 - ifElse(var(13) >= 6, 10, var(13))) / 10.0
ignoreHitPause = 1

[State 3005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3005, Transparency]
type = Trans
trigger1 = Root, var(0) = 90
trans = Sub
ignoreHitPause = 1

[State 3005, Transparency]
type = Trans
trigger1 = Root, var(0) != 90
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 3005, HitDef]
type = HitDef
TriggerAll = Root, StateNo = 3000
trigger1= !(Root, var(16)) && (Root, var(15) < 20 )
ID = 3005
attr = S,SP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 17 < 7, 7, fvar(11) * 17)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 2;ifElse(Root, StateNo = 3050, 5, 10)
guard.pauseTime = 0, 2;ifElse(Root, StateNo = 3050, 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = 0.45, -8.85
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = 0.45, -12.85
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 3005, HitDef]
type = HitDef
TriggerAll = Root, StateNo = 3050
trigger1= !(Root, var(16)) && (Root, var(15) < 20 )
ID = 3005
attr = S,SP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 2;ifElse(Root, StateNo = 3050, 5, 10)
guard.pauseTime = 0, 2;ifElse(Root, StateNo = 3050, 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = 0.45, -8.85
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = 0.45, -12.85
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 3005, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget(3005)
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 3006
ignoreHitPause = 1

[State 3005, ChangeState]
type = ChangeState
trigger1 = MoveReversed || Pos Y >= 0
value = 3007
ignoreHitPause = 1

[State 3005, End]
type = DestroySelf
TriggerAll = Time >= 0
trigger1 = FrontEdgeDist <= -60

;Hit Pause
[StateDef 3006]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 3006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
volumescale = 50
ignorehitPause = 1

[State 3006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 3006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 3000 || Root, StateNo = 3050
var(18) = 1

[State 3006, End]
type = ChangeState
trigger1 = Time >= 0
value = IfElse(PrevStateNo = 3015 ,3017, 3007)

;Disappear
[StateDef 3007]
type = A
physics = N
moveType = A
anim = IfElse(Pos Y >= 0, 3007, 1007)
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 3007, AngleDraw]
type = AngleDraw
trigger1 = Anim = 3007 && Root, var(0) != 90
scale = 2,2 

[State 3007, AngleDraw]
type = AngleDraw
trigger1 = Anim = 3007 && Root, var(0) = 90
scale = 1.5,1.5 

[State 3007, AngleSet]
type = AngleSet
trigger1 = Anim = 3007
value = 0

[State 3007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 3000, 10
channel = 3
volume = -128
lowPriority = 1

[State 3007, Transparency]
type = Trans
trigger1 = Root, var(0) = 90
trans = Sub
ignoreHitPause = 1

[State 3007, Transparency]
type = Trans
trigger1 = Anim = 1007 && Root, var(0) != 90
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3007, Transparency]
type = Trans
trigger1 = Anim = 3007 && Root, var(0) != 90
trans = AddAlpha
alpha = 256 - (32 * Time),256
ignoreHitPause = 1

[State 3007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008

;METEOR STRIKE (PYROKINESIS)=
[StateDef 3015]
type = A
physics = N
moveType = A
ctrl = 0
anim = 3015
sprPriority = 3

[State 3015, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 3007
ignoreHitPause = 1

[State 3015, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1000, Kinises Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 1000, 11
volumescale = 75

[State 3005, VelSet]
type = VelSet
trigger1 = Root, StateNo = 3000
y = 9; + (Random % 2 * 2)
x = 2; + (Random % 3 * 2)

[State 3005, VelSet]
type = VelSet
trigger1 = Root, StateNo = 3050
y = 7; + (Random % 2 * 3)
x = 2; + (Random % 3 * 3)

[State 3015, AngleSet]
type = AngleSet
trigger1 = 1
ignorehitpause = 1

[State 3015, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -10; - Random % 2 * 5

[State 3015, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3015, Dampener]
type = VarSet
trigger1 = var(20)
fvar(10) = 0.72 * (10 - ifElse(var(13) >= 6, 10, var(13))) / 10.0
ignoreHitPause = 1

[State 3015, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3015, Transparency]
type = Trans
trigger1 = Root, var(0) = 90
trans = Sub
ignoreHitPause = 1

[State 3015, Transparency]
type = Trans
trigger1 = Root, var(0) != 90
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3015, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 3015, HitDef]
type = HitDef
TriggerAll = Root, StateNo = 3000
trigger1= !(Root, var(16)) && (Root, var(15) < 20)
ID = 3015
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 17 < 7, 7, fvar(11) * 17)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 2;ifElse(Root, StateNo = 3050, 5, 10)
guard.pauseTime = 0, 2;ifElse(Root, StateNo = 3050, 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = 0.45, -8.85
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = 0.45, -12.85
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 3015, HitDef]
type = HitDef
TriggerAll = Root, StateNo = 3050
trigger1= !(Root, var(16)) && (Root, var(15) < 20)
ID = 3015
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 2;ifElse(Root, StateNo = 3050, 5, 10)
guard.pauseTime = 0, 2;ifElse(Root, StateNo = 3050, 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = 0.45, -8.85
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = 0.45, -12.85
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, TargetState : Freeze Status]
type = TargetState
triggerAll = MoveHit
trigger1 = NumTarget(3015)
trigger1 = Target(3015), StateNo != [5800,5830]
trigger1 = Target(3015), StateType != L
value = 5800
ignorehitpause = 1

[State 1005, Ice Particles]
type = Helper
trigger1 = !NumHelper(18150)
trigger1 = MoveHit = 1 && NumTarget(3015)
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 18150
ID = 18150
name = "Ice Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3015, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 3006
ignoreHitPause = 1

[State 3015, ChangeState]
type = ChangeState
trigger1 = MoveReversed || Pos Y >= 0
value = 3017
ignoreHitPause = 1

[State 3015, End]
type = DestroySelf
TriggerAll = Time >= 0
trigger1 = FrontEdgeDist <= -60

;Disappear
[StateDef 3017]
type = A
physics = N
moveType = A
anim = IfElse(Pos Y >= 0, 3017, 1017)
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 3017, AngleDraw]
type = AngleDraw
trigger1 = Anim = 3017 && Root, var(0) != 90
scale = 2,2 

[State 3017, AngleDraw]
type = AngleDraw
trigger1 = Anim = 3017 && Root, var(0) = 90
scale = 1.5,1.5

[State 3017, AngleSet]
type = AngleSet
trigger1 = Anim = 3017
value = 0

[State 3017, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 3000, 10
channel = 3
volume = -128
lowPriority = 1

[State 3017, Transparency]
type = Trans
trigger1 = Root, var(0) = 90
trans = Sub
ignoreHitPause = 1

[State 3017, Transparency]
type = Trans
trigger1 = Anim = 1017 && Root, var(0) != 90
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3017, Transparency]
type = Trans
trigger1 = Anim = 3017 && Root, var(0) != 90
trans = AddAlpha
alpha = 256 - (32 * Time),256
ignoreHitPause = 1

[State 3017, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008

;SERAPHIC WING=
[StateDef 3301]
type = A
physics = N
moveType = A
ctrl = 0
anim = 3301
sprPriority = -20

[State 3301, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
slot = 0
stateNo = 3301
ignoreHitPause = 1

[State 3301, HitBy]
type = HitBy
trigger1 = 1
value =
time = -1
ignoreHitPause = 1

[State 3301, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3301
value = 3301

[State 3301, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3301, Damage Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3301, HitDef]
type = HitDef
trigger1 = ((Time = 2 && PrevStateNo = 3302) || (Time = 0 && !var(14))) && var(14) < 20
trigger1 = 1
priority = 7, Hit
attr = A, HA
damage = 32, 4
animType = Hard
air.animType = Hard
fall.animType = DiagUp
hitFlag = MAFD
guardFlag = MA
pauseTime = 0, IfElse(var(14) >= 20, 16, 8)
guard.pauseTime = 0, IfElse(var(14) >= 20, 16, 8)
sparkNo = -1
guard.sparkNo = -1
sparkXY = -10, -32
hitSound = -1
guardSound = -1
ground.type = High
air.type = High
ground.slideTime = 16
ground.hitTime = 16
guard.hittime = (16) - 6
ground.velocity = -6 * (Enemy, Facing * -Facing), -8
ground.cornerPush.velOff = 0
guard.velocity = 0
air.velocity = -6 * (Enemy, Facing * -Facing), -8
fall = IfELse(var(14) >= 19, 1 , 0)
fall.recover = 0
getPower = 0,0
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3301, Miss]
type = HitDef
trigger1 = var(14) >= 20
attr = S, HP
hitFlag =
sparkXY = -10,0

[State 3301, End]
type = ChangeState
trigger1 = MoveContact
value = 3302
ignoreHitPause = 1

[State 3301, End]
type = DestroySelf
trigger1 = Root, AnimElem = 39
trigger2 = Root, MoveType = H
trigger3 = Root, StateNo != 3300

;Hit Pause
[StateDef 3302]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 3302, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3302, VarSet]
type = VarAdd
trigger1 = 1
var(14) = 1

[State 3006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, IfElse(var(14) >= 20, 5, IfElse(Random < 500, 4, 3)))
channel = 3
volumescale = 50
ignorehitPause = 1

[State 3302, Hit Spark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = 0, Ceil((-60 + Random % 20) * Const(Size.Yscale))
facing = 1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3302, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P2
pos = 0,-60
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3302, Parent Hit Count]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3302, Self Hit Count]
type = VarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3302, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 3302, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3302, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = 3300
var(18) = 1

[State 3302, End]
type = ChangeState
trigger1 = Time >= 0
value = 3301

;METEOR STRIKE (POSITION)=
[Statedef 3310]
type = A
physics = N
velset = 0,0
anim = 1
ctrl = 0

[State 3310, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 3310, DestroySelf]
type = DestroySelf
trigger1 = Root, StateNo != 3000 
trigger1 = Root, StateNo != 3300
trigger2 = Root, StateNo = 3000
trigger2 = Root, AnimElemTime(57) >= 0
trigger3 = Root, StateNo = 3300
trigger3 = Root, AnimElemTime(39) >= 0

;Center
[Statedef 3312]
type = A
physics = N
velset = 0,0
anim = 3302
ctrl = 0

[State 3312, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3312, Width]
type = Width
trigger1 = NumHelper(3310)
trigger1 = NumHelper(3311)
edge = Ceil((Helper(3311), Pos X - Pos X) * Facing) -1 , Ceil((Pos X - Helper(3310), Pos X) * Facing) - 1

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 3312, Playerpush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3312, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3312, DestroySelf]
type = DestroySelf
trigger1 = Root, StateNo != 3000
trigger1 = Root, StateNo != 3300
trigger2 = Root, StateNo = 3000
trigger2 = Root, AnimElemTime(57) >= 0
trigger3 = Root, StateNo = 3300
trigger3 = Root, AnimElemTime(39) >= 0

;Rainbow
[Statedef 3317]
type = A
physics = N
velset = 0,0
anim = 3317
ctrl = 0

[State 3317, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 3317, AngleSet]
type = AngleSet
trigger1 = 1
value = 0

[State 3317, Scale]
type = AngleDraw
trigger1 = 1
scale = (0.15 * Time), (0.15 * Time)
ignoreHitPause = 1

[State 3317, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignorehitpause = 1

[State 3317, DestroySelf]
type = DestroySelf
trigger1 = Root, StateNo != 3300
trigger2 = Root, StateNo = 3300
trigger2 = Root, AnimElemTime(39) >= 0

;RESURRECTION (WIND)=
[Statedef 3401]
type = S
physics = N
anim = 3401
ctrl = 0

[State 3401, Playerpush]
type = Playerpush
trigger1 = 1
value = 1

[State 3401, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3401, velset]
type = VelSet
trigger1 = Abs(Pos X - Root, Pos X) >= Ceil(GameWidth / 2)
x = 0

[State 3401, VelSet]
type = VelSet
trigger1 = Abs(Pos X - Root, Pos X) < Ceil(GameWidth / 2)
x = 4.0

[State 3401, DestroySelf]
type = DestroySelf
trigger1 = IsHelper(3401)
trigger1 = Root, P2Dist X < 0
trigger2 = IsHelper(3402)
trigger2 = Root, P2Dist X >= 0
trigger3 = Root, StateNo != 3400
trigger4 = Root, StateNo = 3400
trigger4 = Root, AnimElemTime(12) >= 48

;RESURRECTION (GLOW)=
[StateDef 3405]
anim = 3405
sprpriority = 4
ctrl = 0

[State 3405, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0, 0

[State 3405, Transparency]
type = Trans
trigger1 = AnimElemTime(2) < 0
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3405, Transparency]
type = Trans
trigger1 = AnimElemTime(3) >= 5
trans = AddAlpha
alpha = 256 - (4 * Time), 256
ignoreHitPause = 1

[State 3405, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;RESURRECTION (RAYS)=
[StateDef 3407]
anim = 3407
sprpriority = 5
ctrl = 0

[State 3407, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = ceil(0 * const(size.xScale)), ceil(-118 * const(size.yScale))

[State 3407, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 3407, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 3407, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5,0.5
ignoreHitPause = 1

[State 3405, Transparency]
type = Trans
trigger1 = Time < 16
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3405, Transparency]
type = Trans
trigger1 = Time >= 16
trans = AddAlpha
alpha = 256 - (4 * Time), 256
ignoreHitPause = 1

[State 3407, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 60

[State 3407, End]
type = DestroySelf
trigger1 = Time >= 60

;HADES ORBIT (FLARE ORB)=
;Credit Goes to Mr. Infinite
[Statedef 3505]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 3505, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(14) < 4, 3505, 3507)
ignoreHitPause = 1

[State 3505, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3505, SprPriority]
type = SprPriority
trigger1 = 1 
value = IfElse((RootDist X!= [-20,20]) && (Pos Y < Root, Pos Y - 70), 0, 5)
ignorehitpause = 1

[State 3505, Turn]
type = Turn
trigger1 = Facing != Parent, Facing

[State 3505, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !PrevStateNo
value = 3605

[State 3505, Varset]
type = VarSet
trigger1 = 1
fv = 0
value = Parent, fvar(1)

[State 3505, Counter]
type = VarAdd
trigger1 = 1
fvar(0) = 1

[State 3505, VarAdd]
type = VarAdd
trigger1 = !Time
var(14) = 1

[State 3505, ParentVarSet]
type = ParentVarSet
trigger1 = Facing != Parent, Facing
trigger1 = Facing = 1
fvar(1)= fvar(0) + (Pi / 2)

[State 3505, ParentVarSet]
type = ParentVarSet
trigger1 = Facing != Parent, Facing
trigger1 = Facing = -1
fvar(1)= fvar(0) - (Pi / 2)

[State 3505, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3505, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3505, Bind]
type = BindToParent
trigger1 = 1
pos = floor(70 * Ifelse(facing = 1,( sin(fvar(0))),( cos(fvar(0))))), floor(70 * Ifelse(facing = -1,( cos(fvar(0))),( sin(fvar(0))))) - 73
time = 1
ignorehitpause = 1

[State 3505, Transparency]
type = Trans
trigger1 = Root, var(0) = 90
trans = Sub
ignoreHitPause = 1

[State 3505, Transparency]
type = Trans
trigger1 = Root, var(0) != 90
trans = AddAlpha
alpha = 0 + (32 * Time), 256
ignoreHitPause = 1

[State 3505, HitSound]
type = PlaySND
trigger1 = MoveHit && NumTarget
trigger1 = Target, Time = 0 && Target, MoveType = H
value = 2, 6
persistent = 0
ignorehitpause = 1

[State 3505, HitSound]
type = PlaySND
trigger1 = MoveGuarded && NumTarget
value = 3, 0
persistent = 0
ignorehitpause = 1

[State 3505, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 3505, HitDef : Pyrokinesis]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 5)
trigger1 = var(14) < 4
ID = 3506
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
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
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -7.27, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.27
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 22
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 35
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 3505, HitDef : Pyrokinesis]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 5)
trigger1 = var(14) >= 4
ID = 3506
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 72 * (var(45) = 2 && !var(20)), 36 * (var(45) = 2 && !var(20))
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 22
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 35
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 3505, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3505, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3505, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget(1006)
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3505, Flames]
type = Explod
trigger1 = Random < 500
anim = 8150
ID = 8150
sprpriority = IfElse(Random < 500, -1, 5)
vel = 0,0
accel = IfElse(Random <= 500, -.075, IfElse(Random < 250, -.05, -.1)), IfElse(Random <= 300, 0, IfElse(Random < 400, -.125, .125))
pos= -5,0
random =0, 40
scale = .25, .25
ownpal = 0
removeongethit = 1

[State 3505, ModifyExplod]
type = ModifyExplod
trigger1 = Root, var(0) = 90
ID = 8150
trans = Sub
ignorehitpause = 1

[State 3505, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1
persistent = 0

[State 3505, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1
persistent = 0

[State 3505, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
persistent = 0

[State 3505, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 3500
var(18) = 1
persistent = 0

[State 3505, DestroySelf]
type = DestroySelf
trigger1 = StateNo = 3550
ignorehitpause = 1

[State 3505, ChangeState]
type = ChangeState
trigger1 = MoveContact || MoveReversed
value = ifElse(var(14) < 4, 3505, 3507)
ignoreHitPause = 1

;[State 3505, ChangeState]
;type = Null;ChangeState
;trigger1 = MoveReversed
;value = 3507
;ignoreHitPause = 1

[State 3505, End]
type = ChangeState
trigger1 = var(14) >= 4
trigger2 = !RoundState = 2
trigger3 = !(Root, Alive)
trigger4 = NumHelper(3555)
value = 3507
ctrl = 0
ignorehitpause = 1

;------------------------------------------------------------------
;Hades Orbit Fade
[Statedef 3507]
type=A
physics=N
movetype=I
anim = 1007
velset=0, 0
ctrl=0
sprpriority=4

[State 3507, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3507, NotHitBy]
type=NotHitBy
trigger1 =1
value=SCA
ignorehitpause =1

[State 3507, Assert]
type=trans
TriggerAll = NumHelper(3555)
trigger1 = 1
trans = AddAlpha
alpha = 0, 256
ignorehitpause = 1

[State 3507, Transparency]
type = Trans
TriggerAll = !NumHelper(3555)
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3507, End]
type=destroyself
trigger1=!animtime

;HADES ORBIT (ICE ORB)=
;Credit Goes to Mr. Infinite
[Statedef 3515]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 3515, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(14) < 4, 3515, 3517)
ignoreHitPause = 1

[State 3515, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3515, SprPriority]
type = SprPriority
trigger1 =1 
value = Ifelse((RootDist X!= [-20,20]) && (Pos Y < Root, Pos Y - 70), 0, 5)
ignorehitpause = 1

[State 3515, Varset]
type = VarSet
trigger1 = 1
fv = 0
value = Parent, fvar(2)

[State 3515, ParentVarSet]
type = ParentVarSet
trigger1 = Facing != Parent, Facing
trigger1 = Facing = 1
fvar(2)= fvar(0) + (Pi / 2)

[State 3515, ParentVarSet]
type = ParentVarSet
trigger1 = Facing != Parent, Facing
trigger1 = Facing = -1
fvar(2)= fvar(0) - (Pi / 2)

[State 3515, Counter]
type = VarAdd
trigger1 = 1
fvar(0) = 1

;[State 3515, movehitvar]
;type=varset
;trigger1=movecontact && numtarget
;trigger1=!(target, ishelper)
;var(3)=1
;ignorehitpause=1

[State 3515, VarAdd]
type = VarAdd
trigger1 = !Time
var(14) = 1

[State 3515, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3515, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3515, Turn]
type = Turn
trigger1 = Facing != Parent, Facing

[State 3515, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !PrevStateNo
value = 3615

[State 3515, Transparency]
type = Trans
trigger1 = Root, var(0) = 90
trans = Sub
ignoreHitPause = 1

[State 3515, Transparency]
type = Trans
trigger1 = Root, var(0) != 90
trans = AddAlpha
alpha = 0 + (32 * Time), 256
ignoreHitPause = 1

[State 3515, Bind]
type = BindToParent
trigger1 = 1
pos = -floor(70 * Ifelse(facing = 1,( sin(fvar(0))),( cos(fvar(0))))), floor(70 * Ifelse(facing = -1,( cos(fvar(0))),( sin(fvar(0))))) - 73
time = 1
ignorehitpause=1

[State 3515, HitSound]
type = PlaySND
trigger1 = MoveHit && NumTarget
trigger1 = Target, Time = 0 && Target, MoveType = H
value = 2, 6
persistent = 0
ignorehitpause = 1

[State 3515, HitSound]
type = PlaySND
trigger1 = MoveGuarded && NumTarget
value = 3, 0
persistent = 0
ignorehitpause = 1

[State 3515, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 3515, HitDef : Cryokinesis]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 5)
trigger1 = var(14) < 4
ID = 3515
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
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
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -7.27, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.27
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 22
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 3515, HitDef : Cryokinesis]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 5)
trigger1 = var(14) >= 4
ID = 3516
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 72 * (var(45) = 2 && !var(20)), 36 * (var(45) = 2 && !var(20))
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 22
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 3515, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3515, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3515, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1
persistent = 0

[State 3525, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1
persistent = 0

[State 3515, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
persistent = 0

[State 3515, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 3500
var(18) = 1
persistent = 0

[State 3515, ChangeState]
type = ChangeState
trigger1 = MoveContact || MoveReversed
value = ifElse(var(14) < 4, 3515, 3517)
ignoreHitPause = 1

;[State 3515, ChangeState]
;type = ChangeState
;trigger1 = MoveReversed
;value = 3517
;ignoreHitPause = 1

[State 3515, End]
type = ChangeState
trigger1 = var(14) >= 4
trigger2 = !RoundState = 2
trigger3 = !(Root, Alive)
trigger4 = NumHelper(3565)
value = 3517
ctrl = 0
ignorehitpause = 1

;------------------------------------------------------------------
;Hades Orbit Fade
[StateDef 3517]
type = A
physics = N
moveType = A
anim = 1017
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 3517, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 3000, 10
channel = 3
volume = -128
lowPriority = 1

[State 3707, Assert]
type=trans
TriggerAll = NumHelper(3565)
trigger1 = 1
trans = AddAlpha
alpha = 0, 256
ignorehitpause = 1

[State 3517, Transparency]
type = Trans
TriggerAll = !NumHelper(3565)
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3517, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008

;HADES COMET (FLARE ORB)=
;Credit Goes to Mr. Infinite
[Statedef 3555]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 3555, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(14) < 3, 3555, 3507)
ignoreHitPause = 1

[State 3555, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3555, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !PrevStateNo
value = 3605

[State 3555, VarAdd]
type = VarAdd
trigger1 = !Time
var(14) = 1

[State 3505, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3555, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3555, Kinises Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 1000, 10
volumescale = 75

[State 3555, VelSet]
type = VelSet
trigger1 = 1
y = Sin(Time * Pi/5) * 15 * IfElse(Root, Facing = 1, -1, 1)
x = 4.2

[State 3555, VelMul]
type = VelMul
trigger1 = 1
x = 1.05

[State 3555, HitSound]
type = PlaySND
trigger1 = MoveHit && NumTarget
trigger1 = Target, Time = 0 && Target, MoveType = H
value = 2, 6
persistent = 0
ignorehitpause = 1

[State 3555, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 3555, HitDef : Pyrokinesis]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 6)
trigger1 = var(14) < 3
ID = 3556
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 8
guard.pauseTime = 4, 8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.27, -4
ground.cornerPush.velOff = 0
guard.velocity = -7.27
guard.cornerPush.velOff = 0
air.velocity = -4.31, -4.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 22
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 35
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 3555, HitDef : Pyrokinesis]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 6)
trigger1 = var(14) >= 3
ID = 3557
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 8
guard.pauseTime = 4, 8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 22
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 35
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 3555, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3555, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3555, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget(1006)
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3555, Flames]
type = Explod
trigger1 = Random < 500
anim = 8150
ID = 8150
sprpriority = IfElse(Random < 500, -1, 5)
vel = 0,0
accel = IfElse(Random <= 500, -.075, IfElse(Random < 250, -.05, -.1)), IfElse(Random <= 300, 0, IfElse(Random < 400, -.125, .125))
pos= -5,0
random =0, 40
scale = .25, .25
ownpal = 0
removeongethit = 1

[State 3555, ModifyExplod]
type = ModifyExplod
trigger1 = Root, var(0) = 90
ID = 8150
trans = Sub
ignorehitpause = 1

[State 3555, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1
persistent = 0

[State 3555, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1
persistent = 0

[State 3555, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
persistent = 0

[State 3555, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 3550
var(18) = 1
persistent = 0

[State 3555, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(var(14) < 3, 3555, 3507)
ignoreHitPause = 1

[State 3505, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3507
ignoreHitPause = 1

[State 3555, End]
type = DestroySelf
trigger1 = pos x != [-200,200]

[State 3505, End]
type = ChangeState
trigger1 = var(14) >= 6
trigger2 = !RoundState = 2
trigger3 = !(Root, Alive)
value = 3507
ctrl = 0
ignorehitpause = 1

;HADES COMET (ICE ORBIT)=
;Credit Goes to Mr. Infinite
[Statedef 3565]
type=A
physics=N
movetype=A
ctrl=0
velset=0, 0
sprpriority=4

[State 3565, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(14) < 3, 3565, 3517)
ignoreHitPause = 1

[State 3565, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3565, VarAdd]
type = VarAdd
trigger1 = !Time
var(14) = 1

[State 3565, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3565, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3565, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !PrevStateNo
value = 3615

[State 3565, Kinises Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 1000, 11
volumescale = 75

[State 3565, VelMul]
type = VelMul
trigger1 = 1
x = 1.05

[State 3565, VelSet]
type = VelSet
trigger1 = 1
y = -Sin(Time * Pi/5) * 15 * IfElse(Root, Facing = 1, -1, 1)
x = 4.5

[State 3565, HitSound]
type = PlaySND
trigger1 = MoveHit && NumTarget
trigger1 = Target, Time = 0 && Target, MoveType = H
value = 2, 6
persistent = 0
ignorehitpause = 1

[State 3565, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 3565, HitDef : Cryokinesis]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 6)
trigger1 = var(14) < 3
ID = 3566
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 8
guard.pauseTime = 4, 8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.27, -4
ground.cornerPush.velOff = 0
guard.velocity = -5.27
guard.cornerPush.velOff = 0
air.velocity = -4.31, -4.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 22
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 3565, HitDef : Cryokinesis]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 6)
trigger1 = var(14) >= 3
ID = 3567
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 8
guard.pauseTime = 4, 8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 22
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 3565, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3565, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3565, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1
persistent = 0

[State 3565, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1
persistent = 0

[State 3565, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
persistent = 0

[State 3565, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 3550
var(18) = 1
persistent = 0

[State 3565, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(var(14) < 3, 3565, 3517)
ignoreHitPause = 1

[State 3565, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3517
ignoreHitPause = 1

[State 3565, End]
type = DestroySelf
trigger1 = pos x != [-200,200]

[State 3565, End]
type = ChangeState
trigger1 = var(14) >= 6
trigger2 = !RoundState = 2
trigger3 = !(Root, Alive)
value = 3517
ctrl = 0
ignorehitpause = 1

;ROBE=
[StateDef 7000]
anim = 7000
sprpriority = 1
ctrl = 0

[State 7000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 21
value = 190,12
volumescale = 50
channel = 1

[State 7000, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;KOLLIN=
[StateDef 7001]
anim = 7001
sprpriority = 1
ctrl = 0

[State 7001, ChangeAnim]
type = ChangeAnim
trigger1 = RoundState = 0
value = 7001

[State 7001, Step Back : PosAdd]
type = PosAdd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(6) = 0
x = -4 * Const(Size.Xscale)

[State 7001, Step Back : PosAdd]
type = PosAdd
trigger1 = AnimElemTime(7) = 0
x = -2 * Const(Size.Xscale)

[State 7001, Step Back : PosAdd]
type = PosAdd
trigger1 = AnimElemTime(8) = 0
x = -1 * Const(Size.Xscale)

[State 7001, Cat Walk]
type = VelSet
trigger1 = AnimElem = 25
x = -1.8 * Const(Size.Xscale)

[State 7001, DestroySelf]
type = DestroySelf
trigger1 = Pos X != [-240,240]

;MONKS=
;Center
[StateDef 7002]
anim = 7002
sprpriority = -5
ctrl = 0

[State 7002, ChangeAnim]
type = ChangeAnim
trigger1 = RoundState = 0
value = 7002

[State 7002, ChangeAnim]
type = ChangeAnim
trigger1 = RoundState = 0
value = 7002

[State 7002, Hauling Ass]
type = VelSet
trigger1 = AnimElem = 10
x = 1.9 * Const(Size.Xscale)

[State 7002, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeDist <= -110

;Corner
[StateDef 7003]
anim = 7003
sprpriority = -1
ctrl = 0

[State 7003, ChangeAnim]
type = ChangeAnim
trigger1 = RoundState = 0
value = 7003

[State 7003, Hauling Ass]
type = VelSet
trigger1 = AnimElem = 10
x = -1.5 * Const(Size.Xscale)

[State 7003, DestroySelf]
type = DestroySelf
trigger1 = BackEdgeDist <= -110

;ROBE=
[StateDef 7010]
anim = 7010
sprpriority = 1
ctrl = 0

[State 7010, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;ROBE=
[StateDef 10190]
anim = 10190
sprpriority = 5
ctrl = 0

[State 10190, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 190,15
volumescale = 75
channel = 5

[State 10190, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 10190, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;PARRY HELPER=
[StateDef 765]
type = A
physics = N
moveType = I
anim = ifElse(Root, StateType = C, 766, ifElse(Root, StateType = A, 767, 765))
velSet = 0,0
ctrl = 0

[State 765, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 765, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1

[State 765, Change to Crouching]
type = ChangeAnim
triggerAll = !Time
trigger1 = !(Root, AILevel) && Root, command = "down"
trigger2 = Root, AILevel && (Root, StateType != A) && P2StateType = C
value = 766

[State 765, Change to Standing / Jumping]
type = ChangeAnim
triggerAll = !Time
trigger1 = !(Root, AILevel) && Root, command = "fwd"
trigger2 = Root, AILevel && Anim != 766
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Change to Standing / Jumping]
type = ChangeAnim
trigger1 = Anim = 765 || Anim = 767
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Disable]
type = VarSet
trigger1 = Time >= ifElse((Root, StateType = A), 7, 8)
trigger2 = Facing != (Root, Facing)
trigger3 = !(Root, ctrl)
trigger3 = (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
var(0) = 1

[State 765, Disable]
type = VarSet
triggerAll = !(Root, AILevel)
trigger1 = (Root, command = "holdback")
trigger2 = Time < 4 && (Root, command = "holdfwd" + Root, command = "holddown") > 1
trigger3 = Time >= 4 && (Root, command = "holdfwd" || Root, command = "holddown")
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && Root, command = "fwd") || (Anim = 766 && Root, command = "down"))
var(0) = 1

[State 765, Disable]
type = ChangeAnim
trigger1 = var(0) = 1
value = 1

[State 765, Standing/Air]
type = ReversalDef
trigger1 = !var(0) && (Anim = 765 || Anim = 767)
trigger1 = (Root, StateNo != 5120) || !(Root, AnimTime)
reversal.attr = SCA,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Crouching]
type = ReversalDef
trigger1 = !var(0) && Anim = 766
reversal.attr = SC,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Disable]
type = ReversalDef
trigger1 = var(0) = 1
reversal.attr =
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, End]
type = DestroySelf
trigger1 = Time >= 18
trigger2 = (Root, MoveType != I)
trigger3 = !(Root, ctrl) && (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
trigger4 = (Root, StateNo = [760,762]) && (Root, Time <= 1)


;Success
[StateDef 766]
moveType = I
ctrl = 0

[State 766, Disable]
type = VarSet
trigger1 = 1
var(0) = 1

[State 766, End]
type = DestroySelf
trigger1 = Root, StateNo = [760,762]
trigger2 = Time >= 2

;SPARKS=
;Guard Spark (Normal)
[StateDef 8000]
type = A
physics = N
moveType = I
anim = 8000
velset = 0,0
sprPriority = 5

[State 8000, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8000, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.125 + (0.046875 * Time), 0.125 + (0.046875 * Time)
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8000, End]
type = DestroySelf
trigger1 = Time >= 8


;Guard Spark (Special)
[StateDef 8001]
type = A
physics = N
moveType = I
anim = 8001
velSet = 0,0
sprPriority = 5

[State 8001, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8001, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8001, End]
type = DestroySelf
trigger1 = Time >= 8


;Light Hit Spark
[StateDef 8010]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8010, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8010, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8010, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8010, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.3 - (Time * 0.03), 0.3 - (Time * 0.03)
ignoreHitPause = 1

[State 8010, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8010, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8010, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8010, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8010, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.3 - (0.0375 * Time), 0.3 - (0.0375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8010, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8010, End]
type = DestroySelf
trigger1 = Time >= 16


;Medium Hit Spark
[StateDef 8011]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8011, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8011, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8011, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8011, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.35 - (Time * 0.035), 0.35 - (Time * 0.035)
ignoreHitPause = 1

[State 8011, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8011, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8011, Center]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removetime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.35 - (0.04375 * Time), 0.35 - (0.04375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8011, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8011, End]
type = DestroySelf
trigger1 = Time >= 16


;Heavy Hit Spark
[StateDef 8012]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8012, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8012, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8012, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8012, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.4 - (Time * 0.04), 0.4 - (Time * 0.04)
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8012, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8012, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.4 - (0.05 * Time), 0.4 - (0.05 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8012, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8012, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Hit Spark
[StateDef 8013]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8013, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8013, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8013, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8013, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.45 - (Time * 0.045), 0.45 - (Time * 0.045)
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8013, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8013, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = -1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale P2 Back Explod]
type = ModifyExplod
trigger1= NumExplod(3)
ID = 3
scale = 0.4, 0.4
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8013, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(random < 500, -1, 1)
vFacing = ifElse(random < 500, -1, 1)
sprPriority=3
removeTime=8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.45 - (0.05625 * Time), 0.45 - (0.05625 * Time)
trans = AddAlpha
alpha = 192 - (24 * Time), 256

[State 8013, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8013, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Hit Spark
[StateDef 8014]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8014, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8014, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8014, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8014, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.5 - (Time * 0.05), 0.5 - (Time * 0.05)
ignoreHitPause = 1

[State 8014, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8014, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8014, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = ifElse((Parent, StateNo = [3000,3999]), -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale P2 Back Explod]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.5,0.5
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8014, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.5 - (0.0625 * Time), 0.5 - (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8014, Remove Explods]
type = RemoveExplod
trigger1 = time >= 16

[State 8014, End]
type = DestroySelf
trigger1 = Time >= 16

;Reversal Spark
[StateDef 8020]
type = A
physics = N
moveType = I
anim = 8020
velSet = 0,0
sprPriority = 5

[State 8020, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8020, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.09375 * Time), 0.25 + (0.09375 * Time)
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8020, End]
type = DestroySelf
trigger1 = Time >= 8

;JUMP DUST=
[StateDef 8100]
type = S
anim = 1
velSet = 0,0

[State 8100, Bind]
type = BindToRoot
trigger1 = Time

[State 8100, Floor Dust]
type = Explod
trigger1 = !Time
anim = 8100
sprPriority = 3
posType = P1
pos = 0, ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, Player Dust]
type = Explod
trigger1 = !Time || Time = 2 || Time = 6
anim = 8101
sprPriority = 3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, End]
type = DestroySelf
trigger1 = Time >= 7

;DASH DUST=
[StateDef 8103]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8103, posSet]
type = PosSet
trigger1 = !Time = 0
y = 0

[State 8103, Dash Dust]
type = Explod
trigger1 = Time = 0 || Time = 3 || Time = 6
anim = 8103
ID = ifElse((Time = 6), 3, ifElse((Time = 3), 2, 1))
posType = P1
pos = 0,-4
random = 8,8
vel = -3 - (Random / 1000.0), -2 - (Random / 2000.0)
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 16
sprPriority = 3
pauseMoveTime = -1
superMoveTime = -1

[State 8103, Scale Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.1 + (0.025 * Time), 0.1 + (0.025 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8103, Scale Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.1 + (0.025 * (Time - 3)), 0.1 + (0.025 * (Time - 3))
trans = AddAlpha
alpha = 256 - (16 * (Time - 3)), 256

[State 8103, Scale Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.1 + (0.025 * (Time - 6)), 0.1 + (0.025 * (Time - 6))
trans = AddAlpha
alpha = 256 - (16 * (Time - 6)), 256

[State 8103, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 22

[State 8103, End]
type = DestroySelf
trigger1 = !NumExplod

;IMPACT DUST=
[StateDef 8110]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8110, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8110
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8120
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8110, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8110, End]
type = DestroySelf
trigger1 = !NumExplod

;WALL IMPACT DUST=
[StateDef 8111]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8111, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8111
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8121
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8111, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8111, End]
type = DestroySelf
trigger1 = !NumExplod

;FLAMES=
[StateDef 8150]
type = A
velSet = 0,0
anim = 1

[State 8150, Player]
type = VarSet
trigger1 = !Time
var(0) = Parent, var(43)

[State 8150, PosSet]
type = PosSet
trigger1 = PlayerIDexist(var(0))
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) + (PlayerID(var(0)), const(size.mid.pos.y))

[State 8150, PosSet (Laying Down)]
type = PosSet
trigger1 = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), StateType = L
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) - 20

[State 8150, Facing]
type = Turn
trigger1 = PlayerIDexist(var(0))
trigger1 = Facing != (PlayerID(var(0)), Facing)

[State 8150, Flame Explod 1]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8150
ID = 8150
sprPriority = 3
posType = P1
random = 40,40
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1

[State 8150, Flames Explod 2]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8150
ID = 8151
sprPriority = 3
posType = P1
random = 60,60
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1

[State 8150, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(8150) && Root, var(0) = 90
ID = 8150
trans = Sub

[State 8150, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(8151) && Root, var(0) = 90
ID = 8151
trans = Sub

[State 8150, End]
type = DestroySelf
trigger1 = Time >= 600
trigger2 = !PlayerIDexist(var(0))

[State 8150, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,7
volume = -65
lowPriority = 1

[State 8150, End]
type = DestroySelf
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), ctrl
trigger2 = PlayerID(var(0)), Movetype != H || PlayerID(var(0)), StateNo = 5300
trigger3 = PlayerID(var(0)), StateType = L && (PlayerID(var(0)), StateNo != [5080,5081])

;ICE SHARDS=
[StateDef 18150]
type = S
velSet = 0,0
anim = 1

[State 18150, Explod]
type = Explod
trigger1 = !Time
anim = 18150
ID = 18150
pos = -15,ifelse(P2StateType = C, -45, -80)
scale = 0.5, 0.5
postype = p2
sprpriority = 2
bindtime = -1
ownpal = 1
facing = -1

[State 18150, Explod]
type = Explod
trigger1 = !Time
anim = 18152
ID = 18152
pos = 15, IfElse(P2StateType = C, -15, -30)
scale = 0.5, 0.5
postype = p2
sprpriority = 2
bindtime = -1
ownpal = 1
facing = -1

[State 18150, Explod]
type = Explod
trigger1 = !Time
anim = 18154
ID = 18154
pos = -15, IfElse(P2StateType = C, -15, -30)
scale = 0.5, 0.5
postype = p2
sprpriority = 2
bindtime = -1
ownpal = 1
facing = -1

[State 18150, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(18150) && Root, var(0) = 90
ID = 18150
trans = Sub

[State 18150, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(18152) && Root, var(0) = 90
ID = 18152
trans = Sub

[State 18150, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(18154) && Root, var(0) = 90
ID = 18154
trans = Sub

[State 18150, Explod]
type = RemoveExplod
triggerAll = NumExplod(18150)
trigger1 = Enemy, StateNo != [5800,5899]
trigger2 = Enemy, StateType = L
ID = 18150
persistent = 0

[State 18150, Explod]
type = RemoveExplod
triggerAll = NumExplod(18152)
trigger1 = Enemy, StateNo != [5800,5899]
trigger2 = Enemy, StateType = L
ID = 18152
persistent = 0

[State 18150, Explod]
type = RemoveExplod
triggerAll = NumExplod(18154)
trigger1 = Enemy, StateNo != [5800,5899]
trigger2 = Enemy, StateType = L
ID = 18154
persistent = 0

[State 18150, Explod]
type = Explod
trigger1 = Enemy, StateNo != [5800,5899]
trigger2 = Enemy, StateType = L
ID = 18151
anim = 18151
pos = -15, IfElse(P2StateType = C, -45, -80)
scale = 0.5, 0.5
postype = p2
sprpriority = 2
bindtime = 1
ownpal = 1
facing = -1
persistent = 0

[State 18150, Explod]
type = Explod
trigger1 = Enemy, StateNo != [5800,5899]
trigger2 = Enemy, StateType = L
ID = 18153
anim = 18153
pos = 15, IfElse(P2StateType = C, -15, -30)
scale = 0.5, 0.5
postype = p2
sprpriority = 2
bindtime = 1
ownpal = 1
facing = -1
persistent = 0

[State 18150, Explod]
type = Explod
trigger1 = Enemy, StateNo != [5800,5899]
trigger2 = Enemy, StateType = L
ID = 18155
anim = 18155
pos = -15, IfElse(P2StateType = C, -15, -30)
scale = 0.5, 0.5
postype = p2
sprpriority = 2
bindtime = 1
ownpal = 1
facing = -1
persistent = 0

[State 18150, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(18151) && Root, var(0) = 90
ID = 18151
trans = Sub

[State 18150, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(18153) && Root, var(0) = 90
ID = 18153
trans = Sub

[State 18150, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(18155) && Root, var(0) = 90
ID = 18155
trans = Sub

[State 18150, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,9
volume = -65
lowPriority = 1

[State 18150, DestroySelf]
type = DestroySelf
trigger1 = Enemy, Stateno != [5800,5899]
trigger2 = Enemy, Statetype = L

;RECOVER FX=
[StateDef 8200]
type = A
velSet = 0,0
anim = 8200
sprPriority = 5

[State 8200, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8200, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.017 * Time), 0.25 + (0.017 * Time)
ignoreHitPause = 1

[State 8200, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = ceil(256 - 17.1 * Time), 256
ignoreHitPause = 1

[State 8200, End]
type = DestroySelf
trigger1 = Time >= 15

;COUNTER FX=
[StateDef 8290]
type = A
physics = N
velSet = 0,0
anim = 1

[State 8290, "Counter!" Text Explod]
type = Explod
trigger1 = !NumExplod(8290)
anim = 8290
ID = 8290
sprPriority = 64
posType = P1
facing = Facing
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8290, Scale]
type = ModifyExplod
trigger1 = Time < 8
ID = 8290
scale = 0.5, .5
trans = AddAlpha
alpha = 256,0

[State 8290, Scale]
type = ModifyExplod
trigger1 = Time >= 8
ID = 8290
scale = 0.5 + 0.0625 * (Time - 8), 0.5 + 0.0625 * (Time - 8)
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 32 * (Time - 8)

[State 8290, Safety]
type = RemoveExplod
trigger1 = Time >= 16

[State 8290, End]
type = DestroySelf
trigger1 = Time >= 16

;POWER CHARGE FX=
;Aura and Dust
[StateDef 8330]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velset = 0,0

[State 8330, BindToRoot]
type = BindToRoot
trigger1 = (Root, StateNo = 730)
pos = 0,0

[State 8330, Charging Sound]
type = PlaySnd
trigger1 = !Time
value = 730,0
channel = 0

[State 8330, Power Charge Aura]
type = Explod
trigger1 = !NumExplod(8330)
ID = 8330
anim = 8330
sprPriority = 3
posType = P1
bindTime = -1
removeTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8330, Power Charge Dust]
type = Explod
trigger1 = !(Time % 6)
anim = 8105
sprPriority = -3
posType = P1
pos = 0, -ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8330, Modify Aura 1]
type = ModifyExplod
trigger1 = Numexplod(8330) && Root, Power < 3000
ID = 8330
scale = 0.5, 0.1 + 0.4 * (Root, Power / 3000.0)

[State 8330, Modify Aura 2]
type = ModifyExplod
trigger1 = NumExplod(8330) && Root, Power >= 3000
ID = 8330
scale = 0.5, 0.5

[State 8330, StopSnd]
type = StopSnd
trigger1 = Root, StateNo != 730
channel = 0

[State 8330, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 730

[State 8330, End]
type = DestroySelf
trigger1 = Root, StateNo != 730


;Particles
[StateDef 8331]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8331, BindToRoot]
type = BindToRoot
trigger1 = !(Time % 8)
pos = ceil(-151 + (Random / 3.125)), ceil(98 - (Random / 3.125))

[State 8331, Particle]
type = Explod
trigger1 = (Time % 8) = 1
anim = 8331
sprPriority = ifElse(Random < 750, 5, -1)
posType = P1
vel = ((RootDist x - -4) / 32.0), ((RootDist y - 89) / 32.0)
scale = ifElse(Random < 500, 0.5, -0.5), ifElse(Random < 500, 0.5, -0.5)
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8331, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 730

[State 8331, End]
type = DestroySelf
trigger1 = Root, StateNo != 730

;ZERO COUNTER FX=
[StateDef 8350]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8350, bgPalFX]
type = bgPalFX
trigger1 = 1
time = 1
color = 16 * Time
mul = 16 * Time, 16 * Time, 16 * Time

[State 8350, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8350
ID = 1
sprPriority = 3
posType = P1
removeTime = 16
superMoveTime = -1
ownPal = 1

[State 8350, Scale]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.0625 * Time), (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8350, Lightning Explod]
type = Explod
trigger1 = !Time
anim = 8351
ID = 2
sprPriority = -2
posType = P1
pos = 0, -ceil(pos y)
superMoveTime = -1
ownPal = 1

[State 8350, End]
type = DestroySelf
trigger1 = Time >= 16

;CUSTOM COMBO=
[StateDef 8400]
type = A
physics = N
moveType = I
anim = 8400
ctrl = 0
velSet = 0,0
sprPriority = 5

[State 8400, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8400, BGpalFX]
type = BGpalFX
trigger1 = Time < 25
time = 1
mul = 128,128,128

[State 8400, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8400, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8400, Scale]
type = AngleDraw
trigger1 = Time < 8
scale = (0.0625 * Time), (0.0625 * Time)
ignoreHitPause = 1

[State 8400, Scale]
type = AngleDraw
trigger1 = Time >= 8
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8400, Transparency]
type = Trans
trigger1 = Time < 16
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8400, Transparency]
type = Trans
trigger1 = Time >= 16
trans = AddAlpha
alpha = ceil(256 - 25.6 * (Time - 16)), 256
ignoreHitPause = 1

[State 8400, Lines Explod]
type = Explod
trigger1 = !Time
anim = 8401
ID = 1
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8400, Scale Lines Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 2 - (0.125 * Time), 2 - (0.125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8400, Circle Explod]
type = Explod
trigger1 = Time = 16
anim = 8402
ID = 2
sprPriority = 5
posType = P1
removeTime = 32
superMoveTime = -1

[State 8400, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.1 * (Time - 16)), (0.1 * (Time - 16))
trans = AddAlpha
alpha = ceil(256 - 25.6 * (Time - 16)), 256

[State 8400, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 26

[State 8400, End]
type = DestroySelf
trigger1 = Time >= 26

;SUPER PAUSE FX=
;Level 1 Super FX
[StateDef 8500]
type = A
velSet = 0,0
anim = 8500
sprPriority = 5

[State 8500, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8500, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 0,0,256

[State 8500, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8500, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8500, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8500, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5,0.5
ignoreHitPause = 1

[State 8500, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8500, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8501
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8500, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8500, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8502
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8500, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8500, End]
type = DestroySelf
trigger1 = Time >= 40


;Level 2 Super FX
[StateDef 8510]
type = A
velSet = 0,0
anim = 8510
sprPriority = 5

[State 8510, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8510, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 192,0,256

[State 8510, Rotate]
type = AngleSet
trigger1 = !Time
value =6 * (Random % 60)

[State 8510, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8510, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8510, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8510, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8510, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8511
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8510, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8510, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8510, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8510, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 -(0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8510, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8512
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 32
superMoveTime = -1

[State 8510, Scale]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24)<4, 64 * (Time - 24), 256), 256

[State 8510, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8510, End]
type = DestroySelf
trigger1 = Time >= 40


;Level 3 Super FX
[Statedef 8520]
type = A
velset = 0, 0
anim = 8520
sprpriority = 5

[State 8520, Assert]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8520, Assert]
type = AssertSpecial
trigger1 = Time < 40
flag = NoBG
flag2 = NoFG

[State 8520, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8520, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8520, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)

[State 8520, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5

[State 8520, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256

[State 8520, Portrait: 1st Half]
type = Explod
trigger1 = !Time
anim = 8525
ID = 20
sprpriority = -16
postype = Back
removetime = 40
supermovetime = -1

[State 8520, Portrait: 1st Half]
type = Explod
trigger1 = !Time
anim = 8525
ID = 21
sprpriority = -16
postype = Back
removetime = 40
supermovetime = -1

[State 8520, Portrait: 2nd Half]
type = Explod
trigger1 = !Time
anim = 8526
ID = 20
sprpriority = -16
postype = Back
removetime = 40
supermovetime = -1

[State 8520, Portrait: 2nd Half]
type = Explod
trigger1 = !Time
anim = 8526
ID = 21
sprpriority = -16
postype = Back
removetime = 40
supermovetime = -1

[State 8520, Scale]
type = ModifyExplod
trigger1 = NumExplod(20) && Time < 16
ID = 20
postype = Back
pos = 160, Floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 1 - (0.03125 * Time), 1 - (0.03125 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale]
type = ModifyExplod
trigger1 = NumExplod(21) && Time < 16
ID = 21
postype = Back
pos = 160, Floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 2 - (0.09375 * Time), 2 - (0.09375 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale]
type = ModifyExplod
trigger1 = NumExplod(20) && (Time = [16, 32])
ID = 20
postype = Back
pos = 160, Floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 256, 256

[State 8520, Scale]
type = RemoveExplod
trigger1 = NumExplod(21) && Time >= 16
ID = 21

[State 8520, Scale]
type = ModifyExplod
trigger1 = NumExplod(20) && Time >= 32
ID = 20
postype = Back
pos = 160, Floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time -32), 256

[State 8520, Lines]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8521
ID = IfElse(Time = 24, 4, IfElse(Time = 16, 3, IfElse(Time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = IfElse(Random < 500, -1, 1)
vfacing = IfElse(Random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = IfElse(Time < 4, 64 * Time, 256), 256

[State 8520, Scale]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = IfElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8520, Scale]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = IfElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8520, Scale]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = IfElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Circle]
type = Explod
trigger1 = Time = 24
anim = 8522
ID = 10
sprpriority = 5
postype = P1
facing = IfElse(Random < 500, -1, 1)
vfacing = IfElse(Random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8520, Scale]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = IfElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Safety]
type = RemoveExplod
trigger1 = Time >= 40

[State 8520, End]
type = DestroySelf
trigger1 = Time >= 40

;SUPER FINISH=
[StateDef 8600]
type = A
velSet = 0,0
anim = 1

[State 8600, Super Finish Sound]
type = PlaySnd
trigger1 = !Time
value = 8600,0
channel = 0

[State 8600, SndPan]
type = SndPan
trigger1 = Time <= 80
channel = 1
absPan = ceil(sin(GameTime / 20.0 * pi) * 160)

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time < 16
time = 1
mul = 0, 0, 0

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time = [16,24)
time = 1
mul = 32 * (Time - 16), 32 * (Time - 16), 32 * (Time - 16)

[State 8600, Move Name: Custom Combo]
type = VarSet
trigger1= !Time && Root, var(23) = 900
var(0) = 1

[State 8600, Move Name: Meteor Strike]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3000,3099])
var(0) = 2

[State 8600, Move Name: Jupiter's Deal]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3100,3199])
var(0) = 3

[State 8600, Move Name: Seraphic Wing]
type = VarSet
trigger1= !Time && (Root, var(23) = [3300,3399])
var(0) = 4

[State 8600, Move Name: Hades Orbit]
type = VarSet
trigger1= !Time && Root, var(23) = 3500
var(0) = 5

[State 8600, Move Name: Hades Orbit]
type = VarSet
trigger1= !Time && Root, var(23) = 3600
var(0) = 6

[State 8600, Super Finish Explod]
type = Explod
trigger1 = !Time
anim = 8600
ID = 8600
ontop = 1
postype = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Super Finish Explod Fade]
type = ModifyExplod
trigger1 = NumExplod(8600)
ID = 8600
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), 256

[State 8600, Text 1]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 10
onTop = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 2]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 11
onTop = 1
posType = left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 1 Fade]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), ifElse(Time < 16, 0, 32 * (Time - 16))

[State 8600, Text 2 Fade]
type = ModifyExplod
trigger1 = NumExplod(11)
ID = 11
scale = 0.5 + (0.0625 * Time), 0.5 + (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time), 32 * Time

[State 8600, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8601
ID = 8601
under = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
bindTime = -1
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Circle Fade]
type = ModifyExplod
trigger1 = NumExplod(8601)
ID = 8601
scale = (0.25 * time) * (1.3333333 * GameHeight / GameWidth), (0.25 * time) * (1.3333333 * GameHeight / GameWidth)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8600, Assert: NoFG]
type = AssertSpecial
trigger1 = Time < 16
flag = NoFG

[State 8600, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 24
trigger2 = RoundState < 3

[State 8600, End]
type = DestroySelf
trigger1 = RoundState < 3

;CAMERA CONTROL=
[StateDef 8999]
type = S
velSet = 0,0
anim = 1

[State 8999, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 8999, End]
type = DestroySelf
trigger1 = RoundState = 2
