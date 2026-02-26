; _________________________________________
;| Oro by varo_hades                       |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<NORMAL MOVES>========================================
;==============================================================================================

;===========<STANDING LIGHT PUNCH>==========
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
trigger1 = !Time
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 200, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1,0
channel = 1

[State 200, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 0
getpower = 72 * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givepower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.5, -7), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.5, -7)
guard.cornerPush.velOff = 0
air.velocity = -3,-8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 111), var(36):= -65
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING LIGHT PUNCH>==========
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
trigger1 = !Time
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 205, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1,0
channel = 1

[State 205, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getpower = 72 * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givepower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.5, -7), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.5, -7)
guard.cornerPush.velOff = 0
air.velocity = -3,-8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 111), var(36):= -90
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 205, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 205, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING FAR MEDIUM PUNCH>==========
[StateDef 210]
type = S
physics = S
moveType = A
anim = 210
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))
faceP2 = 1

[State 210, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 210, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1,1
channel = 1

[State 210, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 45 < 7, 7, fvar(11) * 45)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = High
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.5, -9), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.5, -9)
guard.cornerPush.velOff = 0
air.velocity = -3, -8
air.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 110), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 210,3]
type = ChangeState
trigger1 = animelem = 6
value = 211
ctrl = 0

;Finish
[Statedef 211]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0
anim = 211
juggle = 0
poweradd = 0

[State 211,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========<STANDING CLOSE MEDIUM PUNCH>==========
[StateDef 215]
type = S
physics = S
moveType = A
anim = 215
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))
facep2 = 1

[State 215, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 215, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1,1
channel = 1

[State 215, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -0.5, -1), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -0.5, -1)
guard.cornerPush.velOff = 0
air.velocity = -1,-10
air.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 215, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 215, ChangeState]
type = ChangeState
trigger1 = time=8
value = 216
ctrl = 0

;Finish
[Statedef 216]
type = S
physics = S
movetype = A
ctrl = 0
anim = 216
juggle = 3

[State 216, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 1
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -0.5, -1), -12
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -0.5, -1)
guard.cornerPush.velOff = 0
air.velocity = -0.8,-12
air.cornerPush.velOff = 0
yAccel = 0.65
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 216, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<MAWASHI HIJI>==========
[StateDef 219]
type = S
physics = S
moveType = A
anim = 219
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))
facep2 = 1

[State 219, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 219, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1,1
channel = 1

[State 219, velset]
type = velset
trigger1 = time >= 2
x = 1

[State 219, velset]
type = velset
trigger1 = time >= 6
x = 2

[State 219, velset]
type = velset
trigger1 = time >= 10
x = 1

[State 219, velset]
type = velset
trigger1 = time >= 14
x = 0

[State 219, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 59 < 7, 7, fvar(11) * 59)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -5, -10), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5, -10)
guard.cornerPush.velOff = 0
air.velocity = -3,-8
air.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 114), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 219, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 219, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING FAR HEAVY PUNCH>==========
[StateDef 220]
type = S
physics = S
moveType = A
anim = 220
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))
facep2 = 1

[State 220, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 220, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 45 < 7, 7, fvar(11) * 45)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -6, -12), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6, -12)
guard.cornerPush.velOff = 0
air.velocity = -3,-8
air.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 109), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 220, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 7
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 45 < 7, 7, fvar(11) * 45)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -6, -12), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6, -12)
guard.cornerPush.velOff = 0
air.velocity = -2.5,-8
air.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 109), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 220, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
movetype = I

[State 220,3]
type = ChangeState
trigger1 = time = 18
value = 221
ctrl = 0

;Finish
[Statedef 221]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0
anim = 221
juggle = 0
poweradd = 0

[State 221,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========<STANDING LIGHT KICK>==========
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
trigger1 = AnimElem = 2
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
trigger1 = Time = 0
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 0
getpower = 72 * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givepower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.5, -7), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.5, -7)
guard.cornerPush.velOff = 0
air.velocity = -3,-8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 69), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 230, StateTypeSet: Idle]
type = StateTypeSet
trigger1= AnimElemTime(8) >= 0
moveType = I

