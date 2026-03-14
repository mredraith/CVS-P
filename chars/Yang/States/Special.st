; _________________________________________________
;| Yang by KarmaCharmeleon			 |
; 
;
;SPECIAL MOVES==
;

;TOUROU ZAN>=
[StateDef 1000]
type = S
physics = N
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(40)
faceP2 = 1

[State 1000, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 1000, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 1000, Reset QCFx2 explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030006)
ID = 90030006

[State 1000, Reset QCFx2 explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030104)
ID = 90030104

[State 1000, Reset QCF explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010006)
ID = 90010006

[State 1000, Reset QCF explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010104)
ID = 90010104

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType = H, 2, 0)

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1010, 1020))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 0
channel = 0

[State 1000, Slash Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 1
channel = 1

[State 1000, Slash Visual Effect]
type = Explod
trigger1 = AnimElem = 3
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

[State 1000, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = -36, 0
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1000, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 6

[State 1000, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = ifElse(var(10) = 0, 3.75, ifElse(var(10) = 1, 6.25, 8.75))

[State 1000, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(6) < 0
x = -0.78125

[State 1000, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1000, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.3125
ground.cornerPush.velOff = 0
guard.velocity = -5.3125
guard.cornerPush.velOff = 0
air.velocity = -7.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -43
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1010, 1020))
elem = 5
ignoreHitPause = 1

[State 1000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1000, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1000, Torou Zan]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && !var(14)
trigger2 = (MoveHit && P2Dist x >= 0) || (var(40) && Enemy, BackEdgeDist > 25)
var(14) = 1001

[State 1000, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
value = var(14)

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = ifElse(AILevel && var(40) && Enemy, BackEdgeDist <= 20, 200, 0)
ctrl = 1


;Second
[StateDef 1001]
type = S
physics = N
moveType = A
anim = 1001
ctrl = 0
velSet = 0,0
sprPriority = 1
hitCountPersist = 1

[State 1001, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 1001, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 1001, Reset QCFx2 explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030006)
ID = 90030006

[State 1001, Reset QCFx2 explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030104)
ID = 90030104

[State 1001, Reset QCF explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010006)
ID = 90010006

[State 1001, Reset QCF explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010104)
ID = 90010104

[State 1001, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1001, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = var(10) = ifElse(P2MoveType = H, 2, 0)

[State 1001, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1001, ifElse(var(10) = 1, 1011, 1021))

[State 1001, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1001, 0
channel = 0

[State 1001, Slash Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000, 1
channel = 1

[State 1001, Slash Visual Effect]
type = Explod
trigger1 = AnimElem = 5
anim = 11001
ID = 11001
sprPriority = 3
bindtime = -1
posType = P1
pos = 4, 1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1001, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = -46, 0
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1001, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
x = 6

[State 1001, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = ifElse(var(10) = 0, 3.75, ifElse(var(10) = 1, 6.25, 8.75))

[State 1001, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(8) < 0
x = -0.78125

[State 1001, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 1001, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20) || var(40))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.3125
ground.cornerPush.velOff = 0
guard.velocity = -5.3125
guard.cornerPush.velOff = 0
air.velocity = -7.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1001, ifElse(var(10) = 1, 1011, 1021))
elem = 7
ignoreHitPause = 1

[State 1001, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1001, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1001, Tourou Zan]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && !var(14) && !var(40)
trigger2 = MoveHit && P2Dist x >= 0
var(14) = 1002

[State 1001, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
value = var(14)

[State 1001, End]
type = ChangeState
trigger1 = !AnimTime
value = ifElse(AILevel && var(40) && Enemy, BackEdgeDist > 25, 1000, 0)
ctrl = 1


;Third
[StateDef 1002]
type = S
physics = N
moveType = A
anim = 1002
ctrl = 0
velSet = 0,0
sprPriority = 1
hitCountPersist = 1

[State 1002, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 1002, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 1002, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1002, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = var(10) = ifElse(P2MoveType = H, 2, 0)

[State 1002, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1002, ifElse(var(10) = 1, 1012, 1022))

[State 1002, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1002, 0
channel = 0

[State 1002, Slash Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 1
channel = 1

[State 1002, Slash Visual Effect]
type = Explod
trigger1 = AnimElem = 4
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

[State 1002, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = -20, 0
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1002, PosAdd]
type = PosAdd
trigger1 = !Time
x = 6

[State 1002, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = ifElse(var(10) = 0, 3.75, ifElse(var(10) = 1, 6.25, 8.75))

[State 1002, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(8) < 0
x = -0.78125

[State 1002, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 1002, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20) || var(40))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10) = 1, 56, 49)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10) = 1, 56, 49)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.5, -5
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -7.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
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

[State 1002, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1002, ifElse(var(10) = 1, 1012, 1022))
elem = 6
ignoreHitPause = 1

[State 1002, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1002, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;EX TOUROU ZAN>=
[StateDef 1030]
type = S
physics = N
moveType = A
anim = 1030
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Reset QCFx2 explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030006)
ID = 90030006

[State 1030, Reset QCFx2 explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030104)
ID = 90030104

[State 1030, Reset QCF explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010006)
ID = 90010006

[State 1030, Reset QCF explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010104)
ID = 90010104

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
var(25) = 15

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 6, -44
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 0
channel = 0

[State 1030, Slash Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 1
channel = 1

[State 1030, Slash Visual Effect]
type = Explod
trigger1 = AnimElem = 3
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

[State 1030, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = -36, 0
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1030, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 1030, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 6

[State 1030, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 8.75

[State 1030, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(6) < 0
x = -0.78125

[State 1030, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1030, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
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
ground.velocity = -5.3125
ground.cornerPush.velOff = 0
guard.velocity = -5.3125
guard.cornerPush.velOff = 0
air.velocity = -7.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -43
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1030, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= 10
value = 1030
elem = 5
ignoreHitPause = 1

[State 1030, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1030, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1030, Torou Zan]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && !var(14)
trigger2 = MoveHit && P2Dist x >= 0
var(14) = 1031

[State 1030, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
value = var(14)

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Second
[StateDef 1031]
type = S
physics = N
moveType = A
anim = 1031
ctrl = 0
velSet = 0,0
sprPriority = 1
hitCountPersist = 1

[State 1031, Reset QCFx2 explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030006)
ID = 90030006

[State 1031, Reset QCFx2 explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030104)
ID = 90030104

[State 1031, Reset QCF explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010006)
ID = 90010006

[State 1031, Reset QCF explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010104)
ID = 90010104

[State 1031, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 19

[State 1031, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1001, 0
channel = 0

[State 1031, Slash Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000, 1
channel = 1

[State 1031, Slash Visual Effect]
type = Explod
trigger1 = AnimElem = 5
anim = 11001
ID = 11001
sprPriority = 3
bindtime = -1
posType = P1
pos = 4, 1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1031, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = -46, 0
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1031, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
x = 6

[State 1031, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 8.75

[State 1031, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(8) < 0
x = -0.78125

[State 1031, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 1031, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
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
ground.velocity = -5.3125
ground.cornerPush.velOff = 0
guard.velocity = -5.3125
guard.cornerPush.velOff = 0
air.velocity = -7.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1031, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= 10
value = 1031
elem = 7
ignoreHitPause = 1

[State 1031, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1031, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1031, Tourou Zan]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && !var(14)
trigger2 = MoveHit && P2Dist x >= 0
var(14) = 1032

[State 1031, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
value = var(14)

[State 1031, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Third
[StateDef 1032]
type = S
physics = N
moveType = A
anim = 1030
ctrl = 0
velSet = 0,0
sprPriority = 1
hitCountPersist = 1

[State 1032, Reset QCFx2 explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030006)
ID = 90030006

[State 1032, Reset QCFx2 explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030104)
ID = 90030104

[State 1032, Reset QCF explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010006)
ID = 90010006

[State 1032, Reset QCF explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010104)
ID = 90010104

[State 1032, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 1032, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 0
channel = 0

[State 1032, Slash Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 1
channel = 1

[State 1032, Slash Visual Effect]
type = Explod
trigger1 = AnimElem = 3
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

[State 1032, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = -36, 0
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1032, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 1032, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 6

[State 1032, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 3.75

[State 1032, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(6) < 0
x = -0.78125

[State 1032, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1032, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
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
ground.velocity = -5.3125
ground.cornerPush.velOff = 0
guard.velocity = -5.3125
guard.cornerPush.velOff = 0
air.velocity = -7.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -43
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1032, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= 10
value = 1030
elem = 5
ignoreHitPause = 1

[State 1032, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1032, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1032, Konokizu]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && !var(14)
trigger2 = MoveHit && P2Dist x >= 0
var(14) = 1033

[State 1032, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
value = var(14)

[State 1032, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Fourth
[StateDef 1033]
type = S
physics = N
moveType = A
anim = 1031
ctrl = 0
velSet = 0,0
sprPriority = 1
hitCountPersist = 1

[State 1033, Reset QCFx2 explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030006)
ID = 90030006

[State 1033, Reset QCFx2 explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030104)
ID = 90030104

[State 1033, Reset QCF explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010006)
ID = 90010006

[State 1033, Reset QCF explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90010104)
ID = 90010104

[State 1033, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1001, 0
channel = 0

[State 1033, Slash Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000, 1
channel = 1

[State 1033, Slash Visual Effect]
type = Explod
trigger1 = AnimElem = 5
anim = 11001
ID = 11001
sprPriority = 3
bindtime = -1
posType = P1
pos = 4, 1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1033, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = -46, 0
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1033, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
x = 6

[State 1033, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 3.75

[State 1033, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(8) < 0
x = -0.78125

[State 1033, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 1033, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
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
ground.velocity = -5.3125
ground.cornerPush.velOff = 0
guard.velocity = -5.3125
guard.cornerPush.velOff = 0
air.velocity = -7.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1033, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= 10
value = 1031
elem = 7
ignoreHitPause = 1

[State 1033, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1033, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1033, Tourou Zan]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(4) >= 0 && AnimElemTime(9) < 0
trigger1 = !AILevel
;command = "QCF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010006)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010104))
;x / y / z
trigger1 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
trigger2 = AILevel && !var(14)
trigger2 = MoveHit && P2Dist x >= 0
var(14) = 1034

[State 1033, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
value = var(14)

[State 1033, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Fifth
[StateDef 1034]
type = S
physics = N
moveType = A
anim = 1002
ctrl = 0
velSet = 0,0
sprPriority = 1
hitCountPersist = 1

[State 1034, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1002, 0
channel = 0

[State 1034, Slash Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 1
channel = 1

[State 1034, Slash Visual Effect]
type = Explod
trigger1 = AnimElem = 4
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

[State 1034, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = -20, 0
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1034, PosAdd]
type = PosAdd
trigger1 = !Time
x = 6

[State 1034, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 3.75

[State 1034, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(8) < 0
x = -0.78125

[State 1034, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 1034, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
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
ground.velocity = -7.5, -5
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -7.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
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

[State 1034, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= 10
value = 1002
elem = 6
ignoreHitPause = 1

[State 1034, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 1034, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;KAIHOU>=
[StateDef 1100]
type = S
physics = N
moveType = I
anim = 1100
ctrl = 0
velSet = 0,0
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
var(10) = ifElse((P2Dist x > 225 || Random < 333), 2, ifElse(P2Dist x > 210, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1100, ifElse(var(10) = 1, 1110, 1120))

[State 1100, Kaihou Sound Effect]
type = PlaySnd
trigger1 = !Time
value = 1100, 0
channel = 1

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = -40, 0
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(10) < 0
value = SCA
time = 1

[State 1100, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(5) > 0 && AnimElemTime(8) < 0
value = 0

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 15

[State 1100, VelAdd]
type = VelAdd
trigger1 = !var(10)
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(9) < 0
x = -0.78125

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 9
x = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;SENKYUUTAI>=
[StateDef 1200]
type = S
physics = N
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(40)
faceP2 = 1

[State 1200, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 1200, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1210, 1220))

[State 1200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0 && !var(10)
value = SCA
time = 1

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1 && !var(10)
trigger2 = AnimElemTime(9) = 1 && var(10) = 1
trigger3 = AnimElemTime(15) = 1 && var(10) = 2
value = 1200, 0
channel = 0

[State 1200, Woosh Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 2 && !var(10)
trigger2 = AnimElemTime(9) = 2 && var(10) = 1
trigger3 = AnimElemTime(15) = 2 && var(10) = 2
value = 1, 5
channel = 1

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5 && !var(10)
trigger2 = AnimElem = 10 && var(10) = 1
trigger3 = AnimElem = 16 && var(10) = 2
value = 41, 0
channel = 4

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5 && !var(10)
trigger2 = AnimElem = 10 && var(10) = 1
trigger3 = AnimElem = 16 && var(10) = 2
stateType = A
physics = N

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 5 && !var(10)
trigger2 = AnimElem = 10 && var(10) = 1
trigger3 = AnimElem = 16 && var(10) = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Senkyuutai Dust"
posType = P1
ownPal = 1

[State 1200, VelSet]
type = VelSet
trigger1 = var(10)
trigger1 = AnimElem = 2
x = ifElse(var(10) = 2, 7.5, 6.25)

[State 1200, VelAdd]
type = VelAdd
triggerAll = var(10)
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(8) < 0 && var(10) = 1
trigger2 = AnimElemTime(12) > 0 && AnimElemTime(14) < 0 && var(10) = 2
x = -0.78125

[State 1200, VelSet]
type = VelSet
triggerAll = var(10)
trigger1 = AnimElem = 8 && var(10) = 1
trigger2 = AnimElem = 14 && var(10) = 2
x = 0

[State 1200, ChangeAnim]
type = ChangeAnim
triggerAll = var(10)
triggerAll = P2BodyDist X <= 20
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(6) < 0 && var(10) = 1
trigger2 = AnimElemTime(2) > 0 && AnimElemTime(12) < 0 && var(10) = 2
value = ifElse(var(10) = 2, 1220, 1210)
elem = ifElse(var(10) = 2, 12, 6)

[State 1200, Width]
type = Width
trigger1 = AnimElemTime(4) = 2 && !var(10)
trigger2 = AnimElemTime(9) = 2 && var(10) = 1
trigger3 = AnimElemTime(15) = 2 && var(10) = 2
value = 17, 17

[State 1200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5 && !var(10)
trigger2 = AnimElem = 10 && var(10) = 1
trigger3 = AnimElem = 16 && var(10) = 2
x = 32

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 5 && !var(10)
trigger2 = AnimElem = 10 && var(10) = 1
trigger3 = AnimElem = 16 && var(10) = 2
x =  IfElse(var(10) = 2, 2.5, ifElse(var(10) = 1, 1.25, 0))
y = IfElse(var(10) = 2, -11.25, ifElse(var(10) = 1, -8.75, -6.25))

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 0 && !var(10)
trigger2 = AnimElemTime(10) > 0 && var(10) = 1
trigger3 = AnimElemTime(16) > 0 && var(10) = 2
y = IfElse(var(10), 0.5859375, 0.78125)

[State 1200, HitDef 1]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20) || var(40))
trigger1 = AnimElem = 2 && !var(10)
trigger2 = AnimElem = 7 && var(10) = 1
trigger3 = AnimElem = 13 && var(10) = 2
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 3, 6), ifElse(var(20) || var(40), 3, 6)
guard.pauseTime = ifElse(var(20) || var(40), 3, 6), ifElse(var(20) || var(40), 3, 6)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 10
guard.hittime = (10) - 6
ground.slideTime = 10
air.hitTime = 120
ground.velocity = -2.5, -7.96875
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -7.96875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 15), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef 2]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20) || var(40))
trigger1 = AnimElem >= 5 && !var(10)
trigger2 = AnimElem >= 10 && var(10) = 1
trigger3 = AnimElem >= 16 && var(10) = 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 56, ifElse(var(10) = 1, 49, 42)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 56, ifElse(var(10) = 1, 49, 42)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 10
guard.hittime = (10) - 6
ground.slideTime = 10
air.hitTime = 120
ground.velocity = -2.5, -7.96875
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -7.96875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0 && !var(10)
trigger2 = AnimElemTime(13) >= 0 && var(10) = 1
trigger3 = AnimElemTime(19) >= 0 && var(10) = 2
moveType = I

[State 1200, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201


;Landing
[StateDef 1201]
type = S
anim = 1201
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



;EX SENKYUUTAI>=
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
var(25) = 38

[State 1230, EX Flash]
type = VarSet
trigger1 = AnimElemTime(19) >= 0
var(25) = 0

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 10, -28
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1230, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(16) < 0
value = SCA
time = 1

[State 1230, Voice]
type = PlaySnd
trigger1 = AnimElemTime(14) = 1
value = 1230, 0
channel = 0

[State 1230, Woosh Sound]
type = PlaySnd
trigger1 = AnimElemTime(14) = 2
value = 1, 5
channel = 1

[State 1230, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 16
value = 41, 0
channel = 4

[State 1230, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 16
stateType = A
physics = N

[State 1230, Dust Helper]
type = Helper
trigger1 = AnimElem = 16
helperType = Normal
stateNo = 8100
ID = 8100
name = "Senkyuutai Dust"
posType = P1
ownPal = 1

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 8.75

[State 1230, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(12) > 0 && AnimElemTime(14) < 0
x = -0.78125

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElem = 14
x = 0

[State 1230,ChangeAnim]
type = ChangeAnim
triggerAll = P2BodyDist X <= 20
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(12) < 0 
value = 1230
elem = 12

[State 1230, Width]
type = Width
trigger1 = AnimElemTime(15) = 2
value = 17, 17

[State 1230, PosAdd]
type = PosAdd
trigger1 = AnimElem = 16
x = 32

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElem = 16
x = 2.5
y = -11.25

[State 1230, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(16) > 0
y = 0.5859375

[State 1230, HitDef 1]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 13
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 10
guard.hittime = (10) - 6
ground.slideTime = 10
air.hitTime = 120
ground.velocity = -2.5, -7.96875
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -7.96875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 15), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, HitDef 2]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem >= 16
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 10
guard.hittime = (10) - 6
ground.slideTime = 10
air.hitTime = 120
ground.velocity = -2.5, -7.96875
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -7.96875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(19) >= 0
moveType = I

[State 1230, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201



;BYAKKO SOUSHOUDA>=
[StateDef 1300]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(40)
faceP2 = 1

[State 1300, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 1300, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2StateNo = 5120 || Random < 500), 2, 1)

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1320, IfElse(var(10) = 1, 1310, 1300))

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && var(10)
value = 4, 1
channel = 0

[State 1300, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5 && var(10)
value = 1, 2
channel = 1

[State 1300, Gound Sound]
type = PlaySnd
trigger1 = AnimElem = 6 && var(10)
value = 1300, 0
channel = 4

[State 1300, Kobokushi Projectile Shield]
type = Helper
trigger1 = AnimElem = 6 && var(10)
helperType = Normal
stateNo = 1305
ID = 1305
name = "Kobokushi Projectile Shield"
posType = P1
superMoveTime = 5
ownPal = 1

[State 1300, Dust Explod]
type = Explod
trigger1 = AnimElem = 6 && var(10)
anim = ifElse(var(10) = 2, 11320, 11310)
sprPriority = ifElse(var(10) = 2, 3, -3)
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
persistent = 0
ownPal = 1

[State 1300, EnvShake]
type = EnvShake
trigger1 = AnimElem = 6 && var(10)
time = 14
ampl = 4

[State 1300, HitDef (MP/HP)]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20) || var(40)) && var(10)
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 8 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 112, 105) < 7, 7, fvar(11) * ifElse(var(10) = 2, 112, 105))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.5, -5
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -7.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 49), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 2, 1320, 1310)
elem = 7
ignoreHitPause = 1

[State 1300, Energy Explod]
type = Explod
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(9) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
anim = 11305
ID = 11305
sprPriority = 1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1
persistent = 0
ownPal = 1

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0 && !var(10)
trigger2 = AnimElemTime(9) >= 0 && var(10)
moveType = I

[State 1300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;EX KOBOKUSHI>=
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
var(25) = 24

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 6, -44
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1330, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1330, 0
channel = 0

[State 1330, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 5

[State 1330, Woosh]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1300, 0
channel = 4

[State 1330, Kobokushi Projectile Shield]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 1305
ID = 1305
name = "Kobokushi Projectile Shield"
posType = P1
superMoveTime = 5
ownPal = 1

[State 1330, Dust Explod]
type = Explod
trigger1 = AnimElem = 6
anim = 11320
sprPriority = 3
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
persistent = 0
ownPal = 1

[State 1330, EnvShake]
type = EnvShake
trigger1 = AnimElem = 6
time = 20
ampl = 4

[State 1330, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 8 && !MoveContact && !MoveReversed
ID = 1330
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 126 < 7, 7, fvar(11) * 126)), 7
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
ground.velocity = -7.5, -5
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -7.5, -5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 49), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= 10
value = 1330
elem = 7
ignoreHitPause = 1

[State 1330, Energy Explod]
type = Explod
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(9) <= 0
trigger1 = HitPauseTime <= 10
anim = 11305
ID = 11305
sprPriority = 1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1
persistent = 0
ownPal = 1

[State 1330, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(28) && NumTarget(1330)
var(15) = 0

[State 1330, EX Kobokushi Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1330)
var(28) = 1
persistent = 0

[State 1330, Juggle Flag]
type = VarSet
trigger1 = var(28) = 2
var(16) = 1

[State 1330, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1330) > 1
ID = 1330
keepOne = 1
excludeID = 1330
ignoreHitPause = 1

[State 1330, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1330)
trigger1 = !(Target(1330), Time)
value = 1335
ID = 1330
ignoreHitPause = 1

[State 1330, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1330, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;HIT BY EX KOBOKUSHI>=
;Being Launched
[StateDef 1335]
type = A
moveType = H
physics = N
velSet = 0,0

[State 1335, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 1335, End]
type = ChangeState
trigger1 = HitShakeOver
value = 1336


;Heading Towards Wall
[StateDef 1336]
type = A
moveType = H
physics = N

[State 1336, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 1336, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 1336, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,1
ignoreHitPause = 1

[State 1336, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1336, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5900)
value = 5900

[State 1336, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5900)
value = 5030

[State 1336, Bounce Off Wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10 || FrontEdgeBodyDist <= 10
value = 1337

[State 1336, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;Impacting Wall
[StateDef 1337]
type = A
moveType = H
physics = N

[State 1337, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 1337, PosSet]
type = PosSet
trigger1 = 1
x = -160 * Facing

[State 1337, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1337, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,1
ignoreHitPause = 1

[State 1337, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignoreHitPause = 1

[State 1337, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5901)
value = 5901

[State 1337, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5901)
value = 5000

[State 1337, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,0

[State 1337, Hitting the Wall FX]
type = Explod
trigger1 = !Time
anim = F72
pos = 0, floor(ScreenPos y) - 50
posType = Back
sprPriority = 3

[State 1337, End]
type = ChangeState
trigger1 = Time >= 4
value = 1338


;Bouncing Off Wall
[Statedef 1338]
type = A
moveType = H
physics = N

[State 1338, Turn]
type = Turn
trigger1 = !Time && !SelfAnimExist(5902)

[State 1338, Gravity]
type = VelAdd
trigger1 = 1
y = 0.5126953125

[State 1338, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(SelfAnimExist(5902), 2.5, -2.5)
y = -9.0625

[State 1338, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5902)
value = 5902

[State 1338, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5902)
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 1338, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1338, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 1338, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 1338, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1338, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 1338, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100



;ZENPOU TENSHIN>=
;Attempt
[StateDef 1400]
type = S
physics = N
moveType = A
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(40)
faceP2 = 1

[State 1400, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2 && !var(37)
attr = S, ST
hitFlag = M
priority = 7, Miss
getPower = 0, 0
givePower = 0, 0
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
P1StateNo = 1410

[State 1400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 1400, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800, 0
channel = 0

[State 1400, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw
[Statedef 1410]
type = S
physics = N
moveType = A
anim = 1410
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1410, EX Flash]
type = VarSet
trigger1 = PrevStateNo = 1430
var(25) = 32

[State 1410, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1410, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 1415

[State 1410, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1410, Voice]
type = PlaySnd
trigger1 = !Time
value = 1400, 0
channel = 0

[State 199, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41, 0
channel = 4

[State 52, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 13
value = 52, 0
channel = 1

[State 1415, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(6) < 0
trigger2 = AnimElemTime(12) >= 0
value = 2

[State 1415, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(12) < 0
value = 0

[State 1410, BindToTarget 1]
type = BindToTarget
trigger1 = Facing != Target, Facing
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(5) < 0
pos = 61, 0, Foot

[State 1410, BindToTarget 1]
type = BindToTarget
trigger1 = Facing = Target, Facing
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(5) < 0
pos = -61, 0, Foot

[State 1410, BindToTarget 2]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 38, 71, Head

[State 1410, BindToTarget 3]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 16, 34, Head

[State 1410, BindToTarget 4]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 8, 34, Head

[State 1410, BindToTarget 5]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = -1, 35, Head

[State 1410, BindToTarget 6]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = -18, 24, Head

[State 1410, BindToTarget 7]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = -40, 21, Head

[State 1410, BindToTarget 8]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
pos = -54, 42, Head

[State 1410, BindToTarget 9]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
pos = -59, 71, Head

[State 1410, BindToTarget 10]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(13) = 0
pos = -69, 0, Foot

[State 1410, Turn]
type = Turn
trigger1 = !AnimTime

[State 1410, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;ZENPOU TENSHIN (TARGET)=
;Being Thrown
[StateDef 1415]
type = S
moveType = H
physics = N
velSet = 0, 0
sprPriority = 1

[State 1415, ChangeAnim2]
type = ChangeAnim2
triggerAll = !Time
trigger1 = Name = "Yun" && AuthorName = "KarmaCharmeleon"
trigger2 = Name = "Blanka" && AuthorName = "KarmaCharmeleon"
trigger3 = Name = "Iori Yagami" && AuthorName = "CharmaKarmeleon"
trigger4 = Name = "Rose" && AuthorName = "KarmaCharmeleon"
trigger5 = Name = "Terry Bogard" && AuthorName = "KarmaCharmeleon"
trigger6 = Name = "Kyo Kusanagi" && AuthorName = "Jmorphman"
value = 1416

[State 1415, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
trigger1 = Anim != 1416
value = 1415

[State 1415, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
trigger2 = !AnimTime
ignoreHitPause = 1

[State 1415, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1

[State 1415, SelfState]
type = SelfState
trigger1 = !AnimTime
value = 0
ctrl = 1



;EX ZENPOU TENSHIN>=
;Attempt
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
var(25) = 9

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 19, -63
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1430, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2 && !var(37)
attr = S, ST
hitFlag = M
priority = 7, Miss
getPower = 0, 0
givePower = 0, 0
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
P1StateNo = 1410

[State 1430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 1430, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800, 0
channel = 0

[State 1430, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



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
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 2900, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 2900, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1)
trigger1 = AnimElem = 6
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
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 49), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2900, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= 10
value = 2900
elem = 7
ignoreHitPause = 1

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
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
value = 4, 2
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 5
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
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.54, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -2
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(6) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
