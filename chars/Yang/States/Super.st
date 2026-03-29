; _________________________________________________
;| Yang by KarmaCharmeleon			 |
; 
;
;SUPER STATES=
;

;RAISHIN MAHHAKEN>=
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
var(21) = ((PrevStateNo = 222 || PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
pos = 17, -50
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

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3000, 1
channel = 0

[State 3000, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3000, 2
channel = 1

[State 3000, Gound Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1300, 0
channel = 4

[State 3000, Dust Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 10220
sprPriority = -3
posType = P1
pos = 45, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
persistent = 0
ownPal = 1

[State 3000, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7
time = 14
ampl = 4

[State 3000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 8

[State 3000, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8 && !MoveGuarded && !MoveReversed
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 24
guard.pauseTime = 12, 24
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.15625
ground.cornerPush.velOff = 0
guard.velocity = -5.15625
guard.cornerPush.velOff = 0
air.velocity = -2.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 79), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, ChangeState]
type = ChangeState
trigger1 = MoveHit
value = 3010
ignoreHitPause = 1

[State 3000, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) <= 0
trigger1 = HitPauseTime <= 10
value = 3000
elem = 8
ignoreHitPause = 1

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

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

[State 3010, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3010, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 9
value = 3000, 2
channel = 1

[State 3010, Dust Helper]
type = Helper
trigger1 = AnimElem = 9
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = 0, 0
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3010, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(9) > 0 && AnimElemTime(15) < 2
value = 0

[State 3010, VelSet]
type = VelSet
trigger1 = AnimElem = 9
x = 20

[State 3010, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(9) > 0 && AnimElemTime(15) < 2
x = -0.9765625

[State 3010, VelSet]
type = VelSet
trigger1 = AnimElemTime(15) = 2
x = 0

[State 3010, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 6
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(12) < 0
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 12
guard.pauseTime = 2, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -0.625, -10
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -0.625, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -53
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3010, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(13) >= 0
moveType = I

[State 3010, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;MAX SORAI RENGEKI>=
[StateDef 3050]
type = S
physics = S
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
var(21) = ((PrevStateNo = 222 || PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
trigger1 = AnimElemTime(7) < 0
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
pos = 17, -50
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
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000, 0
channel = 0

[State 3050, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3000, 1
channel = 0

[State 3050, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3000, 2
channel = 1

[State 3050, Gound Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1300, 0
channel = 4

[State 3050, Dust Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 10220
sprPriority = -3
posType = P1
pos = 45, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
persistent = 0
ownPal = 1

[State 3050, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7
time = 14
ampl = 4

[State 3050, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 8

[State 3050, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8 && !MoveContact
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 24
guard.pauseTime = 12, 24
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.15625
ground.cornerPush.velOff = 0
guard.velocity = -5.15625
guard.cornerPush.velOff = 0
air.velocity = -2.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 79), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, ChangeState]
type = ChangeState
trigger1 = MoveHit
value = 3060
ignoreHitPause = 1

[State 3050, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) <= 0
trigger1 = HitPauseTime <= 10
value = 3050
elem = 8
ignoreHitPause = 1

[State 3050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

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

[State 3060, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3060, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 3060, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3000, 2
channel = 1

[State 3060, Dust Helper]
type = Helper
trigger1 = AnimElem = 12
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = 0, 0
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3060, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(12) > 0 && AnimElemTime(18) < 2
value = 0

[State 3060, VelSet]
type = VelSet
trigger1 = AnimElem = 12
x = 20

[State 3060, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(12) > 0 && AnimElemTime(18) < 2
x = -0.9765625

[State 3060, VelSet]
type = VelSet
trigger1 = AnimElemTime(18) = 2
x = 0

[State 3050, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 2
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6 && !MoveContact
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 24
guard.pauseTime = 12, 24
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -10.52
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -1.25, -1.25
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 79), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3060, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= 10
value = 3060
elem = 6
ignoreHitPause = 1

[State 3060, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(18) < 0
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 12
guard.pauseTime = 2, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -0.625, -10
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -0.625, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -53
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3060, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(15) >= 0
moveType = I

[State 3060, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;TENSHIN SENKYUTAI>=
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

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = 222 || PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
pos = 6, -29
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, Voice]
type = PlaySnd
trigger1 = !Time
value = 3100, 0
channel = 0

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(21) < 0
time = 1
value = ,NP, SP, HP

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
trigger5 = AnimElem = 19
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = 0, 0
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 7.5

[State 3100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(21) < 0
x = 0.78125

[State 3000, Ground Hit 1]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(21) < 0
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5
ground.cornerPush.velOff = 0
guard.velocity = -5
guard.cornerPush.velOff = 0
air.velocity = -2.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100,ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(21) < 0
value = 3100
elem = 21
ignoreHitPause = 1

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 21
x = 0

[State 3100, Voice]
type = PlaySnd
trigger1 = AnimElem = 23
value = 3100, 1
channel = 0

[State 3100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 21
trigger2 = AnimElem = 31
trigger3 = AnimElem = 36
value = 1, 5
channel = 1

[State 3100, Ground Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 22
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1.25, -11.25
ground.cornerPush.velOff = 0
guard.velocity = -1.25
guard.cornerPush.velOff = 0
air.velocity = -1.25, -11.25
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 15), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 23
x = 32

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 23
x = 2.5
y = -11.25

[State 3100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(23) > 0
y = 0.48828125

[State 3100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 23
value = 41, 0
channel = 4

[State 3100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 23
stateType = A
physics = N

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElem = 23
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tenshin Senkyuutai Dust"
posType = P1
ownPal = 1

[State 3100, VarSet: MoveContact Tracker]
type = VarSet
trigger1 = !Time
trigger2 = AnimElem = 26
trigger3 = AnimElem = 34
var(12) = 0

[State 3100, VarAdd: Add 1 On Contact]
type = VarAdd
trigger1 = AnimElemTime(23) >= 0
trigger1 = MoveContact = 1
var(12) = 1

[State 3100, Air Hit 1]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount) && var(12) < 1
trigger1 = AnimElemTime(23) >= 0 && AnimElemTime(26) < 0 
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1.25, -11.25
ground.cornerPush.velOff = 0
guard.velocity = -1.25
guard.cornerPush.velOff = 0
air.velocity = -1.25, -11.25
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Air Hit 2-4]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount) && var(12) < 1
trigger1 = AnimElemTime(32) >= 0 && AnimElemTime(34) < 0 
trigger2 = AnimElemTime(37) >= 0 && AnimElemTime(39) < 0 
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1.25, -5
ground.cornerPush.velOff = 0
guard.velocity = -1.25
guard.cornerPush.velOff = 0
air.velocity = -1.25, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(39) >= 0
moveType = I

[State 3100, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3101


;Landing
[StateDef 3101]
type = S
anim = 3101
physics = N
moveType = I
velSet = 0,0

[State 3101, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3101, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3101, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 3101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;MAX TENSHIN SENKYUTAI>=
[StateDef 3150]
type = S
physics = N
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
var(21) = ((PrevStateNo = 222 || PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3150, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

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
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

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

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3150, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 6, -29
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, Voice]
type = PlaySnd
trigger1 = !Time
value = 3100, 0
channel = 0

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(21) < 0
time = 1
value = ,NP, SP, HP

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
trigger5 = AnimElem = 19
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = 0, 0
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 8.125

[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(21) < 0
x = 0.78125

[State 3150, Ground Hit 1]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(21) < 0
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3.75
ground.cornerPush.velOff = 0
guard.velocity = -3.75
guard.cornerPush.velOff = 0
air.velocity = -2.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150,ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(21) < 0
value = 3150
elem = 21
ignoreHitPause = 1

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 21
x = 0

[State 3150, Voice]
type = PlaySnd
trigger1 = AnimElem = 23
value = 3100, 1
channel = 0

[State 3150, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 21
trigger2 = AnimElem = 31
trigger3 = AnimElem = 36
trigger4 = AnimElem = 41
value = 1, 5
channel = 1

[State 3150, Ground Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 22
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1.25, -15
ground.cornerPush.velOff = 0
guard.velocity = -1.25
guard.cornerPush.velOff = 0
air.velocity = -1.25, -15
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 15), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 23
x = 32

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 23
x = 2.5
y = -15

[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(23) > 0
y = 0.4296875

[State 3150, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 23
value = 41, 0
channel = 4

[State 3150, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 23
stateType = A
physics = N

[State 3150, Dust Helper]
type = Helper
trigger1 = AnimElem = 23
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tenshin Senkyuutai Dust"
posType = P1
ownPal = 1

[State 3150, VarSet: MoveContact Tracker]
type = VarSet
trigger1 = !Time
trigger2 = AnimElem = 26
trigger3 = AnimElem = 34
trigger4 = AnimElem = 39
var(12) = 0

[State 3150, VarAdd: Add 1 On Contact]
type = VarAdd
trigger1 = AnimElemTime(23) >= 0
trigger1 = MoveContact = 1
var(12) = 1

[State 3150, Air Hit 1-3]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount) && var(12) < 3
trigger1 = AnimElemTime(23) >= 0 && AnimElemTime(26) < 0 
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1.25, -15
ground.cornerPush.velOff = 0
guard.velocity = -1.25
guard.cornerPush.velOff = 0
air.velocity = -1.25, -15
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Air Hit 4-6]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount) && var(12) < 1
trigger1 = AnimElemTime(32) >= 0 && AnimElemTime(34) < 0 
trigger2 = AnimElemTime(37) >= 0 && AnimElemTime(39) < 0 
trigger3 = AnimElemTime(42) >= 0 && AnimElemTime(44) < 0 
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1.25, -5.15625
ground.cornerPush.velOff = 0
guard.velocity = -1.25
guard.cornerPush.velOff = 0
air.velocity = -1.25, -5.15625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(44) >= 0
moveType = I

[State 3150, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3101



;SEIEI ENBU>=
[StateDef 3200]
type = S
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = 222 || PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3200, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 10, -95
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
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 3200, 0
channel = 0

[State 3200, Clone Explod 1]
type = Explod
trigger1 = AnimElem = 5
anim = 3201
sprPriority = -1
posType = P1
scale = 1, 1
pauseMoveTime = -1
superMoveTime = -1
persistent = 0
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3200, Clone Explod 2]
type = Explod
trigger1 = AnimElem = 5
anim = 3202
sprPriority = -1
posType = P1
scale = 1, 1
pauseMoveTime = -1
superMoveTime = -1
persistent = 0
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3200, VarSet]
type = VarSet
trigger1 = !AnimTime
var(40) = 1

[State 3200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;CHOU RAISHIN MAHHAKEN>=
[StateDef 3300]
type = S
physics = N
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
var(21) = ((PrevStateNo = 222 || PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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

[State 3200, Super Cancel Flash]
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
trigger1 = AnimElemTime(7) < 0
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
pos = 17, -50
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
sound = s8500,0
darken = 0

[State 3300, Voice]
type = PlaySnd
trigger1 = !Time
value = 3300, 0
channel = 0

[State 3300, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3300, 1
channel = 0

[State 3300, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3300, 10
channel = 1

[State 3300, Gound Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1300, 0
channel = 4

[State 3300, Dust Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 10220
sprPriority = -3
posType = P1
pos = 45, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
persistent = 0
ownPal = 1

[State 3300, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7
time = 14
ampl = 4

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 8

[State 3300, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8 && !MoveGuarded && !MoveReversed
ID = 3300
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 24
guard.pauseTime = 12, 24
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.15625
ground.cornerPush.velOff = 0
guard.velocity = -5.15625
guard.cornerPush.velOff = 0
air.velocity = -2.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 79), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, TargetState]
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

[State 3300, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) <= 0
trigger1 = HitPauseTime <= 10
value = 3300
elem = 8
ignoreHitPause = 1

[State 3300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 3300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success, Part 1
[StateDef 3310]
type = S
anim = 3310
physics = N
moveType = A
velSet = 0, 0
hitCountPersist = 1

[State 3310, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3310, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1002, 0
channel = 0

[State 3310, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3300, 11
channel = 1

[State 3310, BindToTarget 2]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 60, 0, Foot

[State 3310, Slash Visual Effect]
type = Explod
trigger1 = AnimElem = 5
anim = 13310
ID = 13310
sprPriority = 3
bindtime = 0
posType = P1
pos = 60, -80
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3310, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 5
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Back
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
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 3310, Slash Visual Effect]
type = Explod
trigger1 = AnimElem = 11
anim = 11000
ID = 11000
sprPriority = 3
bindtime = -1
posType = P1
pos = 5, -1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3310, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 16

[State 3310, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(15) < 0
value = 0

[State 3310, VelSet]
type = VelSet
trigger1 = AnimElem = 12
x = 12.5

[State 3310, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Back
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
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 63), var(36) := -59
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 3310, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) <= 0
trigger1 = HitPauseTime <= 10
value = 3310
elem = 14
ignoreHitPause = 1

[State 3310, VelSet]
type = VelSet
trigger1 = AnimElem = 15
x = 0

[State 3310, Turn]
type = Turn
trigger1 = AnimElem = 17

[State 3310, Slash Visual Effect]
type = Explod
trigger1 = AnimElem = 18
anim = 13300
ID = 13300
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3310, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 20
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Back
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
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 3310, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(20) >= 0 && AnimElemTime(21) <= 0
trigger1 = HitPauseTime <= 10
value = 3310
elem = 21
ignoreHitPause = 1

[State 3310, VelSet]
type = VelSet
trigger1 = AnimElem = 24
y = -7.5

[State 3310, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(24) > 0
y = 0.537109375

[State 3310, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 25
stateType = A
physics = N

[State 3310, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 26
ID = 3310
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -10.52
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = 0, -11.875
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 3310, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3310)
value = 3316
ID = 3310
ignoreHitPause = 1
persistent = 0

[State 3310, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(28) = 0
trigger2 = NumTarget && AnimElemTime(30) = 0
trigger3 = NumTarget && AnimElemTime(32) = 0
trigger4 = NumTarget && AnimElemTime(34) = 0
value = floor(ifElse(14 * fvar(11) < 7, -7, -14 * fvar(11)))
kill = 0

[State 3310, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(28) = 0
trigger2 = NumTarget && AnimElemTime(30) = 0
trigger3 = NumTarget && AnimElemTime(32) = 0
trigger4 = NumTarget && AnimElemTime(34) = 0
value = 36

[State 3310, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(28) = 0
trigger2 = NumTarget && AnimElemTime(30) = 0
trigger3 = NumTarget && AnimElemTime(32) = 0
trigger4 = NumTarget && AnimElemTime(34) = 0
value = 1

[State 3310, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(28) = 0
trigger2 = NumTarget && AnimElemTime(30) = 0
trigger3 = NumTarget && AnimElemTime(32) = 0
trigger4 = NumTarget && AnimElemTime(34) = 0
var(13) = 1

[State 3310, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(28) = 0
trigger2 = NumTarget && AnimElemTime(30) = 0
trigger3 = NumTarget && AnimElemTime(32) = 0
trigger4 = NumTarget && AnimElemTime(34) = 0
var(15) = 1
ignoreHitPause = 1

[State 3310, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(28) = 0
trigger2 = NumTarget && AnimElemTime(30) = 0
trigger3 = NumTarget && AnimElemTime(32) = 0
trigger4 = NumTarget && AnimElemTime(34) = 0
value = 2, 2
channel = 2

[State 3310, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElemTime(28) = 0
trigger2 = NumTarget && AnimElemTime(30) = 0
trigger3 = NumTarget && AnimElemTime(32) = 0
trigger4 = NumTarget && AnimElemTime(34) = 0
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = 35, -70
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3310, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3311


;Success, Part 2
[StateDef 3311]
type = S
anim = 3311
physics = N
moveType = A
velSet = 0, 0
hitCountPersist = 1

[State 3311, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3311, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3300, 2
channel = 0

[State 3311, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 18
value = 3300, 3
channel = 0

[State 3311, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 18
value = 3300, 12
channel = 1

[State 3311, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 31
value = 3300, 4
channel = 0

[State 3311, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(15) < 0
trigger2 = AnimElemTime(19) > 0 && AnimElemTime(25) < 2
value = 0

[State 3311, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 16

[State 3311, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 12.5

[State 3311, VelSet]
type = VelSet
trigger1 = AnimElem = 12
x = 0

[State 3311, Slash Visual Effect]
type = Explod
trigger1 = AnimElem = 9
anim = 11002
ID = 11002
sprPriority = 3
bindtime = -1
posType = P1
pos = 15, -2
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3311, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 9
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 2.5, -5.9375
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = 2.5, -5.9375
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 3311, Turn]
type = Turn
trigger1 = AnimElem = 16

[State 3311, VelSet]
type = VelSet
trigger1 = AnimElem = 19
x = 20

[State 3311, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(19) > 0 && AnimElemTime(25) < 2
x = -0.9765625

[State 3311, VelSet]
type = VelSet
trigger1 = AnimElemTime(25) = 2
x = 0

[State 3310, Slash Visual Effect]
type = Explod
trigger1 = AnimElem = 19
anim = 13311
ID = 13311
sprPriority = 3
bindtime = 0
posType = P1
pos = 68, -53
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 1

[State 3311, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElemTime(19) >= 0 && AnimElemTime(22) < 0
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 12
guard.pauseTime = 2, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -0.625, -12.5
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -0.625, -12.5
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -53
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3311, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(22) >= 0
moveType = I

[State 3311, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;CHOU RAISHIN MAHHAKEN (TARGET)=
;Target
[StateDef 3315]
type = S
moveType = H
physics = N
velSet = 0,0

[State 3315, Width]
type = Width
trigger1 = BackEdgeDist <= 120
trigger1 = Time = [0, 5]
edge = 0, 24 * Time
ignoreHitPause = 1

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


;After Throw
[StateDef 3316]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, -11.875

[State 3315, ChangeAnim]
type = ChangeAnim2
trigger1 = !Time
value = 3315

[State 826, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 3315, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5126953125

[State 3315, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3315, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100