; _________________________________________
;| Character by Author Name |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;
;SUPER MOVES=
;

;---------------------------------------------------------------------------
;Super 1
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
trigger1 = AnimElemTime(7) < 0
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
pos = 0,-30
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Voice 1]
type = PlaySnd
trigger1 = Time = 1
value = 65,0
channel = 0

[State 3000, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 60,0
channel = 1

[State 3000, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 61,1
channel = 2

[State 3000, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3000, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 3.333
y = -5.333

[State 3000, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0
y = 0.58

[State 1300, Somersault Kick FX (Additive) Explod]
type = Explod
trigger1 = AnimElem = 6
anim = 1390
ID = 1390
sprPriority = 3
bindTime = -1
posType = P1
scale = 1,1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0


[State 3000, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 80,20
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
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
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -39
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3001


;Final Kick
[StateDef 3001]
type = S
anim = 3001
physics = N
moveType = A
velSet = 0,0

[State 3001, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3001, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3001, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3001, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 60,0
channel = 0

[State 3001, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 61,1
channel = 1

[State 3001, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 3001, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 3001, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 1.333
y = -9.333

[State 3001, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.58

[State 1300, Somersault Kick FX (Additive) Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1390
ID = 1390
sprPriority = 3
bindTime = -1
posType = P1
scale = 1,1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3001, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 5
trigger1 = AnimElem = 5
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 50,15
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3001, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 6
trigger1 = AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 60,20
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -107
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3001, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 3001, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3002


;Landing
[StateDef 3002]
type = S
anim = 1301
physics = N
moveType = I
velSet = 0,0

[State 3002, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 3002, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3002, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3002, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3002, End]
type = ChangeState
trigger1 = AnimElemTime(2) = 2 && command = "holddown"
value = 11
ctrl = 1

[State 3002, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
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
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

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

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(10) < 0
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
pos = 0,-30
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, Voice 1]
type = PlaySnd
trigger1 = Time = 1
value = 65,0
channel = 0

[State 3050, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 60,0
channel = 1

[State 3050, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 61,1
channel = 2

[State 3050, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3050, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 3.333

[State 1300, Somersault Kick FX (Additive) Explod]
type = Explod
trigger1 = AnimElem = 6
anim = 1390
ID = 1390
sprPriority = 3
bindTime = -1
posType = P1
scale = 1,1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3050, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 = AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 80,20
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
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
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -107
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(12) = 1
value = 3051


;Second Kick
[StateDef 3051]
type = S
anim = 3001
physics = N
moveType = A
velSet = 0,0

[State 3051, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3051, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3051, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3051, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 60,0
channel = 0

[State 3051, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 61,1
channel = 1

[State 3051, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 3051, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 3051, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 3.333
y = -5.333

[State 3051, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.58

[State 1300, Somersault Kick FX (Additive) Explod]
type = Explod
trigger1 = AnimElem = 6
anim = 1390
ID = 1390
sprPriority = 3
bindTime = -1
posType = P1
scale = 1,1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0


[State 3051, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 5
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 40,10
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
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
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -39
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3051, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 5
trigger1 = AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 60,10
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
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
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120


[State 3051, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3052


;Final Kick
[StateDef 3052]
type = S
anim = 3001
physics = N
moveType = A
velSet = 0,0

[State 3052, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3052, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3052, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3052, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 60,0
channel = 0

[State 3052, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 61,1
channel = 1

[State 3052, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 3052, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 3052, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 1.333
y = -9.333

[State 3052, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.58

[State 1300, Somersault Kick FX (Additive) Explod]
type = Explod
trigger1 = AnimElem = 6
anim = 1390
ID = 1390
sprPriority = 3
bindTime = -1
posType = P1
scale = 1,1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0


[State 3052, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 7
trigger1 = AnimElem = 5
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 40,10
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -39
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3052, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 8
trigger1 = AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 60,10
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3052, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 3052, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3002


;Super 2
; Light of Justice
[Statedef 3100]
type = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3100
poweradd = ifelse(var(20) > 0, 0, -1000)
sprpriority = 2
facep2 = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3100, No Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3100, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = (PrevStateNo = [1000,2999]) && var(6)

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3100, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3100, Super Cancel Juggle Reset]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, SuperPause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -8,-65
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0
poweradd = 0

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 3011
ID = 3011
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-68 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 3015
ID = 3015
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-68 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1100, Projectile]
type = Helper
trigger1 = AnimElem = 12
helperType = Normal
stateNo = 3011
ID = 3011
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-28 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1100, Projectile]
type = Helper
trigger1 = AnimElem = 12
helperType = Normal
stateNo = 3016
ID = 3016
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-28 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1


[State 3000, spark]
type = explod
trigger1 = animelem = 2
anim = 1010
id = 1010
pos = -5,0
sprpriority = 7
trans = add
scale = 0.9,0.9
bindtime = -1

[State 3000, spark]
type = explod
trigger1 = animelem = 10
anim = 1010
id = 1010
pos = 20,33
sprpriority = 7
trans = add
scale = 0.9,0.9
bindtime = -1

[State 3100, Width]
type = Width
trigger1 = AnimElem = 2, >= 0
value = 15,0

[State 3100, Voice Start]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 16
channel = 0

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 21, 0
channel = 0

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 5 || animelem = 13
value= 5, ifElse(Random < 500, 0, 1)
channel = 1

[State 3100, FX]
type = PlaySnd
trigger1 = AnimElem = 5 || animelem = 13
value = 61,0
channel = 2

[State 3100, End]
type = ChangeState
trigger1 = !AnimTime 
value = 0
ctrl = 1

; Light of Justice (MAX)
[Statedef 3150]
type = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3150
poweradd = ifelse(var(20) > 0, 0, -2000)
sprpriority = 2
facep2 = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

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

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(10) < 0
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
pos = -8,-65
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 3011
ID = 3011
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-68 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 3015
ID = 3015
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-68 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1100, Projectile]
type = Helper
trigger1 = AnimElem = 12
helperType = Normal
stateNo = 3011
ID = 3011
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-28 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1100, Projectile]
type = Helper
trigger1 = AnimElem = 12
helperType = Normal
stateNo = 3016
ID = 3016
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-28 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 26
helperType = Normal
stateNo = 3011
ID = 3011
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-68 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 26
helperType = Normal
stateNo = 3015
ID = 3015
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-68 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1100, Projectile]
type = Helper
trigger1 = AnimElem = 26
helperType = Normal
stateNo = 3016
ID = 3016
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-68 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 3000, spark]
type = explod
trigger1 = animelem = 2
anim = 1010
id = 1010
pos = -5,0
sprpriority = 7
trans = add
scale = 0.9,0.9
bindtime = -1

[State 3000, spark]
type = explod
trigger1 = animelem = 10
anim = 1010
id = 1010
pos = 15,19
sprpriority = 7
trans = add
scale = 0.9,0.9
bindtime = -1

[State 3000, spark]
type = explod
trigger1 = animelem = 25
anim = 1011
id = 1011
pos = 0,-0
sprpriority = 7
trans = add
scale = 0.9,0.9
bindtime = -1

[State 3100, Width]
type = Width
trigger1 = AnimElem = 2, >= 0
value = 15,0

[State 3100, Voice Start]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 16
channel = 0

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 21, 0
channel = 0

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 5 || animelem = 13 || animelem = 26
value= 5, ifElse(Random < 500, 0, 1)
channel = 1

[State 3100, FX]
type = PlaySnd 
trigger1 = AnimElem = 5 || animelem = 13 || animelem = 26
value = 61,0
channel = 2

[State 3150, End]
type = ChangeState
trigger1 = !AnimTime 
value = 0
ctrl = 1






;Blue Nocturne Credits to POTS
[Statedef 3200]
type = S
physics = S
movetype = I
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1


[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = 1
var(15) = 0
ignorehitpause = 1

[State 3500, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(0 * const(size.xScale)), ceil(-64 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = animelem = 1
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0
 
[State 3200, Reversal]
type = ReversalDef
trigger1 = !Movehit
trigger1 = Animelemtime(1) >= 0 && animelemtime(6) < 0
attr = S, HT
reversal.attr = SCA, NA, SA, HA
pausetime = 0, 30
sparkno = -1 + 0*(var(34):=8001)
sparkxy = 0, 0
hitsound = s3, 0
p1stateno = 3202
numhits = 0

[State 3200, Stun]
type = TargetState
trigger1 = !MoveHit
value = 5300

[State 3200, Crazy Damage]
type = DefenceMulSet
trigger1 = Animelemtime(6) >= 0 && animelemtime(9) < 0
value = 5

[State 3200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;High Counter Hit
[Statedef 3202]
type = S
movetype = A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3202
sprpriority = 1
facep2 = 1
 
[State 3201, Safety]
type = SuperPause
trigger1 = !Time
time = 0
p2defmul = 1
anim = -1
sound = -1
darken = 0

[State 3201, Safety]
type =ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 445, HB]
type = NotHitBy
trigger1 = 1
value = SCA 
time = 1
persistent = 0

[State 210, Swing Snd]
type = Playsnd
trigger1 = AnimElem = 5
value = 10000,5
channel = 0

[State 210, Swing Snd]
type = Playsnd
trigger1 = AnimElem = 5
value = 1,2
channel = 1

[State 220, Hit]
type=hitdef
trigger1= !var(16) && var(15)<1
trigger1= Animelem=13 || Animelem=18 || Animelem=24 || Animelem=31 || Animelem=40 || Animelem=48 || Animelem=60 || Animelem=72 || Animelem=74 || Animelem=78
ID = 3202
attr = S,HP
hitflag = MAF
damage =90,1
getpower = 5
givepower = 36, 36
pausetime = 4,4
guard.pausetime = 7,7
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = 5,-0
ground.cornerpush.veloff = 0
guard.velocity = -6
guard.cornerpush.veloff = 0
air.velocity = -4, -2
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 0
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-77
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 220, VelAdd]
type = VelAdd
trigger1 = Animelem=13 || Animelem=18 || Animelem=24 || Animelem=31 || Animelem=40 || Animelem=48 || Animelem=60 || Animelem=72 || Animelem=74 || Animelem=78
x = 10

[State 3201, Remy]
trigger1 = Animelem=13 || Animelem=18 || Animelem=24 || Animelem=31 || Animelem=40 || Animelem=48 || Animelem=60 || Animelem=72 || Animelem=74 || Animelem=78
type = Explod
anim = 42069

[State 3201]
trigger1 = stateno = 3201
type = AssertSpecial
flag = NoKO

[State 1300, Remy]
type = PlaySnd
trigger1 = animelem = 2
value = 42069,0

[State 3000, Super Cancel Juggle]
type = AssertSpecial
trigger1 = 1
flag = nojugglecheck
 
[State 3000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 3203


;SOMERSAULT KICK>=
[StateDef 3203]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0 && !var(10)
trigger2 = AnimElemTime(4) < 6 && var(10) = 1
trigger3 = AnimElemTime(3) < 0 && var(10) = 2
value = SCA
time = 1

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 60,0
channel = 0

[State 1300, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 61,1
channel = 1

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
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 1.667
y = -6.333 - (var(10) * 1.333)

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.58

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 1300, Somersault Kick FX (Additive) Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1390
ID = 1390
sprPriority = 3
bindTime = -1
posType = P1
scale = 1,1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1300, Somersault Kick FX (Subtractive) Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 1106
ID = 1106
sprPriority = 3
bindTime = -1
posType = P1
scale = 0.5 * const(size.xScale),0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1300, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = A, HP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 1000
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
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
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -39
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3200, Remy]
trigger1 = Animelem=5
type = Explod
anim = 42069

[State 1300, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301


;Landing
[StateDef 1301]
type = S
anim = 1301
physics = N
moveType = I
velSet = 0,0

[State 1301, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

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

[State 1301, End]
type = ChangeState
trigger1 = AnimElemTime(2) = 2 && command = "holddown"
value = 11
ctrl = 1

[State 1301, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