[State 230, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING CLOSE LIGHT KICK>==========
[StateDef 235]
type = S
physics = S
moveType = A
anim = 235
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 235, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 235, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 235, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getpower = 72 * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givepower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.5, -7), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.5, -7)
guard.cornerPush.velOff = 0
air.velocity = -3,-8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 47), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 235, StateTypeSet: Idle]
type = StateTypeSet
trigger1= AnimElemTime(3) >= 0
moveType = I

[State 235, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING FAR MEDIUM KICK>==========
[StateDef 240]
type = S
physics = S
moveType = A
anim = 240
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))
faceP2 = 1

[State 240, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 240, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 240, StateTypeSet]
type = StateTypeSet
trigger1 = time>2
statetype = A
movetype = A
physics = N

[State 240, StateTypeSet]
type = StateTypeSet
trigger1 = time>20
statetype = S
movetype = A
physics = N

[State 240, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 45 < 7, 7, fvar(11) * 45)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.5, -9), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.5, -9)
guard.cornerPush.velOff = 0
air.velocity = -3.5,-9
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 110), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 240, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
movetype = I

[State 240, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING CLOSE MEDIUM KICK>==========
[StateDef 245]
type = S
physics = S
moveType = A
anim = 245
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))
faceP2 = 1

[State 245, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 245, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 245, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -5, -10), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5, -10)
guard.cornerPush.velOff = 0
air.velocity = -3.5,-9
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 245, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 245, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING FAR HEAVY KICK>==========
[StateDef 250]
type = S
physics = N
moveType = A
anim = 250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))
faceP2 = 1

[State 250, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 250, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 250, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4,Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(PrevStateNo = 700, -6.46, ifElse(var(20), -6.25, -12.5)), ifElse(PrevStateNo = 700, -5.25, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6.25, -12.5)
guard.cornerPush.velOff = 0
air.velocity = -4.5,-8.5
air.cornerPush.velOff = 0
yAccel = 0.6
fall = ifElse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 103), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 250, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<CROUCHING LIGHT PUNCH>==========
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
trigger1 = !Time
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 400, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,0
channel = 1

[State 400, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 0
getpower = 72 * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givepower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.5, -7), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.5, -7)
guard.cornerPush.velOff = 0
air.velocity = -3,-8
air.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 111), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 400, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<CROUCHING MEDIUM PUNCH>==========
[StateDef 410]
type = C
physics = C
moveType = A
anim = 410
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))
faceP2 = 1

[State 410, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 410, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,1
channel = 1

[State 410, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -5, -10), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5, -10)
guard.cornerPush.velOff = 0
air.velocity = -3,-8
air.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 119), var(36) := -47
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 410, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 410, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<CROUCHING HEAVY PUNCH>==========
[StateDef 420]
type = C
physics = C
moveType = A
anim = 420
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))
faceP2 = 1

[State 420, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 420, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 420, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -6.25, -12.5), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6.25, -12.5)
guard.cornerPush.velOff = 0
air.velocity = -4.5,-8.5
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
forceStand = 1

[State 420, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 420, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<CROUCHING LIGHT KICK>==========
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
trigger1 = AnimElem = 2
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 430, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 430, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 0
getpower = 72 * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givepower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -3, -6), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3, -6)
guard.cornerPush.velOff = 0
air.velocity = -3,-8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 96), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinadd= -255, -255, -255, 48

[State 430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 430, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<CROUCHING MEDIUM KICK>==========
[StateDef 440]
type = C
physics = C
moveType = A
anim = 440
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))
faceP2 = 1

[State 440, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
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
trigger1 = Time = 0
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -5, -10), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5, -10)
guard.cornerPush.velOff = 0
air.velocity = -3,-8
air.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 116), var(36) := -10
palFX.time = 12*var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 440, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 440, End]
type = Changestate
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<CROUCHING HEAVY KICK>==========
[StateDef 450]
type = C
physics = C
moveType = A
anim = 450
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))
faceP2 = 1

