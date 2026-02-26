; ________________________________________________
;| Q by KarmaCharmeleon			|
; 
;
;<SUPER STATES>==
;

;<CRITICAL COMBO ATTACK>=
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
trigger1 = AnimElemTime(10) < 0
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
pos = ceil(5 * const(size.xScale)), -28
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

[State 3000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = ceil(27 * const(size.xScale))

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 730, 1
channel = 0

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 19
trigger3 = AnimElem = 30
trigger5 = AnimElem = 57
value = 4, 3
channel = 0

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 43
value = 4, 2
channel = 0

[State 3000, Woosh Effect]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 19
trigger3 = AnimElem = 30
trigger4 = AnimElem = 43
trigger5 = AnimElem = 57
value = 1, 2
channel = 1

[State 3000, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 16
trigger3 = AnimElem = 27
trigger4 = AnimElem = 37
trigger5 = AnimElem = 51
value = 110, 0

[State 3000, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
trigger2 = AnimElem = 16
trigger3 = AnimElem = 27
trigger4 = AnimElem = 37
trigger5 = AnimElem = 51
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
trigger1 = AnimElem = 4
trigger2 = AnimElem = 16
trigger3 = AnimElem = 27
x = 8.93854748603

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 38
x = 5.58659217877

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 52
x = 11.1731843575

[State 3000, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(14) < 0
trigger2 = AnimElemTime(16) > 0 && AnimElemTime(25) < 0
trigger3 = AnimElemTime(27) > 0 && AnimElemTime(36) < 0
trigger4 = AnimElemTime(38) > 0 && AnimElemTime(48) < 0
trigger5 = AnimElemTime(52) > 0 && AnimElemTime(63) < 0
x = -0.52374301676

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 14
trigger2 = AnimElem = 25
trigger3 = AnimElem = 36
trigger4 = AnimElem = 48
trigger5 = AnimElem = 63
x = 0

[State 3000, HitDef: High]
type = HitDef
triggerAll = !var(16) && var(15) < 3
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 21
trigger4 = AnimElem = 22 && !MoveContact && !MoveReversed
trigger5 = AnimElem = 32
trigger6 = AnimElem = 33 && !MoveContact && !MoveReversed
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -10
air.cornerPush.velOff = 0
yAccel = 0.78125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1100, HitDef: Low]
type = HitDef
triggerAll = !var(16) && var(15) < 4
trigger1 = AnimElem = 44
trigger2 = AnimElem = 45 && !MoveContact && !MoveReversed
attr = S, HA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -10
air.cornerPush.velOff = 0
yAccel = 0.78125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 86), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, HitDef: Final]
type = HitDef
triggerAll = !var(16) && var(15) < 5
trigger1 = AnimElem = 59
trigger2 = AnimElem = 60 && !MoveContact && !MoveReversed
ID = 3000
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -11.1731843575, -7.5
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -11.1731843575, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5859375
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
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
trigger1 = !(Target(3000), Time)
value = 3015
ID = 3000
ignoreHitPause = 1

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(61) >= 0
moveType = I

[State 3000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<HIT BY EX DASHING STRAIGHT>=
;Being Launched
[StateDef 3015]
type = A
moveType = H
physics = N
velSet = 0, 0

[State 3015, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 3015, End]
type = ChangeState
trigger1 = HitShakeOver
value = 3016


;Heading Towards Wall
[StateDef 3016]
type = A
moveType = H
physics = N

[State 3016, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 3016, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 3016, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,1
ignoreHitPause = 1

[State 3016, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 3016, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5900)
value = 5900

[State 3016, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5900)
value = 5030

[State 3016, Bounce Off Wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10 || FrontEdgeBodyDist <= 10
value = 3017

[State 3016, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;Impacting Wall
[StateDef 3017]
type = A
moveType = H
physics = N

[State 3017, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 3017, PosSet]
type = PosSet
trigger1 = 1
x = -160 * Facing

[State 3017, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 3017, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0, 1
ignoreHitPause = 1

[State 3017, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignoreHitPause = 1

[State 3017, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5901)
value = 5901

[State 3017, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5901)
value = 5000

[State 3017, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7, 0

[State 3017, Hitting the Wall FX]
type = Explod
trigger1 = !Time
anim = F72
pos = 0, floor(ScreenPos Y) - 50
posType = Back
sprPriority = 3

[State 3017, End]
type = ChangeState
trigger1 = Time >= 4
value = 3018


;Bouncing Off Wall
[Statedef 3018]
type = A
moveType = H
physics = N

[State 3018, Turn]
type = Turn
trigger1 = !Time && !SelfAnimExist(5902)

[State 3018, Gravity]
type = VelAdd
trigger1 = 1
y = 0.5126953125

[State 3018, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(SelfAnimExist(5902), 8.93854748603, -8.93854748603)
y = -6.25

[State 3018, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5902)
value = 5902

[State 3018, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5902)
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 3018, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 3018, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 3018, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0, 0
ignoreHitPause = 1

[State 3018, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 3018, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = Vel Y > 0 && Pos Y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 3018, End]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100



;<MAX CRITICAL COMBO ATTACK>=
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
trigger1 = AnimElemTime(10) < 0
time = 1
value = SCA

[State 3050, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(5 * const(size.xScale)), -28
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3050, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = ceil(27 * const(size.xScale))

[State 3050, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 730, 1
channel = 0

[State 3050, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 19
trigger3 = AnimElem = 30
trigger4 = AnimElem = 54
trigger5 = AnimElem = 81
value = 4, 3
channel = 0

[State 3050, Voice]
type = PlaySnd
trigger1 = AnimElem = 43
trigger2 = AnimElem = 67
value = 4, 2
channel = 0

[State 3050, Woosh Effect]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 19
trigger3 = AnimElem = 30
trigger4 = AnimElem = 43
trigger5 = AnimElem = 54
trigger6 = AnimElem = 67
trigger7 = AnimElem = 81
value = 1, 2
channel = 1

[State 3050, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 16
trigger3 = AnimElem = 27
trigger4 = AnimElem = 37
trigger5 = AnimElem = 51
trigger6 = AnimElem = 61
trigger7 = AnimElem = 75
value = 110, 0

[State 3050, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
trigger2 = AnimElem = 16
trigger3 = AnimElem = 27
trigger4 = AnimElem = 37
trigger5 = AnimElem = 51
trigger6 = AnimElem = 61
trigger7 = AnimElem = 75
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
trigger1 = AnimElem = 4
trigger2 = AnimElem = 16
trigger3 = AnimElem = 27
trigger4 = AnimElem = 51
x = 8.93854748603

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElem = 38
trigger2 = AnimElem = 62
x = 6.70391061453

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElem = 76
x = 11.1731843575

[State 3050, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(14) < 0
trigger2 = AnimElemTime(16) > 0 && AnimElemTime(25) < 0
trigger3 = AnimElemTime(27) > 0 && AnimElemTime(36) < 0
trigger4 = AnimElemTime(38) > 0 && AnimElemTime(48) < 0
trigger5 = AnimElemTime(51) > 0 && AnimElemTime(60) < 0
trigger6 = AnimElemTime(62) > 0 && AnimElemTime(72) < 0
trigger7 = AnimElemTime(76) > 0 && AnimElemTime(87) < 0
x = -0.52374301676

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElem = 14
trigger2 = AnimElem = 25
trigger3 = AnimElem = 36
trigger4 = AnimElem = 48
trigger5 = AnimElem = 60
trigger6 = AnimElem = 72
trigger7 = AnimElem = 87
x = 0

[State 3050, HitDef: High]
type = HitDef
triggerAll = !var(16) && var(15) < 3
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 21
trigger4 = AnimElem = 22 && !MoveContact && !MoveReversed
trigger5 = AnimElem = 32
trigger6 = AnimElem = 33 && !MoveContact && !MoveReversed
trigger7 = AnimElem = 56
trigger8 = AnimElem = 57 && !MoveContact && !MoveReversed
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -10
air.cornerPush.velOff = 0
yAccel = 0.78125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, HitDef: Low]
type = HitDef
triggerAll = !var(16) && var(15) < 4
trigger1 = AnimElem = 44
trigger2 = AnimElem = 45 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 68
trigger4 = AnimElem = 69 && !MoveContact && !MoveReversed
attr = S, HA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -10
air.cornerPush.velOff = 0
yAccel = 0.78125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 86), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, HitDef: Final]
type = HitDef
triggerAll = !var(16) && var(15) < 5
trigger1 = AnimElem = 83
trigger2 = AnimElem = 84 && !MoveContact && !MoveReversed
ID = 3000
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -11.1731843575, -7.5
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -11.1731843575, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5859375
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3000) > 1
ID = 3000
keepOne = 1
excludeID = 3000
ignoreHitPause = 1

[State 3050, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3000)
trigger1 = !(Target(3000), Time)
value = 3015
ID = 3000
ignoreHitPause = 1

[State 3050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(85) >= 0
moveType = I

[State 3050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<DEADLY DOUBLE COMBINATION>=
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
trigger1 = AnimElemTime(5) < 0
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
pos = -ceil(22 * const(size.xScale)), -132
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

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 4
x = ceil(8 * const(size.xScale))

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = ceil(13 * const(size.xScale))

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
x = ceil(4 * const(size.xScale))

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
x = ceil(1 * const(size.xScale))

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
trigger2 = AnimElem = 14
x = -ceil(1 * const(size.xScale))

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12
x = -ceil(7 * const(size.xScale))

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 13
x = -ceil(4 * const(size.xScale))

[State 3100, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1
channel = 0

[State 3100, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 4, 2
channel = 0

[State 3100, Woosh Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 2
channel = 1

[State 3100, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7
time = 18
ampl = -6
freq = 120

[State 3100, Slamming Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 40, 1
channel = 5

[State 3100, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7
ID = 3100
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 36, 54
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.78125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3100, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) <= 0
trigger1 = HitPauseTime <= 34
value = 3100
elem = 8
ignoreHitPause = 1

[State 3100, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3100) > 1
ID = 3100
keepOne = 1
excludeID = 3100
ignoreHitPause = 1

[State 3100, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3100)
value = 3115
ID = 3100
ignoreHitPause = 1
persistent = 0

[State 3100, ChangeState]
type = ChangeState
trigger1 = NumTarget(3100)
trigger1 = MoveHit && Target, Alive
value = 3110

[State 3100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
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

[State 3110, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3110, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3115

[State 3110, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget
pos = ceil(50 * const(size.xScale)), 0

[State 3110, Width]
type = Width
trigger1 = !Time && NumTarget
edge = 55, 0

[State 3110, PosAdd]
type = PosAdd
triggerAll = NumTarget
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
x = -ceil(1 * const(size.xScale))

[State 3110, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 5
x = -ceil(7 * const(size.xScale))

[State 3110, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 6
x = -ceil(4 * const(size.xScale))

[State 3110, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 12
x = -ceil(13 * const(size.xScale))

[State 3110, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 13
x = -ceil(6 * const(size.xScale))

[State 3110, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 14
x = ceil(5 * const(size.xScale))

[State 3110, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 15
x = ceil(2 * const(size.xScale))

[State 3110, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 16
x = ceil(8 * const(size.xScale))

[State 3110, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 18
x = ceil(7 * const(size.xScale))

[State 3110, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 28
x = -ceil(2 * const(size.xScale))

[State 3110, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 29
x = -ceil(14 * const(size.xScale))

[State 3110, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 30
x = -ceil(21 * const(size.xScale))

[State 3110, Woosh Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 17
value = 1, 2
channel = 1

[State 3110, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 18
value = 2, 2
channel = 2

[State 3110, Hit Sound 2]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 18
value = 2, 3100
channel = 3

[State 3110, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElem = 18
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(55 * const(size.xScale)), -45
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3110, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 18
time = 24
ampl = -8
freq = 120

[State 3110, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 18
value = floor(ifElse(140 * fvar(11) < 7, -7, -140 * fvar(11)))

[State 3110, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 18
value = 36

[State 3110, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 18
value = 1

[State 3110, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 18
var(13) = 1

[State 3110, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 18
var(15) = 1
ignoreHitPause = 1

[State 3110, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 18
value = 3116

[State 3110, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 21
value = 820, 0
channel = 5

[State 3110, Impact Dust]
type = Helper
trigger1 = NumTarget && AnimElem = 21
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P2
facing = -1
ownPal = 1

[State 3110, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<HIT BY DEADLY DOUBLE COMBINATION>=
;Target
[StateDef 3115]
type = S
moveType = H
physics  = N
velSet = 0, 0
sprPriority = 0
faceP2 = 1

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


;Being Slammed
[StateDef 3116]
type = U
moveType = H
physics = N
velset = 0, 0

[State 3116, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5070

[State 3116, End]
type = ChangeState
trigger1 = Time > 5
value = 3117


;Hitting the Ground
[StateDef 3117]
type = L
moveType = H
physics = N
velSet = 0, 0

[State 3117, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5100

[State 3117, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3117, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 3117, EnvShake]
type = EnvShake
trigger1 = !Time
time = 24
ampl = -8

[State 3117, End]
type = ChangeState
trigger1 = !AnimTime
trigger2 = Anim = 5100
trigger2 = Time > 5
value = 3118


;Bouncing Back
[StateDef 3118]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -2.23463687151, ifElse(GetHitVar(chainID) = 3150, -20, -10)
sprPriority = 0

[State 3118, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5061

[State 3118, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 3118, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5859375

[State 3118, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 18
ampl = -6
freq = 120

[State 3118, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;<MAX DEADLY DOUBLE COMBINATION>=
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

[State 3150, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
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
pos = -ceil(22 * const(size.xScale)), -132
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3150, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 4
x = ceil(8 * const(size.xScale))

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = ceil(13 * const(size.xScale))

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
x = ceil(4 * const(size.xScale))

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
x = ceil(1 * const(size.xScale))

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
trigger2 = AnimElem = 14
x = -ceil(1 * const(size.xScale))

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12
x = -ceil(7 * const(size.xScale))

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 13
x = -ceil(4 * const(size.xScale))

[State 3150, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1
channel = 0

[State 3150, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 4, 2
channel = 0

[State 3150, Woosh Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 2
channel = 1

[State 3150, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7
time = 18
ampl = -6
freq = 120

[State 3150, Slamming Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 40, 1
channel = 5

[State 3150, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7
ID = 3150
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 126 < 7, 7, fvar(11) * 126)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 36, 54
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.78125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) <= 0
trigger1 = HitPauseTime <= 34
value = 3100
elem = 8
ignoreHitPause = 1

[State 3150, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3150) > 1
ID = 3150
keepOne = 1
excludeID = 3150
ignoreHitPause = 1

[State 3150, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3150)
value = 3115
ID = 3150
ignoreHitPause = 1
persistent = 0

[State 3150, ChangeState]
type = ChangeState
trigger1 = NumTarget(3150)
trigger1 = MoveHit && Target, Alive
value = 3160

[State 3150, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 3150, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Success
[StateDef 3160]
type = S
anim = 3110
physics = N
moveType = A
velSet = 0, 0

[State 3160, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3160, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3115

[State 3160, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget
pos = (50 * const(size.xScale)), 0

[State 3160, Width]
type = Width
trigger1 = !Time && NumTarget
edge = 55, 0

[State 3160, PosAdd]
type = PosAdd
triggerAll = NumTarget
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
x = -ceil(1 * const(size.xScale))

[State 3160, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 5
x = -ceil(7 * const(size.xScale))

[State 3160, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 6
x = -ceil(4 * const(size.xScale))

[State 3160, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 12
x = -ceil(13 * const(size.xScale))

[State 3160, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 13
x = -ceil(6 * const(size.xScale))

[State 3160, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 14
x = ceil(5 * const(size.xScale))

[State 3160, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 15
x = ceil(2 * const(size.xScale))

[State 3160, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 16
x = ceil(8 * const(size.xScale))

[State 3160, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 18
x = ceil(7 * const(size.xScale))

[State 3160, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 28
x = -ceil(2 * const(size.xScale))

[State 3160, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 29
x = -ceil(14 * const(size.xScale))

[State 3160, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 30
x = -ceil(21 * const(size.xScale))

[State 3160, Woosh Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 17
value = 1, 2
channel = 1

[State 3160, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 18
value = 2, 2
channel = 2

[State 3160, Hit Sound 2]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 18
value = 2, 3100
channel = 3
ignoreHitPause = 1
persistent = 0

[State 3160, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElem = 18
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(55 * const(size.xScale)), -45
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3160, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 18
time = 24
ampl = -8
freq = 120

[State 3160, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 18
value = floor(ifElse(168 * fvar(11) < 7, -7, -168 * fvar(11)))

[State 3160, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 18
value = 36

[State 3160, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 18
value = 1

[State 3160, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 18
var(13) = 1

[State 3160, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 18
var(15) = 1
ignoreHitPause = 1

[State 3160, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 18
value = 3116

[State 3160, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 21
value = 820, 0
channel = 5

[State 3160, Impact Dust]
type = Helper
trigger1 = NumTarget && AnimElem = 21
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P2
facing = -1
ownPal = 1

[State 3160, Juggle Reset]
type = VarSet
trigger1 = NumTarget && AnimElem = 18 && !var(29)
var(15) = 0

[State 3160, MAX Deadly Double Combination Juggle Flag]
type = VarAdd
trigger1 = NumTarget && AnimElem = 18
var(29) = 1
persistent = 0

[State 3160, Juggle Flag]
type = VarSet
trigger1 = var(29) = 2
var(16) = 1

[State 3160, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;<TOTAL DESTRUCTION>=
[StateDef 3200]
type = S
physics = N
moveType = A
anim = 3200
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
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3200, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Corner Push]
type = VarSet
trigger1 = AnimElem = 6
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = AnimElem = 6 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = AnimElem = 6
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(15) < 0
time = 1
value = SCA

[State 3200, SuperPause FX]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -ceil(14 * const(size.xScale)), -90
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3200, SuperPause]
type = SuperPause
trigger1 = AnimElem = 6
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = -ceil(19 * const(size.xScale))

[State 3200, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1
channel = 0

[State 3200, VarSet]
type = VarSet
trigger1 = AnimElem = 13
var(40) = 480

[State 3200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<TOTAL DESTRUCTION: ACTIVATE>=
[StateDef 3250]
type = S
physics = N
moveType = A
anim = 3250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 3250, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 1
channel = 0

[State 3250, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 3250, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
ID = 3250
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0, 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 12, 12
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
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.78125
fall = 0
air.fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := -1)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 102), var(36) := -82
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
numHits = 0

[State 3250, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3250) > 1
ID = 3250
keepOne = 1
excludeID = 3250
ignoreHitPause = 1

[State 3250, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3250)
value = 3265
ID = 3250
ignoreHitPause = 1
persistent = 0

[State 3250, ChangeState]
type = ChangeState
trigger1 = NumTarget(3250)
trigger1 = MoveHit && Target, Alive
value = 3260

[State 3250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 3250, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3260]
type = S
physics = N
moveType = A
anim = 3260
velSet = 0, 0
sprPriority = 1

[State 3260, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(3) < 0
edge = 100, 0

[State 3260, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 2
value = floor(ifElse(224 * fvar(11) < 7, -7, -224 * fvar(11)))

[State 3260, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 2
value = 36

[State 3260, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 2
value = 1

[State 3260, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 2
var(13) = 1

[State 3260, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 2
var(15) = 1
ignoreHitPause = 1

[State 3260, Explosion]
type = Explod
trigger1 = NumTarget && AnimElem = 2
anim = 8030
sprPriority = 4
scale = 0.75, 0.75
posType = P1
pos = ceil(110 * const(size.xScale)), -78
facing = 1
vFacing = 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3260, Explosion Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 2
value = 2, 3260
channel = 2

[State 3260, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 2
time = 18
ampl = -6
freq = 120

[State 3260, AllPalFX]
type = BGPalFX
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
time = 1
add = 0,0,0
invertall = 1

[State 3260, AllPalFX]
type = BGPalFX
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
time = 1
add = -256,-256,-256

[State 3260, AssertSpecial]
type = AssertSpecial
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
flag = NoFG

[State 3260, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && AnimElem = 3
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3260, Flame Particle Timer Set]
type = Null
trigger1 = NumTarget && AnimElem = 3
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 28, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3260, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 3
value = 3266

[State 3261, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = ifElse(EnemyNear, Alive, 3261, 3290)


;After Throw
[StateDef 3261]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -8.93854748603, -7.5
sprPriority = 0

[State 3261, PalFX]
type = PalFX
trigger1 = !Time
time = 28
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4

[State 3261, Flame Particles]
type = Helper
trigger1 = !Time && !NumHelper(8155)
trigger1 = var(43) := ID
helperType = Normal
stateNo = 8155
ID = 8155
name = "Flame Particles"
posType = P1
ownPal = 1
ignoreHitPause = 1

[State 3260, Flame Particle Timer Set]
type = Null
trigger1 = !Time && NumHelper(8155)
trigger1 = Cond(NumHelper(8155), Helper(8155), Cond(1, var(44) := 28, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3261, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5061

[State 3261, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 3261, VelAdd]
type = VelAdd
Trigger1 = 1
x = 0.05237430167
y = 0.5126953125

[State 3261, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 18
ampl = -6
freq = 120

[State 3261, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100


;<TOTAL DESTRUCTION: ACTIVATE (TARGET)>==
;Target
[StateDef 3265]
type = S
moveType = H
physics  = N
velSet = 0, 0
sprPriority = 0
faceP2 = 1

[State 3265, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3265, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3265, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3265


;After Throw
[StateDef 3266]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -10.0558659218, -7.5
sprPriority = 0

[State 3266, PalFX]
type = PalFX
trigger1 = !Time
time = 28
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4

[State 3266, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5061

[State 3266, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 3266, VelAdd]
type = VelAdd
Trigger1 = 1
x = 0.05237430167
y = 0.5126953125

[State 3266, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 18
ampl = -6
freq = 120

[State 3266, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;<TOTAL DESTRUCTION: DANGER>=
;Attempt
[StateDef 3270]
type = S
physics = N
moveType = A
anim = 3270
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 3270, Voice]
type = PlaySnd
trigger1 = !Time
value = 3270, 0
channel = 0

[State 3270, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 0
channel = 1

[State 3270, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = ceil(18 * const(size.xScale))

[State 3270, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = ceil(12 * const(size.xScale))

[State 3270, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
x = ceil(5 * const(size.xScale))

[State 3270, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = ceil(27 * const(size.xScale))

[State 3270, PosAdd]
type = PosAdd
trigger1 = AnimElem = 16
x = -ceil(16 * const(size.xScale))

[State 3270, PosAdd]
type = PosAdd
trigger1 = AnimElem = 17
x = -ceil(30 * const(size.xScale))

[State 3270, PosAdd]
type = PosAdd
trigger1 = AnimElem = 18
x = -ceil(10 * const(size.xScale))

[State 3270, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3 && !var(37)
trigger1 = P2BodyDist x < 55
attr = S, HT
hitFlag = M-
priority = 7, Miss
getPower = 0,0
givePower = 0,0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -60
numHits = 0
p1StateNo = 3280

[State 3270, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 3270, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw
[Statedef 3280]
type = S
physics = N
moveType = A
anim = 3280
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3280, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3280, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3285

[State 3280, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = ceil(18 * const(size.xScale))

[State 3280, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = ceil(12 * const(size.xScale))

[State 3280, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = ceil(5 * const(size.xScale))

[State 3280, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = ceil(27 * const(size.xScale))

[State 3280, Width]
type = Width
trigger1 = AnimElemTime(2) < 0
edge = 80, 0

[State 3280, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = ceil(81 * const(size.xScale)), 0

[State 3280, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(43 * const(size.xScale)), 0

[State 3280, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(42 * const(size.xScale)), 0

[State 3280, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(27 * const(size.xScale)), 0

[State 3280, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(23 * const(size.xScale)), 0

[State 3280, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = ceil(26 * const(size.xScale)), 0

[State 3280, TargetBind 7]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = ceil(30 * const(size.xScale)), 0

[State 3280, TargetBind 8]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = ceil(18 * const(size.xScale)), 0

[State 3280, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 7
value = floor(ifElse(301 * fvar(11) < 7, -7, -301 * fvar(11)))

[State 3280, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 7
value = 36

[State 3280, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 7
value = 1

[State 3280, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 7
var(13) = 1

[State 3280, Juggle Reset]
type = VarSet
trigger1 = NumTarget && AnimElem = 7
var(15) = 0
ignoreHitPause = 1

[State 3280, Explosion]
type = Explod
trigger1 = NumTarget && AnimElem = 7
anim = 8030
sprPriority = 4
scale = 0.75, 0.75
posType = P1
pos = ceil(32 * const(size.xScale)), -60
facing = 1
vFacing = 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3280, Explosion Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 7
value = 2, 3260
channel = 2

[State 3280, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 7
time = 18
ampl = -6
freq = 120

[State 3280, AllPalFX]
type = BGPalFX
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
time = 1
add = 0,0,0
invertall = 1

[State 3280, AllPalFX]
type = BGPalFX
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
time = 1
add = -256,-256,-256

[State 3280, AssertSpecial]
type = AssertSpecial
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
flag = NoFG

[State 3280, Flame Particles]
type = Helper
trigger1 = NumTarget && AnimElem = 9
trigger1 = !NumHelper(8150)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3280, Flame Particle Timer Set]
type = Null
trigger1 = NumTarget && AnimElem = 9
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 34, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3280, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 9
value = 3286

[State 3280, End]
type = ChangeState
trigger1 = !AnimTime
value = ifElse(EnemyNear, Alive, 3281, 3290)


;After Throw
[StateDef 3281]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -7.82122905028, -7.5
sprPriority = 0

[State 3281, PalFX]
type = PalFX
trigger1 = !Time
time = 30
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4

[State 3281, Flame Particles]
type = Helper
trigger1 = !Time && !NumHelper(8155)
trigger1 = var(43) := ID
helperType = Normal
stateNo = 8155
ID = 8155
name = "Flame Particles"
posType = P1
ownPal = 1
ignoreHitPause = 1

[State 3281, Flame Particle Timer Set]
type = Null
trigger1 = !Time && NumHelper(8155)
trigger1 = Cond(NumHelper(8155), Helper(8155), Cond(1, var(44) := 30, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3281, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5061

[State 3281, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 3281, VelAdd]
type = VelAdd
Trigger1 = 1
x = 0.05237430167
y = 0.5126953125

[State 3281, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 18
ampl = -6
freq = 120

[State 3281, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100


;<TOTAL DESTRUCTION: DANGER (TARGET)>==
;Target
[StateDef 3285]
type = S
moveType = H
physics  = N
velSet = 0, 0
sprPriority = 0
faceP2 = 1

[State 3285, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3285, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3285, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3285


;After Throw
[StateDef 3286]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -8.93854748603, -8.75
sprPriority = 0

[State 3286, PalFX]
type = PalFX
trigger1 = !Time
time = 34
mul = 128, 128, 128
sinAdd = 96, 96, 96, 4

[State 3286, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 3286, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 3286, VelAdd]
type = VelAdd
Trigger1 = 1
x = 0.05237430167
y = 0.5126953125

[State 3286, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 18
ampl = -6
freq = 120

[State 3286, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100


;After Throw
[StateDef 3290]
type = A
physics = N
moveType = I
velSet = -10.0558659218, -7.5
sprPriority = 1

[State 3290, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 3290

[State 3290, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3290, VelAdd]
type = VelAdd
Trigger1 = 1
x = 0.05237430167
y = 0.5126953125

[State 3290, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 18
ampl = -6
freq = 120

[State 3290, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;<AUTOMATED MAULING>=
[Statedef 3300]
type = S
physics = S
movetype = I
anim = 3300
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -3000
facep2 = 1

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
trigger1 = 1
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
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
trigger1 = AnimElemTime(12) < 0
time = 1
value = SCA

[State 3300, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 183, 0
channel = 0

[State 3300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 3300, ReversalDef]
type = ReversalDef
trigger1 = !MoveHit && var(26) <= 0
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(12) < 0
ID = 3300
attr = S, HT
reversal.attr = SCA, NA, SA, HA
pauseTime = 12, 12
sparkNo = -1
sparkXY = 0, 0
hitSound = S3, 0
fall = 1
fall.recover = 0
numHits = 0

[State 3300, Reversal Spark]
type = Helper
trigger1 = NumTarget(3300)
trigger1 = !(Target(3300), IsHelper) && MoveHit
helperType = Normal
stateNo = 8020
ID = 8000
name = "Spark"
postype = P1
pos = ceil(28 * const(size.xScale)), -78
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
persistent = 0

[State 3300, TargetState]
type = TargetState
trigger1 = NumTarget(3300)
trigger1 = !(Target(3300), IsHelper) && MoveHit
value = 3315
ignoreHitPause = 1
persistent = 0

[State 3300, ChangeState]
type = ChangeState
trigger1 = NumTarget(3300)
trigger1 = !(Target(3300), IsHelper) && MoveHit
value = 3310

[State 3300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

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

[State 3310, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3310, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3315

[State 3310, SuperPause FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(18 * const(size.xScale)), -102
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3310, SuperPause]
type = SuperPause
trigger1 = !Time
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500, 0
darken = 0

[State 3310, AfterImage Off]
type = AfterImage
trigger1 = AnimElemTime(12) = 0
trigger2 = AnimElemTime(15) = 0
trigger3 = AnimElemTime(17) = 0
trigger4 = AnimElemTime(19) = 0
trigger5 = AnimElemTime(24) = 0
time = 0

[State 3310, AllPalFX]
type = AllPalFX
trigger1 = AnimElemTime(12) = 1
trigger2 = AnimElemTime(16) = 14
trigger3 = AnimElemTime(18) = 14
trigger4 = AnimElemTime(23) = 2
time = 10
sinAdd = -255, -255, -255, 120

[State 3310, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
trigger2 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
trigger3 = AnimElemTime(19) >= 0 && AnimElemTime(20) < 0
trigger4 = AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
time = 1
add = -256,-256,-256

[State 3310, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(15) >= 0 && AnimElemTime(25) < 0
flag = NoBarDisplay
flag2 = NoFG

[State 3310, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(15) >= 0 && AnimElemTime(36) < 0
flag = NoMusic

[State 3310, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(15) = 60
value = 3310, ifElse((Random < 5), 1, 0)
channel = 0

[State 3310, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 15
value = 3316

[State 3310, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(25) < 0
edge = 60, 0

[State 3310, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
pos = ceil(50 * const(size.xScale)), 0

[State 3310, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
pos = ceil(80 * const(size.xScale)), -68

[State 3310, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(20) >= 0 && AnimElemTime(24) < 0
pos = ceil(5 * const(size.xScale)), -45

[State 3310, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(24) >= 0 && AnimElemTime(40) < 0
pos = ceil(50 * const(size.xScale)) + (EnemyNear,Const(size.Ground.Front) + Const(size.Ground.Front)), 0

[State 3310, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 17
trigger2 = NumTarget && AnimElem = 19
x = ceil(96 * const(size.xScale))

[State 3310, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 16
trigger2 = NumTarget && AnimElem = 18
value = 2, 2
channel = 2

[State 3310, Hit Sound 2]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 20
value = 2, 5
channel = 2

[State 3310, Hit Spark 1]
type = Helper
trigger1 = NumTarget && AnimElem = 16
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(50 * const(size.xScale)), -70
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3310, Hit Spark 2]
type = Helper
trigger1 = NumTarget && AnimElem = 18
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(82 * const(size.xScale)), -65
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3310, Hit Spark 3]
type = Helper
trigger1 = NumTarget && AnimElem = 20
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(2 * const(size.xScale)), -45
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3310, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 16
trigger2 = NumTarget && AnimElem = 18
trigger3 = NumTarget && AnimElem = 20
time = 18
ampl = -6
freq = 120

[State 3310, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 16
trigger2 = NumTarget && AnimElem = 18
trigger3 = NumTarget && AnimElem = 20
value = floor(ifElse(126 * fvar(11) < 7, -7, -126 * fvar(11)))
kill = 0

[State 3310, Damage 2]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 25
trigger2 = NumTarget && AnimElem = 32
value = floor(ifElse(14 * fvar(11) < 7, -7, -14 * fvar(11)))
kill = 0

[State 3310, Damage 3]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 36
value = floor(ifElse(14 * fvar(11) < 7, -7, -14 * fvar(11)))

[State 3310, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 16
trigger2 = NumTarget && AnimElem = 18
trigger3 = NumTarget && AnimElem = 20
trigger4 = NumTarget && AnimElem = 25
trigger5 = NumTarget && AnimElem = 32
trigger6 = NumTarget && AnimElem = 36
value = 36

[State 3310, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 16
trigger2 = NumTarget && AnimElem = 18
trigger3 = NumTarget && AnimElem = 20
trigger4 = NumTarget && AnimElem = 25
trigger5 = NumTarget && AnimElem = 32
trigger6 = NumTarget && AnimElem = 36
value = 1

[State 3310, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 16
trigger2 = NumTarget && AnimElem = 18
trigger3 = NumTarget && AnimElem = 20
trigger4 = NumTarget && AnimElem = 25
trigger5 = NumTarget && AnimElem = 32
trigger6 = NumTarget && AnimElem = 36
var(13) = 1

[State 3310, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 16
trigger2 = NumTarget && AnimElem = 18
trigger3 = NumTarget && AnimElem = 20
trigger4 = NumTarget && AnimElem = 25
trigger5 = NumTarget && AnimElem = 32
trigger6 = NumTarget && AnimElem = 36
var(15) = 1
ignoreHitPause = 1

[State 3310, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(16) >= 0 && AnimElemTime(20) < 0
trigger2 = AnimElemTime(25) >= 0
value = 2

[State 3310, SprPriority 2]
type = SprPriority
trigger1 = AnimElemTime(20) >= 0 && AnimElemTime(24) < 0
value = -1

[State 3310, Leg Explod 1]
type = Explod
trigger1 = NumTarget && AnimElem = 20
anim = 3311
ID = 3311
sprPriority = 3
bindTime = -1
removeTime = -2
posType = P1
pos = 0, 0
scale = const(size.xScale), 1
ownPal = 1

[State 3310, Leg Explod 2]
type = Explod
trigger1 = NumTarget && AnimElem = 25
anim = 3312
ID = 3312
sprPriority = 3
bindTime = -1
removeTime = -2
posType = P1
pos = 0, 0
scale = const(size.xScale), 1
ownPal = 1

[State 3310, Step]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 25
trigger2 = NumTarget && AnimElem = 32
trigger3 = NumTarget && AnimElem = 36
value = 184, 0
channel = 1

[State 3310, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 25
value = 3317

[State 3310, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<HIT BY AUTOMATED MAULING>=
;Target
[StateDef 3315]
type = S
moveType = H
physics  = N
velSet = 0, 0

[State 3315, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3315, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3315, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = Anim
elem = AnimElemNo(0)


;Target 2
[StateDef 3316]
type = S
moveType = H
physics  = N
velSet = 0, 0

[State 3316, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3316, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
value = 2

[State 3316, Turn]
type = Turn
trigger1 = AnimElemTime(5) = 0

[State 3316, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
value = 45

[State 3316, ChangeAnim]
type = ChangeAnim2
trigger1 = !Time
value = 3315


;Target 3
[StateDef 3317]
type = L
physics = N
movetype = H
ctrl = 0

[State 3317, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5110

[State 3317, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3317, VarSet]
type = VarSet
trigger1 = !Time
sysvar(0) = 1

[State 3317, ChangeState]
type = SelfState
trigger1 = Time >= 128
value = 5110