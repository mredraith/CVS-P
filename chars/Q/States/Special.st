; ________________________________________________
;| Q by KarmaCharmeleon			|
; 
;
;<SPECIAL MOVES>===
;

;<DASHING STRAIGHT>=
[StateDef 1000]
type = S
physics = N
moveType = A
anim = 1000
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(40)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((EnemyNear, GetHitVar(chainID) = 1301) || (EnemyNear, GetHitVar(chainID) = 3150), 2, 0)

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1020, ifElse(var(10) = 1, 1010, 1000))

[State 1000, Dashing Head Attack Detector]
type = VarSet
trigger1 = !Time && !AILevel
trigger2 = !Time && AILevel
trigger2 = (EnemyNear, MoveType != H)
var(14) = 1

[State 1000, Button Detect]
type = VarSet
triggerAll = !AILevel
trigger1 = var(10) = 0 && command != "holdx"
trigger2 = var(10) = 1 && command != "holdy"
trigger3 = var(10) = 2 && command != "holdz"
var(14) = 0

[State 1000, Button Detect]
type = VarSet
triggerAll = AILevel
trigger1 = P2StateType != C
var(14) = 0

[State 1000, Dashing Head Attack]
type = ChangeState
trigger1 = AnimElem = 9 && var(14)
value = 1050

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 3
channel = 0

[State 1000, Woosh Effect]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1, 2
channel = 1

