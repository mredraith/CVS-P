; _________________________________________
;| Shingo Yabuki by Jmorphman |
; 
;
;SPECIAL MOVES==
;

;114 SHIKI: ARAGAMI MIKANSEI>=
[StateDef 1000]
type = S
physics = N
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "y" || command = "rlsy"), 1, 0)
var(10) = ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0)

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || P2Dist x > 115 || Random < 333), 1, 0)

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, 1001)

[State 1000, Voice]
type = PlaySnd
trigger1 = !Time
value = 1000,0
channel = 0

[State 1000, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2
channel = 1

[State 1000, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 7.541899441 ;6.75

[State 1000, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 8.938547486 ;10

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 10.72625698 ;12

[State 1000, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 1, 77, 70) < 7, 7, fvar(11) * ifElse(var(10) = 1, 77, 70))), 7
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
ground.velocity = -11.0509440309,0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.5, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10), 1001, 1000)
elem = 6
ignoreHitPause = 1

[State 1000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;115 SHIKI: DOKUGAMI MIKANSEI>=
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Critical Chance Roll]
type = VarSet
trigger1 = !Time
var(10) = ifElse(Random < 250, 1, 0)

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1100, 1101)

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100,0
channel = 0

[State 1100, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,2
channel = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 7.541899441 ;6.75

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 8.938547486 ;10

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 9
x = 9.832402235 ;11

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
x = 13.40782123 ;15

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = 0.8938547486 ;1

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
x = 2.681564246 ;3

[State 1100, Auto Guard]
type = ReversalDef
triggerAll = var(10)
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
reversal.attr = SCA, NA, SA
pauseTime = 12,18
sparkNo = -1 + 0 * (var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 31), (var(36) := -68)
hitSound = S3,0
numHits = 0

[State 1100, Non-Crit HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6 && !var(10)
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 7
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
ground.velocity = -4.469273743, -8.125 ;-4, -6.5
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.469273743, -8.125 ;-4, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Crit Hit 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4 && var(10)
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 8, 16)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 8, 16)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.93322405606,0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.5, -7
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 38), var(36) := -77
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Crit Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 6 && var(10)
ID = 1101
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 32), ifElse(var(20), 6, 34)
guard.pauseTime = ifElse(var(20), 6, 32), ifElse(var(20), 6, 34)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.25, -9
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.25, -9
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Critical Flame effect]
type = Explod
trigger1 = MoveHit && NumTarget(1101)
ID = 8150
anim = 8150
bindTime = -1
sprPriority = 3
posType = P1
pos = 68, -73
scale = 0.25,0.25
ownPal = 1
removeOnGetHit = 1
persistent = 0

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1100, Critical Finish]
type = ChangeState
trigger1 = MoveHit && NumTarget(1101) && !var(20)
trigger1 = !AnimTime
value = 1105

