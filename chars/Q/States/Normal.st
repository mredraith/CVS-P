; ________________________________________________
;| Q by KarmaCharmeleon			|
; 
;==
;NORMAL MOVES
;==

;STANDING FAR LIGHT PUNCH
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
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 200, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 0
channel = 1

[State 200, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getpower = 72 * !var(20) * !var(40), 36 * !var(20) * !var(40)
givepower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 82), var(36):= -86
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48

[State 200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 200
elem = 4
ignoreHitPause = 1

[State 200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING CLOSE LIGHT PUNCH
[StateDef 205]
type = S
physics = S
moveType = A
anim = 205
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 205, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 205, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 0
channel = 1

[State 205, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * !var(20) * !var(40), 36 * !var(20) * !var(40)
givepower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 58), var(36):= -100
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48

[State 205, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 205
elem = 4
ignoreHitPause = 1

[State 205, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 205, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING FAR MEDIUM PUNCH
[StateDef 210]
type = S
physics = S
moveType = A
anim = 210
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 210, Voice]
type = PlaySnd
trigger1 = AnimElem = 4 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 210, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 1
channel = 1

[State 210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = ceil(25 * const(size.xScale))

[State 210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = ceil(19 * const(size.xScale))

[State 210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 10
trigger3 = AnimElem = 13
x = ceil(8 * const(size.xScale))

[State 210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 12
x = ceil(2 * const(size.xScale))

[State 210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = ceil(6 * const(size.xScale))

[State 210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
x = ceil(4 * const(size.xScale))

[State 210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = ceil(10 * const(size.xScale))

[State 210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 11
x = ceil(5 * const(size.xScale))

[State 210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 14
x = ceil(15 * const(size.xScale))

[State 210, HitDef 1]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 210, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 7 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 92), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 210, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;HEAD ATTACK
[StateDef 218]
type = S
physics = S
moveType = A
anim = 218
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 218, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 218, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 1
channel = 1

[State 218, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = ceil(36 * const(size.xScale))

[State 218, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = ceil(12 * const(size.xScale))

[State 218, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = ceil(2 * const(size.xScale))

[State 218, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
x = -ceil(1 * const(size.xScale))

[State 218, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
x = -ceil(2 * const(size.xScale))

[State 218, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
x = -ceil(33 * const(size.xScale))

[State 218, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12
x = -ceil(4 * const(size.xScale))

[State 218, PosAdd]
type = PosAdd
trigger1 = AnimElem = 13
x = -ceil(9 * const(size.xScale))

[State 218, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 218, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 12), var(36) := -146
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 218, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 218, End]
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
powerAdd = 18 * !var(20) * !var(40)
facep2 = 1

[State 220, Voice]
type = PlaySnd
trigger1 = AnimElem = 8 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1, 2
channel = 1

[State 220, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
x = ceil(4 * const(size.xScale))

[State 220, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = ceil(2 * const(size.xScale))

[State 220, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = ceil(3 * const(size.xScale))

[State 220, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = ceil(1 * const(size.xScale))

[State 220, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
x = ceil(8 * const(size.xScale))

[State 220, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = ceil(19 * const(size.xScale))

[State 220, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 4.05027932961
y = -1.71875

[State 220, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 0
x = -0.06983240223
y = 0.3125

[State 220, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 220, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 9
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -5.58659217877, -5.15625
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.15625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -82
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 220, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 221


;STANDING HEAVY PUNCH (LAND)
[StateDef 221]
type = S
anim = 221
physics = N
moveType = I
velSet = 0,0

[State 221, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 221, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = -4
freq = 120

[State 221, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 221, Slamming Sound]
type = PlaySnd
trigger1 = !Time
value = 2, 420
channel = 5

[State 221, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 221, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;ADVANCING ATTACK
[StateDef 228]
type = S
physics = S
moveType = A
anim = 228
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
facep2 = 1

[State 228, Voice]
type = PlaySnd
trigger1 = AnimElem = 8 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 228, Woosh]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1, 2
channel = 1

[State 228, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
x = ceil(4 * const(size.xScale))

[State 228, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = ceil(2 * const(size.xScale))

[State 228, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = ceil(3 * const(size.xScale))

[State 228, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = ceil(1 * const(size.xScale))

[State 228, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
x = ceil(8 * const(size.xScale))

[State 228, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = ceil(19 * const(size.xScale))

[State 228, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 1.53631284916
y = -1.09375

[State 228, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 0
x = -0.06983240223
y = 0.1953125

[State 228, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 228, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 9
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -82
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 228, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 229


;ADVANCING ATTACK (LAND)
[StateDef 229]
type = S
anim = 229
physics = N
moveType = I
velSet = 0,0

[State 229, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 229, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = -4
freq = 120

[State 229, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 229, Slamming Sound]
type = PlaySnd
trigger1 = !Time
value = 2, 420
channel = 5

[State 229, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 229, End]
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
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 230, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 3
channel = 1

[State 230, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = 72 * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animtype = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -38
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 230, StateTypeSet: Idle]
type = StateTypeSet
trigger1= AnimElemTime(3) >= 0
moveType = I

[State 230, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING FAR MEDIUM KICK
[StateDef 240]
type = S
physics = S
moveType = A
anim = 240
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 240, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 240, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 4
channel = 1

[State 240, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 88), var(36) := -52
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 240, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 240
elem = 4
ignoreHitPause = 1

[State 240, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 240, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING CLOSE MEDIUM KICK
[StateDef 245]
type = S
physics = S
moveType = A
anim = 245
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 245, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 245, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 4
channel = 1

[State 245, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 245, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 245
elem = 4
ignoreHitPause = 1

[State 245, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 245, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING FAR HEAVY KICK
[StateDef 250]
type = S
physics = S
moveType = A
anim = 250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 250, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 250, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 5
channel = 1

[State 250, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = ceil(9 * const(size.xScale))

[State 250, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = ceil(2 * const(size.xScale))

[State 250, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = ceil(19 * const(size.xScale))

[State 250, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 3.35195530726

[State 250, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(8) < 0
x = -0.26187150838

[State 250, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
x = ceil(2 * const(size.xScale))

[State 250, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = ceil(5 * const(size.xScale))

[State 250, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 250, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = -ceil(4 * const(size.xScale))

[State 250, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
x = -ceil(5 * const(size.xScale))

[State 250, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 119 < 7, 7, fvar(11) * 119)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 120), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 250, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 250
elem = 7
ignoreHitPause = 1

[State 250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 250, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;INVERSION ATTACK
[StateDef 258]
type = S
physics = S
moveType = A
anim = 258
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 258, Voice]
type = PlaySnd
trigger1 = AnimElem = 4 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 258, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 5
channel = 1

[State 258, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 112 < 7, 7, fvar(11) * 112)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Trip
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -4.46927374302, -2.51396648045
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -2.51396648045
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -31
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 258, HitDef 2]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6 && !MoveContact && !MoveReversed
trigger2 = AnimElem = 7 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 112 < 7, 7, fvar(11) * 112)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -128
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 258, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 258, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 11
anim = 8102
sprPriority = -3
posType = P1
pos = 0, 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 258, Slamming Sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 40, 1
channel = 5

[State 258, EnvShake]
type = EnvShake
trigger1 = AnimElem = 11
time = 14
ampl = -4
freq = 120

[State 258, End]
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
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 400, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 0
channel = 1

[State 400, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getPower = 72 * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 96), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 400, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 400
elem = 4
ignoreHitPause = 1

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
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 410, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 410, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 1
channel = 1

[State 410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = ceil(14 * const(size.xScale))

[State 410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = ceil(1 * const(size.xScale))

[State 410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
trigger2 = AnimElem = 12
x = ceil(8 * const(size.xScale))

[State 410, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 92), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 410, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 410
elem = 5
ignoreHitPause = 1

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
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 420, Voice]
type = PlaySnd
trigger1 = AnimElem = 4 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 420, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 420, Slamming Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2, 420
channel = 5

[State 420, EnvShake]
type = EnvShake
trigger1 = AnimElem = 5
time = 14
ampl = -4
freq = 120

[State 420, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 92), var(36) := -2
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 420, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 420
elem = 6
ignoreHitPause = 1

[State 420, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
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
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 430, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 3
channel = 1

[State 430, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getPower = 72 * !var(20) * !var(40), 36 * !var(20) * !var(40)
givepower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -8
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 430, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 430
elem = 4
ignoreHitPause = 1

[State 430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
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
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 440, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 440, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 4
channel = 1

[State 440, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
getPower = ifElse(!var(13),144,72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 95), var(36) := -10
palFX.time = 12*var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 440, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 440
elem = 5
ignoreHitPause = 1

[State 440, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
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
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 450, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 450, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 5
channel = 1

[State 450, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 1.67597765363
y = -1.875

[State 450, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 0
x = -0.05237430167
y = 0.29296875

[State 450, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 450, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 8 && !MoveContact && !MoveReversed
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 0
getpower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givepower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Trip
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -1.11731843575, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -7.1875
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 92), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 450, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(9) >= 0
moveType = I

[State 450, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 451


;CROUCHING HEAVY KICK (LAND)
[StateDef 451]
type = C
anim = 451
physics = N
moveType = I
velSet = 0,0

[State 451, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 451, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = -4
freq = 120

[State 451, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 451, Slamming Sound]
type = PlaySnd
trigger1 = !Time
value = 40, 1
channel = 5

[State 451, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;CROUCHING HEAVY KICK (BACKWARDS)
[StateDef 458]
type = C
physics = C
moveType = A
anim = 450
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 458, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 458, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 5
channel = 1

[State 458, VelSet]
type = VelSet
trigger1 = AnimElem = 6
y = -1.875

[State 458, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 0
y = 0.29296875

[State 458, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 458, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 8 && !MoveContact && !MoveReversed
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 0
getpower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givepower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Trip
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -1.11731843575, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -7.1875
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 92), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 458, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(9) >= 0
moveType = I

[State 458, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 451



;CROUCHING HEAVY KICK (FORWARDS)
[StateDef 459]
type = C
physics = C
moveType = A
anim = 450
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 459, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 459, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 5
channel = 1

[State 459, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 3.35195530726
y = -1.875

[State 459, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 0
x = -0.05237430167
y = 0.29296875

[State 459, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 6
stateType = A
physics = N

[State 459, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 8 && !MoveContact && !MoveReversed
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 0
getpower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givepower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Trip
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -1.11731843575, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -7.1875
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 92), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 459, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(9) >= 0
moveType = I

[State 459, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 451



;NEUTRAL JUMPING LIGHT PUNCH
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
trigger1 = !Time && Random < 200
value= 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 600, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 0
channel = 1

[State 600, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 4 && !MoveContact && !MoveReversed
trigger4 = AnimElem = 5 && !MoveContact && !MoveReversed
trigger5 = AnimElem = 6 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = 72 * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 96), var(36) := -94
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 600, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 600
elem = 3
ignoreHitPause = 1

[State 600, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 600, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 600, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;ANGLED JUMPING LIGHT PUNCH
[StateDef 605]
type = A
physics = N
moveType = A
anim = 605
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 605, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value= 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 605, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 0
channel = 1

[State 605, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 4 && !MoveContact && !MoveReversed
trigger4 = AnimElem = 5 && !MoveContact && !MoveReversed
trigger5 = AnimElem = 6 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = 72 * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 605, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 605
elem = 3
ignoreHitPause = 1

[State 605, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 605, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 605, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;JUMPING MEDIUM PUNCH
[StateDef 610]
type = A
physics = N
moveType = A
anim = 610
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)

[State 610, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 610, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 1
channel = 1

[State 610, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 12 + 3 * var(9)
guard.hittime = (12 + 3 * var(9)) - 6
ground.slideTime = 12 + 3 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 96), var(36) := -128
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 610, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 610, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 610, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

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
powerAdd = 18 * !var(20) * !var(40)

[State 620, Voice]
type = PlaySnd
trigger1 = AnimElem = 4 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 620, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 620, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 7 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animtype = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
guard.hittime = (12 + 4 * var(9)) - 6
ground.slideTime = 12 + 4 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 620, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 620
elem = 6
ignoreHitPause = 1

[State 620, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 620, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

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
value= 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 630, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 3
channel = 1

[State 630, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 5 && !MoveContact && !MoveReversed
trigger4 = AnimElem = 6 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = 72 * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -52
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 630, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 630
elem = 4
ignoreHitPause = 1

[State 630, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 630, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

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
powerAdd = 18 * !var(20) * !var(40)

[State 640, Voice]
type = PlaySnd
trigger1 = AnimElem = 4 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 640, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 4
channel = 1

[State 640, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 7 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 3 * var(9)
guard.hittime = (12 + 3 * var(9)) - 6
ground.slideTime = 12 + 3 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 115), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 640, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 640
elem = 6
ignoreHitPause = 1

[State 640, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
movetype = I

[State 640, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 640, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

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
powerAdd = 18 * !var(20) * !var(40)

[State 650, Voice]
type = PlaySnd
trigger1 = AnimElem = 7 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 650, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1, 5
channel = 1

[State 650, Boost]
type = VelAdd
trigger1 = AnimElem = 7
x = 2

[State 650, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 8
trigger2 = AnimElem = 9 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 112 < 7, 7, fvar(11) * 112)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
guard.hittime = (12 + 4 * var(9)) - 6
ground.slideTime = 12 + 4 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 88), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 650, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
moveType = I

[State 650, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 650, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

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
powerAdd = 18 * !var(20) * !var(40)
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
trigger1 = AnimElem = 3
trigger1 = P2BodyDist x < 55
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
p1StateNo = ifElse(ifElse(!NumExplod(92828282) && !NumExplod(92468246), command = "holdback", command = "holdfwd"), 805, 820)

[State 800, HitDef: KK Throw]
type = HitDef
trigger1 = AnimElem = 3 && var(10)
trigger1 = !var(38)
trigger1 = P2BodyDist x < 55
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
p1StateNo = ifElse(ifElse(!NumExplod(92828282) && !NumExplod(92468246), command = "holdback", command = "holdfwd"), 805, 810)

[State 800, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100, 0
channel = 0

[State 800, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 0
channel = 1

[State 800, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
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
edge = 31, 31
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

[State 805, TargetBind 1]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = ceil(48 * const(size.xScale)), 0

[State 805, TargetBind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger2 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(40 * const(size.xScale)), 0

[State 805, TargetBind 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 0, 0

[State 805, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(2) < 0 || AnimElemTime(5) >= 0
value = 1

[State 805, SprPriority 2]
type = SprPriority
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
value = -1

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
type = S
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

[State 806, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

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



;VICIOUS IMPACT
[Statedef 810]
type = S
physics = N
moveType = A
anim = 810
ctrl = 0
velSet = 0,0
sprPriority = 1

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

[State 810, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 815

[State 810, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
x = ceil(3 * const(size.xScale))

[State 810, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = ceil(1 * const(size.xScale))

[State 810, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
x = ceil(2 * const(size.xScale))

[State 810, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = ceil(4 * const(size.xScale))

[State 810, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 23
x = -ceil(2 * const(size.xScale))

[State 810, PosAdd]
type = PosAdd
trigger1 = AnimElem = 16
x = -ceil(1 * const(size.xScale))

[State 810, PosAdd]
type = PosAdd
trigger1 = AnimElem = 20
x = -ceil(6 * const(size.xScale))

[State 810, PosAdd]
type = PosAdd
trigger1 = AnimElem = 21
trigger2 = AnimElem = 22
x = -ceil(7 * const(size.xScale))

[State 810, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = ceil((82 * const(size.xScale))), -91

[State 810, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil((78 * const(size.xScale))), -101

[State 810, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil((76 * const(size.xScale))), -122

[State 810, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil((64 * const(size.xScale))), -138

[State 810, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil((50 * const(size.xScale))), -148

[State 810, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = ceil((36 * const(size.xScale))), -155

[State 810, TargetBind 7]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = ceil((20 * const(size.xScale))), -155

[State 810, TargetBind 8]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(10) < 0
pos = ceil((17 * const(size.xScale))), -155

[State 810, TargetBind 9]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = ceil((20 * const(size.xScale))), -158

[State 810, TargetBind 10]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
pos = ceil((14 * const(size.xScale))), -155

[State 810, TargetBind 11]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
pos = ceil((10 * const(size.xScale))), -146

[State 810, TargetBind 12]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
pos = ceil((7 * const(size.xScale))), -124

[State 810, TargetBind 13]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(16) < 0
pos = ceil((4 * const(size.xScale))), -45

[State 810, TargetBind 13]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(16) = 0
pos = ceil((80 * const(size.xScale))), 0

[State 810, Leg Explod]
type = Explod
trigger1 = NumTarget && AnimElem = 14
anim = 10810
ID = 10810
sprPriority = 3
bindTime = -1
removeTime = -2
posType = P1
pos = 0, 0
scale = const(size.xScale), 1
ownPal = 1

[State 810, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 14
value = floor(ifElse(133 * fvar(11) < 7, -7, -133 * fvar(11)))

[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 14
value = 36

[State 810, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 14 && !var(20) * !var(40)
value = 72

[State 810, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 14
value = 1

[State 810, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 14
var(13) = 1

[State 810, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 14
var(15) = 1
ignoreHitPause = 1

[State 810, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 16
value = 816

[State 810, Voice]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 12
value = 4, 3
channel = 0

[State 810, Woosh Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 12
value = 1, 2
channel = 1

[State 810, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 14
value = 2, 5
channel = 2

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElem = 14
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = 4, -45
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;VICIOUS IMPACT (TARGET)
;Being Thrown
[StateDef 815]
type = S
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 815, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(2) = 6
value = 2

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 815

[State 815, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 816]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -1.11731843575, 1.25
sprPriority = 2

[State 816, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 816, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.537109375

[State 816, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 816, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 816, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;PAINFUL STRIKE
[Statedef 820]
type = S
physics = N
moveType = A
anim = 820
ctrl = 0
velSet = 0,0
sprPriority = 1

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

[State 820, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 825

[State 820, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = ceil(5 * const(size.xScale))

[State 820, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = ceil(14 * const(size.xScale))

[State 820, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
x = ceil(2 * const(size.xScale))

[State 820, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 15
x = ceil(6 * const(size.xScale))

[State 820, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14
x = ceil(4 * const(size.xScale))

[State 820, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = ceil(10 * const(size.xScale))

[State 820, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = ceil(9 * const(size.xScale))

[State 820, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
x = ceil(3 * const(size.xScale))

[State 820, PosAdd]
type = PosAdd
trigger1 = AnimElem = 16
x = ceil(13 * const(size.xScale))

[State 820, PosAdd]
type = PosAdd
trigger1 = AnimElem = 17
x = ceil(22 * const(size.xScale))

[State 820, PosAdd]
type = PosAdd
trigger1 = AnimElem = 18
x = -ceil(10 * const(size.xScale))

[State 820, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = ceil((82 * const(size.xScale))), 0

[State 820, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil((48 * const(size.xScale))), 0

[State 820, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil((8 * const(size.xScale))), 0

[State 820, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = (-ceil(18 * const(size.xScale))), 0

[State 820, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(8) < 0
pos = (-ceil(70 * const(size.xScale))), 0

[State 820, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = (-ceil(58 * const(size.xScale))), -108

[State 820, TargetBind 7]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = ceil((52 * const(size.xScale))), -128

[State 820, TargetBind 8]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(10) = 0
pos = ceil((80 * const(size.xScale))), 0

[State 820, Throw 1]
type = TargetState
trigger1 = NumTarget && AnimElemTime(10) = 0
value = 826

[State 820, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(10) = 1
value = floor(ifElse(140 * fvar(11) < 7, -7, -140 * fvar(11)))

[State 820, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(10) = 1
value = 36

[State 820, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElemTime(10) = 1 && !var(20) * !var(40)
value = 72

[State 820, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(10) = 1
value = 1

[State 820, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(10) = 1
var(13) = 1

[State 820, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(10) = 1
var(15) = 1
ignoreHitPause = 1

[State 820, Throw 2]
type = TargetState
trigger1 = NumTarget && AnimElemTime(10) = 1
value = 827

[State 820, Voice]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(9) = 0
value = 4, 3
channel = 0

[State 820, Woosh]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(9) = 0
value = 1, 2
channel = 1

[State 820, Slamming Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(10) = 1
value = 820, 0
channel = 5

[State 820, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(10) = 1
time = 14
ampl = -4
freq = 120

[State 820, Impact Dust]
type = Helper
trigger1 = NumTarget && AnimElemTime(10) = 1
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P2
facing = -1
ownPal = 1

[State 820, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;PAINFUL STRIKE (TARGET)
;Being Thrown
[StateDef 825]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 825, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 825

[State 825, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
trigger2 = AnimElem = 10
ignoreHitPause = 1

[State 825, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;Slammed into ground
[StateDef 826]
type = A
physics = N
movetype = H
ctrl = 0

[State 826, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5100

[State 826, ChangeAnim]
type = ChangeAnim
trigger1 = AnimElemTime(AnimElemNo(0) + 1) = 0
value = 5100
elem = AnimElemNo(0)

[State 826, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 827]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -2.23463687151, 1.25
sprPriority = 2

[State 827, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 827, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 827, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.537109375

[State 827, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 827, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 827, End]
type = SelfState
trigger1 = pos y > -vel y
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
value = 5000, 1
channel = 0

[State 890, Escape Sound]
type = PlaySnd
trigger1= !Time
value = 760, 0

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
value = ifElse(SelfAnimExist(5945), 5945, 130)

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
