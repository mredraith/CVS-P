;==
;=<NORMAL MOVES==
;==

;STANDING LIGHT PUNCH
[StateDef 200]
type = S
physics = S
moveType = A
anim = 200
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 200, Hit Attempt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0
channel = 1

[State 200, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 5
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.40, -7.70), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.41, -7.70)
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
yAccel = 0.4
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 67), var(36):= -76
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 200, ChangeState]
type = ChangeState
triggerall = Command = "y"
trigger1 = !time
value = 210
ctrl = 0

[State 200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;STANDING MEDIUM PUNCH
[StateDef 210]
type = S
physics = S
moveType = A
anim = 210
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 210, Voice]
type = PlaySnd
trigger1 = !Time && Random < 350
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 210, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1,1
channel = 1

[State 210, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3 && !MoveContact
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 5
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 210, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;QUARREL PUNCH
[StateDef 215]
type = S
physics = S
moveType = A
anim = 215
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 215, Voice]
type = PlaySnd
trigger1 = !Time && Random < 350
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 215, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,1
channel = 1

[State 215, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(6) = 0
x = 4
y = 0

[State 215, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(4) = 0
x = 22
y = 0

[State 215, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimElemTime(8) = 0
x = 2
y = 0

[State 215, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 6), ifElse(var(20), 5, 6)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 17 + 3 * var(9)
guard.hittime = (17 + 3 * var(9)) - 5
ground.slideTime = 17 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 112), var(36) := -87
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 215, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 215, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;STANDING HEAVY PUNCH
[StateDef 220]
type = S
physics = S
moveType = A
anim = 220
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 220, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,2
channel = 1

[State 220, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 6
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 5
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.86, -10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -2.39, 3.45
air.cornerPush.velOff = 0
yAccel = 0.58
air.fall = 1
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 91), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 220, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
movetype = I

[State 220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;TERRIBLE SMASH
guardflags = 
[StateDef 225]
type = S
physics = S
moveType = A
anim = 225
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 225, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 3
channel = 0

[State 225, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2
channel = 1

[State 225, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5 
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 6), ifElse(var(20), 4, 6)
guard.pauseTime = ifElse(var(20), 4, 6), ifElse(var(20), 4, 6)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 5
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifelse(var(20), -5.77, -10.52), 0
ground.cornerPush.veloff = 0
guard.velocity = ifelse(var(20), -5.77, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 76), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
forceStand = 1

[State 225, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 225, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;STANDING LIGHT KICK
[StateDef 230]
type = S
physics = S
moveType = A
anim = 230
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 230, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 230, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 230, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 5
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -32
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 230, StateTypeSet: Idle]
type = StateTypeSet
trigger1= AnimElemTime(4) >= 0
moveType = I

[State 230, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;STANDING MEDIUM KICK
[StateDef 240]
type = S
physics = S
moveType = A
anim = 240
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 240, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 240, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 240, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 5
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 120), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 240, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 240, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;STANDING FWD MEDIUM KICK
[StateDef 245]
type = S
physics = S
moveType = A
anim = 245
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 245, Voice]
type = PlaySnd
trigger1 = AnimElem = 7 && Random < 350
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 245, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,4
channel = 1

[State 245, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 8 * const(size.xscale)

[State 245, VelSet]
type = VelSet
trigger1 = AnimElemTime(9) = 0
x = 0

[State 245, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(10) = 0
x = 10 * Const(Size.Xscale)

[State 245, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(11) = 0
x = 2 * Const(Size.Xscale)

[State 245, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(12) = 0
x = 4 * Const(Size.Xscale)

[State 245, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 7
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 5
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.05, -9.03), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.05, -9.03)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 245, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
movetype = I

[State 245, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;STANDING HEAVY KICK
[StateDef 250]
type = S
physics = N
moveType = A
anim = 250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 250, Voice]
type = PlaySnd
trigger1 = AnimElem = 4 && Random < 500
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 250, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1,5
channel = 1

[State 250, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 10
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = H
priority = 4,Hit
damage = ceil(ifElse(fvar(11) * 47 < 7, 7, fvar(11) * 47)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 5
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.86, -10.52),0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 107), var(36) := -113
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 250, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 11
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = H
priority = 4,Hit
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 37)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 5
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.86, -10.52),0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 103), var(36) := -59
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(14) >= 0
moveType = I

[State 250, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;CROUCHING LIGHT PUNCH
[StateDef 400]
type = C
physics = C
moveType = A
anim = 400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 400, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 400, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,0
channel = 1

[State 400, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 5
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.41, -6.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -6.49)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 67), var(36) := -57
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 400, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;CROUCHING MEDIUM PUNCH
[StateDef 410]
type = C
physics = C
moveType = A
anim = 410
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 410, Voice]
type = PlaySnd
trigger1 = !Time && Random < 350
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 410, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,1
channel = 1

[State 410, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(1) = 0
trigger2 = AnimElemTime(1) = 1
trigger3 = AnimElemTime(1) = 2
x = 21

[State 410, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 5
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 79), var(36) := -47
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 410, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 410, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;CROUCHING HEAVY PUNCH
[StateDef 420]
type = C
physics = C
moveType = A
anim = 420
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 420, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 420, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2
channel = 1

[State 420, Hit Count]
type = VarAdd
trigger1 = MoveHit = 1
trigger1 = !(HitDefAttr = SCA, AT)
var(54) = 1

[State 420, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 44 < 7, 7, fvar(11) * 44)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 5
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.876, 0
ground.cornerPush.velOff = 0
guard.velocity = -9.67
guard.cornerPush.velOff = -10.23
air.velocity = -2.767, -8.324
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
forceStand = 1

[State 420, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 54 < 7, 7, fvar(11) * 54)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 8, 16), ifElse(var(20), 8, 16)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 5
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1.87, -11.67
ground.cornerPush.velOff = -11.23
guard.velocity = -9.67
guard.cornerPush.velOff = 0
air.velocity = -2.767, -8.324
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -130
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 420, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 420, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;CROUCHING LIGHT KICK
[StateDef 430]
type = C
physics = C
moveType = A
anim = 430
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 430, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 430, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 430, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getPower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 5
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 97), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinadd= -255, -255, -255, 48

[State 430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 430, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;CROUCHING MEDIUM KICK
[StateDef 440]
type = C
physics = C
moveType = A
anim = 440
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 440, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 440, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 440, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13),144,72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 5
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 124), var(36) := -8
palFX.time = 12*var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 440, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 440, End]
type = Changestate
trigger1 = !AnimTime
value = 11
ctrl = 1