[State 1000, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110, 0

[State 1000, Dust Helper]
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

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = ceil(20 * const(size.xScale))

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = ceil(17 * const(size.xScale))

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = ceil(27 * const(size.xScale))

[State 1000, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = ifElse(var(10) = 2, 8.93854748603, ifElse(var(10) = 1, 7.82122905028, 6.70391061453))

[State 1000, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(17) < 0
x = -0.27932960893

[State 1000, VelSet]
type = VelSet
trigger1 = AnimElem = 17
x = 0

[State 1000, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 14
trigger2 = AnimElem = 15 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 16 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 112, ifElse(var(10) = 1, 105, 98)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 112, ifElse(var(10) = 1, 105, 98)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
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
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -8.37988826816, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(17) >= 0
moveType = I

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<EX DASHING STRAIGHT>=
[StateDef 1030]
type = S
physics = N
moveType = A
anim = 1030
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -500
faceP2 = 1

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
var(25) = 22

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -(22 * const(size.xScale)), -110
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 3
channel = 0

[State 1030, Woosh Effect]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1, 2
channel = 3

[State 1030, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110, 0

[State 1030, Dust Helper]
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

[State 1030, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = ceil(20 * const(size.xScale))

[State 1030, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = ceil(17 * const(size.xScale))

[State 1030, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = ceil(27 * const(size.xScale))

[State 1030, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 6.70391061453

[State 1030, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(17) < 0
x = -0.27932960893

[State 1030, VelSet]
type = VelSet
trigger1 = AnimElem = 17
x = 0

[State 1030, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 14
trigger2 = AnimElem = 15 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 16 && !MoveContact && !MoveReversed
ID = 1030
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 126 < 7, 7, fvar(11) * 126)), 7
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
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1030, ChangeAnim]
type = ChangeAnim
trigger1 = MoveHit && NumTarget(1030)
value = 1040
elem = 14
ignoreHitPause = 1
persistent = 0

[State 1030, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(28) && NumTarget(1030)
var(15) = 0

[State 1030, EX Dashing Straight Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1030)
var(28) = 1
persistent = 0

[State 1030, Juggle Flag]
type = VarSet
trigger1 = var(28) = 2
var(16) = 1

[State 1030, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1030) > 1
ID = 1030
keepOne = 1
excludeID = 1030
ignoreHitPause = 1

[State 1800, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1030)
trigger1 = !(Target(1030), Time)
value = 1045
ID = 1030
ignoreHitPause = 1

[State 1030, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(17) >= 0
moveType = I

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<HIT BY EX DASHING STRAIGHT>=
;Being Launched
[StateDef 1045]
type = A
moveType = H
physics = N
velSet = 0, 0

[State 1045, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 1045, End]
type = ChangeState
trigger1 = HitShakeOver
value = 1046


;Heading Towards Wall
[StateDef 1046]
type = A
moveType = H
physics = N

[State 1046, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 1046, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 1046, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,1
ignoreHitPause = 1

[State 1046, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1046, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5900)
value = 5900

[State 1046, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5900)
value = 5030

[State 1046, Bounce Off Wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10 || FrontEdgeBodyDist <= 10
value = 1047

[State 1046, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;Impacting Wall
[StateDef 1047]
type = A
moveType = H
physics = N

[State 1047, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 1047, PosSet]
type = PosSet
trigger1 = 1
x = -160 * Facing

[State 1047, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1047, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0, 1
ignoreHitPause = 1

[State 1047, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignoreHitPause = 1

[State 1047, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5901)
value = 5901

[State 1047, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5901)
value = 5000

[State 1047, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7, 0

[State 1047, Hitting the Wall FX]
type = Explod
trigger1 = !Time
anim = F72
pos = 0, floor(ScreenPos Y) - 50
posType = Back
sprPriority = 3

[State 1047, End]
type = ChangeState
trigger1 = Time >= 4
value = 1048


;Bouncing Off Wall
[Statedef 1048]
type = A
moveType = H
physics = N

[State 1048, Turn]
type = Turn
trigger1 = !Time && !SelfAnimExist(5902)

[State 1048, Gravity]
type = VelAdd
trigger1 = 1
y = 0.390625

[State 1048, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(SelfAnimExist(5902), 1.11731843575, -1.11731843575)
y = -7.5

[State 1048, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5902)
value = 5902

[State 1048, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5902)
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 1048, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1048, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 1048, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0, 0
ignoreHitPause = 1

[State 1048, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1048, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = Vel Y > 0 && Pos Y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 1048, End]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100



;<DASHING HEAD ATTACK>=
[StateDef 1050]
type = S
physics = N
moveType = A
anim = 1050
ctrl = 0
sprPriority = 1

[State 1050, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1070, ifElse(var(10) = 1, 1060, 1050))

[State 1050, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 3
channel = 0

[State 1050, Woosh Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 1050, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) < 0
x = -0.27932960893

[State 1050, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 0

[State 1050, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = ceil(5 * const(size.xScale))

[State 1050, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = ceil(3 * const(size.xScale))

[State 1050, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = ceil(16 * const(size.xScale))

[State 1050, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 10
x = ceil(2 * const(size.xScale))

[State 1050, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6 && !MoveContact && !MoveReversed
ID = 1050
attr = S, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
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
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1050, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1050) > 1
ID = 1050
keepOne = 1
excludeID = 1050
ignoreHitPause = 1

[State 1050, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1050)
trigger1 = !(Target(1050), Time)
value = ifElse(Target(1050), StateType = A, 5425, 5420)
ID = 1050
ignoreHitPause = 1

[State 1050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<SLAMMED AGAINST THE GROUND>=
;Being Slammed (Standing)
[StateDef 5420]
type = U
moveType = H
physics = N
velset = 0,0

[State 5420, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = ifElse(SelfAnimExist(5111) || SelfAnimExist(5112), 5012, 5070)

[State 5420, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5420 + (StateType = C))
value = 5420 + (StateType = C)

[State 5420, End]
type = SelfState
trigger1 = HitShakeOver && pos y < 0
trigger2 = StateType = L
value = 5030

[State 5420, End]
type = ChangeState
trigger1 = HitShakeOver && pos y >= 0
value = 5421


;Hitting the Ground
[StateDef 5421]
type = L
moveType = H
physics = N
velSet = 0,0

[State 5421, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5102) && PrevStateNo != 5426, 5102, ifElse(SelfAnimExist(5101) && PrevStateNo != 5426, 5101, 5100))

[State 5421, ChangeAnim]
type = ChangeAnim
triggerall = !Time && PrevStateNo != 5426
trigger1 = SelfAnimExist(5422)
value = 5422

[State 5421, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5421, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 5421, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = -4

[State 5421, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,1

[State 5421, Hitting the Floor FX]
type = Explod
trigger1 = !Time
anim = F61
posType = P1
pos = 0, 0
sprPriority = -3

[State 5421, End]
type = ChangeState
trigger1 = !AnimTime
trigger2 = Anim = 5100 + (Anim % 10)
trigger2 = Time = 4
trigger2 = Anim != 5422
trigger3 = Anim = 5422
trigger3 = AnimTime = 0 || Time = 12
value = 5422


;Bouncing Off Ground
[StateDef 5422]
type = L
moveType = H
physics = N

[State 5422, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5160 + Anim % 10), 5160 + Anim % 10, 5160)

[State 5422, ChangeAnim]
type = ChangeAnim
triggerall = !Time && Anim = 5422
trigger1 = SelfAnimExist(5424)
value = 5424

[State 5422, VelSet]
type = VelSet
trigger1 = !Time
y = -3.75

[State 5422, PosSet]
type = PosSet
trigger1 = !Time
y = const(movement.down.bounce.offset.y)

[State 5422, PosAdd]
type = PosAdd
trigger1 = !Time
x = const(movement.down.bounce.offset.x)

[State 5422, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.625

[State 5422, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5424
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = ifElse(SelfAnimExist(5162), 5162, ifElse(SelfAnimExist(5161), 5161, 5160))

[State 5422, End]
type = SelfState
trigger1 = GetHitVar(chainID) != 1050
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5110

[State 5422, End]
type = ChangeState
trigger1 = GetHitVar(chainID) = 1050
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5427


;Aerial Being Slammed (Hitshake)
[StateDef 5425]
type = A
moveType = H
physics = N
velSet = 0,0

[State 5425, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5070

[State 5425, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5425, ChangeAnim]
type = ChangeState
trigger1 = HitShakeOver
value = 5426


;Aerial Being Slammed (Knocked Away)
[StateDef 5426]
type = A
moveType = H
physics = N
ctrl = 0

[State 5426, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yaccel)

[State 5426, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 5426, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.trip.groundlevel)
value = 5421


;Recover
[StateDef 5427]
type = L
moveType = H
physics = N

[State 5427, FallEnvShake]
type = FallEnvShake
trigger1 = !Time

[State 5427, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5110 + (Anim % 10))
trigger1 = Anim = [5081,5089]
value = 5110 + (Anim % 10)
persistent = 0

[State 5427, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
triggerAll = Anim != [5110,5119]
trigger1 = Anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (Anim % 10))
value = 5170

[State 5427, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
triggerAll = Anim != [5110,5119]
trigger1 = Anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (Anim % 10))
value = 5170 + (Anim % 10)

[State 5427, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 5427, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 5427, VarSet]
type = VarSet
trigger1 = !Time
trigger1 = GetHitVar(fall.yVel) != 0
sysvar(1) = floor(vel y)

[State 5427, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = !sysvar(0)
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5427, Explod]
type = Explod
trigger1 = !Time
trigger1 = !sysvar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprPriority = ifElse(sysvar(1) <= Const720p(56), -10, 10)

[State 5427, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 5427, ChangeAnim]
type = ChangeAnim
triggerAll = Anim = [5171,5179]
triggerAll = SelfAnimExist(5110 + (Anim % 10))
trigger1 = !AnimTime
trigger2 = sysvar(0)
value = 5110 + (Anim % 10)
persistent = 0

[State 5427, ChangeAnim]
type = ChangeAnim
triggerAll = Anim != [5111,5119]
trigger1 = !AnimTime
trigger2 = sysvar(0)
value = 5110
persistent = 0

[State 5427, SelfState]
type = SelfState
triggerAll = !Alive
trigger1 = !AnimTime
trigger2 = sysvar(0)
trigger3 = Anim = [5110,5119]
value = 5150

[State 5427, VarSet]
type = VarSet
trigger1 = sysvar(0)
trigger1 = !Time
sysvar(0) = 0

[State 5427, VelMul]
type = VelMul
trigger1 = 1
x = 0.85

[State 5427, VelSet]
type = VelSet
trigger1 = abs(vel x) < const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5427, SelfState]
type = SelfState
trigger1 = !Time
trigger1 = GetHitVar(chainID) != 1050
trigger2 = Time >= 24
trigger2 = GetHitVar(chainID) = 1050
value = 5120



;<DASHING LEG ATTACK>=
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(40)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1100))

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 2
channel = 0

[State 1100, Woosh Effect]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1, 2
channel = 1

[State 1100, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110, 0

[State 1100, Dust Helper]
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

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = ceil(20 * const(size.xScale))

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = ceil(17 * const(size.xScale))

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = ceil(27 * const(size.xScale))

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = ifElse(var(10) = 2, 8.93854748603, ifElse(var(10) = 1, 7.82122905028, 6.70391061453))

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(12) < 0
x = -0.27932960893

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 12
x = 0

[State 1100, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 12
trigger2 = AnimElem = 13 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 105, ifElse(var(10) = 1, 98, 91)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 105, ifElse(var(10) = 1, 98, 91)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Trip
air.type = Trip
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1.11731843575, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -7.1875
air.cornerPush.velOff = 0
yAccel = 0.59814453125
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 86), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(14) >= 0
moveType = I

[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<EX DASHING LEG ATTACK>=
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1130
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -500
faceP2 = 1

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
var(25) = 24

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -ceil(22 * const(size.xScale)), -70
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1130, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 2
channel = 0

[State 1130, Woosh Effect]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1, 2
channel = 3

[State 1130, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110, 0

[State 1130, Dust Helper]
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

[State 1130, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = ceil(20 * const(size.xScale))

[State 1130, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = ceil(17 * const(size.xScale))

[State 1130, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = ceil(27 * const(size.xScale))

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 13.4078212291

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(17) < 0
x = -0.27932960893

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 17
x = 0

[State 1130, HitDef 1]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 12
trigger2 = AnimElem = 13 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = High
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -11.0509440309
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -8.37988826816, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 86), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 15
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = High
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6.70391061453, -4.46927374302
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -4.46927374302
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(16) >= 0
moveType = I

[State 1130, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<HIGH SPEED BARRAGE>=
[StateDef 1200]
type = S
physics = N
moveType = A
anim = 1200
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(40)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 2

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1220, ifElse(var(10) = 1, 1210, 1200))

[State 1200, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 11
trigger3 = AnimElem = 19
value = 1, 2
channel = 1

[State 1200, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
value = 17, 0

[State 1200, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(23) < 0
value = 25, 0

[State 1200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = ceil(26 * const(size.xScale))

[State 1200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 24
trigger2 = AnimElem = 27
x = -ceil(9 * const(size.xScale))

[State 1200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 25
trigger2 = AnimElem = 26
x = -ceil(4 * const(size.xScale))

[State 1200, HitDef: Light]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20)) && !var(10)
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
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
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef: Light]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20)) && !var(10)
trigger1 = AnimElem = 20
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef: Medium]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20)) && var(10) = 1
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 102), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef: Medium]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20)) && var(10) = 1
trigger1 = AnimElem = 20
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 102), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef: Heavy]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20)) && var(10) = 2
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 76), var(36) := -102
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef: Heavy]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20)) && var(10) = 2
trigger1 = AnimElem = 20
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 76), var(36) := -102
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(21) >= 0
moveType = I

[State 1200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<EX HIGH SPEED BARRAGE>=
[StateDef 1230]
type = S
physics = N
moveType = A
anim = 1230
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = -500
faceP2 = 1

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
var(25) = 80

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -ceil(35 * const(size.xScale)), -88
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1230, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 11
trigger3 = AnimElem = 19
trigger4 = AnimElem = 25
trigger5 = AnimElem = 33
trigger6 = AnimElem = 42
trigger7 = AnimElem = 50
value = 1, 2
channel = 3

[State 1230, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
value = 17, 0

[State 1230, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(57) < 0
value = 25, 0

[State 1230, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = ceil(26 * const(size.xScale))

[State 1230, PosAdd]
type = PosAdd
trigger1 = AnimElem = 57
trigger2 = AnimElem = 60
x = -ceil(9 * const(size.xScale))

[State 1230, PosAdd]
type = PosAdd
trigger1 = AnimElem = 58
trigger2 = AnimElem = 59
x = -ceil(4 * const(size.xScale))

[State 1230, Spark XY]
type = Null
trigger1 = AnimElem = 6
trigger1 = var(35) := 86 || var(36) := -90
trigger2 = AnimElem = 12
trigger2 = var(35) := 86 || var(36) := -75
trigger3 = AnimElem = 20
trigger3 = var(35) := 86 || var(36) := -90
trigger4 = AnimElem = 26
trigger4 = var(35) := 86 || var(36) := -75
trigger5 = AnimElem = 34
trigger5 = var(35) := 86 || var(36) := -90
trigger6 = AnimElem = 43
trigger6 = var(35) := 86 || var(36) := -75

[State 1230, HitDef: High]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 6
trigger2 = AnimElem = 20
trigger3 = AnimElem = 34
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
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
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, HitDef: Low]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 12
trigger2 = AnimElem = 26
trigger3 = AnimElem = 43
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
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
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, HitDef: Final]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 51
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1.53631284916, -12.5
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.53631284916, -12.5
air.cornerPush.velOff = 0
yAccel = 0.625
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 95), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(52) >= 0
moveType = I

[State 1230, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<CAPTURE & DEADLY BLOW>=
;Attempt
[StateDef 1300]
type = S
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
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(Random < 500, 1, 0)

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1302, ifElse(var(10) = 1, 1301, 1300))

[State 1300, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1100, 0
channel = 0

[State 1300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 0
channel = 1

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = ceil(10 * const(size.xScale))

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = ceil(14 * const(size.xScale))

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = ceil(15 * const(size.xScale))

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12
x = -ceil(28 * const(size.xScale))

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 13
x = -ceil(9 * const(size.xScale))

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 14
trigger2 = AnimElem = 15
x = -ceil(1 * const(size.xScale))

[State 1300, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4 && !var(37)
trigger1 = P2BodyDist x < 55
ID = ifElse(var(10) = 2, 1302, ifElse(var(10) = 1, 1301, 1300))
attr = S, ST
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
p1StateNo = 1310

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1300, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw
[Statedef 1310]
type = S
physics = N
moveType = A
anim = 1310
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1310, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1310, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1315

[State 1310, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1
channel = 0

[State 1310, Width]
type = Width
trigger1 = AnimElemTime(5) < 0
edge = 55, 0

[State 1310, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) < 0
pos = ceil(65 * const(size.xScale)), 0

[State 1310, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 0
pos = ceil(55 * const(size.xScale)), 0

[State 1310, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(10) < 0
pos = ceil(40 * const(size.xScale)), 0

[State 1310, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = ceil(40 * const(size.xScale)), -16

[State 1310, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(11) < 1
pos = ceil(40 * const(size.xScale)), -80

[State 1310, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = floor(ifElse(ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)) * fvar(11) < 7, -7, -ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)) * fvar(11)))

[State 1310, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = 36

[State 1310, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElemTime(11) = 0 * !var(20) * !var(40)
value = 72

[State 1310, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = 1

[State 1310, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
var(13) = 1

[State 1340, Juggle Reset]
type = VarSet
trigger1 = NumTarget && AnimElemTime(11) = 0
var(15) = 0
ignoreHitPause = 1

[State 1310, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(11) = 1
value = 1316

[State 1310, Voice]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(10) = 0
value = 4, 2
channel = 0

[State 1310, Woosh]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(10) = 0
value = 1, 2
channel = 1

[State 1310, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = 2, 2
channel = 2

[State 1310, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElemTime(11) = 0
helperType = Normal
stateNo = 8013
ID = 8000
name = "Spark"
posType = P1
pos = ceil(45 * const(size.xScale)), -95
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1310, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(11) = 0
time = 14
ampl = -4
freq = 120

[State 1310, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<CAPTURE & DEADLY BLOW (TARGET)>==
;Being Thrown
[StateDef 1315]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 1315, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1315

[State 1315, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 1315, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 1316]
type = A
physics = N
movetype = H
ctrl = 0
velSet = ifElse(GetHitVar(chainID) = 1302, -4.18994413408, ifElse(GetHitVar(chainID) = 1301, -2.79329608939, -1.39664804469)), -12.5

[State 1316, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030
persistent = 0

[State 1316, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030
trigger1 = !AnimTime
value = 5050

[State 1316, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = [5050, 5059]
trigger1 = vel y >= ifElse(Anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(Anim + 10)
value = Anim + 10
persistent = 0

[State 1316, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 1316, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.537109375

[State 1316, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 1316, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 1316, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;<EX CAPTURE & DEADLY BLOW>=
;Attempt
[StateDef 1330]
type = S
physics = N
moveType = A
anim = 1330
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

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
var(25) = 12

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -ceil(26 * const(size.xScale)), -100
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1330, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1100, 0
channel = 0

[State 1330, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 0
channel = 3

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = ceil(10 * const(size.xScale))

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = ceil(14 * const(size.xScale))

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = ceil(15 * const(size.xScale))

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12
x = -ceil(28 * const(size.xScale))

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimElem = 13
x = -ceil(9 * const(size.xScale))

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimElem = 14
trigger2 = AnimElem = 15
x = -ceil(1 * const(size.xScale))

[State 1330, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4 && !var(37)
trigger1 = P2BodyDist x < 55
attr = S, ST
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
p1StateNo = 1340

[State 1330, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1330, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw
[Statedef 1340]
type = S
physics = N
moveType = A
anim = 1310
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1340, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1340, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1345

[State 1340, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 48

[State 1340, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1
channel = 0

[State 1340, Width]
type = Width
trigger1 = AnimElemTime(5) < 0
edge = 55, 0

[State 1340, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) < 0
pos = ceil(65 * const(size.xScale)), 0

[State 1340, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 0
pos = ceil(55 * const(size.xScale)), 0

[State 1340, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(10) < 0
pos = ceil(40 * const(size.xScale)), 0

[State 1340, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = ceil(40 * const(size.xScale)), -16

[State 1340, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(11) < 1
pos = ceil(40 * const(size.xScale)), -80

[State 1340, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = floor(ifElse(105 * fvar(11) < 7, -7, -105 * fvar(11)))

[State 1340, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = 36

[State 1340, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = 1

[State 1340, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
var(13) = 1

[State 1340, Juggle Reset]
type = VarSet
trigger1 = NumTarget && AnimElemTime(11) = 0
var(15) = 0
ignoreHitPause = 1

[State 1340, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(11) = 1
value = 1346

[State 1340, Voice]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(10) = 0
value = 4, 2
channel = 0

[State 1340, Woosh]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(10) = 0
value = 1, 2
channel = 1

[State 1340, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = 2, 2
channel = 2

[State 1340, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElemTime(11) = 0
helperType = Normal
stateNo = 8013
ID = 8000
name = "Spark"
posType = P1
pos = ceil(45 * const(size.xScale)), -95
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1340, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(11) = 0
time = 14
ampl = -4
freq = 120

[State 1340, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<EX CAPTURE & DEADLY BLOW (TARGET)>==
;Being Thrown
[StateDef 1345]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 1345, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1315

[State 1345, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 1345, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 1346]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -2.79329608939, -15

[State 1346, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030
persistent = 0

[State 1346, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030
trigger1 = !AnimTime
value = 5050

[State 1346, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = [5050, 5059]
trigger1 = vel y >= ifElse(Anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(Anim + 10)
value = Anim + 10
persistent = 0

[State 1346, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 1346, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.537109375

[State 1346, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 1346, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 1346, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;<PUNCH ZERO COUNTER>=
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
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 11
trigger3 = AnimElem = 19
value = 1, 2
channel = 1

[State 2900, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
value = 17, 0

[State 2900, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(23) < 0
value = 25, 0

[State 2900, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = ceil(26 * const(size.xScale))

[State 2900, PosAdd]
type = PosAdd
trigger1 = AnimElem = 24
trigger2 = AnimElem = 27
x = -ceil(9 * const(size.xScale))

[State 2900, PosAdd]
type = PosAdd
trigger1 = AnimElem = 25
trigger2 = AnimElem = 26
x = -ceil(4 * const(size.xScale))

[State 2900, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
ID = 2900
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getPower = 0, 0
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
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.3125
air.cornerPush.velOff = 0
yAccel = 0.5859375
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 102), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, HitDef: Final]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 20
ID = 2900
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getPower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, -5.3125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.3125
air.cornerPush.velOff = 0
yAccel = 0.5859375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 102), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(21) >= 0
moveType = I

[State 2900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<KICK ZERO COUNTER>=
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
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 2
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 5
channel = 1

[State 2910, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 3.35195530726
y = -1.875

[State 2910, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 0
x = -0.05237430167
y = 0.29296875

[State 2910, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 2910, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 8 && !MoveContact && !MoveReversed
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0, 0
givepower = 36, 36
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
ground.velocity = -5.58659217877, -5.3125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.3125
air.cornerPush.velOff = 0
yAccel = 0.5859375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 92), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(9) >= 0
moveType = I

[State 2910, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 451