[State 450, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 3
channel = 0

[State 450, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 450, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Trip
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1, -8
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -3,-8
air.cornerPush.velOff = 0
yAccel = 0.55
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 96), var(36) := -20
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

;===========<JUMPING LIGHT PUNCH>==========
[StateDef 600]
type = A
physics = A
moveType = A
anim = 600
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 600, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value= 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 600, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 1

[State 600, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 0
getpower = 72 * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givepower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2, -4), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2, -4)
guard.cornerPush.velOff = 0
air.velocity = -3,-8
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 110), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 600, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 600, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 600, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<ANGLED JUMPING LIGHT PUNCH>==========
[StateDef 601]
type = A
physics = A
moveType = A
anim = 601
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 601, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 601, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 1

[State 601, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 45 < 7, 7, fvar(11) * 45)), 0
getpower = 72 * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givepower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = High
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2, -4), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2, -4)
guard.cornerPush.velOff = 0
air.velocity = -3,-7
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 63), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 601, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(11) >= 0
movetype = I

[State 601, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 601, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<NEUTRAL JUMPING MEDIUM PUNCH>==========
[StateDef 610]
type = A
physics = A
moveType = A
anim = 610
ctrl = 0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))

[State 610, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 610, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 1

[State 610, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 60 < 7, 7, fvar(11) * 60)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = High
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -3, -6), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3, -6)
guard.cornerPush.velOff = 0
air.velocity = -4,-8
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 110), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 610, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
movetype = I

[State 610, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 610, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<ANGLED JUMPING MEDIUM PUNCH>==========
[StateDef 611]
type = A
physics = A
moveType = A
anim = 611
ctrl = 0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))

[State 611, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 611, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 1

[State 611, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = High
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2, -4), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2, -4)
guard.cornerPush.velOff = 0
air.velocity = -3,-8
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.6
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 63), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 611, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(11) >= 0
movetype = I

[State 611, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 611, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<NEUTRAL JUMPING HEAVY PUNCH>==========
[StateDef 620]
type = A
physics = A
moveType = A
anim = 620
ctrl = 0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))

[State 620, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
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
trigger1 = Time = 0
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animtype = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 4 * var(9)
ground.slideTime = 12 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.5, -5), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.5, -5)
guard.cornerPush.velOff = 0
air.velocity = -4,-8
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 110), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 620, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 620, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<ANGLED JUMPING HEAVY PUNCH>==========
[StateDef 621]
type = A
physics = A
moveType = A
anim = 621
ctrl = 0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))

[State 621, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 621, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 621, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animtype = Ligh
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
ground.slideTime = 12 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.5, -5), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.5, -5)
guard.cornerPush.velOff = 0
air.velocity = -4,-8
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 113), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 621, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 10 && !MoveContact
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animtype = Ligh
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
ground.slideTime = 12 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.5, -5), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.5, -5)
guard.cornerPush.velOff = 0
air.velocity = -4,-8
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 113), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 621, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(11) >= 0
moveType = I

[State 621, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 621, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<NEUTRAL JUMPING LIGHT KICK>==========
[StateDef 630]
type = A
physics = A
moveType = A
anim = 630
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 630, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 630, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 630, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 0
getpower = 72 * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givepower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2, -4), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2, -4)
guard.cornerPush.velOff = 0
air.velocity = -3,-8
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.6
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 630, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 630, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 630, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<ANGLED JUMPING LIGHT KICK>==========
[StateDef 631]
type = A
physics = A
moveType = A
anim = 631
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 631, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 631, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 631, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getpower = 72 * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givepower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.5, -5), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.5, -5)
guard.cornerPush.velOff = 0
air.velocity = -3,-7
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 127), var(36) := -25
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 631, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 631, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 631, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<NEUTRAL JUMPING MEDIUM KICK>==========
[StateDef 640]
type = A
physics = A
moveType = A
anim = 640
ctrl = 0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))