;CROUCHING HEAVY KICK
[StateDef 450]
type = C
physics = C
moveType = A
anim = 450
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 450, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, 2
channel = 0

[State 450, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 450, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 0
getpower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Trip
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 5
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -1, -6.25
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -1, -8.24
air.cornerPush.velOff = 0
yAccel = 0.677
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 116), var(36) := -7
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 450, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(6) >= 0
moveType = I

[State 450, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;JUMPING LIGHT PUNCH
[StateDef 600]
type = A
physics = N
moveType = A
anim = 600
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 600, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value= 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 600, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 1

[State 600, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 5
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 600, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 3
moveType = I

[State 600, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 600, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;NEUTRAL JUMPING MEDIUM PUNCH
[StateDef 610]
type = A
physics  = N
moveType = A
anim = 610
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 610, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 610, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 1

[State 610, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 12 + 3 * var(9)
guard.hittime = (12 + 3 * var(9)) - 5
ground.slideTime = 12 + 3 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -89
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 610, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 610, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 610, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;JUMPING HEAVY PUNCH
[StateDef 620]
type = A
physics = N
moveType = A
anim = 620
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 620, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 620, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 620, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animtype = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
guard.hittime = (12 + 4 * var(9)) - 5
ground.slideTime = 12 + 4 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -81
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 620, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 620, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;JUMPING LIGHT KICK
[StateDef 630]
type = A
physics = N
moveType = A
anim = 630
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 630, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 630, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 630, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 5
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 47), var(36) := -81
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 630, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 630, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 630, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;JUMPING MEDIUM KICK
[StateDef 640]
type = A
physics = N
moveType = A
anim = 640
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 640, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 640, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 640, Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 3 * var(9)
guard.hittime = (12 + 3 * var(9)) - 5
ground.slideTime = 12 + 3 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -83
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 640, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 640, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 640, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;JUMPING HEAVY KICK
[StateDef 650]
type = A
physics = N
moveType = A
anim = 650
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 650, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 650, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 1

[State 650, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
guard.hittime = (12 + 4 * var(9)) - 5
ground.slideTime = 12 + 4 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 95), var(36) := -59
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 650, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 650, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 650, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;THROW ATTEMPT
[StateDef 800]
type = S
physics = S
movetype = A
anim = 800
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 800, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = (command = "kk")

[State 800, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = (Random < 500)

[State 800, Tech Hit Reset]
type = VarSet
trigger1 = 1
var(19) = 0

[State 800, Tech Hit]
type = VarSet
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType != A
trigger1 = (EnemyNear, StateNo = [0,999]) && (EnemyNear, StateNo != [100,119]) && (EnemyNear, StateNo != [200,799])
var(19) = 7

[State 800, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 800, HitDef: PP Throw]
type = HitDef
trigger1 = AnimElem = 2
trigger1 = !var(38)
attr = S, NT
hitFlag = M-
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = ifElse(command = "holdback", 805, 810)

[State 800, HitDef: KK Throw]
type = HitDef
trigger1 = AnimElem = 2 && var(10)
trigger1 = !var(38)
attr = S, NT
hitFlag = M-
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 1
numhits = 0
p1stateno = ifElse(command = "holdfwd", 820, 805)

[State 800, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 3
value = 800,0
channel = 0

[State 800, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 1

[State 800, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 800, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;THROW SWITCHING SIDES
[StateDef 805]
type = S
moveType = A
physics = S
anim = 805
ctrl = 0
sprPriority = 0

[State 805, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 806

[State 805, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 805, Width]
type = Width
trigger1 = 1
edge = 24,24
ignoreHitPause = 1

[State 805, Turn]
type = Turn
trigger1 = AnimElem = 4

[State 805, Facing]
type = TargetFacing
trigger1 = 1
value = -1

[State 805, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback") && Target, command != "holdup" && Target, command != "holddown"
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 805, Tech Hit Countdown]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 805, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(3) < 0
value = 1

[State 805, SprPriority 2]
type = SprPriority
trigger1 = AnimElemTime(3) >= 0
value = -1

[State 805, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = ceil(87 * const(size.xScale)), 0

[State 805, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(77 * const(size.xScale)), 0

[State 805, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(46 * const(size.xScale)), 0

[State 805, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(14 * const(size.xScale)), ceil(-29 * const(size.yScale))

[State 810, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(20 * const(size.xScale)), ceil(-70 * const(size.yScale))

[State 805, End]
type = ChangeState
trigger1 = !NumTarget
value = 0
ctrl = 1

[State 805, End]
type = ChangeState
trigger1 = AnimElemTime(5) >= 0
value = ifElse(var(10), 820, 810)

;THROW SWITCHING SIDES (TARGET)
[StateDef 806]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 806, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 806, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 806

[State 806, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 806, SelfState]
type = SelfState
trigger1 = Time >= 60
value = ifElse(pos y < 0, 5040, 0)
ctrl = 1

;DESTROY CLAW
[StateDef 810]
type = S
physics = N
moveType = A
anim = 810
ctrl = 0
velSet = 0,0
sprPriority = -1

[State 810, ChangeAnim]
type = ChangeAnim
TriggerAll = !Time
trigger1 = PrevStateNo = 805
value = 810
elem = 4

[State 810, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 810, Helper]
type = Helper
trigger1 = PrevStateNo = 800
trigger1 = !Time
trigger2 = PrevStateNo = 805
trigger2 = AnimElem = 4
HelperType = Normal
Name = "Arm"
StateNo = 814
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause = 1
sprPriority = 5
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 810, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 815

[State 810, Throw]
type = TargetFacing
trigger1 = Time <= 1
value = 1

[State 810, Width]
type = Width
trigger1 = 1
edge = ceil(94 * const(size.xScale)),0

[State 810, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = ceil(90 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 810, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(71 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 810, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(40 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 810, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(26 * const(size.xScale)), ceil(-64 * const(size.yScale))

[State 810, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(39 * const(size.xScale)), ceil(-80 * const(size.yScale));20,-110

[State 810, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0
pos = ceil(42 * const(size.xScale)), ceil(-108 * const(size.yScale));20,-150

[State 810, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 811
ctrl = 0

[StateDef 811]
type = S
physics = N
moveType = A
anim = 811
ctrl = 0
velSet = 0,0
sprPriority = -1

[State 811, Timer Start]
type = VarSet
trigger1 = !Time
var(53) = 130

[State 811, Timer End (Round Over)]
type = VarSet
trigger1 = RoundState != 2
var(53) = 0

[State 811, Timer Countdown]
type = VarAdd
trigger1 = HitCount
var(53) = -1

[State 811, Timer]
type = VarAdd
triggerAll = NumTarget && HitCount
trigger1 = Target, command = "x" || Target, command = "y" || Target, command = "z"
trigger2 = Target, command = "a" || Target, command = "b" || Target, command = "c"
trigger3 = Target, command = "up" || Target, command= "down" || Target, command = "back" || Target, command = "fwd"
var(53) = -1

[State 811, Mashing]
type = VarSet
trigger1 = !Time
var(52) = 0

[State 811, Mashing]
type = VarSet
trigger1 = !Time
var(51) = 0

[State 811, Mashing]
type = VarSet
triggerAll = var(52) = 0
trigger1 = !AILevel && (command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z")
trigger2 = !AILevel && (command = "up" || command = "down" || command = "back" || command = "fwd")
trigger3 = AILevel && Random < 800
var(52) = IfElse(AILevel, 3, 2)

[State 811, Mashing Increment]
type  = VarAdd
trigger1 = var(52) = 2
var(51) = 1

[State 811, Mashing Decrement]
type = VarAdd
trigger1 = var(52) > 0
var(52) = -1

[State 811, Anim Skip]
type = ChangeAnim
triggerall = var(53) > 0
trigger1 = AnimElemTime(AnimElemNo(0)) >= 0 && AnimElemTime(4) < 0
trigger1 = AnimElemTime(AnimElemNo(0) + 1 ) >= -var(51)
trigger1 = 1 || var(51) := (var(51) + AnimElemTime(AnimElemNo(0) + 1))
value = 811
elem = AnimElemNo(0) + 1

[State 811, Anim Skip]
type = ChangeAnim
triggerAll = var(53) > 0
trigger1 = AnimElemTime(4) > 0
trigger1 = AnimElemTime(4)>= (8 - var(51))
trigger1 = 1 || var(51) := (var(51) + 8 - AnimElemTime(3))
trigger2 = !AnimTime
value = 811
elem = 1

[State 820, PalFX Flash]
type = PalFX
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "up" || command = "down" || command = "back" || command = "fwd"
time = 1
add = 32, 32, 32

[State 811, TargetBind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = ceil(48*const(size.xscale)), ceil(-134*const(size.yscale))

[State 811, TargetBind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(68*const(size.xscale)), ceil(-139*const(size.yscale))

[State 811, TargetBind 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(58*const(size.xscale)), ceil(-134*const(size.yscale))

[State 811, TargetBind 4]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(58*const(size.xscale)), ceil(-134*const(size.yscale))

[State 811, TargetBind 5]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(58*const(size.xscale)), ceil(-124*const(size.yscale))

[State 811, TargetBind 6]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = ceil(58*const(size.xscale)), ceil(-129*const(size.yscale))

[State 811, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 3
value = floor(ifElse(15 * fvar(11) < 7, -7, -15 * fvar(11)))
kill = 1

[State 811, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 816

[State 811, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 3
value = 1

[State 811, Hit Count Increment]
type = VarAdd
trigger1 = NumTarget && AnimElem = 3
var(13) = 1

[State 811, Juggle Points Increment]
type = VarAdd
trigger1 = NumTarget && AnimElem = 3
var(15) = 1
ignoreHitPause = 1

[State 811, Juggle Flag Set]
type = VarSet
trigger1 = NumTarget && AnimElem = 3
var(16) = 1
ignoreHitPause = 1

[State 811, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 810,0
channel = 0

[State 811, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 810,1
channel = 1

[State 811, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElem = 3
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = 53, -134
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 811, ChangeState]
type = ChangeState
trigger1 = var(53) <= 0
trigger1 = !Animtime
trigger2 = NumTarget
trigger2 = !(Target, Alive) && AnimElem = 5
trigger3 = Time >= 180
value = 813
ctrl = 0

[Statedef 813]
type    = S
physics = N
movetype= I
anim = 813
ctrl = 0
sprpriority = -1

[State 813, TargetState]
type = TargetState
trigger1 = !Time
value = 818

[State 813, State End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;DESTROY CLAW (ARM)
[Statedef 814]
type = S
anim = 814
ctrl = 0
sprPriority = 5

[State 810, ChangeAnim]
type = ChangeAnim
TriggerAll = Root,PrevStateNo = 805
trigger1 = !Time
value = 814
elem = 4

[State 814, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0,0

[State 814, DestroySelf]
type = DestroySelf
trigger1 = Root, AnimElemTime(5) = 0
trigger2 = !Root, StateNo = 810
trigger3 = var(19)
Trigger4 = Root,StateNo = 890

;DESTROY CLAW (TARGET)
[StateDef 815]
type = A
physics = N
moveType = H
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 815

[State 820, ChangeAnim]
type = ChangeAnim2
TriggerAll = !Time
trigger1 = PrevStateNo = 806
value = 815
elem = 4

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[StateDef 816]
type = A
physics = N
moveType = H
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 816

[State 816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[StateDef 817]
type = A
physics = N
moveType = H
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 817, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 817

[State 817, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[Statedef 818]
type = A
physics = N
moveType = H
ctrl = 0

[State 818, VelAdd]
type = VelAdd
trigger1 = 1
y = .60

[State 818, NotHitby]
type = NotHitby
trigger1 = 1
value = SCA

[State 818, ChangeAnim2]
type = ChangeAnim
Trigger1 = Time = 0
value = 5030

[State 818, ChangeAnim2]
type = ChangeAnim
trigger1 = SelfAnimExist(5035)
Trigger1 = anim = 5030
Trigger1 = AnimTime = 0
value = 5035

[State 818, ChangeAnim2]
type = ChangeAnim
trigger1 = SelfAnimExist(5035)
Trigger1 = anim = 5035
Trigger1 = AnimTime = 0
trigger2 = !SelfAnimExist(5035)
Trigger2 = anim = 5030
Trigger2 = AnimTime = 0
value = 5050

[State 818, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 818, PosAdd]
type = PosAdd
trigger1 = Time = 0
y = -const(size.head.pos.Y)

[State 818, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;SPARTAN BOMB
[Statedef 820]
type = S
physics = N
moveType = A
anim = 820
ctrl = 0
velSet = 0,0
sprPriority = -1

[State 820, ChangeAnim]
type = ChangeAnim
TriggerAll = !Time
trigger1 = PrevStateNo = 805
value = 820
elem = 4

[State 820, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 820, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 820, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 820, Helper]
type = Helper
trigger1 = PrevStateNo = 800
trigger1 = !Time
trigger2 = PrevStateNo = 805
trigger2 = AnimElem = 4
HelperType = Normal
Name = "Arm"
StateNo = 821
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause = 1
sprPriority = 5
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 820, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 825

[State 820, Throw]
type = TargetFacing
trigger1 = Time <= 1
value = -1

[State 820, Voice]
type = PlaySnd
trigger1 = AnimElem = 13
value = 820,0
channel = 1

[State 820, Impact]
type = PlaySnd
trigger1 = AnimElem = 15
value = 820,1
channel = 0

[State 820, Impact Dust]
type = Helper
trigger1 = AnimElem = 15
StateNo = 8110
HelperType = Normal
sprPriority = -3
pos = 0,3
posType = P1
scale = 0.5,0.5
ownPal = 1

[State 820, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(15) >= 0 && AnimElemTime(17) <= 0
trigger1 = !(AnimElemTime(17) % 5)
time = 5
freq = 120
ampl = 4 -Ceil(AnimElemTime(17) * 0.31)

[State 820, Width]
type = Width
trigger1 = 1
edge = ceil(102 * const(size.xScale)),0

[State 820, TargetBind 1]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = ceil(102 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 820, TargetBind 2]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(73 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 820, TargetBind 3]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(38 * const(size.xScale)), ceil(-58 * const(size.yScale))

[State 820, TargetBind 4]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(23 * const(size.xScale)), ceil(-75 * const(size.yScale))

[State 820, TargetBind 5]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(20 * const(size.xScale)), ceil(-92 * const(size.yScale));20,-110

[State 820, TargetBind 6]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = ceil(15 * const(size.xScale)), ceil(-117 * const(size.yScale));20,-150

[State 820, TargetBind 7]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = ceil(0 * const(size.xScale)), ceil(-127 * const(size.yScale));0,-160

[State 820, TargetBind 8]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = ceil(0 * const(size.xScale)), ceil(-127 * const(size.yScale));0,-160

[State 820, TargetBind 9]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = ceil(0 * const(size.xScale)), ceil(-127 * const(size.yScale));0,-160

[State 820, TargetBind 10]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = ceil(0 * const(size.xScale)), ceil(-127 * const(size.yScale));0,-160

[State 820, TargetBind 11]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
pos = ceil(0 * const(size.xScale)), ceil(-132 * const(size.yScale));0,-165

[State 820, TargetBind 12]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
pos = ceil(-4 * const(size.xScale)), ceil(-146 * const(size.yScale));0,-165

[State 820, TargetBind 13]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
pos = ceil(-6 * const(size.xScale)), ceil(-135 * const(size.yScale));0,-175

[State 820, TargetBind 14]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
pos = ceil(0 * const(size.xScale)), ceil(-97 * const(size.yScale));0,-165

[State 820, TargetBind 15]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
pos = ceil(25 * const(size.xScale)), ceil(-30 * const(size.yScale));0,-155

[State 820, TargetBind 16]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
pos = ceil(25*const(size.xscale)), ceil(-30*const(size.yscale));25,-60

[State 820, TargetBind 17]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
pos = ceil(25*const(size.xscale)), ceil(-30*const(size.yscale));25,-60

[State 820, TargetBind 18]
type = TargetBind
TriggerAll = PrevStateNo = 800
trigger1 = NumTarget
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
pos = ceil(0*const(size.xscale)), 0

[State 820, TargetBind 1]
type = TargetBind
TriggerAll = PrevStateNo = 805
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(23 * const(size.xScale)), ceil(-75 * const(size.yScale))

[State 820, TargetBind 2]
type = TargetBind
TriggerAll = PrevStateNo = 805
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(20 * const(size.xScale)), ceil(-92 * const(size.yScale));20,-110

[State 820, TargetBind 3]
type = TargetBind
TriggerAll = PrevStateNo = 805
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = ceil(15 * const(size.xScale)), ceil(-117 * const(size.yScale));20,-150

[State 820, TargetBind 4]
type = TargetBind
TriggerAll = PrevStateNo = 805
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = ceil(0 * const(size.xScale)), ceil(-127 * const(size.yScale));0,-160

[State 820, TargetBind 5]
type = TargetBind
TriggerAll = PrevStateNo = 805
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = ceil(0 * const(size.xScale)), ceil(-127 * const(size.yScale));0,-160

[State 820, TargetBind 6]
type = TargetBind
TriggerAll = PrevStateNo = 805
trigger1 = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = ceil(0 * const(size.xScale)), ceil(-127 * const(size.yScale));0,-160

[State 820, TargetBind 7]
type = TargetBind
TriggerAll = PrevStateNo = 805
trigger1 = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = ceil(0 * const(size.xScale)), ceil(-127 * const(size.yScale));0,-160

[State 820, TargetBind 8]
type = TargetBind
TriggerAll = PrevStateNo = 805
trigger1 = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
pos = ceil(0 * const(size.xScale)), ceil(-132 * const(size.yScale));0,-165

[State 820, TargetBind 9]
type = TargetBind
TriggerAll = PrevStateNo = 805
trigger1 = NumTarget
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
pos = ceil(-4 * const(size.xScale)), ceil(-147 * const(size.yScale));0,-165

[State 820, TargetBind 10]
type = TargetBind
TriggerAll = PrevStateNo = 805
trigger1 = NumTarget
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
pos = ceil(-6 * const(size.xScale)), ceil(-137 * const(size.yScale));0,-175

[State 820, TargetBind 11]
type = TargetBind
TriggerAll = PrevStateNo = 805
trigger1 = NumTarget
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
pos = ceil(0 * const(size.xScale)), ceil(-100 * const(size.yScale));0,-165

[State 820, TargetBind 12]
type = TargetBind
TriggerAll = PrevStateNo = 805
trigger1 = NumTarget
trigger1 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
pos = ceil(25 * const(size.xScale)), ceil(-30 * const(size.yScale));0,-155

[State 820, TargetBind 13]
type = TargetBind
TriggerAll = PrevStateNo = 805
trigger1 = NumTarget
trigger1 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
pos = ceil(25*const(size.xscale)), ceil(-30*const(size.yscale));25,-60

[State 820, TargetBind 14]
type = TargetBind
TriggerAll = PrevStateNo = 805
trigger1 = NumTarget
trigger1 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
pos = ceil(25*const(size.xscale)), ceil(-30*const(size.yscale));25,-60

[State 820, TargetBind 15]
type = TargetBind
TriggerAll = PrevStateNo = 805
trigger1 = NumTarget
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
pos = ceil(0*const(size.xscale)), 0

[State 820, TargetVelSet]
type = TargetVelSet
trigger1 = NumTarget
trigger1 = AnimElemTime(19) >= 0 && AnimElemTime(20) < 0
x = -3.12

[State 820, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 15
value = floor(ifElse(113 * fvar(11) < 7, -7, -113 * fvar(11)))

[State 820, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 15
value = 45

[State 820, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 15 && !var(20)
value = 65

[State 820, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 15
value = 1

[State 820, VarAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 15
var(13) = 1

[State 820, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 15
var(15) = 1
ignoreHitPause = 1

[State 820, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 15
var(16) = 1
ignoreHitPause = 1

[State 820, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;SPARTAN BOMB (ARM)
[Statedef 821]
type = S
anim = 821
ctrl = 0
sprPriority = 5

[State 821, ChangeAnim]
type = ChangeAnim
TriggerAll = Root,PrevStateNo = 805
trigger1 = !Time
value = 821
elem = 4

[State 821, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0,0

[State 821, DestroySelf]
type = DestroySelf
trigger1 = Root, AnimElemTime(21) = 0
trigger2 = !Root, StateNo = 820
trigger3 = var(19)

;SPARTAN BOMB (TARGET)
[StateDef 825]
type = A
physics = N
moveType = H
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 825, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 825

[State 820, ChangeAnim]
type = ChangeAnim2
TriggerAll = !Time
trigger1 = PrevStateNo = 806
value = 825
elem = 4

[State 825, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 825, SelfState]
type = SelfState
trigger1 = !AnimTime
value = 5100

;THROW ESCAPED
[StateDef 890]
type = S
physics = N
movetype = I
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 890, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget
pos = 0,0

[State 890, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 895

[State 890, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 890, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 890, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 890, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(6) >= 0
value = 1

[State 890, SprPriority -1]
type = SprPriority
trigger1 = AnimElemTime(2) <= 0
value = -1

[State 890, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 890, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 890, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 594,0
channel = 0

[State 890, Escape Sound]
type = PlaySnd
trigger1= !Time
value = 760,0

[State 890, Throw Escape FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8000
ID = 8000
name = "Spark"
PosType = P1
pos = 0, -68
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

[State 890, End]
type = ChangeState
trigger1 = Time >= 27
value = 0
ctrl = 1


;Target Escape
[StateDef 895]
type = S
physics = N
moveType = I
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 895, ChangeAnim]
type = ChangeAnim
trigger1= !Time
value = ifElse(SelfAnimExist(5940), 5940, 130)

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5945) && SelfAnimExist(5940)
value = 5940

[State 895, ChangeAnim]
type = ChangeAnim
trigger1= !Time && !SelfAnimExist(5945) && !SelfAnimExist(5940) && SelfAnimExist(5910)
value = 5910

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = Time >= 20 && Anim = 130
value = 140

[State 895, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 895, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 895, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 895, End]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1