[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Critical Finish
[StateDef 1105]
type = S
anim = 1105
physics = N
moveType = I
velSet = 0,0

[State 1105, Voice]
type = PlaySnd
trigger1 = !Time
value = 1105,0
channel = 0

[State 1105, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;SHINGO KINSEI ORE MU-SHIKI>=
[StateDef 1150]
type = S
physics = N
moveType = A
anim = 1150
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1150, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1150, EX Flash]
type = VarSet
trigger1 = AnimElemTime(25) < -1
var(25) = 2

[State 1150, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 2, -76
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1150, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1150, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100,0
channel = 0

[State 1150, Woosh sound 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,2
channel = 3

[State 1150, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 15.08379888 ;6.75 * 2

[State 1150, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 1150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 8.938547486 ;10

[State 1150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 9
x = 9.832402235 ;11

[State 1150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 13.40782123 ;15

[State 1150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = 0.8938547486 ;1

[State 1150, Auto Guard]
type = ReversalDef
trigger1 = AnimElemTime(6) < 0
reversal.attr = SCA, NA, SA
pauseTime = 12,18
sparkNo = -1 + 0 * (var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 31), (var(36) := -68)
hitSound = S3,0
numHits = 0

[State 1150, Hit 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
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
air.velocity = -4.469273743, -8.125 ;-4, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, Woosh sound 2]
type = PlaySnd
trigger1 = AnimElem = 12
value = 1,2
channel = 4

[State 1150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 13
trigger2 = AnimElem = 17
trigger3 = AnimElem = 19
trigger4 = AnimElem = 22
trigger5 = AnimElem = 23
x = 8

[State 1150, Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 14
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.469273743, -8.125 ;-4, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
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
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, ChangeAnimElem (Hit 2) 1st]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(15) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1150
elem = 15
ignoreHitPause = 1

[State 1150, ChangeAnimElem (Hit 2) 2nd]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(15) >= 0 && AnimElemTime(16) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 8)
value = 1150
elem = 16
ignoreHitPause = 1

[State 1150, Woosh sound 3]
type = PlaySnd
trigger1 = AnimElem = 18
value = 1,2
channel = 5

[State 1150, Hit 3]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 19
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.469273743, -8.125 ;-4, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 31), var(36) := -104
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, ChangeAnimElem (Hit 3)]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(19) >= 0 && AnimElemTime(20) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1150
elem = 20
ignoreHitPause = 1

[State 1150, Woosh sound 4]
type = PlaySnd
trigger1 = AnimElem = 21
value = 1,2
channel = 6

[State 1150, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 21
value = 40,0
channel = 7

[State 1150, Dust Helper]
type = Helper
trigger1 = AnimElem = 21
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oniyaki Mikansei Dust"
posType = P1
ownPal = 1

[State 1150, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 21
stateType = A
physics = N

[State 1150, VelSet (x-movement)]
type = VelSet
trigger1 = AnimElemTime(21) >= 0 && AnimElemTime(27) < 1
x = (5 * exp((-0.08248934360989325722859930675326) * (AnimElemTime(21))))

[State 1150, VelSet (halt x-movement)]
type = VelSet
trigger1 = AnimElemTime(27) = 1
x = 0

[State 1150, VelSet (y-movement)]
type = VelSet
trigger1 = AnimElem = 21
y = -6

[State 1150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(21) > 0
y = 0.42578125

[State 1150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 23
y = -12

[State 1150, Hit 4]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 22
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2,-10.8
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2,-10.8
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -99
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, Woosh sound 5]
type = PlaySnd
trigger1 = AnimElem = 23
value = 1,2
channel = 8

[State 1150, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 23
value = 1150,0
channel = 0

[State 1150, Hit 5]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 24
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 28,28
guard.pauseTime = 28,28
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.234636872, -10 ;-2, -8
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10 ;-2, -8
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -105
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(25) >= 0
moveType = I

[State 1150, Falling sound]
type = PlaySnd
trigger1 = AnimElem = 27
value = 1421,1
channel = 9

[State 1150, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1151


;Landing
[StateDef 1151]
type = S
anim = 1151
physics = N
moveType = I
velSet = 0,0

[State 1151, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1151, Landing Dust Explod]
type = Explod
trigger1 = Time = 1
anim = F61
sprPriority = -10
pos = 0,0

[State 1151, Landing Sound]
type = PlaySnd
trigger1 = Time = 1
value = F7,1

[State 1151, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;100 SHIKI: ONIYAKI MIKANSEI>=
[StateDef 1200]
type = S
physics = N
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500 || NumTarget(1520) || NumTarget(3010) || NumTarget(3060)), 2, ifElse(Random < 500, 1, 0))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1220, 1200)

[State 1200, Voice]
type = PlaySnd
trigger1 = !Time
value = 1200,0
channel = 0

[State 1200, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 4

[State 1200, PosAdd]
type = PosAdd
trigger1 = !Time
x = 14.30167598 ;16

[State 1200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 12.51396648 ;14

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oniyaki Mikansei Dust"
posType = P1
ownPal = 1

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 1
x = ifElse(var(10) = 2, 2.793296089, ifElse(var(10) = 1, 2.234636872, 1.675977654)) ;2.5, 2, 1.5
y = ifElse(var(10) = 2, -11.25, ifElse(var(10) = 1, -8.75, -6.25)) ;-9, -7, -5

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1 && vel x >= 0
x = -0.1745810056 ;-0.125

[State 1200, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1
y = 0.5859375 ;0.375

[State 1200, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 133, ifElse(var(10) = 1, 126, 112)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 133, ifElse(var(10) = 1, 126, 112)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 10
guard.hittime = (10) - 6
ground.slideTime = 10
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.234636872, -4.469273743), ifElse(var(20), -10, -8.125) ;-4, -6.5 (custom combo: -2, -8)
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.234636872, -4.469273743), ifElse(var(20), -10, -8.125) ;-4, -6.5 (custom combo: -2, -8)
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 34), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, Air Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 10
guard.hittime = (10) - 6
ground.slideTime = 10
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.234636872, -4.469273743), ifElse(var(20), -10, -8.125) ;-4, -6.5 (custom combo: -2, -8)
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.234636872, -4.469273743), ifElse(var(20), -10, -8.125) ;-4, -6.5 (custom combo: -2, -8)
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -105
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1200, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201


;Landing
[StateDef 1201]
type = S
anim = ifElse(var(10) = 2 && PrevStateNo = 1200, 1221, 1201)
physics = N
moveType = I
velSet = 0,0

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

[State 1201, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 1201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;100 SHIKI: ONIYAKI MIKANSEI (EX)>=
[StateDef 1230]
type = S
physics = N
moveType = A
anim = 1230
ctrl = 0
velSet = 0,0
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
var(25) = 23

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 4, -69
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1230, Voice]
type = PlaySnd
trigger1 = !Time
value = 1200,0
channel = 0

[State 1230, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 3

[State 1230, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 5

[State 1230, PosAdd]
type = PosAdd
trigger1 = !Time
trigger2 = Time = 2
x = 14.30167598 ;16

[State 1230, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 12.51396648 ;14

[State 1230, Auto Guard]
type = ReversalDef
trigger1 = AnimElemTime(2) < 0
reversal.attr = SCA, NA, SA
pauseTime = 12,18
sparkNo = -1 + 0 * (var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 22), (var(36) := -61)
hitSound = S3,0
numHits = 0

[State 1230, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 1230, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oniyaki Mikansei Dust"
posType = P1
ownPal = 1

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 1
x = 2.793296089 ;2.5
y = -11.25 ;9

[State 1230, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1 && vel x >= 0
x = -0.1745810056 ;-0.125

[State 1230, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1230, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 1
y = 0.5859375 ;0.375

[State 1230, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 1230, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.234636872, -10 ;-2, -8
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10 ;-2, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 34), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, Air Hit]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 3
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.234636872, -10 ;-2, -8
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -10 ;-2, -8
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -105
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1230, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201



;SHINGO KICK>=
[StateDef 1300]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || P2Dist x > 180), 2, ifElse(P2Dist x > 150, 1, 0))

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1300, ifElse(var(10) = 1, 1310, 1320))

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1300,0
channel = 0

[State 1300, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1,5
channel = 1

[State 1300, unique Shingo Kick woosh sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1300,1
channel = 3

[State 1300, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40,0
channel = 4

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
x = 8

[State 1300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 1300, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shingo Kick Dust"
posType = P1
ownPal = 1

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = ifElse(var(10) = 2, 7, ifElse(var(10) = 1, 5.25, 3.5))
y = ifElse(var(10) = 2, -4.5, ifElse(var(10) = 1, -5, -5.5))

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 0
y = 0.625

[State 1300, Spark XY]
type = Null
trigger1 = AnimElem = 7
trigger1 = var(35) := 68 || var(36) := -98
trigger2 = AnimElem = 8
trigger2 = var(35) := 62 || var(36) := -81
trigger3 = AnimElem = 9
trigger3 = var(35) := 65 || var(36) := -52
trigger4 = AnimElem = 10
trigger4 = var(35) := 56 || var(36) := -41

[State 1300, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 7
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 119, ifElse(var(10) = 1, 112, 105)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 119, ifElse(var(10) = 1, 112, 105)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
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
ground.velocity = -4.469273743, -8.125 ;-4, -6.5
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.469273743, -8.125 ;-4, -6.5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
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

[State 1300, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301


;Landing
[StateDef 1301]
type = S
anim = 1301 + var(10) * 10
physics = N
moveType = I
velSet = 0,0

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
channel = 1

[State 1301, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;SHINGO KICK (EX)>=
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
var(25) = 23

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 29,-84
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1330, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1330, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1300,0
channel = 0

[State 1330, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1,5
channel = 3

[State 1330, unique Shingo Kick woosh sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1300,1
channel = 4

[State 1330, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40,0
channel = 5

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
x = 8

[State 1330, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 1330, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shingo Kick Dust"
posType = P1
ownPal = 1

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 8.75
y = -4.5;ifElse(var(10) = 2, -4.5, ifElse(var(10) = 1, -5, -5.5))

[State 1330, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 0
y = 0.625

[State 1300, Spark XY]
type = Null
trigger1 = AnimElem = 7
trigger1 = var(35) := 68 || var(36) := -98
trigger2 = AnimElem = 8
trigger2 = var(35) := 62 || var(36) := -81
trigger3 = AnimElem = 9
trigger3 = var(35) := 65 || var(36) := -52
trigger4 = AnimElem = 10
trigger4 = var(35) := 56 || var(36) := -41

[State 1330, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 7
ID = 1330
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 147 < 7, 7, fvar(11) * 147)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.469273743, -8.125 ;-4, -6.5
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.469273743, -8.125 ;-4, -6.5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
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

[State 1330, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301



;101 SHIKI: OBORO GURUMA MIKANSEI>=
;First Kick
[StateDef 1400]
type = S
physics = N
moveType = A
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1400, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1400, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500 || NumTarget(1520) || NumTarget(3010) || NumTarget(3060)), 2, ifElse(Random < 500, 1, 0))

[State 1400, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1400,0
channel = 0

[State 1400, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40,0
channel = 1

[State 1400, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 3

[State 1400, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 1400, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oboro Guruma Mikansei Dust"
posType = P1
ownPal = 1

[State 1400, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
x = 3.575418994 ;4

[State 1400, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 1
x = 3.407821229 ;3.05
y = ifElse(var(10), -5, -6)
ignoreHitPause = 1
persistent = 0

[State 1400, VelAdd (Light)]
type = VelAdd
triggerAll = Time > 8 ;AnimElemTime(5) > 1
trigger1 = !var(10) && Time > 8
y = 0.5

[State 1400, VelAdd (Medium/Heavy)]
type = VelAdd
triggerAll = Time > 8 ;AnimElemTime(5) > 1
trigger1 = var(10) && Time > 8
y = 0.5859375 ;0.375

[State 1400, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
ID = 1400
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 21, ifElse(var(10) = 1, 35, 91)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 21, ifElse(var(10) = 1, 35, 98)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = ifElse(var(10), -3.072625698, -5.586592179), -7.5 ;(-2.75, -5), -6
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(10), -3.072625698, -5.586592179), -7.5 ;(-2.75, -5), -6
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -102
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1400) > 1
ID = 1400
keepOne = 1
excludeID = 1400
ignoreHitPause = 1

[State 1400, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1400)
trigger1 = !(Target(1400), Time)
value = 55000
ID = 1400
ignoreHitPause = 1

[State 1400, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1400
elem = 6
ignoreHitPause = 1

[State 1400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0 && !var(10)
moveType = I

[State 1400, End]
type = ChangeState
trigger1 = pos y > -vel y
value = ifElse(var(10), 1410, 1401)


;Landing
[StateDef 1401]
type = S
anim = 1401
physics = N
moveType = I
velSet = 0,0

[State 1401, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1401, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1401, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 4

[State 1401, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1


;Second Kick
[StateDef 1410]
type = S
anim = 1410
physics = N
moveType = A
velSet = 0,0
hitCountPersist = 1

[State 1410, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1410, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1410, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 4

[State 1410, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1410,0
channel = 0

[State 1410, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 40,0
channel = 5

[State 1410, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,5
channel = 6

[State 1410, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 1410, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oboro Guruma Mikansei Dust"
posType = P1
ownPal = 1

[State 1410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
x = 3.575418994 ;4

[State 1410, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) >= 1
x = 3.407821229 ;3.05
y = ifElse(var(10) = 2, -5, -6)
ignoreHitPause = 1
persistent = 0

[State 1410, VelAdd (Medium)]
type = VelAdd
triggerAll = Time > 8 ;AnimElemTime(6) > 1
trigger1 = var(10) = 1
y = 0.5

[State 1410, VelAdd (Heavy)]
type = VelAdd
triggerAll = Time > 8 ;AnimElemTime(6) > 1
trigger1 = var(10) = 2
y = 0.5859375 ;0.375

[State 1410, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 6
ID = 1410
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 35, 77) < 7, 7, fvar(11) * ifElse(var(10) = 2, 35, 77))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = ifElse(var(10) = 2, -3.631284916, -5.586592179), ifElse(var(10) = 1, -7.5, -9.0625) ;(-3.25, -5), (-6, -7.25)
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(10) = 2, -2.51396648, -5.586592179), ifElse(var(10) = 1, -7.5, -9.0625) ;(-2.25, -5), (-6, -7.25)
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -102
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1410, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1410) > 1
ID = 1410
keepOne = 1
excludeID = 1410
ignoreHitPause = 1

[State 1410, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1410)
trigger1 = !(Target(1410), Time)
value = 55000
ID = 1410
ignoreHitPause = 1

[State 1410, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1410
elem = 7
ignoreHitPause = 1

[State 1410, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0 && var(10) = 1
moveType = I

[State 1410, End]
type = ChangeState
trigger1 = pos y > -vel y
value = ifElse(var(10) = 2, 1420, 1401)


;Third Kick
[StateDef 1420]
type = S
anim = 1420
physics = N
moveType = A
velSet = 0,0
hitCountPersist = 1

[State 1420, Critical Chance Roll]
type = ChangeState
trigger1 = AnimElem = 8
trigger1 = Random < 250
value = 1421

[State 1420, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1420, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1420, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 7

[State 1420, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1420,0
channel = 0

[State 1420, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40,0
channel = 8

[State 1420, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,5
channel = 9

[State 1420, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 1420, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oboro Guruma Mikansei Dust"
posType = P1
ownPal = 1

[State 1420, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 3.407821229 ;3.05
y = -8

[State 1420, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 1
y = 0.5

[State 1420, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 8
ID = 1420
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -5.586592179, 2.5 ;-5, 2
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.586592179, 2.5 ;-5, 2
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1420, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1420) > 1
ID = 1420
keepOne = 1
excludeID = 1420
ignoreHitPause = 1

[State 1420, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1420)
trigger1 = !(Target(1420), Time)
value = ifElse(Target(1420), StateType = A, 5425, 5420)
ID = 1420
ignoreHitPause = 1

[State 1420, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1420, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1401



;Critical Hit
[StateDef 1421]
type = A
anim = 1421
physics = N
moveType = A
hitCountPersist = 1

[State 1421, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 1421, Spark XY]
type = Null
trigger1 = AnimElem = 1
trigger1 = var(35) := 65 || var(36) := -85
trigger2 = AnimElem = 2
trigger2 = var(35) := 47 || var(36) := -40
trigger3 = AnimElem = 3
trigger3 = var(35) := 33 || var(36) := -16

[State 1421, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 1
ID = 1421
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 112 < 7, 7, fvar(11) * 112)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 8, 16), ifElse(var(20), 8, 16)
guard.pauseTime = ifElse(var(20), 8, 16), ifElse(var(20), 8, 16)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -5.586592179, 2.5 ;-5, 2
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.586592179, 2.5 ;-5, 2
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
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

[State 1421, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1421) > 1
ID = 1421
keepOne = 1
excludeID = 1421
ignoreHitPause = 1

[State 1421, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1421)
trigger1 = !(Target(1421), Time)
value = ifElse(Target(1421), StateType = A, 5425, 5420)
ID = 1421
ignoreHitPause = 1

[State 1421, Falling sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1421,1
channel = 1

[State 1421, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1422


;Critical Landing
[StateDef 1422]
type = S
anim = 1422
physics = N
moveType = I
velSet = 0,0

[State 1422, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1422, Landing Dust Explod]
type = Explod
trigger1 = Time = 1
anim = F61
sprPriority = -10
pos = 0,0

[State 1422, Landing Sound]
type = PlaySnd
trigger1 = Time = 1
value = F7,1

[State 1422, Voice]
type = PlaySnd
trigger1 = !Time
value = 1421,0
channel = 0

[State 1422, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;HIT BY OBORO GURUMA MIKANSEI>=
;Hit shake
[StateDef 55000]
type = A
moveType = H
physics = N
velSet = 0,0

[State 55000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030

[State 55000, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 55000, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 55030


;Knocked away)
[StateDef 55030]
type = A
moveType = H
physics = N
ctrl = 0

[State 55030, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
value = 5030

[State 55030, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 55030, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 55030, ChangeState]
type = ChangeState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.getHit.groundLevel)
trigger3 = !AnimTime
value = 55050


;Falling
[StateDef 55050]
type = A
moveType = H
physics = N

[State 55050, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
trigger1 = Anim = 5035
trigger2 = !Time
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090
value = 5050

[State 55050, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = [5050, 5059]
trigger1 = vel y >= ifElse(Anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(Anim + 10)
value = Anim + 10
persistent = 0

[State 55050, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 55050, SelfState]
type = SelfState
triggerAll = vel y > 0
triggerAll = pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
triggerAll = Alive
triggerAll = CanRecover
trigger1 = command = "recovery"
value = 5200

[State 55050, SelfState]
type = SelfState
triggerAll = vel y > const(movement.air.getHit.airRecover.threshold)
triggerAll = Alive
triggerAll = CanRecover
trigger1 = command = "recovery"
value = 5210

[State 55050, SelfState]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= ifElse((Anim = [5051,5059]) || (Anim = [5061,5069]), 0, const(movement.air.getHit.groundLevel))
value = 5100



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
elem = ifElse(AuthorName = "Team Z2", 2, 1)

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
trigger1 = GetHitVar(chainID) != 429 && GetHitVar(chainID) != 1040 && GetHitVar(chainID) != 1050
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5110

[State 5422, End]
type = ChangeState
trigger1 = GetHitVar(chainID) = 429 || GetHitVar(chainID) = 1040 || GetHitVar(chainID) = 1050
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 1057


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



;101 SHIKI: OBORO GURUMA MIKANSEI (EX)>=
[StateDef 1430]
type = S
physics = N
moveType = A
anim = 1430
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1430, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1430, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1430, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 43

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = -7,-64
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1430, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1400,0
channel = 0

[State 1430, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 12 && HitCount
value = 1410,0
channel = 0

[State 1430, Final Voice]
type = PlaySnd
trigger1 = AnimElem = 20
value = 1420,0
channel = 0

[State 1430, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40,0
channel = 3

[State 1430, Woosh sound 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 4

[State 1430, Woosh sound 2]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1,5
channel = 5

[State 1430, Woosh sound 3]
type = PlaySnd
trigger1 = AnimElem = 19
value = 1,5
channel = 6

[State 1430, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 1430, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Oboro Guruma Dust"
posType = P1
ownPal = 1

[State 1430, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
x = 3.575418994 ;4

[State 1430, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 1
x = 4.469273743 ;4
y = -5
ignoreHitPause = 1
persistent = 0

[State 1430, VelAdd (Middle)]
type = VelAdd
trigger1 = Time = [20, 30] ;AnimElemTime(9) > 0 && AnimElemTime(14) <= 0
y = 0.09765625 ;0.0625

[State 1430, VelAdd (Initial/Late-Mid)]
type = VelAdd
trigger1 = Time = (8, 19] ;AnimElemTime(5) > 1 && AnimElemTime(9) <= 0
trigger2 = Time = [31, 47] ;AnimElemTime(14) > 0 && AnimElemTime(23) <= 0
y = 0.1953125 ;0.125

[State 1430, VelAdd (Final)]
type = VelAdd
trigger1 = Time > 47 ;AnimElemTime(23) > 0
y = 0.5859375 ;0.375

[State 1430, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
value = SCA
time = 1

[State 1430, Hit 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
ID = 1400
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -2.234636872, -8.75 ;-2, -7
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.234636872, -8.75 ;-2, -7
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -102
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, ChangeAnimElem 1]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1430
elem = 6
ignoreHitPause = 1

[State 1430, Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 12
ID = 1400
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -4.469273743, -5 ;-4, -5.25 + 1.25
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.469273743, -5 ;-4, -5.25 + 1.25
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -102
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1400) > 1
ID = 1400
keepOne = 1
excludeID = 1400
ignoreHitPause = 1

[State 1430, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1400)
trigger1 = !(Target(1400), Time)
value = 55000
ID = 1400
ignoreHitPause = 1

[State 1430, ChangeAnimElem 2]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime && var(10)
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1430
elem = 13
ignoreHitPause = 1

[State 1430, Hit 3]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 20
ID = 1430
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -5.586592179, 2.5 ;-5, 2
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.586592179, 2.5 ;-5, 2
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1430) > 1
ID = 1430
keepOne = 1
excludeID = 1430
ignoreHitPause = 1

[State 1430, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1430)
trigger1 = !(Target(1430), Time)
value = ifElse(Target(1430), StateType = A, 5425, 5420)
ID = 1430
ignoreHitPause = 1

[State 1430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(21) >= 0
moveType = I

[State 1430, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1401



;SHINGO KINSEI ORE SHIKI: NIE TOGI>=
;Startup
[StateDef 1500]
type = S
physics = N
moveType = A
anim = 1500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1500, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1500, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 0

[State 1500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1500, ifElse(var(10) = 1, 1501, 1502))

[State 1500, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1500,0
channel = 0

[State 1500, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2
channel = 1

[State 1500, PosAdd]
type = PosAdd
trigger1 = !Time
trigger2 = AnimElem = 4
x = 8

[State 1500, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
ID = 1500
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
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.469273743, -8.125 ;-4, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1500, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1500, ifElse(var(10) = 1, 1501, 1502))
elem = 6
ignoreHitPause = 1

[State 1500, ChangeState]
type = ChangeState
trigger1 = MoveHit && NumTarget(1500)
trigger1 = AnimElemTime(6) >= 0
value = 1510
ignoreHitPause = 1

[State 1500, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1500, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 1510]
type = S
anim = 1510
physics = N
moveType = A
velSet = 0,0
hitCountPersist = 1

[State 1510, EX Flash]
type = VarSet
trigger1 = !Time && var(10) = 3
var(25) = 8

[State 1510, PosAdd]
type = PosAdd
trigger1 = !Time
trigger2 = AnimElem = 2
trigger3 = AnimElem = 4
x = 8

[State 1510, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1500,1
channel = 0

[State 1510, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 3

[State 1510, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4
ID = 1510
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 3, 28, 21) < 7, 7, fvar(11) * ifElse(var(10) = 3, 28, 21))), 7
getPower = ifElse(var(10) = 3, 0, ifElse(!var(13), 144, 72) * !var(20)), ifElse(var(10) = 3, 0, 36 * !var(20))
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
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.469273743, -8.125 ;-4, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 31), var(36) := -104
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1510, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1510
elem = 5
ignoreHitPause = 1

[State 1510, ChangeState]
type = ChangeState
trigger1 = MoveHit && NumTarget(1510)
trigger1 = AnimElem = 6
value = 1520
ignoreHitPause = 1

[State 1510, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1510, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Finish
[StateDef 1520]
type = A
anim = 1520
physics = N
moveType = A
velSet = 0,0
hitCountPersist = 1

[State 1520, EX Flash]
type = VarSet
trigger1 = !Time && var(10) = 3
var(25) = 6

[State 1520, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
x = 8

[State 1520, Jump Sound]
type = PlaySnd
trigger1 = !Time
value = 40,0
channel = 4

[State 1520, Woosh sound]
type = PlaySnd
trigger1 = !Time
value = 1,2
channel = 5

[State 1520, Dust Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8100
ID = 8100
name = "Nie Togi Dust"
posType = P1
ownPal = 1

[State 1520, VelSet (x-movement)]
type = VelSet
trigger1 = Time < 15 ;AnimElemTime(3) < 8
x = (5 * exp((-0.082489) * (AnimElemTime(6) + 1)))

[State 1520, VelSet (halt x-movement)]
type = VelSet
trigger1 = Time = 15
x = 0

[State 1520, VelSet (y-movement)]
type = VelSet
trigger1 = !Time
y = -6

[State 1520, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = 0.42578125

[State 1520, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1500,2
channel = 0

[State 1520, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 2
ID = 1520
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 3, 49, ifElse(var(10) = 2, 42, ifElse(var(10) = 1, 35, 28))) < 7, 7, fvar(11) * ifElse(var(10) = 3, 49, ifElse(var(10) = 2, 42, ifElse(var(10) = 1, 35, 28))))), 7
getPower = ifElse(var(10) = 3, 0, ifElse(!var(13), 144, 72) * !var(20)), ifElse(var(10) = 3, 0, 36 * !var(20))
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2,-10.8
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2,-10.8
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -99
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1520, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(11) && NumTarget(1520)
var(15) = 0

[State 1520, VarAdd]
type = VarAdd
trigger1 = MoveHit && NumTarget(1520)
var(11) = 1
persistent = 0

[State 1520, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 1520, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201



;SHINGO KINSEI ORE SHIKI: NIE TOGI (EX)>=
[StateDef 1530]
type = S
physics = N
moveType = A
anim = 1530
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1530, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1530, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1530, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1530, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 16

[State 1530, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 9, -65
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1530, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1530, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1500,0
channel = 0

[State 1530, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2
channel = 6

[State 1530, PosAdd]
type = PosAdd
trigger1 = !Time
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
x = 8

[State 1530, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5 && !var(37)
ID = 1530
attr = S, ST
hitFlag = M
priority = 7, Miss
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.469273743, -8.125 ;-4, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1530, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= 10
value = 1530
elem = 6
ignoreHitPause = 1

[State 1530, ChangeState]
type = ChangeState
trigger1 = MoveHit && NumTarget(1530)
trigger1 = AnimElemTime(6) >= 0
value = 1510
ignoreHitPause = 1

[State 1530, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1530, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;212 SHIKI: KOTOTSUKI YO MIKANSEI>=
;Startup
[StateDef 1600]
type = S
physics = N
moveType = A
anim = 1600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1600, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1600, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 2

[State 1600, Voice]
type = PlaySnd
trigger1 = !Time
value = 1600,0
channel = 0

[State 1600, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 2
x = 6.703910615 ;6

[State 1600, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 4 || AnimElem = 7)
value = 100, ifElse((AnimElem = 4), 0, 1)

[State 1600, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110,0
channel = 1

[State 1600, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1600, ChangeState]
type = ChangeState
trigger1 = P2Dist x <= 64 && AnimElemTime(2) >= 0
value = 1610

[State 1600, End]
type = ChangeState
trigger1 = !var(10) && Time > 29
trigger2 = var(10) = 1 && Time > 42
trigger3 = var(10) = 2 && Time > 55
value = 1601


;End
[StateDef 1601]
type = S
physics = N
moveType = I
velSet = 0,0
anim = 1601
ctrl = 0
sprPriority = 1

[State 1601, Stopping Sound]
type = PlaySnd
trigger1 = !Time
value = 101,0

[State 1601, Skid Dust]
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

[State 1601, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 1610]
type = S
physics = N
moveType = A
velSet = 0,0
anim = 1610
ctrl = 0
sprPriority = 1

[State 1610, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1610, ifElse(var(10) = 1, 1611, 1612))

[State 1610, VelSet (x-movement)]
type = VelSet
trigger1 = AnimElemTime(9) < 1
x = (8.5 * exp((-0.06454) * (Time)))

[State 1610, Woosh sound 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 3

[State 1610, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
x = 8

[State 1610, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = (8.5 * exp((-0.06454) * (Time)))

[State 1610, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 40,0
channel = 4

[State 1610, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 9
stateType = A
physics = N

[State 1610, Dust Helper]
type = Helper
trigger1 = AnimElem = 9
helperType = Normal
stateNo = 8100
ID = 8100
name = "Kototsuki Mikansei Dust"
posType = P1
ownPal = 1

[State 1610, VelSet]
type = VelSet
trigger1 = AnimElem = 9
x = 4
y = -3

[State 1610, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(9) > 0
y = 0.375

[State 1610, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1610,0
channel = 0

[State 1610, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
x = 4

[State 1610, Woosh sound 2]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1,2
channel = 5

[State 1610, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10) = 1, 63, 56)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10) = 1, 63, 56)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 9, 12)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 9, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 24
guard.hittime = (24) - 6
ground.slideTime = 24
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.469273743, -7.5 ;-4
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 47), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1610, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1620


;Finish
[StateDef 1620]
type = S
anim = 1620
physics = N
moveType = A
velSet = 0,0
hitCountPersist = 1

[State 1620, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1620, ifElse(var(10) = 1, 1621, 1622))

[State 1620, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1620, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
pos = 16,0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1620, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 6

[State 1620, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 1
ID = 1620
attr = S, SA
hitFlag = MAFD
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
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
air.hitTime = 34
down.hitTime = 34
ground.velocity = -5.586592179, 2.5 ;-5, 2
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.586592179, 2.5 ;-5, 2
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 44), var(36) := -18
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1620, ChangeAnimElem 1]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1620, ifElse(var(10) = 1, 1621, 1622))
elem = 2
ignoreHitPause = 1

[State 1620, ChangeAnimElem 2]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 8)
value = ifElse(var(10) = 0, 1620, ifElse(var(10) = 1, 1621, 1622))
elem = 3
ignoreHitPause = 1

[State 1620, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1620) > 1
ID = 1620
keepOne = 1
excludeID = 1620
ignoreHitPause = 1

[State 1620, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1620)
trigger1 = !(Target(1620), Time)
value = ifElse(Target(1620), StateType = L, 1625, ifElse(Target(1620), StateType = A, 5425, 5420))
ID = 1620
ignoreHitPause = 1

[State 1620, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
moveType = I

[State 1620, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;HIT WHILE LYING DOWN BY KOTOTSUKI MIKANSEI>=
[StateDef 1625]
type = L
moveType = H
physics = N
velSet = 0,0

[State 1625, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignoreHitPause = 1

[State 1625, VarSet]
type = VarSet
trigger1 = !Time
sysvar(2) = 5080

[State 1625, VarAdd]
type = VarAdd
trigger1 = !Time
trigger1 = (Anim = [5081,5089]) || (Anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (Anim % 10))
sysvar(2) = Anim % 10

[State 1625, VarSet]
type = VarSet
trigger1 = !Time
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 1625, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 1625, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 1626


;Knocked back
[Statedef 1626]
type = L
moveType = H
physics = C

[State 1626, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignoreHitPause = 1

[State 1626, VelSet]
type = VelSet
trigger1 = HitOver
x = 0

[State 1626, VarSet]
type = VarSet
trigger1 = !Time
sysvar(0) = 1

[State 1626, ChangeState]
type = ChangeState
trigger1 = HitOver && Alive
value = 1627

[State 1626, SelfState]
type = SelfState
trigger1 = HitOver && !Alive
value = 5150


;Recover
[StateDef 1627]
type = L
moveType = H
physics = N

[State 1627, FallEnvShake]
type = FallEnvShake
trigger1 = !Time

[State 1627, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5110 + (Anim % 10))
trigger1 = Anim = [5081,5089]
value = 5110 + (Anim % 10)
persistent = 0

[State 1627, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
triggerAll = Anim != [5110,5119]
trigger1 = Anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (Anim % 10))
value = 5170

[State 1627, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
triggerAll = Anim != [5110,5119]
trigger1 = Anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (Anim % 10))
value = 5170 + (Anim % 10)

[State 1627, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 1627, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1627, VarSet]
type = VarSet
trigger1 = !Time
trigger1 = GetHitVar(fall.yVel) != 0
sysvar(1) = floor(vel y)

[State 1627, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = !sysvar(0)
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 1627, Explod]
type = Explod
trigger1 = !Time
trigger1 = !sysvar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprPriority = ifElse(sysvar(1) <= Const720p(56), -10, 10)

[State 1627, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 1627, ChangeAnim]
type = ChangeAnim
triggerAll = Anim = [5171,5179]
triggerAll = SelfAnimExist(5110 + (Anim % 10))
trigger1 = !AnimTime
trigger2 = sysvar(0)
value = 5110 + (Anim % 10)
persistent = 0

[State 1627, ChangeAnim]
type = ChangeAnim
triggerAll = Anim != [5111,5119]
trigger1 = !AnimTime
trigger2 = sysvar(0)
value = 5110
persistent = 0

[State 1627, SelfState]
type = SelfState
triggerAll = !Alive
trigger1 = !AnimTime
trigger2 = sysvar(0)
trigger3 = Anim = [5110,5119]
value = 5150

[State 1627, VarSet]
type = VarSet
trigger1 = sysvar(0)
trigger1 = !Time
sysvar(0) = 0

[State 1627, VelMul]
type = VelMul
trigger1 = 1
x = 0.85

[State 1627, VelSet]
type = VelSet
trigger1 = abs(vel x) < const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 1627, SelfState]
type = SelfState
trigger1 = !Time
trigger1 = GetHitVar(chainID) != 429 && GetHitVar(chainID) != 1040 && GetHitVar(chainID) != 1050
trigger2 = Time >= 14
trigger2 = GetHitVar(chainID) = 1040
trigger3 = HitOver
trigger3 = GetHitVar(chainID) = 429 || GetHitVar(chainID) = 1050
value = 5120



;212 SHIKI: KOTOTSUKI YO MIKANSEI (EX)>=
;Startup
[StateDef 1650]
type = S
physics = N
moveType = A
anim = 1650
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1650, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1650, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1650, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 68

[State 1650, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = -2,-70
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1650, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1650, Voice]
type = PlaySnd
trigger1 = !Time
value = 1600,0
channel = 0

[State 1650, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 2
x = 6.703910615 ;6

[State 1650, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 4 || AnimElem = 7)
value = 100, ifElse((AnimElem = 4), 0, 1)

[State 1650, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110,0
channel = 3

[State 1650, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1650, Auto Guard]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA, NA, SA
pauseTime = 12,18
sparkNo = -1 + 0 * (var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 18), (var(36) := -68)
hitSound = S3,0
numHits = 0

[State 1650, ChangeState]
type = ChangeState
trigger1 = P2Dist x <= 64 && AnimElemTime(2) >= 0
value = 1660

[State 1650, End]
type = ChangeState
trigger1 = Time > 68
value = 1601


;Success
[StateDef 1660]
type = S
physics = N
moveType = A
velSet = 0,0
anim = 1660
ctrl = 0
sprPriority = 1

[State 1660, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 34

[State 1660, VelSet (x-movement)]
type = VelSet
trigger1 = AnimElemTime(9) < 1
x = (8.5 * exp((-0.06454) * (Time)))

[State 1660, Woosh sound 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 4

[State 1660, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
x = 8

[State 1660, Auto Guard]
type = ReversalDef
trigger1 = AnimElemTime(5) < 0
reversal.attr = SCA, NA, SA
pauseTime = 12,18
sparkNo = -1 + 0 * (var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 18), (var(36) := -68)
hitSound = S3,0
numHits = 0

[State 1660, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 24
guard.hittime = (24) - 6
ground.slideTime = 24
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.469273743, -6.5 ;-4
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 47), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1660, Whiff]
type = ChangeState
trigger1 = AnimElem = 9 && !MoveContact
value = 1661

[State 1660, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = (8.5 * exp((-0.06454) * (Time)))

[State 1660, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 40,0
channel = 5

[State 1660, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 9
stateType = A
physics = N

[State 1660, Dust Helper]
type = Helper
trigger1 = AnimElem = 9
helperType = Normal
stateNo = 8100
ID = 8100
name = "Kototsuki Mikansei Dust"
posType = P1
ownPal = 1

[State 1660, VelSet]
type = VelSet
trigger1 = AnimElem = 9
x = 4
y = -3

[State 1660, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(9) > 0
y = 0.375

[State 1660, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1610,0
channel = 0

[State 1660, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
x = 4

[State 1660, Woosh sound 2]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1,2
channel = 6

[State 1660, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1670


;Whiff
[StateDef 1661]
type = S
physics = N
moveType = I
velSet = 0,0
anim = 1661
ctrl = 0
sprPriority = 1

[State 1661, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 1661, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Finish
[StateDef 1670]
type = S
anim = 1670
physics = N
moveType = A
velSet = 0,0
hitCountPersist = 1

[State 1670, EX Flash]
type = VarSet
trigger1 = AnimElemTime(5) < -1
var(25) = 2

[State 1670, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1670, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
pos = 16,0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1670, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 7

[State 1670, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 1
ID = 1620
attr = S, SA
hitFlag = MAFD
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 34
down.hitTime = 34
ground.velocity = -5.586592179, 2.5 ;-5, 2
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.586592179, 2.5 ;-5, 2
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 44), var(36) := -18
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1670, ChangeAnimElem 1]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1670
elem = 2
ignoreHitPause = 1

[State 1670, ChangeAnimElem 2]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 8)
value = 1670
elem = 3
ignoreHitPause = 1

[State 1670, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1620) > 1
ID = 1620
keepOne = 1
excludeID = 1620
ignoreHitPause = 1

[State 1670, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1620)
trigger1 = !(Target(1620), Time)
value = ifElse(Target(1620), StateType = L, 1625, ifElse(Target(1620), StateType = A, 5425, 5420))
ID = 1620
ignoreHitPause = 1

[State 1670, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
moveType = I

[State 1670, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;SHINGO KINSEI ORE SHIKI: GETCHU>=
[StateDef 1700]
type = S
physics = N
moveType = A
anim = 1700
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1700, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1700, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))
var(10) = ifElse(Random < 333, 2, ifElse(Random < 500, 1, 0))

[State 1700, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1700, ifElse(var(10) = 1, 1701, 1702))

[State 1700, Voice]
type = PlaySnd
trigger1 = !Time
value = 1700,0
channel = 0

[State 1700, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2
channel = 1

[State 1700, ReversalDef]
type = ReversalDef
trigger1 = !MoveHit && var(26) <= 0
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
ID = 1700
attr = S, HT
reversal.attr = SCA, NA, SA, HA
pauseTime = 12,12
sparkNo = -1
sparkXY = 0,0
hitSound = S3, 0
fall = 1
fall.recover = 0
numHits = 0

[State 1700, Reversal Spark]
type = Helper
trigger1 = NumTarget(1700)
trigger1 = !(Target(1700), IsHelper) && MoveHit
helperType = Normal
stateNo = 8020
ID = 8000
name = "Spark"
postype = P1
pos = 40, -70
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
persistent = 0

[State 1700, Counter Success]
type = ChangeState
trigger1 = NumTarget(1700)
trigger1 = !(Target(1700), IsHelper) && MoveHit
value = 1710

[State 1700, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
ID = 1701
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 18 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -6,10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6,10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -51
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1700, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1701) > 1
ID = 1701
keepOne = 1
excludeID = 1701
ignoreHitPause = 1

[State 1700, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1701)
trigger1 = !(Target(1701), Time)
value = ifElse(Target(1701), StateType = A, 5425, 5420)
ID = 1701
ignoreHitPause = 1

[State 1700, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1700, ifElse(var(10) = 1, 1701, 1702))
elem = 6
ignoreHitPause = 1

[State 1700, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0 && var(10) != 2
trigger1 = AnimElemTime(8) >= 0 && var(10) = 2
moveType = I

[State 1700, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Counter Success
[StateDef 1710]
type = S
anim = 1710
physics = N
moveType = A
velSet = 0,0

[State 1710, EX Flash]
type = VarSet
trigger1 = !Time && PrevStateNo = 1730
var(25) = 17

[State 1710, Voice]
type = PlaySnd
trigger1 = !Time
value = 1710,0
channel = 0

[State 1710, Woosh sound]
type = PlaySnd
trigger1 = !Time
value = 1,5
channel = 3

[State 1710, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
ID = 1710
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(PrevStateNo = 1730, 63, 42) < 7, 7, fvar(11) * ifElse(PrevStateNo = 1730, 63, 42))), 7
getPower = ifElse(PrevStateNo = 1730, 0, ifElse(!var(13), 144, 72) * !var(20)), ifElse(PrevStateNo = 1730, 0, 36 * !var(20))
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 20
guard.hittime = (20) - 6
ground.slideTime = 20
air.hitTime = 120
ground.velocity = -12, -4.25
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -12, -4.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 34), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1710, Timer Offset]
type = VarSet
trigger1 = MoveContact = 1 && HitPauseTime = 12
var(10) = Time
ignoreHitPause = 1

[State 1710, Recoil]
type = VelSet
trigger1 = MoveContact
x = -(13.5 * exp((-0.1886) * (Time + 1 - var(10))))

[State 1710, Juggle Reset]
type = VarSet
trigger1 = MoveHit && NumTarget(1710)
var(15) = 0

[State 1710, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1710) > 1
ID = 1710
keepOne = 1
excludeID = 1710
ignoreHitPause = 1

[State 1710, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1710)
trigger1 = !(Target(1710), Time)
value = 1715
ID = 1710
ignoreHitPause = 1

[State 1710, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1710
elem = 3
ignoreHitPause = 1

[State 1710, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1710, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;HIT BY (COUNTERED) SHINGO KINSEI ORE SHIKI: GETCHU>=
;Being Launched
[StateDef 1715]
type = A
moveType = H
physics = N
velSet = 0,0

[State 1715, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 1715, End]
type = ChangeState
trigger1 = HitShakeOver
value = 1716


;Heading Towards Wall
[StateDef 1716]
type = A
moveType = H
physics = N

[State 1716, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 1716, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel) * 0.67

[State 1716, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = (vel y < 0), 0
ignoreHitPause = 1

[State 1716, ScreenBound]
type = ScreenBound
triggerAll = NumEnemy
trigger1 = pos x > -40 && Enemy, pos x > -40
trigger2 = pos x < 40 && Enemy, pos x < 40
value = 1
moveCamera = 1, 0

[State 1716, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1716, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5900)
value = 5900

[State 1716, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5900)
trigger1 = AnimElemTime(AnimElemNo(0) + 1) = 0
value = 5012
elem = AnimElemNo(0)

[State 1716, Bounce Off Wall]
type = ChangeState
trigger1 = Time >= 4
trigger1 = BackEdgeBodyDist <= 0 || FrontEdgeBodyDist <= 0
value = 1717

[State 1716, End]
type = SelfState
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;Impacting Wall
[StateDef 1717]
type = A
moveType = H
physics = N

[State 1717, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 1717, PosAdd]
type = PosAdd
trigger1 = 1
x = -BackEdgeBodyDist

[State 1717, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1717, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 1717, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1717, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5901)
value = 5901

[State 1717, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5901)
value = 5000

[State 1717, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,0

[State 1717, Hitting the Wall FX]
type = Explod
trigger1 = !Time
anim = F72
pos = 0, floor(ScreenPos y) - 50
posType = Back
sprPriority = 3

[State 1717, End]
type = ChangeState
trigger1 = Time >= 4
value = 1718


;Bouncing Off Wall
[Statedef 1718]
type = A
moveType = H
physics = N

[State 1718, Turn]
type = Turn
trigger1 = !Time && !SelfAnimExist(5902)

[State 1718, Gravity]
type = VelAdd
trigger1 = Time
y = 0.5

[State 1718, VelSet]
type = VelSet
trigger1 = !Time
x = ((EnemyNear, pos x - pos x) * Facing + 40) / 36.0 * ifElse(SelfAnimExist(5902), -1, 1)
y = (pos y + 0.5 * 0.4850 * 36 ** 2) / -36.0

[State 1718, VelSet]
type = VelSet
trigger1 = !Time
trigger1 = vel x != [-9, 0]
x = ifElse(vel x < -9, -9, 0)

[State 1718, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5902)
value = 5902

[State 1718, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5902)
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 1718, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1718, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 1718, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 1718, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 1718, End]
type = SelfState
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100



;SHINGO KINSEI ORE SHIKI: GETCHU (EX)>=
[StateDef 1730]
type = S
physics = N
moveType = A
anim = 1730
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1730, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1730, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1730, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 30

[State 1730, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 15,-111
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1730, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1730, Voice]
type = PlaySnd
trigger1 = !Time
value = 1700,0
channel = 0

[State 1730, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2
channel = 3

[State 1730, ReversalDef]
type = ReversalDef
trigger1 = !MoveHit && var(26) <= 0
trigger1 = AnimElemTime(5) < 0
ID = 1730
attr = S, HT
reversal.attr = SCA, NA, SA, HA
pauseTime = 12,12
sparkNo = -1
sparkXY = 0,0
hitSound = S3, 0
fall = 1
fall.recover = 0
numHits = 0

[State 1730, Reversal Spark]
type = Helper
trigger1 = NumTarget(1730)
trigger1 = !(Target(1730), IsHelper) && MoveHit
helperType = Normal
stateNo = 8020
ID = 8000
name = "Spark"
postype = P1
pos = 40, -70
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
persistent = 0

[State 1730, Counter Success]
type = ChangeState
trigger1 = NumTarget(1730)
trigger1 = !(Target(1730), IsHelper) && MoveHit
value = 1710

[State 1730, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
ID = 1731
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,18
guard.pauseTime = 12,18
animType = Back
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
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6,10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -51
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1730, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1731) > 1
ID = 1731
keepOne = 1
excludeID = 1731
ignoreHitPause = 1

[State 1730, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1731)
trigger1 = !(Target(1731), Time)
value = ifElse(Target(1731), StateType = A, 5425, 1735)
ID = 1731
ignoreHitPause = 1

[State 1730, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1730
elem = 6
ignoreHitPause = 1

[State 1730, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1730, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;HIT BY EX SHINGO KINSEI ORE SHIKI: GETCHU>=
;Hit shake
[StateDef 1735]
type = S
physics = N
movetype = H
ctrl = 0
velSet = 0,0

[State 1735, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
trigger1 = !SelfAnimExist(5955)
value = 1735
ignoreHitPause = 1

[State 1735, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5955)
value = 5955

[State 1735, Freeze Anim (Non-compatible]
type = ChangeAnim2
trigger1 = Time > 0
trigger1 = Anim != 5955
value = Anim

[State 1735, Freeze Anim (compatible)]
type = ChangeAnim
trigger1 = Time > 0
trigger1 = Anim = 5955
value = Anim

[State 1735, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 1736


;Falling down
[StateDef 1736]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0,0

[State 1736, VelSet]
type = VelAdd
trigger1 = pos y < 0
y = 0.58

[State 1736, PlaySnd]
type = PlaySnd
trigger1 = pos y > -vel y
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 1736, Explod]
type = Explod
trigger1 = pos y > -vel y
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprPriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 1736, PosSet]
type = PosSet
trigger1 = pos y > -vel y
y = 0

[State 1736, PosSet]
type = VelSet
trigger1 = pos y > -vel y
y = 0

[State 1736, VarSet]
type = VarSet
trigger1 = !AnimTime
trigger2 = AnimElemTime(AnimElemNo(0) + 1) = 0
sysvar(0) = ifElse(Anim = 1735, 0, 1)

[State 1736, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
trigger2 = AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse((Anim = 5950 || Anim = 5955) && SelfAnimExist(5112), 5112, 5110)
persistent = 0

[State 1736, SelfState]
type = SelfState
trigger1 = !AnimTime
trigger2 = AnimElemTime(AnimElemNo(0) + 1) = 0
value = 5110



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
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 2900, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 2900, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1)
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getpower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.54, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.54, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -47
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2900, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= 10
value = 2900
elem = 5
ignoreHitPause = 1

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

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
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0,0
givepower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.54, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.54, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 2910
elem = 5
ignoreHitPause = 1

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(6) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

