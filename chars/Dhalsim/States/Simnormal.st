;DRILL ZUTSUKI
[StateDef 629]
type = A
physics = N
moveType = A
anim = 629
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)
velSet = vel X, vel Y

[State 629, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State 629, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 629, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 629, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 5.90625
y = 2.5

[State 629, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
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
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
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
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 629, End]
type = ChangeState
trigger1 = Pos Y + Vel Y > 0
value = 52

;DRILL ZUTSUKI BACK
[StateDef 6291]
type = A
physics = N
moveType = A
anim = 629
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)
velSet = vel X, vel Y

[State 6291, Flip]
type = turn
trigger1 = !time

[State 6291, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State 6291, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 6291, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 6291, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 5.90625
y = 2.5

[State 6291, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
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
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
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
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 6291, End]
type = ChangeState
trigger1 = Pos Y + Vel Y > 0
value = 52

;JUMPING FAR LIGHT KICK
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
trigger1 = AnimElem = 4

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
guard.hittime = (12 + 2 * var(9)) - 6
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
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 152), var(36) := -32
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



;JUMPING CLOSE LIGHT KICK
[StateDef 635]
type = A
physics = N
moveType = A
anim = 635
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 635, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 635, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 635, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
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
guard.hittime = (12 + 2 * var(9)) - 6
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
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 108), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 635, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 635, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 635, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;DRILL KICK LIGHT
[StateDef 639]
type = A
physics = N
moveType = A
anim = 639
ctrl = 0
sprPriority = 1
powerAdd = 0
velSet = vel X, vel Y

[State 359, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State 639, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 639, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 639, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 5.90625
y = 2.97083333

[State 639, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 6, 12)
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
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
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
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -42
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 639, End]
type = ChangeState
trigger1 = Pos Y + Vel Y > 0
value = 52

;DRILL KICK LIGHT BACK
[StateDef 6391]
type = A
physics = N
moveType = A
anim = 639
ctrl = 0
sprPriority = 1
powerAdd = 0
velSet = vel X, vel Y

[State 6391, Flip]
type = turn
trigger1 = !time

[State 359, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State 6391, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 6391, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 6391, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 5.90625
y = 2.97083333

[State 6391, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 6, 12)
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
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
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
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -42
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 6391, End]
type = ChangeState
trigger1 = Pos Y + Vel Y > 0
value = 52

;JUMPING FAR MEDIUM KICK
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
trigger1 = AnimElem = 4

forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
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
guard.hittime = (12 + 3 * var(9)) - 6
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
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 152), var(36) := -32
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 640, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 640, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 640, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;JUMPING CLOSE MEDIUM KICK
[StateDef 645]
type = A
physics = N
moveType = A
anim = 645
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 645, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 645, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 645, Hit]
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
guard.hittime = (12 + 3 * var(9)) - 6
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
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 108), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 645, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 645, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 645, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;DRILL KICK MEDIUM
[StateDef 649]
type = A
physics = N
moveType = A
anim = 649
ctrl = 0
sprPriority = 1
powerAdd = 0
velSet = vel X, vel Y

[State 649, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State 649, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 649, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 649, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 3.65625
y = 4.40833332

[State 649, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
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
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -24
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 649, End]
type = ChangeState
trigger1 = Pos Y + Vel Y > 0
value = 52

;DRILL KICK MEDIUM BACK
[StateDef 6491]
type = A
physics = N
moveType = A
anim = 649
ctrl = 0
sprPriority = 1
powerAdd = 0
velSet = vel X, vel Y

[State 6491, Flip]
type = turn
trigger1 = !time

[State 6491, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State 6491, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 6491, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 6491, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 3.65625
y = 4.40833332

[State 6491, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
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
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -24
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 6491, End]
type = ChangeState
trigger1 = Pos Y + Vel Y > 0
value = 52

;JUMPING FAR HEAVY KICK
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
trigger1 = AnimElem = 6

forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
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
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
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
sparkXY = -10 + 0 * (var(35) := 192), var(36) := -90
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



;JUMPING CLOSE HEAVY KICK
[StateDef 655]
type = A
physics = N
moveType = A
anim = 655
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 655, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 655, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 655, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
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
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
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
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -82
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 655, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 655, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 655, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;DRILL KICK HEAVY
[StateDef 659]
type = A
physics = N
moveType = A
anim = 659
ctrl = 0
sprPriority = 1
powerAdd = 0
velSet = vel X, vel Y

[State 659, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State 659, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 659, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 659, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 1.40625
y = 5.84583332

[State 659, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
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
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
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
sparkXY = -10 + 0 * (var(35) := 31), var(36) := -8
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 659, End]
type = ChangeState
trigger1 = Pos Y + Vel Y > 0
value = 52

;DRILL KICK HEAVY BACK
[StateDef 6591]
type = A
physics = N
moveType = A
anim = 659
ctrl = 0
sprPriority = 1
powerAdd = 0
velSet = vel X, vel Y

[State 6591, Flip]
type = turn
trigger1 = !time

[State 6591, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State 6591, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 6591, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 6591, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 1.40625
y = 5.84583332

[State 6591, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
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
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
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
sparkXY = -10 + 0 * (var(35) := 31), var(36) := -8
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 6591, End]
type = ChangeState
trigger1 = Pos Y + Vel Y > 0
value = 52