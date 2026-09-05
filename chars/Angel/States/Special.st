; ________________________________________________
;| Angel by KarmaCharmeleon			|
; 
;
;SPECIAL MOVES==
;

;RED SKY OF YAPONESIA>=
[StateDef 1000]
type = S
physics = N
moveType = A
anim = 1000
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 0
channel = 0

[State 1000, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 1
channel = 1

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(4) = 1
value = 55, 0

[State 1000, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 11.1731843575

[State 1000, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(9) < 0
x = -0.17597765363

[State 1000, VelSet]
type = VelSet
trigger1 = AnimElem = 9
x = 0

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(7) = 1
value = 65, 0

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = 65.251396648

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
value = SCA
time = 1

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

[State 1000, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6 && !MoveContact && !MoveReversed
ID = 1000
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
guard.hittime = (12) - 6
ground.slideTime = 12
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
numHits = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -35
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 1000, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1000) > 1
ID = 1000
keepOne = 1
excludeID = 1000
ignoreHitPause = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = MoveHit && NumTarget(1000)
value = 1010

[State 1000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1000, Stopping Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 101, 0

[State 1000, Skid Dust]
type = Explod
trigger1 = AnimElem = 8
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw
[Statedef 1010]
type = S
physics = N
moveType = A
anim = 1010
ctrl = 0
velSet = 0, 0
sprPriority = -1

[State 1010, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1010, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1010, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1015

[State 1010, Red Sky of Yaponesia Success Explod]
type = Explod
trigger1 = NumTarget && AnimElemTime(3) = 0
anim = 11010
ID = 11010
posType = P1
pos = 0, 0
bindTime = -1
sprPriority = 3
persistent = 0
ignorehitpause = 2
ownpal = 1

[State 1010, Woosh]
type = PlaySnd
trigger1 = AnimElemTime(4) = 3
value = 1, 5
channel = 1

[State 1010, Width]
type = Width
trigger1 = AnimElemTime(5) < 0
value = 18, 0

[State 1010, TargetBind]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(5) < 0
pos = 18, 0, Foot

[State 1010, SprPriority]
type = SprPriority
trigger1 = NumTarget && AnimElemTime(5) = 0
value = 2

[State 1010, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
value = floor(ifElse(70 * fvar(11) < 7, -7, -70 * fvar(11)))

[State 1010, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
value = 36

[State 1010, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElemTime(5) = 0 && !var(20)
value = 72

[State 1010, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
value = 1

[State 1010, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
var(13) = 1

[State 1010, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
var(15) = 1
ignoreHitPause = 1

[State 1010, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(5) = 0
value = 2, 5
channel = 2

[State 1010, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElemTime(5) = 0
helperType = Normal
stateNo = 8013
ID = 8000
name = "Spark"
posType = P1
pos = 20, -48
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1010, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(5) = 0
time = 14
ampl = -4
freq = 120

[State 1010, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(5) = 0
value = 1016

[State 1110, PosSet]
type = PosSet
trigger1 = !AnimTime
y = 0

[State 1010, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;RED SKY OF YAPONESIA (TARGET)=
;Being Thrown
[StateDef 1015]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 1

[State 1015, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 1015, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1015

[State 1015, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 1015, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1



;After Throw
[StateDef 1016]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -5.58659217877, -11.25
sprPriority = 1

[State 1016, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1016, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = !SelfAnimExist(5052)
value = 5030

[State 1016, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1016, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 1016, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.78125

[State 1016, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 1016, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 1016, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;EX RED SKY OF YAPONESIA>=
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
var(25) = 14

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 30, -85
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
value = 1000, 0
channel = 0

[State 1030, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 1
channel = 3

[State 1030, Width]
type = Width
trigger1 = AnimElemTime(4) = 1
value = 55, 0

[State 1030, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 11.1731843575

[State 1030, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(9) < 0
x = -0.17597765363

[State 1030, VelSet]
type = VelSet
trigger1 = AnimElem = 9
x = 0

[State 1030, Width]
type = Width
trigger1 = AnimElemTime(7) = 1
value = 65, 0

[State 1030, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = 65.251396648

[State 1030, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
value = SCA
time = 1

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

[State 1030, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6 && !MoveContact && !MoveReversed
ID = 1030
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
guard.hittime = (12) - 6
ground.slideTime = 12
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
numHits = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -35
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 1030, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1030) > 1
ID = 1030
keepOne = 1
excludeID = 1030
ignoreHitPause = 1

[State 1030, ChangeState]
type = ChangeState
trigger1 = MoveHit && NumTarget(1030)
value = 1040

[State 1030, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1030, Stopping Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 101, 0

[State 1030, Skid Dust]
type = Explod
trigger1 = AnimElem = 8
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw
[Statedef 1040]
type = S
physics = N
moveType = A
anim = 1010
ctrl = 0
velSet = 0, 0
sprPriority = -1

[State 1040, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1040, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1040, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 40

[State 1040, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1015

[State 1040, Red Sky of Yaponesia Success Explod]
type = Explod
trigger1 = NumTarget && AnimElemTime(3) = 0
anim = 11010
ID = 11010
posType = P1
pos = 0, 0
bindTime = -1
sprPriority = 3
persistent = 0
ignorehitpause = 2
ownpal = 1

[State 1040, Woosh]
type = PlaySnd
trigger1 = AnimElemTime(4) = 3
value = 1, 5
channel = 1

[State 1040, Width]
type = Width
trigger1 = AnimElemTime(5) < 0
value = 18, 0

[State 1040, TargetBind]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(5) < 0
pos = 18, 0, Foot

[State 1040, SprPriority]
type = SprPriority
trigger1 = NumTarget && AnimElemTime(5) = 0
value = 2

[State 1040, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
value = floor(ifElse(105 * fvar(11) < 7, -7, -105 * fvar(11)))

[State 1040, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
value = 36

[State 1040, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
value = 1

[State 1040, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
var(13) = 1

[State 1040, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
var(15) = 1
ignoreHitPause = 1

[State 1040, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(5) = 0
value = 2, 5
channel = 2

[State 1040, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElemTime(5) = 0
helperType = Normal
stateNo = 8013
ID = 8000
name = "Spark"
posType = P1
pos = 20, -48
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1040, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(5) = 0
time = 14
ampl = -4
freq = 120

[State 1040, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(5) = 0
value = 1046

[State 1040, PosSet]
type = PosSet
trigger1 = !AnimTime
y = 0

[State 1040, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;RED SKY OF YAPONESIA (TARGET)=
;After Throw
[StateDef 1046]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -5.58659217877, -11.25
sprPriority = 1

[State 1046, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1046, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = !SelfAnimExist(5052)
value = 5030

[State 1046, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1046, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 1046, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.78125

[State 1046, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 1046, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100


 
;MAD MURDER ROULETTE>=
;Attempt
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1100, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100, 0
channel = 0

[State 1100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 0
channel = 1

[State 1100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3 && !var(37)
attr = S, ST
hitFlag = M
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
p1StateNo = 1110

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw
[Statedef 1110]
type = S
physics = N
moveType = A
anim = 1110
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1110, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1110, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1115

[State 1110, Width]
type = Width
trigger1 = AnimElemTime(2) < 0
edge = 48, 0

[State 1110, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 48, 0

[State 1110, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 56, 0

[State 1110, BindToTarget]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(8) < 0
pos = 62, 95, Head

[State 1110, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = 33.9664804469

[State 1110, Mad Murder Roulette Success Explod]
type = Explod
trigger1 = NumTarget && AnimElemTime(5) = 0
anim = 11110
ID = 11110
posType = P1
pos = 0, 0
bindTime = -1
sprPriority = 3
persistent = 0
ignorehitpause = 2
ownpal = 1

[State 1110, SprPriority]
type = SprPriority
trigger1 = NumTarget && AnimElemTime(5) = 0
value = -1

[State 1110, SprPriority]
type = SprPriority
trigger1 = NumTarget && AnimElemTime(8) = 0
value = 1

[State 1110, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
value = floor(ifElse(56 * fvar(11) < 7, -7, -56 * fvar(11)))

[State 1110, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
value = 36

[State 1110, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
value = 72

[State 1110, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
value = 1

[State 1110, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
var(13) = 1

[State 1110, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
var(15) = 1
ignoreHitPause = 1

[State 1110, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(8) = 0
value = 1116

[State 1110, Juggle Reset]
type = VarSet
trigger1 = NumTarget && !var(41) && AnimElemTime(8) = 0
var(15) = 0

[State 1110, Mad Murder Roulette Juggle Flag]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
var(41) = 1
persistent = 0

[State 1110, Juggle Flag]
type = VarSet
trigger1 = var(41) = 2
var(16) = 1

[State 1110, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 1110, 0
channel = 0

[State 1110, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1110, 1
channel = 0

[State 1110, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(8) = 0
value = 2, 5
channel = 2

[State 1110, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElemTime(8) = 0
helperType = Normal
stateNo = 8013
ID = 8000
name = "Spark"
posType = P1
pos = 48, -94
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1110, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(8) = 0
time = 14
ampl = -4
freq = 120

[State 1110, PosSet]
type = PosSet
trigger1 = AnimElemTime(12) = 0
y = 0

[State 1110, Landing Dust Explod]
type = Explod
trigger1 = AnimElemTime(12) = 0
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1110, Landing Sound]
type = PlaySnd
trigger1 = AnimElemTime(12) = 0
value = 52, 0

[State 1110, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;MAD MURDER ROULETTE (TARGET)=
;Being Thrown
[StateDef 1115]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 1115, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1115

[State 1115, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 1115, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 1116]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -3.35195530726, -10

[State 1116, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030
persistent = 0

[State 1116, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030
trigger1 = !AnimTime
value = 5050

[State 1116, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = [5050, 5059]
trigger1 = vel y >= ifElse(Anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(Anim + 10)
value = Anim + 10
persistent = 0

[State 1116, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 1116, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5859375

[State 1116, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 1116, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100


 
;EX MAD MURDER ROULETTE>=
;Attempt
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1130
ctrl = 0
velSet = 0,0
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
var(25) = 13

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 2, -84
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1130, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100, 0
channel = 0

[State 1130, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 0
channel = 3

[State 1130, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 1130, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3 && !var(37)
attr = S, ST
hitFlag = M
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
p1StateNo = 1140

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1130, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw
[Statedef 1140]
type = S
physics = N
moveType = A
anim = 1110
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1140, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1140, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 54

[State 1140, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1145

[State 1140, Width]
type = Width
trigger1 = AnimElemTime(2) < 0
edge = 48, 0

[State 1140, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 48, 0

[State 1140, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 56, 0

[State 1140, BindToTarget]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(8) < 0
pos = 62, 95, Head

[State 1140, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = 33.9664804469

[State 1140, Mad Murder Roulette Success Explod]
type = Explod
trigger1 = NumTarget && AnimElemTime(5) = 0
anim = 11110
ID = 11110
posType = P1
pos = 0, 0
bindTime = -1
sprPriority = 3
persistent = 0
ignorehitpause = 2
ownpal = 1

[State 1140, SprPriority]
type = SprPriority
trigger1 = NumTarget && AnimElemTime(5) = 0
value = -1

[State 1140, SprPriority]
type = SprPriority
trigger1 = NumTarget && AnimElemTime(8) = 0
value = 1

[State 1140, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
value = floor(ifElse(84 * fvar(11) < 7, -7, -84 * fvar(11)))

[State 1140, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
value = 36

[State 1140, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
value = 1

[State 1140, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
var(13) = 1

[State 1140, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
var(15) = 1
ignoreHitPause = 1

[State 1140, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(8) = 0
value = 1146

[State 1140, Juggle Reset]
type = VarSet
trigger1 = NumTarget && !var(41) && AnimElemTime(8) = 0
var(15) = 0

[State 1140, Mad Murder Roulette Juggle Flag]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
var(41) = 1
persistent = 0

[State 1140, Juggle Flag]
type = VarSet
trigger1 = var(41) = 2
var(16) = 1

[State 1140, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 1110, 0
channel = 0

[State 1140, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1110, 1
channel = 0

[State 1140, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(8) = 0
value = 2, 5
channel = 2

[State 1140, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElemTime(8) = 0
helperType = Normal
stateNo = 8013
ID = 8000
name = "Spark"
posType = P1
pos = 48, -94
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1140, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(8) = 0
time = 14
ampl = -4
freq = 120

[State 1140, PosSet]
type = PosSet
trigger1 = AnimElemTime(12) = 0
y = 0

[State 1140, Landing Dust Explod]
type = Explod
trigger1 = AnimElemTime(12) = 0
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1140, Landing Sound]
type = PlaySnd
trigger1 = AnimElemTime(12) = 0
value = 52, 0

[State 1140, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;MAD MURDER ROULETTE (TARGET)=
;Being Thrown
[StateDef 1145]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 1145, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1115

[State 1145, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 1145, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 1146]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -3.35195530726, -12.5

[State 1146, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030
persistent = 0

[State 1146, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030
trigger1 = !AnimTime
value = 5050

[State 1146, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = [5050, 5059]
trigger1 = vel y >= ifElse(Anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(Anim + 10)
value = Anim + 10
persistent = 0

[State 1146, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 1146, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5859375

[State 1146, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 1146, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;FORMALIST'S BLUE>=
[StateDef 2000]
type = S
physics = N
moveType = A
anim = 2000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 2000, Reset "down-left" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000001)
ID = 90000001

[State 2000, Reset "down-right" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000003)
ID = 90000003

[State 2000, Reset "a" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000230)
ID = 90000230

[State 2000, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2000, 0
channel = 0

[State 2000, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1, 5
channel = 1

[State 2000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
x = 16.9832402235

[State 2000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
x = 12.5139664804

[State 2000, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 42), var(36) := -22
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2000, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 2000
elem = 12
ignoreHitPause = 1

[State 2000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 2000, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 2000, Bye Bye Rouge]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command = "up-left" || command = "up" || command = "up-right"
trigger1 = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
var(14) = 2100

[State 2000, Shelter from Storm]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command = "up-left" || command = "up" || command = "up-right"
trigger1 = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
var(14) = 2130

[State 2000, Train to See Cherry Blossoms]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command = "down-left" || command = "down" || command = "down-right"
trigger1 = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
var(14) = 2140

[State 2000, Impotent Symptom]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command = "down-left" || command = "down" || command = "down-right"
trigger1 = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
var(14) = 2110

[State 2000, Buggy and Coffin]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;x / y / z
trigger1 = NumExplod(90000200)|| NumExplod(90000210) ||NumExplod(90000220)
var(14) = 2120

[State 2000, With a Lamp for Pathway]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
trigger2 = AILevel && !var(14)
trigger2 = MoveContact
trigger2 = P2Dist x >= 0
var(14) = 2150

[State 2000, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
value = var(14)

[State 2000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;CITIZENS OF THE WORLD>=
[StateDef 2010]
type = S
physics = N
moveType = A
anim = 2010
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 2010, Reset "down-left" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000001)
ID = 90000001

[State 2010, Reset "down-right" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000003)
ID = 90000003

[State 2010, Reset "c" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000250)
ID = 90000250

[State 2010, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2010, 0
channel = 0

[State 2010, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1, 5
channel = 1

[State 2010, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2010, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 2010
elem = 11
ignoreHitPause = 1

[State 2010, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 2010, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 2010, Bye Bye Rouge]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command = "up-left" || command = "up" || command = "up-right"
trigger1 = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
var(14) = 2100

[State 2010, Shelter from Storm]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command = "up-left" || command = "up" || command = "up-right"
trigger1 = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
var(14) = 2130

[State 2010, Train to See Cherry Blossoms]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command = "down-left" || command = "down" || command = "down-right"
trigger1 = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
var(14) = 2140

[State 2010, Impotent Symptom]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command = "down-left" || command = "down" || command = "down-right"
trigger1 = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
var(14) = 2110

[State 2010, Buggy and Coffin]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;x / y / z
trigger1 = NumExplod(90000200)|| NumExplod(90000210) ||NumExplod(90000220)
var(14) = 2120

[State 2010, With a Lamp for Pathway]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
trigger2 = AILevel && !var(14)
trigger2 = MoveContact
trigger2 = P2Dist x >= 0
var(14) = 2150

[State 2010, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
value = var(14)

[State 2010, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;SENSELESS FISTS>=
[StateDef 2020]
type = S
physics = N
moveType = A
anim = 2020
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 2020, Reset "down-left" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000001)
ID = 90000001

[State 2020, Reset "down-right" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000003)
ID = 90000003

[State 2020, Reset "a" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000230)
ID = 90000230

[State 2020, Reset "b" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000240)
ID = 90000240

[State 2020, Reset "c" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000250)
ID = 90000250

[State 2020, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2020, 0
channel = 0

[State 2020, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 5
channel = 1

[State 2020, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 6
x = 10

[State 2020, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 6

[State 2020, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 16

[State 2020, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 5

[State 2020, PosAdd]
type = PosAdd
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
x = -10

[State 2020, HitDef 1]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
guard.hittime = (12) - 6
ground.slideTime = 12
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -98
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2020, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 2020
elem = 7
ignoreHitPause = 1

[State 2020, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 11
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -6.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2020, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 2020
elem = 12
ignoreHitPause = 1

[State 2020, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 2020, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 2020, Bye Bye Rouge]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command = "up-left" || command = "up" || command = "up-right"
trigger1 = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
var(14) = 2100

[State 2020, Shelter from Storm]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command = "up-left" || command = "up" || command = "up-right"
trigger1 = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
var(14) = 2130

[State 2020, Train to See Cherry Blossoms]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command = "down-left" || command = "down" || command = "down-right"
trigger1 = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
trigger2 = AILevel && !var(14)
trigger2 = (MoveHit && P2StateType != A) || (MoveGuarded && Random < 500)
trigger2 = P2Dist x >= 0
var(14) = 2140

[State 2020, Impotent Symptom]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command = "down-left" || command = "down" || command = "down-right"
trigger1 = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
var(14) = 2110

[State 2020, Buggy and Coffin]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;x / y / z
trigger1 = NumExplod(90000200)|| NumExplod(90000210) ||NumExplod(90000220)
trigger2 = AILevel && !var(14)
trigger2 = MoveGuarded && Random < 500
trigger2 = P2Dist x >= 0
var(14) = 2120

[State 2020, With a Lamp for Pathway]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(14) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
var(14) = 2150

[State 2020, Followup]
type = ChangeState
triggerAll = var(14) = [1000, 2999]
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
trigger2 = AnimElemTime(7) >= 0 && AnimElemTime(9) < 0 && MoveContact
trigger3 = AnimElemTime(11) >= 0 && AnimElemTime(13) < 0 && MoveContact
value = var(14)

[State 2020, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;REPPUN KAMUI>=
[StateDef 2030]
type = S
physics = N
moveType = A
anim = 2030
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 2030, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 2030, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 2030, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 2030, ifElse(var(10) = 1, 2031, 2032))

[State 2030, Reset "QCB" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010104)
ID = 90010104

[State 2030, Reset "QCF" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010006)
ID = 90010006

[State 2030, Reset "x" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000200)
ID = 90000200

[State 2030, Reset "y" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000210)
ID = 90000210

[State 2030, Reset "z" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000220)
ID = 90000220

[State 2030, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 2010, 0
channel = 0

[State 2030, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1, 5
channel = 1

[State 2030, Impact Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2030, 1
channel = 3

[State 2030, Impact Dust]
type = Explod
trigger1 = AnimElem = 8
anim = 8105
sprPriority = -3
posType = P1
pos = 11, 0
scale = 0.375,0.375
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2030, EnvShake]
type = EnvShake
trigger1 = AnimElem = 8
time = 14
ampl = -4
freq = 120

[State 2030, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 8
trigger2 = AnimElem = 9 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 10 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.46927374302, -7.5
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(10) = 2, -4.68937069644, ifElse(var(10) = 1, -7.65065355984, -11.0509440309))
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2030, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 2030, ifElse(var(10) = 1, 2031, 2032))
elem = 9
ignoreHitPause = 1

[State 2030, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(11) >= 0
moveType = I

[State 2030, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 2030, Bye Bye Rouge]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(12) < 0
trigger1 = !AILevel
;command = "up-left" || command = "up" || command = "up-right"
trigger1 = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
var(14) = 2100

[State 2030, Shelter from Storm]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(12) < 0
trigger1 = !AILevel
;command = "up-left" || command = "up" || command = "up-right"
trigger1 = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
var(14) = 2130

[State 2030, Train to See Cherry Blossoms]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(12) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command = "down-left" || command = "down" || command = "down-right"
trigger1 = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
var(14) = 2140

[State 2030, Impotent Symptom]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(12) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command = "down-left" || command = "down" || command = "down-right"
trigger1 = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
var(14) = 2110

[State 2030, Buggy and Coffin]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(12) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;x / y / z
trigger1 = NumExplod(90000200)|| NumExplod(90000210) ||NumExplod(90000220)
var(14) = 2120

[State 2030, With a Lamp for Pathway]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(12) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
trigger2 = AILevel && !var(14)
trigger2 = MoveContact
trigger2 = P2Dist x >= 0
var(14) = 2150

[State 2030, Followup]
type = ChangeState
triggerAll = var(14) = [1000, 2999]
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(12) < 0 && !var(20)
trigger2 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0 && var(20)
value = var(14)

[State 2030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;BEYOND FRAMES>=
[StateDef 2040]
type = S
physics = N
moveType = A
anim = 2040
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 2040, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 2040, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 1

[State 2040, Reset "HCF" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010406)
ID = 90010406

[State 2040, Reset "HCB" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010504)
ID = 90010504

[State 2040, Reset "a" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000230)
ID = 90000230

[State 2040, Reset "b" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000240)
ID = 90000240

[State 2040, Reset "c" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000250)
ID = 90000250

[State 2040, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 8 || AnimElem = 13)
value = 100, ifElse((AnimElem = 8), 0, 1)

[State 2040, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 7.2625698324

[State 2040, VelSet]
type = VelSet
trigger1 = AnimElem = 15
x = 0

[State 2040, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110, 0

[State 2040, Dust Helper]
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

[State 2040, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(15) >= 0
moveType = I

[State 2040, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 2040, Bye Bye Rouge]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(15) < 0
trigger1 = !AILevel
;command = "up-left" || command = "up" || command = "up-right"
trigger1 = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
var(14) = 2100

[State 2040, Shelter from Storm]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(15) < 0
trigger1 = !AILevel
;command = "up-left" || command = "up" || command = "up-right"
trigger1 = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
trigger2 = AILevel && !var(14)
trigger2 = PrevStateNo != 2130
var(14) = 2130

[State 2040, Train to See Cherry Blossoms]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(15) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command = "down-left" || command = "down" || command = "down-right"
trigger1 = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
var(14) = 2140

[State 2040, Impotent Symptom]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(15) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command = "down-left" || command = "down" || command = "down-right"
trigger1 = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
var(14) = 2110

[State 2040, Buggy and Coffin]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(15) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;x / y / z
trigger1 = NumExplod(90000200)|| NumExplod(90000210) ||NumExplod(90000220)
var(14) = 2120

[State 2040, With a Lamp for Pathway]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(15) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
trigger2 = AILevel && !var(14)
trigger2 = PrevStateNo = 2130
var(14) = 2150

[State 2040, Followup]
type = ChangeState
trigger1 = !var(14)
trigger1 = P2Dist X <= 45
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(15) < 0
value = 2041

[State 2040, Followup (Light/Medium, Unchain Starter)]
type = ChangeState
trigger1 = (var(14) = [1000, 2999]) && (PrevStateNo != [2100, 2151]) && var(10) != 2
trigger1 = P2Dist X <= 45
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(15) < 0
value = 2042

[State 2040, Followup (Light/Medium, Unchain Finisher)]
type = ChangeState
trigger1 = (var(14) = [1000, 2999]) && (PrevStateNo = [2100, 2151]) && var(10) != 2 
trigger1 = P2Dist X <= 45
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(15) < 0
value = 2043

[State 2040, Followup (Heavy)]
type = ChangeState
trigger1 = (var(14) = [1000, 2999]) && var(10) = 2
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(15) < 0
value = var(14)

[State 2040, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Switching Sides
[StateDef 2041]
type = S
physics = N
moveType = I
anim = 2041
ctrl = 0
velSet = 0,0
sprPriority = 0

[State 2041, Voice]
type = PlaySnd
trigger1 = !Time
value = 2040, 0
channel = 0

[State 2041, Sound Effect]
type = PlaySnd
trigger1 = !Time
value = 1000, 1
channel = 1

[State 2041, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(7) < 0
value = 0

[State 2041, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = P2Dist X + 42.0314375

[State 2041, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 5.58659217877

[State 2041, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(7) < 0
x = -0.17458100558

[State 2041, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 2041, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Follow-up 1
[StateDef 2042]
type = S
physics = N
moveType = A
anim = 2042
ctrl = 0
velSet = 0,0
sprPriority = 0

[State 2042, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 1
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -25
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2042, Voice]
type = PlaySnd
trigger1 = !Time
value = 2040, 0
channel = 0

[State 2042, Sound Effect]
type = PlaySnd
trigger1 = !Time
value = 1000, 1
channel = 1

[State 2042, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(6) < 0
value = 0

[State 2042, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = P2Dist X + 42.0314375

[State 2042, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 5.58659217877

[State 2042, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(6) < 0
x = -0.17458100558

[State 2042, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 2042, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = !AnimTime
value = var(14)

[State 2042, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Follow-up 2
[StateDef 2043]
type = S
physics = N
moveType = A
anim = 2041
ctrl = 0
velSet = 0,0
sprPriority = 0

[State 2043, Voice]
type = PlaySnd
trigger1 = !Time
value = 2040, 0
channel = 0

[State 2043, Sound Effect]
type = PlaySnd
trigger1 = !Time
value = 1000, 1
channel = 1

[State 2043, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(7) < 0
value = 0

[State 2043, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = P2Dist X + 42.0314375

[State 2043, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 5.58659217877

[State 2043, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(7) < 0
x = -0.17458100558

[State 2043, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 2043, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = !AnimTime
value = var(14)

[State 2043, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;BYE BYE ROUGE>=
[StateDef 2100]
type = S
physics = N
moveType = A
anim = 2100
ctrl = 0
velSet = 0, 0
sprPriority = 1
faceP2 = 1
hitCountPersist = 1

[State 2100, Reset "up-left" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000007)
ID = 90000007

[State 2100, Reset "up" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000008)
ID = 90000008

[State 2100, Reset "up-right" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000009)
ID = 90000009

[State 2100, Reset "x" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000200)
ID = 90000200

[State 2100, Reset "y" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000210)
ID = 90000210

[State 2100, Reset "z" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000220)
ID = 90000220

[State 2100, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2100, 0
channel = 0

[State 2100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 2100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = 10

[State 2100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
x = 5

[State 2100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = -5

[State 2100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
x = -15

[State 2100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 5
ID = 2100
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -84
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2100, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 6 && !MoveContact && !MoveReversed
trigger2 = AnimElem = 7 && !MoveContact && !MoveReversed
ID = 2100
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -118
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2100, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 2100
elem = 7
ignoreHitPause = 1

[State 2100, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(42) && NumTarget(2100)
var(15) = 0

[State 2100, Bye Bye Rouge Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(2100)
var(42) = 1
persistent = 0

[State 2100, Juggle Flag]
type = VarSet
trigger1 = var(42) = 2
var(16) = 1

[State 2100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 2100, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 2100, Omogatoki (Forwards)]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(10) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;(command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = (NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)) && (NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250))
var(14) = 2310

[State 2100, Omogatoki (Backwards)]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(10) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdback"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
;(command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = (NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)) && (NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250))
var(14) = 2320

[State 2100, Crown Under Sky]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(10) < 0
trigger1 = !AILevel
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2200

[State 2100, Fullmoon Evening]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(10) < 0
trigger1 = !AILevel
;command = "[special] right, right"
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2210

[State 2100, State of Heat Haze]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(10) < 0
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
var(14) = 2220

[State 2100, Beyond Frames]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(10) < 0
trigger1 = !AILevel
;command = "HCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010406)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010504))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
trigger2 = AILevel && !var(14)
trigger2 = MoveHit
trigger2 = P2Dist x >= 0
var(14) = 2040

[State 2100, Cosmic Futen Swing]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(10) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2230

[State 2100, Lost Homeland]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(10) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2250

[State 2100, Impotent Symptom]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(10) < 0
triggerAll = (PrevStateNo != [2110, 2111])
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command = "down-left" || command = "down" || command = "down-right"
trigger1 = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
var(14) = 2110

[State 2100, With a Lamp for Pathway]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(10) < 0
triggerAll = (PrevStateNo != [2150, 2151])
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
var(14) = 2150

[State 2100, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
value = var(14)

[State 2100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;IMPOTENT SYMPTOM>=
[StateDef 2110]
type = S
physics = N
moveType = A
anim = 2110
ctrl = 0
velSet = 0, 0
sprPriority = 1
faceP2 = 1
hitCountPersist = 1

[State 2110, Reset "down-left" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000001)
ID = 90000001

[State 2110, Reset "down" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000002)
ID = 90000002

[State 2110, Reset "down-right" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000003)
ID = 90000003

[State 2110, Reset "a" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000230)
ID = 90000230

[State 2110, Reset "b" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000240)
ID = 90000240

[State 2110, Reset "c" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000250)
ID = 90000250

[State 2110, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 40, 0
channel = 4

[State 2110, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 2110, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Impotent Symptom Dust"
posType = P1
ownPal = 1

[State 2110, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 5.02793296089
y = -3.75

[State 2110, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 0.48828125

[State 2110, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 2110, Omogatoki (Forwards)]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;(command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = (NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)) && (NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250))
var(14) = 2310

[State 2110, Omogatoki (Backwards)]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdback"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
;(command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = (NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)) && (NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250))
var(14) = 2320

[State 2110, Crown Under Sky]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2200

[State 2110, Fullmoon Evening]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2210

[State 2110, State of Heat Haze]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
var(14) = 2220

[State 2110, Beyond Frames]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "HCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010406)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010504))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
var(14) = 2040

[State 2110, Cosmic Futen Swing]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2230

[State 2110, Lost Homeland]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2250

[State 2110, Bye Bye Rouge]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
triggerAll = PrevStateNo != 2100
trigger1 = !AILevel
;command = "up-left" || command = "up" || command = "up-right"
trigger1 = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
var(14) = 2100

[State 2110, Buggy and Coffin]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
triggerAll = PrevStateNo != 2120
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;x / y / z
trigger1 = NumExplod(90000200)|| NumExplod(90000210) ||NumExplod(90000220)
var(14) = 2120

[State 2110, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 2111


;Landing (Attack)
[StateDef 2111]
type = S
physics = N
moveType = A
anim = 2111
ctrl = 0
velSet = 0,0
sprPriority = 0
hitCountPersist = 1

[State 2111, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 2111, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2111, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 2111, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = 5

[State 2111, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 10

[State 2111, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 20

[State 2111, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
x = -10

[State 2111, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = -15

[State 2111, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2110, 0
channel = 0

[State 2111, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 2111, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -2
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2111, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 2111
elem = 4
ignoreHitPause = 1

[State 2111, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 2111, Omogatoki (Forwards)]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(7) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;(command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = (NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)) && (NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250))
var(14) = 2310

[State 2111, Omogatoki (Backwards)]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(7) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdback"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
;(command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = (NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)) && (NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250))
var(14) = 2320

[State 2111, Crown Under Sky]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(7) < 0
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2200

[State 2111, Fullmoon Evening]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(7) < 0
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2210

[State 2111, State of Heat Haze]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(7) < 0
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
var(14) = 2220

[State 2111, Beyond Frames]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(7) < 0
trigger1 = !AILevel
;command = "HCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010406)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010504))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
var(14) = 2040

[State 2111, Cosmic Futen Swing]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(7) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2230

[State 2111, Lost Homeland]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(7) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2250

[State 2111, Bye Bye Rouge]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(7) < 0
triggerAll = PrevStateNo != 2100
trigger1 = !AILevel
;command = "up-left" || command = "up" || command = "up-right"
trigger1 = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
var(14) = 2100

[State 2111, Buggy and Coffin]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(7) < 0
triggerAll = PrevStateNo != 2120
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;x / y / z
trigger1 = NumExplod(90000200)|| NumExplod(90000210) ||NumExplod(90000220)
var(14) = 2120

[State 2111, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 0
value = var(14)

[State 2111, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;BUGGY AND COFFIN>=
[StateDef 2120]
type = S
physics = N
moveType = A
anim = 2120
ctrl = 0
velSet = 0, 0
sprPriority = 1
faceP2 = 1
hitCountPersist = 1

[State 2120, Reset "left" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000004)
ID = 90000004

[State 2120, Reset "right" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000006)
ID = 90000006

[State 2120, Reset "x" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000200)
ID = 90000200

[State 2120, Reset "y" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000210)
ID = 90000210

[State 2120, Reset "z" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000220)
ID = 90000220

[State 2120, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2120, 0
channel = 0

[State 2120, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 2120, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 12

[State 2120, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
x = 9.1955307263

[State 2120, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12
x = -6

[State 2120, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 3.35195530726

[State 2120, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(10) < 0
x = -0.17458100558

[State 2120, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 2120, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -6.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2120, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -6.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2120, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 2120
elem = 8
ignoreHitPause = 1

[State 2120, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 2120, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 2120, Omogatoki (Forwards)]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(11) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;(command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = (NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)) && (NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250))
var(14) = 2310

[State 2120, Omogatoki (Backwards)]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(11) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdback"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
;(command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = (NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)) && (NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250))
var(14) = 2320

[State 2120, Crown Under Sky]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(11) < 0
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2200

[State 2120, Fullmoon Evening]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(11) < 0
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2210

[State 2120, State of Heat Haze]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(11) < 0
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
var(14) = 2220

[State 2120, Beyond Frames]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(11) < 0
trigger1 = !AILevel
;command = "HCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010406)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010504))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
var(14) = 2040

[State 2120, Cosmic Futen Swing]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(11) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2230

[State 2120, Lost Homeland]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(11) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2250

[State 2120, Shelter from Storm]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(11) < 0
triggerAll = PrevStateNo != 2130
trigger1 = !AILevel
;command = "up-left" || command = "up" || command = "up-right"
trigger1 = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
var(14) = 2130

[State 2120, Impotent Symptom]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(11) < 0
triggerAll = (PrevStateNo != [2110, 2111])
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command = "down-left" || command = "down" || command = "down-right"
trigger1 = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
var(14) = 2110

[State 2120, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
value = var(14)

[State 2120, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;SHELTER FROM STORM>=
[StateDef 2130]
type = S
physics = N
moveType = A
anim = 2130
ctrl = 0
velSet = 0, 0
sprPriority = 1
faceP2 = 1
hitCountPersist = 1

[State 2130, Reset "up-left" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000007)
ID = 90000007

[State 2130, Reset "up" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000008)
ID = 90000008

[State 2130, Reset "up-right" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000009)
ID = 90000009

[State 2130, Reset "a" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000230)
ID = 90000230

[State 2130, Reset "b" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000240)
ID = 90000240

[State 2130, Reset "c" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000250)
ID = 90000250

[State 2130, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2130, 0
channel = 0

[State 2130, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 5
channel = 1

[State 2130, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
trigger9 = AnimElem = 9
trigger10 = AnimElem = 10
x = 2.68156424581

[State 2130, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5 && !MoveContact && !MoveReversed
ID = 2130
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -6.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -103
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2130, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 2130
elem = 5
ignoreHitPause = 1

[State 2130, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(43) && NumTarget(2130)
var(15) = 0

[State 2130, Shelter from Storm Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(2130)
var(43) = 1
persistent = 0

[State 2130, Juggle Flag]
type = VarSet
trigger1 = var(43) = 2
var(16) = 1

[State 2130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 2130, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 2130, Omogatoki (Forwards)]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(8) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;(command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = (NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)) && (NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250))
var(14) = 2310

[State 2130, Omogatoki (Backwards)]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(8) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdback"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
;(command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = (NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)) && (NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250))
var(14) = 2320

[State 2130, Crown Under Sky]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(8) < 0
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
trigger2 = AILevel && !var(14)
trigger2 = MoveHit && (Enemy, BackEdgeBodyDist >= 5)
trigger2 = P2Dist y >= -35
var(14) = 2200

[State 2130, Fullmoon Evening]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(8) < 0
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && !var(14)
trigger2 = MoveHit && (Enemy, BackEdgeBodyDist < 5)
var(14) = 2210

[State 2130, State of Heat Haze]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(8) < 0
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
var(14) = 2220

[State 2130, Beyond Frames]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(8) < 0
trigger1 = !AILevel
;command = "HCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010406)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010504))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
trigger2 = AILevel && !var(14)
trigger2 = MoveHit && (Enemy, BackEdgeBodyDist >= 5)
trigger2 = P2Dist y < -35
var(14) = 2040

[State 2130, Cosmic Futen Swing]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(8) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2230

[State 2130, Lost Homeland]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(8) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2250

[State 2130, Train to See Cherry Blossoms]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(8) < 0
triggerAll = PrevStateNo != 2140
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command = "down-left" || command = "down" || command = "down-right"
trigger1 = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
var(14) = 2140

[State 2130, Buggy and Coffin]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(8) < 0
triggerAll = PrevStateNo != 2120
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;x / y / z
trigger1 = NumExplod(90000200)|| NumExplod(90000210) ||NumExplod(90000220)
var(14) = 2120

[State 2130, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
value = var(14)

[State 2130, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;TRAIN TO SEE CHERRY BLOSSOMS>=
[StateDef 2140]
type = C
physics = N
moveType = A
anim = 2140
ctrl = 0
velSet = 0, 0
sprPriority = 1
faceP2 = 1
hitCountPersist = 1

[State 2140, Reset "down-left" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000001)
ID = 90000001

[State 2140, Reset "down" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000002)
ID = 90000002

[State 2140, Reset "down-right" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000003)
ID = 90000003

[State 2140, Reset "x" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000200)
ID = 90000200

[State 2140, Reset "y" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000210)
ID = 90000210

[State 2140, Reset "z" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000220)
ID = 90000220

[State 2140, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2140, 0
channel = 0

[State 2140, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 2140, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 3.35195530726

[State 2140, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(7) < 0
x = -0.17458100558

[State 2140, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 2140, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4 && !MoveContact && !MoveReversed
attr = C, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -16
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2140, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 2140
elem = 4
ignoreHitPause = 1

[State 2140, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 2140, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 2140, Omogatoki (Forwards)]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(6) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;(command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = (NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)) && (NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250))
var(14) = 2310

[State 2140, Omogatoki (Backwards)]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(6) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdback"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
;(command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = (NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)) && (NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250))
var(14) = 2320

[State 2140, Crown Under Sky]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(6) < 0
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
trigger2 = AILevel && !var(14)
trigger2 = MoveHit
trigger2 = P2Dist x >= 0
var(14) = 2200

[State 2140, Fullmoon Evening]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(6) < 0
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && !var(14)
trigger2 = MoveGuarded && Random < 333
trigger2 = P2Dist x >= 0
var(14) = 2210

[State 2140, State of Heat Haze]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(6) < 0
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
trigger2 = AILevel && !var(14)
trigger2 = MoveGuarded && Random < 333
trigger2 = P2Dist x >= 0
var(14) = 2220

[State 2140, Beyond Frames]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(6) < 0
trigger1 = !AILevel
;command = "HCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010406)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010504))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
var(14) = 2040

[State 2140, Cosmic Futen Swing]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(6) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
trigger2 = AILevel && !var(14)
trigger2 = MoveGuarded && Random < 333
trigger2 = P2Dist x >= 0
var(14) = 2230

[State 2140, Lost Homeland]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(6) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2250

[State 2140, Shelter from Storm]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(6) < 0
triggerAll = PrevStateNo != 2130
trigger1 = !AILevel
;command = "up-left" || command = "up" || command = "up-right"
trigger1 = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
var(14) = 2130

[State 2140, With a Lamp for Pathway]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2 && AnimElemTime(6) < 0
triggerAll = (PrevStateNo != [2150, 2151])
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
var(14) = 2150

[State 2140, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
value = var(14)

[State 2140, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;WITH A LAMP FOR PATHWAY>=
[StateDef 2150]
type = S
physics = N
moveType = A
anim = 2150
ctrl = 0
velSet = 0, 0
sprPriority = 1
faceP2 = 1
hitCountPersist = 1

[State 2150, Reset "left" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000004)
ID = 90000004

[State 2150, Reset "right" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000006)
ID = 90000006

[State 2150, Reset "a" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000230)
ID = 90000230

[State 2150, Reset "b" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000240)
ID = 90000240

[State 2150, Reset "c" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000250)
ID = 90000250

[State 2150, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40, 0
channel = 4

[State 2150, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 2150, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "With a Lamp for Pathway Dust"
posType = P1
ownPal = 1

[State 2150, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 3.35195530726
y = -6.25

[State 2150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 0.5126953125

[State 2150, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2150, 0
channel = 0

[State 2150, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 5
channel = 1

[State 2150, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.65065355984, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -6.25
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -22
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 2150
elem = 7
ignoreHitPause = 1

[State 2150, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 2150, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 2150, Omogatoki (Forwards)]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;(command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = (NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)) && (NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250))
var(14) = 2310

[State 2150, Omogatoki (Backwards)]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdback"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
;(command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = (NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)) && (NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250))
var(14) = 2320

[State 2150, Crown Under Sky]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
trigger2 = AILevel && !var(14)
trigger2 = MoveHit && PrevStateNo = 2043
trigger2 = P2Dist x >= 0
var(14) = 2200

[State 2150, Fullmoon Evening]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && !var(14)
trigger2 = MoveGuarded && Random < 333
trigger2 = P2Dist x >= 0
var(14) = 2210

[State 2150, State of Heat Haze]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
trigger2 = AILevel && !var(14)
trigger2 = MoveGuarded && Random < 333
trigger2 = P2Dist x >= 0
var(14) = 2220

[State 2150, Beyond Frames]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "HCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010406)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010504))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
var(14) = 2040

[State 2150, Cosmic Futen Swing]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
trigger2 = AILevel && !var(14)
trigger2 = MoveGuarded && Random < 333
trigger2 = P2Dist x >= 0
var(14) = 2230

[State 2150, Lost Homeland]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && !var(14)
trigger2 = MoveHit && P2StateType != A
trigger2 = P2Dist x >= 0
var(14) = 2250

[State 2150, Bye Bye Rouge]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
triggerAll = PrevStateNo != 2100
trigger1 = !AILevel
;command = "up-left" || command = "up" || command = "up-right"
trigger1 = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
trigger2 = AILevel && !var(14)
trigger2 = MoveHit && P2StateType = A
trigger2 = P2Dist x >= 0
var(14) = 2100

[State 2150, Train to See Cherry Blossoms]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
triggerAll = PrevStateNo != 2140
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command = "down-left" || command = "down" || command = "down-right"
trigger1 = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
var(14) = 2140

[State 2150, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 2151


;Landing
[StateDef 2151]
type = S
physics = N
moveType = I
anim = 2151
ctrl = 0
velSet = 0,0
sprPriority = 0
hitCountPersist = 1

[State 2151, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 2151, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2151, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 2151, Omogatoki (Forwards)]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdfwd"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000004))
;(command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = (NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)) && (NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250))
var(14) = 2310

[State 2151, Omogatoki (Backwards)]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) < 0
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command != "down-left" || command != "down" || command != "down-right"
trigger1 = (!NumExplod(90000001) || !NumExplod(90000002) || !NumExplod(90000003))
;command = "holdback"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
;(command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = (NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)) && (NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250))
var(14) = 2320

[State 2151, Crown Under Sky]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) < 0
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2200

[State 2151, Fullmoon Evening]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) < 0
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2210

[State 2151, State of Heat Haze]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) < 0
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
var(14) = 2220

[State 2151, Beyond Frames]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) < 0
trigger1 = !AILevel
;command = "HCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010406)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010504))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
var(14) = 2040

[State 2151, Cosmic Futen Swing]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2230

[State 2151, Lost Homeland]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2250

[State 2151, Bye Bye Rouge]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) < 0
triggerAll = PrevStateNo != 2100
trigger1 = !AILevel
;command = "up-left" || command = "up" || command = "up-right"
trigger1 = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
var(14) = 2100

[State 2151, Train to See Cherry Blossoms]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) < 0
triggerAll = PrevStateNo != 2140
trigger1 = !AILevel
;command != "up-left" || command != "up" || command != "up-right"
trigger1 = (!NumExplod(90000007) || !NumExplod(90000008) || !NumExplod(90000009))
;command = "down-left" || command = "down" || command = "down-right"
trigger1 = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
var(14) = 2140

[State 2151, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(2) < 0
value = var(14)

[State 2151, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;CROWN UNDER SKY>=
[StateDef 2200]
type = S
physics = N
moveType = A
anim = 2200
ctrl = 0
velSet = 0, 0
sprPriority = 1
faceP2 = 1
hitCountPersist = 1

[State 2200, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2200, 0
channel = 0

[State 2200, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 2200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 2

[State 2200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 20

[State 2200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 26

[State 2200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 12

[State 2200, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 5
ID = 2200
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 8, 16), ifElse(var(20), 8, 16)
guard.pauseTime = ifElse(var(20), 8, 16), ifElse(var(20), 8, 16)
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
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2200, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(44) && NumTarget(2200)
var(15) = 0

[State 2200, Crown Under Sky Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(2200)
var(44) = 1
persistent = 0

[State 2200, Juggle Flag]
type = VarSet
trigger1 = var(44) = 2
var(16) = 1

[State 2200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 2200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;FULLMOON EVENING>=
[StateDef 2210]
type = S
physics = N
moveType = A
anim = 2210
ctrl = 0
velSet = 0, 0
sprPriority = 1
faceP2 = 1
hitCountPersist = 1

[State 2210, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2210, 0
channel = 0

[State 2210, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1, 2
channel = 1

[State 2210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
x = 5

[State 2210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = 10

[State 2210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 16
x = 15

[State 2210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 19
x = -5

[State 2210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 20
x = -25

[State 2210, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 10
attr = S, SA
hitFlag = MAF
guardFlag = 
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 12, 24), ifElse(var(20), 12, 24)
guard.pauseTime = ifElse(var(20), 12, 24), ifElse(var(20), 12, 24)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -6.25
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -6.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 2210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(11) >= 0
moveType = I

[State 2210, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STATE OF HEAT HAZE>=
[StateDef 2220]
type = S
physics = N
moveType = A
anim = 2220
ctrl = 0
velSet = 0, 0
sprPriority = 1
faceP2 = 1
hitCountPersist = 1

[State 2220, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 2220, 0
channel = 0

[State 2220, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1, 5
channel = 1

[State 2220, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(5) = 1
x = 21

[State 2220, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = 13

[State 2220, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = 16

[State 2220, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 8
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
air.velocity = -3.35195530726, -6.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 67), var(36) := -77
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2220, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 12
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
air.velocity = -3.35195530726, -6.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2220, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 13
ID = 2220
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
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
air.velocity = -3.35195530726, -6.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -25
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2220, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(2220) > 1
ID = 2220
keepOne = 1
excludeID = 2220
ignoreHitPause = 1

[State 2220, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(2220)
trigger1 = !(Target(2220), Time)
value = ifElse(Target(2220), StateType = A, 5425, 5420)
ID = 2220
ignoreHitPause = 1

[State 2220, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(14) >= 0
moveType = I

[State 2220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;SLAMMED AGAINST THE GROUND>=
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
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5110

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



;COSMIC FUTEN SWING>=
[StateDef 2230]
type = S
physics = N
moveType = A
anim = 2230
ctrl = 0
velSet = 0, 0
sprPriority = 1
faceP2 = 1
hitCountPersist = 1

[State 2230, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2230, 0
channel = 0

[State 2230, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40, 0
channel = 4

[State 2230, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 2230, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Cosmic Futen Swing Dust"
posType = P1
ownPal = 1

[State 2230, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 3.35195530726
y = -7.5

[State 2230, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 0.5859375

[State 2230, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 5 && !var(37)
attr = A, ST
hitFlag = M
priority = 7, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -55
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = 2240

[State 2230, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 2231


;Landing
[StateDef 2231]
type = S
physics = N
moveType = I
anim = 2231
ctrl = 0
velSet = 0,0
sprPriority = 0

[State 2231, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 2231, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2231, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 2231, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw
[Statedef 2240]
type = A
physics = N
moveType = A
anim = 2240
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 2240, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 2240, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 2245

[State 2240, Width]
type = Width
trigger1 = AnimElemTime(11) < 0
edge = 48, 0

[State 2240, BindToTarget]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(11) < 0
pos = 0, 0, Head

[State 2240, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = floor(ifElse(70 * fvar(11) < 7, -7, -70 * fvar(11)))

[State 2240, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = 36

[State 2240, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = 72

[State 2240, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = 1

[State 2240, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
var(13) = 1

[State 2240, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
var(15) = 1
ignoreHitPause = 1

[State 2240, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(11) = 0
value = 2246

[State 2240, Voice]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = 2240, 0
channel = 0

[State 2240 Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = 2, 820
channel = 2

[State 2240, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(11) = 0
time = 14
ampl = -4
freq = 120

[State 2240, VelSet]
type = VelSet
trigger1 = AnimElem = 13
x = 3.35195530726
y = -6.25

[State 2240, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(13) > 0
y = 0.78125

[State 2240, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 2241


;Landing
[StateDef 2241]
type = S
physics = N
moveType = I
anim = 2231
ctrl = 0
velSet = 0,0
sprPriority = 0
faceP2 = 1

[State 2241, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 2241, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2241, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 2241, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Being Thrown
[StateDef 2245]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 2245, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 2245

[State 2245, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 2245, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 2246]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 5, -8.4375

[State 2246, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030
persistent = 0

[State 2246, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030
trigger1 = !AnimTime
value = 5050

[State 2246, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = [5050, 5059]
trigger1 = vel y >= ifElse(Anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(Anim + 10)
value = Anim + 10
persistent = 0

[State 2246, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 2246, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.634765625

[State 2246, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 2246, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 2246, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;LOST HOMELAND>=
[StateDef 2250]
type = S
physics = N
moveType = A
anim = 2250
ctrl = 0
velSet = 0, 0
sprPriority = 1
faceP2 = 1
hitCountPersist = 1

[State 2250, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 1 && !var(37)
attr = S, ST
hitFlag = M
priority = 7, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -55
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = 2260

[State 2250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
moveType = I

[State 2250, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100, 0
channel = 0

[State 2250, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 2250, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw
[Statedef 2260]
type = S
physics = N
moveType = A
anim = 2260
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 2260, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 2260, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 2265

[State 2260, Jump Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(4) = 0
value = 40, 0
channel = 4

[State 2260, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = NumTarget && AnimElemTime(4) = 0
stateType = A
physics = N

[State 2260, Dust Helper]
type = Helper
trigger1 = NumTarget && AnimElemTime(4) = 0
helperType = Normal
stateNo = 8100
ID = 8100
name = "Cosmic Futen Swing Dust"
posType = P1
ownPal = 1

[State 2260, Width]
type = Width
trigger1 = AnimElemTime(4) < 0
edge = 40, 0

[State 2260, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) < 0
pos = 47, 0

[State 2260, BindToTarget]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(7) < 0
pos = 49, 82, Head

[State 2260, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElemTime(10) = 0
x = 7
y = -38

[State 2260, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(7) = 0
value = floor(ifElse(56 * fvar(11) < 7, -7, -56 * fvar(11)))

[State 2260, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(7) = 0
value = 36

[State 2260, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElemTime(7) = 0
value = 72

[State 2260, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(7) = 0
value = 1

[State 2260, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(7) = 0
var(13) = 1

[State 2260, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(7) = 0
var(15) = 1
ignoreHitPause = 1

[State 2260, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(7) = 0
value = 2266

[State 2260, Voice]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(6) = 0
value = 2260, 0
channel = 0

[State 2260, Woosh Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(6) = 0
value = 1, 5
channel = 1

[State 2260, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(7) = 0
value = 2, 5
channel = 2

[State 2260, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElemTime(7) = 0
helperType = Normal
stateNo = 8013
ID = 8000
name = "Spark"
posType = P1
pos = 63, -46
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 2260, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(7) = 0
time = 14
ampl = -4
freq = 120

[State 2260, VelSet]
type = VelSet
trigger1 = NumTarget && AnimElemTime(9) = 0
x = -2.23463687151
y = -10

[State 2260, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(9) > 0
y = 0.78125

[State 2260, End]
type = ChangeState
trigger1 = AnimElemTime(9) > 0
trigger1 = pos y > -vel y
value = 2261


;Landing
[StateDef 2261]
type = S
anim = 2311
physics = N
moveType = I
velSet = 0, 0
faceP2 = 1

[State 2261, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 2261, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2261, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 2261, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Being Thrown
[StateDef 2265]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 2265, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 2265

[State 2265, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 2265, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 2266]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -5, -2.5

[State 2266, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030
persistent = 0

[State 2266, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030
trigger1 = !AnimTime
value = 5050

[State 2266, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = [5050, 5059]
trigger1 = vel y >= ifElse(Anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(Anim + 10)
value = Anim + 10
persistent = 0

[State 2266, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 2266, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5078125

[State 2266, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 2266, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 2266, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;OMOGATOKI (NEUTRAL, UNUSED ATM)>=
[StateDef 2300]
type = S
physics = N
moveType = A
anim = 2300
ctrl = 0
velSet = 0, 0
sprPriority = 1
faceP2 = 1

[State 2300, Reset "x" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000200)
ID = 90000200

[State 2300, Reset "y" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000210)
ID = 90000210

[State 2300, Reset "z" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000220)
ID = 90000220

[State 2300, Reset "a" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000230)
ID = 90000230

[State 2300, Reset "b" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000240)
ID = 90000240

[State 2300, Reset "c" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000250)
ID = 90000250

[State 2300, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2300, 0
channel = 0

[State 2300, Dodge Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 3
channel = 1

[State 2300, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 2300, Crown Under Sky]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2200

[State 2300, Fullmoon Evening]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2210

[State 2300, State of Heat Haze]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
var(14) = 2220

[State 2300, Beyond Frames]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "HCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010406)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010504))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
trigger2 = AILevel && !var(14)
trigger2 = MoveHit
trigger2 = P2Dist x >= 0
var(14) = 2040

[State 2300, Cosmic Futen Swing]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2230

[State 2300, Lost Homeland]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2250

[State 2300, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = !AnimTime
value = var(14)

[State 2300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;OMOGATOKI (FORWARDS)>=
[StateDef 2310]
type = S
physics = N
moveType = A
anim = 2310
ctrl = 0
velSet = 0, 0
sprPriority = 1
faceP2 = 1

[State 2310, Reset "left" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000004)
ID = 90000004

[State 2310, Reset "right" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000006)
ID = 90000006

[State 2310, Reset "x" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000200)
ID = 90000200

[State 2310, Reset "y" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000210)
ID = 90000210

[State 2310, Reset "z" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000220)
ID = 90000220

[State 2310, Reset "a" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000230)
ID = 90000230

[State 2310, Reset "b" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000240)
ID = 90000240

[State 2310, Reset "c" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000250)
ID = 90000250

[State 2310, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2300, 0
channel = 0

[State 2310, Dodge Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 3
channel = 1

[State 2310, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 40, 0
channel = 4

[State 2310, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 2310, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Omogatoki Dust"
posType = P1
ownPal = 1

[State 2310, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 2.23463687151
y = -6.25

[State 2310, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 0.5859375

[State 2310, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(7) < 0
time = 1
value = SCA

[State 2310, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 2310, Crown Under Sky]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2200

[State 2310, Fullmoon Evening]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2210

[State 2310, State of Heat Haze]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
var(14) = 2220

[State 2310, Beyond Frames]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "HCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010406)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010504))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
trigger2 = AILevel && !var(14)
trigger2 = MoveHit
trigger2 = P2Dist x >= 0
var(14) = 2040

[State 2310, Cosmic Futen Swing]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2230

[State 2310, Lost Homeland]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2250

[State 2310, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = !AnimTime
value = var(14)

[State 2310, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 2311


;Landing
[StateDef 2311]
type = S
anim = 2311
physics = N
moveType = I
velSet = 0, 0

[State 2311, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 2311, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2311, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 2311, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = !Time
value = var(14)

[State 2311, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;OMOGATOKI (BACKWARDS)>=
[StateDef 2320]
type = S
physics = N
moveType = A
anim = 2310
ctrl = 0
velSet = 0, 0
sprPriority = 1
faceP2 = 1

[State 2320, Reset "left" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000004)
ID = 90000004

[State 2320, Reset "right" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000006)
ID = 90000006

[State 2320, Reset "x" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000200)
ID = 90000200

[State 2320, Reset "y" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000210)
ID = 90000210

[State 2320, Reset "z" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000220)
ID = 90000220

[State 2320, Reset "a" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000230)
ID = 90000230

[State 2320, Reset "b" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000240)
ID = 90000240

[State 2320, Reset "c" Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90000250)
ID = 90000250

[State 2320, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2300, 0
channel = 0

[State 2320, Dodge Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 3
channel = 1

[State 2320, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 40, 0
channel = 4

[State 2320, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 2320, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Omogatoki Dust"
posType = P1
ownPal = 1

[State 2320, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = -2.23463687151
y = -6.25

[State 2320, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 0.5859375

[State 2320, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(7) < 0
time = 1
value = SCA

[State 2320, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 2320, Crown Under Sky]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2200

[State 2320, Fullmoon Evening]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2210

[State 2320, State of Heat Haze]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "[special] right, right"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001026)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001074))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
var(14) = 2220

[State 2320, Beyond Frames]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "HCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010406)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010504))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
trigger2 = AILevel && !var(14)
trigger2 = MoveHit
trigger2 = P2Dist x >= 0
var(14) = 2040

[State 2320, Cosmic Futen Swing]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "x"
trigger1 = NumExplod(90000200) || NumExplod(90000205)
var(14) = 2230

[State 2320, Lost Homeland]
type = VarSet
triggerAll = (!var(14) || AILevel) && Time >= 2
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;command = "z"
trigger1 = NumExplod(90000220) || NumExplod(90000225)
var(14) = 2250

[State 2320, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = !AnimTime
value = var(14)

[State 2320, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 2311



;PUNCH ZERO COUNTER>=
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
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2100, 0
channel = 0

[State 2900, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 2900, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = 10

[State 2900, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
x = 5

[State 2900, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = -5

[State 2900, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
x = -15

[State 2900, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
ID = 2900
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
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
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, HitDef 2]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 6 && !MoveContact && !MoveReversed
trigger2 = AnimElem = 7 && !MoveContact && !MoveReversed
ID = 2900
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
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
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -118
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 2900
elem = 7
ignoreHitPause = 1

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 2900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;KICK ZERO COUNTER>=
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
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 2
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 5
channel = 1

[State 2910, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6 && !MoveContact && !MoveReversed
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0,0
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
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -12
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(7) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