[State 640, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 640, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 640, Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.5, -5), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.5, -5)
guard.cornerPush.velOff = 0
air.velocity = -3,-7
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 118), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 640, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 640, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 640, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<ANGLED JUMPING MEDIUM KICK>==========
[StateDef 641]
type = A
physics = A
moveType = A
anim = 641
ctrl = 0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))

[State 641, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 641, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 641, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 62 < 7, 7, fvar(11) * 62)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 4, 10), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.5, -5), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.5, -5)
guard.cornerPush.velOff = 0
air.velocity = -3,-7
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 127), var(36) := -25
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 641, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 641, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 641, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<JUMPING HEAVY KICK>==========
[StateDef 650]
type = A
physics = A
moveType = A
anim = 650
ctrl = 0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))

[State 650, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 650, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 650, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 4 * var(9)
ground.slideTime = 12 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -3, -6), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3, -6)
guard.cornerPush.velOff = 0
air.velocity = -4,-8
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 95), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 650, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 650, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 650, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<ANGLED JUMPING HEAVY KICK>==========
[StateDef 651]
type = A
physics = A
moveType = A
anim = 651
ctrl = 0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))

[State 651, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 651, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 651, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 82 < 7, 7, fvar(11) * 82)), 0
getPower = ifElse(!var(13), 144, 72) * !(var(20) || var(28)), 36 * !(var(20) || var(28))
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -3, -6), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3, -6)
guard.cornerPush.velOff = 0
air.velocity = -4,-8
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.55
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 127), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 651, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 651, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 651, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<THROW ATTEMPT>==========
[StateDef 800]
type = S
physics = S
movetype = A
anim = 800
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))
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
p1StateNo = ifElse(command = "holdback", 810, 805)

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
p1StateNo = ifElse(command = "holdback", 805, 820)

[State 800, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5000,0
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

;===========<THROW SWITCHING SIDES>==========
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
trigger1 = AnimElem = 3

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
trigger1 = AnimElemTime(2) < 0 || AnimElemTime(4) >= 0
pos = ceil(35 * const(size.xScale)), 0

[State 805, TargetBind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
pos = ceil(11 * const(size.xScale)), 0

[State 805, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(2) < 0 || AnimElemTime(4) >= 0
value = 1

[State 805, SprPriority -1]
type = SprPriority
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4)< 0
value = -1

[State 805, End]
type = ChangeState
trigger1 = !NumTarget
value = 0
ctrl = 1

[State 805, End]
type = ChangeState
trigger1 = AnimElemTime(4) >= 0
value = ifElse(var(10), 820, 810)

;===========<THROW SWITCHING SIDES (TARGET)>==========
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

;===========<KUBI-JIME KATAGURUMA>==========
[Statedef 810]
type = S
movetype = A
physics = N
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
trigger1 = time = 9
y = -30

[State 810, SprPriority]
type = SprPriority
trigger1 = 1
value = -1

[State 810, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 4,3

[State 810, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 0,0

[State 810, bg]
type = EnvShake
trigger1 = animelem = 8
trigger2 = animelem = 10
trigger3 = animelem = 12
trigger4 = animelem = 14
trigger5 = animelem = 16
time = 6
ampl = 6
freq = 100

[State 810, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
trigger2 = animelem = 10
trigger3 = animelem = 12
trigger4 = animelem = 14
trigger5 = animelem = 16
value = 2,7

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget && animelem = 8
trigger2 = NumTarget && animelem = 10
trigger3 = NumTarget && animelem = 12
trigger4 = NumTarget && animelem = 14
trigger5 = NumTarget && animelem = 16
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = ceil(0 * const(size.xScale)), ceil(-50 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, Explod]
type = Explod
trigger1 = time = 16
anim = 811
pos = 0,0
postype = p1
bindtime = -1
removetime = 108
supermove = 0
pausemove = 0
sprpriority = 2
ontop = 0
removeongethit = 1

[State 810, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && animelem = 8
trigger2 = NumTarget && animelem = 10
trigger3 = NumTarget && animelem = 12
trigger4 = NumTarget && animelem = 14
value = floor(ifElse(25 * fvar(11) < 7, -7, -25 * fvar(11)))
Kill = 0

[State 810, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && animelem = 16
value = floor(ifElse(25 * fvar(11) < 7, -7, -25 * fvar(11)))
Kill = 1

[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && animelem = 8
trigger2 = NumTarget && animelem = 10
trigger3 = NumTarget && animelem = 12
trigger4 = NumTarget && animelem = 14
trigger5 = NumTarget && animelem = 16
value = 36

[State 810, Power]
type = PowerAdd
trigger1 = NumTarget && animelem = 8 && !(var(20) || var(28))
trigger2 = NumTarget && animelem = 10 && !(var(20) || var(28))
trigger3 = NumTarget && animelem = 12 && !(var(20) || var(28))
trigger4 = NumTarget && animelem = 14 && !(var(20) || var(28))
trigger5 = NumTarget && animelem = 16 && !(var(20) || var(28))
value = 72

[State 810, HitAdd]
type = HitAdd
trigger1 = NumTarget && animelem = 8
trigger2 = NumTarget && animelem = 10
trigger3 = NumTarget && animelem = 12
trigger4 = NumTarget && animelem = 14
trigger5 = NumTarget && animelem = 16
value = 1

[State 810, HitAdd]
type = HitAdd
trigger1 = NumTarget && animelem = 8
value = 1

[State 810, HitCount]
type = VarAdd
trigger1 = NumTarget && animelem = 8
trigger2 = NumTarget && animelem = 10
trigger3 = NumTarget && animelem = 12
trigger4 = NumTarget && animelem = 14
trigger5 = NumTarget && animelem = 16
var(13) = 1

[State 810, Juggle]
type = VarAdd
trigger1 = NumTarget && animelem = 8
trigger2 = NumTarget && animelem = 10
trigger3 = NumTarget && animelem = 12
trigger4 = NumTarget && animelem = 14
trigger5 = NumTarget && animelem = 16
var(15) = 1
ignoreHitPause = 1

[State 810, Juggle]
type = VarSet
trigger1 = NumTarget && animelem = 8
trigger2 = NumTarget && animelem = 10
trigger3 = NumTarget && animelem = 12
trigger4 = NumTarget && animelem = 14
trigger5 = NumTarget && animelem = 16
var(16) = 1
ignoreHitPause = 1

[State 810, Turn]
type = Turn
trigger1 = !AnimTime

[State 810, End]
type = ChangeState
trigger1 = !AnimTime
value = 811
ctrl = 0

;Finish
[Statedef 811]
type = A
movetype = A
physics = N
anim = 812
poweradd = 0

[State 811, SprPriority]
type = SprPriority
trigger1 = 1
value = 1

[State 811, Turn]
type = Turn
trigger1 = time = 0
persistent = 0

[State 811,1]
type = velset
trigger1 = time >= 4
x = -2
y = -6

[State 811,1]
type = velset
trigger1 = time >= 8
y = -4

[State 811,1]
type = velset
trigger1 = time >= 12
y = -2

[State 811,1]
type = velset
trigger1 = time >= 16
y = 0

[State 811,1]
type = velset
trigger1 = time >= 20
y = 2

[State 811,1]
type = velset
trigger1 = time >= 24
y = 4

[State 811,1]
type = velset
trigger1 = time >= 28
y = 6

[State 811,1]
type = velset
trigger1 = time >= 32
y = 8

[State 811,1]
type = velset
trigger1 = time >= 36
y = 10

[State 811,2]
type = changestate
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 1

;===========<KUBI-JIME KATAGURUMA (TARGET)>==========
;Being Thrown
[StateDef 815]
type = A
movetype = H
physics = N
velset = 0,0

[State 815, Turn]
type = Turn
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 815

[State 815, SprPriority]
type = SprPriority
trigger1 = 1
value = 1

[State 815, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 816
ctrl = 0

;After Throw
[StateDef 816]
type = A
movetype = H
physics = N
velset = 0,0

[State 816, SprPriority]
type = SprPriority
trigger1 = 1
value = 2

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 816

[State 816, VelSet2]
type = VelSet
trigger1 = time >= 0
x = -4
y = -8

[State 816, VelSet2]
type = VelSet
trigger1 = time >= 4
y = -6

[State 816, VelSet2]
type = VelSet
trigger1 = time >= 8
y = -4
x = -2

[State 816, VelSet2]
type = VelSet
trigger1 = time >= 12
y = -2

[State 816, VelSet2]
type = VelSet
trigger1 = time >= 16
y = -1
x = -1

[State 816, VelSet2]
type = VelSet
trigger1 = time >= 20
y = 2

[State 816, VelSet2]
type = VelSet
trigger1 = time >= 24
y = 4

[State 816, VelSet2]
type = VelSet
trigger1 = time >= 28
y = 6

[State 816, VelSet2]
type = VelSet
trigger1 = time >= 32
y = 8

[State 816,ChangeState]
type = selfstate
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100
ctrl = 1

[State 816, Break Fall Air]
Type = SelfState
triggerall = time > 16
Trigger1 = Pos Y < -20 && Alive && CanRecover
Trigger1 = Command = "recovery"
Value = 5210

[State 816, Break Fall Ground]
Type = SelfState
triggerall = time > 16
Trigger1 = Pos Y >= -20 && Alive && CanRecover
Trigger1 = Command = "recovery"
Value = 5200

;===========<TOMOE NAGE>==========
[StateDef 820]
type = A
physics = N
moveType = A
anim = 820
ctrl = 0
velset = 0,0
sprpriority = 1

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

[State 820, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 825

[State 820, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 0,0

[State 820, bg]
type = EnvShake
trigger1 = animelem = 8
time = 10
ampl = 15
freq = 80

[State 820, Hit Spark]
type = Helper
trigger1 = NumTarget && animelem = 8
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = ceil(-60 * const(size.xScale)), ceil(-60 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 820, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 8
value = floor(ifElse(50 * fvar(11) < 7, -7, -50 * fvar(11)))
kill=1

[State 820, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 8
value = 36

[State 820, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 8 && !(var(20) || var(28))
value = 72

[State 820, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 8
value = 1

[State 820, HitCount]
type = VarAdd
trigger1 = NumTarget && AnimElem = 8
var(13) = 1

[State 820, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 8
var(15) = 1
ignoreHitPause = 1

[State 820, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 8
var(16) = 1
ignoreHitPause = 1

[State 820, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 2,5

[State 820, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<TOMOE NAGE (TARGET)>==========
;Being Hit
[StateDef 825]
type = A
movetype = H
physics = N
velset = 0,0

[State 825, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 825

[State 825, SprPriority]
type = SprPriority
trigger1 = 1
value = 2

[State 825, Turn]
type = Turn
trigger1 = time = 29

[State 825, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 29
value = 816

[State 825, PosAdd]
type = PosAdd
trigger1 = time = 29
x = -60

[State 825, VelSet2]
type = VelSet
trigger1 = time >= 29
x = -8
y = -12

[State 825, VelSet2]
type = VelSet
trigger1 = time >= 34
x = -6
y = -2

[State 825, VelSet2]
type = VelSet
trigger1 = time >= 38
y = 0

[State 825, VelSet2]
type = VelSet
trigger1 = time >= 42
y = 1

[State 825, VelSet2]
type = VelSet
trigger1 = time >= 46
y = 2

[State 825, VelSet2]
type = VelSet
trigger1 = time >= 50
y = 4

[State 825, VelSet2]
type = VelSet
trigger1 = time >= 54
y = 6

[State 825, VelSet2]
type = VelSet
trigger1 = time >= 58
y = 8

[State 825, VelSet2]
type = VelSet
trigger1 = time >= 62
y = 10

[State 825, LifeAdd]
type = LifeAdd
trigger1 = time > 40
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = -50
kill = 1
absolute = 0

[State 825, Break Fall Air]
Type = SelfState
triggerall = time > 45
Trigger1 = Pos Y < -30 && Alive && CanRecover
Trigger1 = Command = "recovery"
Value = 5210

[State 825, Break Fall Ground]
Type = SelfState
trigger1 = time > 45
Trigger1 = Pos Y >= -30 && Alive && CanRecover
Trigger1 = Command = "recovery"
Value = 5200

[State 825, 4]
type = SelfState
trigger1 = time > 40
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100

;===========<AIR THROW ATTEMPT>==========
[StateDef 850]
type = A
physics = N
moveType = A
anim = 850
ctrl = 0
sprPriority = 1
powerAdd = 18 * !(var(20) || var(28))

[State 850, Tech Hit Reset]
type = VarSet
trigger1 = 1
var(19) = 0

[State 850, Tech Hit]
type = VarSet
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType = A
trigger1 = (EnemyNear, StateNo = [0,999]) && (EnemyNear, StateNo != [100,119]) && (EnemyNear, StateNo != [200,799])
var(19) = 7

[State 850, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 850, HitDef: PP Throw]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 1
trigger1 = !var(38)
attr = A,NT
hitFlag = AF
priority = 1,Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = 860

[State 850, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 4
value = 5000,0
channel = 0

[State 850, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 1

[State 850, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 850, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 850, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<KUUCHUU JIGOKU GURUMA>==========
[StateDef 860]
type = S
movetype = A
physics = N
anim = 860
ctrl = 0
sprPriority = 1

[State 860, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 51
ctrl = 1

[State 860, Throw Escape]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 892

[State 860, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 860, Turn]
type = Turn
triggerAll = !Time
trigger1 = !AILevel && command = "holdback"
trigger2 = AILevel && BackEdgeDist < FrontEdgeDist

[State 860, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 865

[State 860, TargetFacing]
type = TargetFacing
trigger1 = Time <= 1
value = -1

[State 860, SprPriority]
type = SprPriority
trigger1 = animelem = 1
value = 1

[State 860, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 0,0

[State 860, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 40,0
Channel = 1

[State 860, PlaySnd]
type = PlaySnd
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 810,0
Channel = 0

[State 860, bg]
type = EnvShake
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
time = 10
ampl = 5
freq = 100

[State 860, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 860, VelSet]
type = VelSet
trigger1 = time >= 4
x = 0.5
y = 2

[State 860, VelSet]
type = VelSet
trigger1 = time >= 8
y = 4

[State 860, VelSet]
type = VelSet
trigger1 = time >= 12
y = 6

[State 860, VelSet]
type = VelSet
trigger1 = time >= 16
y = 8

[State 860, VelSet]
type = VelSet
trigger1 = time >= 20
y = 10

[State 860, VelSet]
type = VelSet
trigger1 = time >= 24
y = 12

[State 860,2]
type = changestate
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 861
ctrl = 0

;Landing
[StateDef 861]
type = S
movetype = A
physics = N
ctrl = 0
anim = 861
velSet = 0,0
sprPriority = 1

[State 861, Impact Dust]
type = Helper
trigger1 = animelem = 1
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
facing = -1
ownPal = 1

[State 861, Hit Spark]
type = Helper
trigger1 = animelem = 1
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = ceil(0 * const(size.xScale)), ceil(-20 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 861, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 2,5
Channel = 1

[State 861, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 820,2
Channel = 0

[State 861, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 861, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 0,0

[State 861, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 861, Damage]
type = TargetLifeAdd
trigger1 = time = 4
value = floor(ifElse(200 * fvar(11) < 7, -7, -200 * fvar(11)))
kill = 1

[State 801,2]
type = changestate
trigger1 = time = 26
value = 862
ctrl = 0

;Finish
[Statedef 862]
type = A
movetype = I
physics = N
ctrl = 0
anim = 862

[State 862, VelSet]
type = VelSet
trigger1 = time >= 0
x = -3
y = -8

[State 862, VelSet]
type = VelSet
trigger1 = time >= 4
y = -6

[State 862, VelSet]
type = VelSet
trigger1 = time >= 8
y = -4

[State 862, VelSet]
type = VelSet
trigger1 = time >= 12
y = -2

[State 862, VelSet]
type = VelSet
trigger1 = time >= 16
y = 0

[State 862, VelSet]
type = VelSet
trigger1 = time >= 20
y = 2

[State 862, VelSet]
type = VelSet
trigger1 = time >= 24
y = 4

[State 862, VelSet]
type = VelSet
trigger1 = time >= 28
y = 6

[State 862, VelSet]
type = VelSet
trigger1 = time >= 32
y = 8

[State 862, VelSet]
type = VelSet
trigger1 = time >= 36
y = 10

[State 862, VelSet]
type = VelSet
trigger1 = time >= 40
y = 12

[State 862, VelSet]
type = VelSet
trigger1 = time >= 44
y = 14

[State 862,2]
type = velset
trigger1 = time >= 20
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
x = 0

[State 862,2]
type = changestate
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 0
ctrl = 1

;===========<KUUCHUU JIGOKU GURUMA (TARGET)>==========
;In Air
[StateDef 865]
type = S
movetype = A
physics = N

[State 865, Turn]
type = Turn
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 865, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 865

[State 865, SprPriority]
type = SprPriority
trigger1 = animelem = 1
value = 0

[State 865, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 865, VelSet]
type = VelSet
trigger1 = time >= 4
x = -0.5
y = 2

[State 865, VelSet]
type = VelSet
trigger1 = time >= 8
y = 4

[State 865, VelSet]
type = VelSet
trigger1 = time >= 12
y = 6

[State 865, VelSet]
type = VelSet
trigger1 = time >= 16
y = 8

[State 865, VelSet]
type = VelSet
trigger1 = time >= 20
y = 10

[State 865, VelSet]
type = VelSet
trigger1 = time >= 24
y = 12

[State 865,2]
type = changestate
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 866
ctrl = 0

;Player 2
[Statedef 866]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0

[State 866, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 866

[State 866, SprPriority]
type = SprPriority
trigger1 = animelem = 1
value = 2

[State 866, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 866, LifeAdd]
type = LifeAdd
trigger1 = time=0
value = -100

[State 866, VelSet]
type = VelSet
trigger1 = time >= 18
y = -4
x = -8

[State 866, VelSet]
type = VelSet
trigger1 = time >= 22
y = 0
x = -4

[State 866, VelSet]
type = VelSet
trigger1 = time >= 26
y = 4

[State 866,2]
type = selfstate
trigger1 = time >= 20
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5110
ctrl = 0

;===========<THROW ESCAPED>==========
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
value = 5000,2
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



;===========<THROW ESCAPE MIDAIR>==========
[StateDef 892]
type = A
physics = N
moveType = I
anim = 892
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 892, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget
pos = 48, 0

[State 892, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 897

[State 892, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 892, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 892, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 892, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 892, PosFreeze]
type = PosFreeze
trigger1 = Time < 18
value = 1

[State 892, VelSet]
type = VelSet
trigger1 = Time = 18
x = -2
y = -4

[State 892, VelAdd]
type = VelAdd
trigger1 = Time > 18
y = 0.5

[State 892, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5000,2
channel = 0

[State 892, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 760,0

[State 892, Throw Escape FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8000
ID = 8000
name = "Spark"
posType = P1
pos = 24,-64
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

[State 892, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;Target Escape
[StateDef 897]
type = A
physics = N
moveType = I
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 897, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 152

[State 897, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 18
value = 142

[State 897, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 897, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 897, PosFreeze]
type = PosFreeze
trigger1 = Time < 18
value = 1

[State 897, VelSet]
type = VelSet
trigger1 = Time = 18
x = -2
y = -4

[State 897, VelAdd]
type = VelAdd
trigger1 = Time >= 18
y = 0.5

[State 897, SelfState]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52
