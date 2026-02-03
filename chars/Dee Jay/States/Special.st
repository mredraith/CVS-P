; _________________________________________
;| Dee Jay by varo_hades                   |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;
;SPECIAL MOVES
;

;AIR SLASHER
[StateDef 1000]
type = S
physics = S
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
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,0
channel = 0

[State 1000, Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,1
channel = 1

[State 1000, 0]
type = Width
trigger1 = Time > 0
trigger1 = Time < 5
value = 20,0

[State 1000, 0]
type = Width
trigger1 = Time > 4
trigger1 = Time < 20
value = 30,0

[State 1000, Air Slasher Startup FX]
type = Explod
trigger1 = Time = 0
anim = 1004
sprPriority = 3
posType = P1
pos = 0,0
scale = 1,1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1000, Projectile]
type = Helper
trigger1 = AnimElemTime(5) = 1
helperType = Normal
stateNo = 1005
ID = 1005
name = "Air Slasher Projectile"
posType = P1
pos = ceil(70 * const(size.xScale)), ceil(-70 * const(size.yScale))
size.xScale = 0.8
size.yScale = 0.8
ownPal = 1

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;EX AIR SLASHER>=
[StateDef 1030]
type = S
physics = S
moveType = A
anim = 1030
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

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
var(25) = 24

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,0
channel = 0

[State 1030, Effect]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 10
value = 1000,1
channel = 3

[State 1000, 0]
type = Width
trigger1 = Time > 0
trigger1 = Time < 5
value = 20,0

[State 1000, 0]
type = Width
trigger1 = Time > 4
trigger1 = Time < 20
value = 30,0

[State 1000, Air Slasher Startup FX]
type = Explod
trigger1 = Time = 0
anim = 1004
sprPriority = 3
posType = P1
pos = 0,0
scale = 1,1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1000, Projectile]
type = Helper
trigger1 = AnimElemTime(5) = 1
helperType = Normal
stateNo = 1035
ID = 1005
name = "Air Slasher Projectile"
posType = P1
pos = ceil(70 * const(size.xScale)), ceil(-70 * const(size.yScale))
size.xScale = 0.8
size.yScale = 0.8
ownPal = 1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElemTime(10) = 1
helperType = Normal
stateNo = 1035
ID = 1005
name = "Air Slasher Projectile"
posType = P1
pos = ceil(70 * const(size.xScale)), ceil(-70 * const(size.yScale))
size.xScale = 0.8
size.yScale = 0.8
ownPal = 1

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;MACHINE GUN UPPER>=
[StateDef 1100]
type = S
physics = S
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1100, ifElse(var(10) = 1, 1100, 1100))

[State 1100, 0]
type = Width
trigger1 = Time > 0
value = 20,0

[State 1100, 0]
type = VarSet
triggerAll = var(10) = 0
trigger1 = Time = 60
v = 43
value = 1

[State 1100, 0]
type = VarSet
triggerAll = var(10) = 1
trigger1 = Time = 90
v = 43
value = 1

[State 1100, 0]
type = VarSet
triggerAll = var(10) = 2
trigger1 = Time = 120
v = 43
value = 1

[State 1100, 0]
type = VarAdd
triggerAll = Time > 0
trigger1 = TimeMod = 2,0
v = 43
value = -1

[State 1100, 0]
type = VarSet
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
v = 43
value = 5

[State 1100, 1]
type = PlaySnd
trigger1 = Anim = 1100
trigger1 = AnimElem = 3
trigger2 = Anim = 1102
trigger2 = AnimElem = 2
trigger3 = Anim = 1104
trigger3 = AnimElem = 2
value = 1100,0
channel = 0

[State 1100, Woosh]
type = PlaySnd
trigger1 = Anim = 1100
trigger1 = AnimElem = 3
trigger2 = Anim = 1102
trigger2 = AnimElem = 2
trigger3 = Anim = 1104
trigger3 = AnimElem = 2
value = 1,2
channel = 1

[State 1100, 2]
type = ChangeAnim
trigger1 = Time = 20
value = 1102

[State 1100, 2]
type = ChangeAnim
trigger1 = Time = 40
value = 1104

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
triggerAll = var(10) = 0
trigger1 = Anim = 1100
trigger1 = TimeMod = 6,0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 10 < 7, 7, fvar(11) * 10)), 6
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 0, ifElse(var(20), 6, 12)
guard.pauseTime = 0, ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -0.16, -0.36), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.36, -4.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -0.16, -0.36), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
triggerAll = var(10) = 0
trigger1 = Anim = 1102
trigger1 = TimeMod = 6,0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 10 < 7, 7, fvar(11) * 10)), 6
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 0, ifElse(var(20), 6, 12)
guard.pauseTime = 0, ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -0.16, -0.36), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.36, -4.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -0.16, -0.36), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 143), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
triggerAll = var(10) = 0
trigger1 = Anim = 1104
trigger1 = TimeMod = 6,0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 10 < 7, 7, fvar(11) * 10)), 6
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 0, ifElse(var(20), 6, 12)
guard.pauseTime = 0, ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -0.16, -0.36), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.36, -4.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -0.16, -0.36), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 120), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
triggerAll = var(10) = 1
trigger1 = Anim = 1100
trigger1 = TimeMod = 8,0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 12 < 7, 7, fvar(11) * 12)), 6
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 0, ifElse(var(20), 6, 12)
guard.pauseTime = 0, ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -0.16, -0.36), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.36, -4.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -0.16, -0.36), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
triggerAll = var(10) = 1
trigger1 = Anim = 1102
trigger1 = TimeMod = 8,0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 12 < 7, 7, fvar(11) * 12)), 6
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 0, ifElse(var(20), 6, 12)
guard.pauseTime = 0, ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -0.16, -0.36), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.36, -4.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -0.16, -0.36), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 143), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
triggerAll = var(10) = 1
trigger1 = Anim = 1104
trigger1 = TimeMod = 8,0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 12 < 7, 7, fvar(11) * 12)), 6
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 0, ifElse(var(20), 6, 12)
guard.pauseTime = 0, ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -0.16, -0.36), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.36, -4.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -0.16, -0.36), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 120), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
triggerAll = var(10) = 2
trigger1 = Anim = 1100
trigger1 = TimeMod = 10,0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 6
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 0, ifElse(var(20), 6, 12)
guard.pauseTime = 0, ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -0.16, -0.36), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.36, -4.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -0.16, -0.36), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
triggerAll = var(10) = 2
trigger1 = Anim = 1102
trigger1 = TimeMod = 10,0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 6
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 0, ifElse(var(20), 6, 12)
guard.pauseTime = 0, ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -0.16, -0.36), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.36, -4.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -0.16, -0.36), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 143), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
triggerAll = var(10) = 2
trigger1 = Anim = 1104
trigger1 = TimeMod = 10,0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 6
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 0, ifElse(var(20), 6, 12)
guard.pauseTime = 0, ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -0.16, -0.36), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.36, -4.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -0.16, -0.36), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 120), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, 5]
type = ChangeState
trigger1 = Var(43) = 0
trigger2 = Time = 60
value = 1103

;Machine Gun Uppercut - Done
[Statedef 1103]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0

[State 1103, 0]
type = Width
trigger1 = Time > 0
value = 20,0

[State 1103, 2]
type = ChangeAnim
trigger1 = Anim = 1100
value = 1101

[State 1103, 2]
type = ChangeAnim
trigger1 = Anim = 1102
value = 1103

[State 1103, 2]
type = ChangeAnim
trigger1 = Anim = 1104
value = 1105

[State 1100, HitDef]
type = HitDef
triggerAll = !var(46)
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = Anim = 1101
trigger2 = Anim = 1103
trigger3 = Anim = 1105
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 18 < 7, 7, fvar(11) * 18)), 6
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 0, ifElse(var(20), 6, 12)
guard.pauseTime = 0, ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.36, -4), -8
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.36, -4.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1103, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;EX MACHINE GUN UPPER>=
[StateDef 1130]
type = S
physics = S
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
var(25) = 41

[State 1130, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1130, 1]
type = PlaySnd
trigger1 = Anim = 1130
trigger2 = AnimElem = 2
value = 1100,0
channel = 0

[State 1130, Woosh]
type = PlaySnd
trigger1 = Anim = 1130
trigger2 = AnimElem = 2
trigger2 = AnimElem = 3
trigger2 = AnimElem = 4
trigger2 = AnimElem = 6
trigger2 = AnimElem = 7
trigger2 = AnimElem = 8
trigger2 = AnimElem = 10
trigger2 = AnimElem = 11
trigger2 = AnimElem = 12
trigger2 = AnimElem = 13
value = 1,2
channel = 3

[State 1130, posadd]
type = veladd
trigger1 = time = 0
x = 4

[State 1130, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 10 < 7, 7, fvar(11) * 10)), 6
getPower = 0,0
givePower = 36, 36
pauseTime = 2, ifElse(var(20), 6, 12)
guard.pauseTime = 2, ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = 0, -8
air.cornerPush.velOff = 0
yAccel = .6
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 10 < 7, 7, fvar(11) * 10)), 6
getPower = 0,0
givePower = 36, 36
pauseTime = 2, ifElse(var(20), 6, 12)
guard.pauseTime = 2, ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = 0, -8
air.cornerPush.velOff = 0
yAccel = .6
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 10 < 7, 7, fvar(11) * 10)), 6
getPower = 0,0
givePower = 36, 36
pauseTime = 2, ifElse(var(20), 6, 12)
guard.pauseTime = 2, ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = 0, -8
air.cornerPush.velOff = 0
yAccel = .6
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 120), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 13 || AnimElem = 14
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 10 < 7, 7, fvar(11) * 10)), 6
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, ifElse(var(20), 6, 12)
guard.pauseTime = 2, ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = 0, -8
air.cornerPush.velOff = 0
yAccel = .6
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 15
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 10 < 7, 7, fvar(11) * 10)), 6
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, ifElse(var(20), 6, 12)
guard.pauseTime = 2, ifElse(var(20), 6, 12)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, -8
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;DOUBLE ROLLING SOBAT>=
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
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1220, ifElse(var(10) = 1, 1210, 1200))

[State 1200, 0]
type = Width
trigger1 = 1
value = 20,0

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1200, 1]
triggerAll = var(10) = 0
type = VelAdd
trigger1 = 1
y = .8

[State 1200, 1]
triggerAll = var(10) = 1
type = VelAdd
trigger1 = 1
y = .7

[State 1200, 1]
triggerAll = var(10) = 2
type = VelAdd
trigger1 = 1
y = .6

[State 1200, 0]
type = VelSet
trigger1 = var(10) = 0
trigger1 = Time = 0
x = 3
y = -3

[State 1200, 0]
type = VelSet
trigger1 = var(10) = 1
trigger1 = Time = 0
x = 5
y = -3

[State 1200, 0]
type = VelSet
trigger1 = var(10) = 2
trigger1 = Time = 0
x = 7
y = -3

[State 1200, 2]
type = ChangeState
triggerAll = var(10) = 0
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1201

[State 1200, 2]
type = ChangeState
triggerAll = var(10) = 1
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1211

[State 1200, 2]
type = ChangeState
triggerAll = var(10) = 2
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1221

;Low
[Statedef 1201]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1201

[State 1201, 0]
type = Width
trigger1 = Time < 20
value = 20,0

[State 1201, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1201, 1]
type = PlaySnd
trigger1 = Anim = 1201
trigger1 = AnimElem = 2
value = 195,2
channel = 0

[State 1201, 1]
type = PlaySnd
trigger1 = Anim = 1201
trigger1 = AnimElem = 2
value = 1,5

[State 1201, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 88 < 7, 7, fvar(11) * 88)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 10), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.36, -4), -8
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.36, -6.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1201, 2]
type = ChangeAnim
trigger1 = Anim = 1201
trigger1 = AnimTime = 0
value = 5

[State 1201, 3]
type = ChangeState
trigger1 = Anim = 5
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Medium
[Statedef 1211]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1202

[State 1211, 0]
type = Width
trigger1 = Time < 20
value = 20,0

[State 1211, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1211, 1]
type = PlaySnd
trigger1 = Anim = 1202
trigger1 = AnimElem = 2
value = 195,2
channel = 0

[State 1211, 1]
type = PlaySnd
trigger1 = Anim = 1202
trigger1 = AnimElem = 2
value = 1,5

[State 1211, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.36, -4.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.36, -6.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1211, 2]
type = ChangeState
trigger1 = Anim = 1202
trigger1 = AnimElem = 5
value = 1212

;Double Rolling Sobat - Second Hop
[Statedef 1212]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 1212, 0]
type = VelSet
trigger1 = var(10) >= 1
trigger1 = Time = 0
x = 3
y = -3

[State 1212, 0]
type = Width
trigger1 = 1
value = 20,0

[State 1212, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1212, 1]
type = VelAdd
trigger1 = 1
y = .5

[State 1212, 2]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1213

;Finish
[Statedef 1213]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1203

[State 1213, 0]
type = Width
trigger1 = Time < 20
value = 20,0

[State 52, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1213, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,5

[State 1213, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 1
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 10), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.36, -4), -8
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.36, -6.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1213, 2]
type = ChangeState
trigger1 = Anim = 1203
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Hard
[Statedef 1221]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1202

[State 1221, 0]
type = Width
trigger1 = Time < 20
value = 20,0

[State 1221, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1221, 1]
type = PlaySnd
trigger1 = Anim = 1202
trigger1 = AnimElem = 2
value = 195,2
channel = 0

[State 1221, 1]
type = PlaySnd
trigger1 = Anim = 1202
trigger1 = AnimElem = 2
value = 1,5

[State 1221, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.36, -4.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.36, -6.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1221, 2]
type = ChangeState
trigger1 = Anim = 1202
trigger1 = AnimElem = 5
value = 1212

;EX DOUBLE ROLLING SOBAT>=
[StateDef 1230]
type = S
physics = N
moveType = A
anim = 1220
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

[State 1230, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1230, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 71

[State 1230, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 8
time = 1
value = SCA

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1230, 0]
type = Width
trigger1 = 1
value = 20,0

[State 1230, Dust Helper]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1200, 1]
type = VelAdd
trigger1 = 1
y = .9

[State 1200, 0]
type = VelSet
trigger1 = Time = 0
x = 12
y = -3

[State 1200, 2]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1231

;Start
[Statedef 1231]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1202

[State 1231, Helper]
type = Helper
trigger1 = AnimElem = 3 && NumHelper(1250) = 0
helpertype = Normal
name = "Sobat"
ID = 1250
stateno = 1250
pos = 0,0
postype = P1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .5
size.yscale = .25

[State 1231, 0]
type = Width
trigger1 = Time < 20
value = 20,0

[State 1231, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1231, 1]
type = PlaySnd
trigger1 = Anim = 1202
trigger1 = AnimElem = 2
value = 195,2
channel = 0

[State 1231, 1]
type = PlaySnd
trigger1 = Anim = 1202
trigger1 = AnimElem = 2
value = 1,5
channel = 3

[State 1231, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1231, 2]
type = ChangeState
trigger1 = Anim = 1202
trigger1 = AnimElem = 5
value = 1232

;EX Double Rolling Sobat - Second Hop
[Statedef 1232]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 1232, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1232, 0]
type = VelSet
trigger1 = Time = 0
x = 3
y = -3

[State 1232, 0]
type = Width
trigger1 = 1
value = 20,0

[State 1232, 1]
type = VelAdd
trigger1 = 1
y = .8

[State 1232, 2]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1233

;Finish
[Statedef 1233]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 1203

[State 1233, Helper]
type = Helper
trigger1 = AnimElem = 1 && NumHelper(1252) = 0
helpertype = Normal
name = "Sobat2"
ID = 1252
stateno = 1252
pos = 0,0
postype = P1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .5
size.yscale = .3

[State 1233, 0]
type = Width
trigger1 = Time < 20
value = 20,0

[State 52, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1233, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,5

[State 1233, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 1
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 10), ifElse(var(20), 6, 12)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, -12
ground.cornerPush.velOff = 0
guard.velocity = -6.52
guard.cornerPush.velOff = 0
air.velocity = -4, -12
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1233, 2]
type = ChangeState
trigger1 = Anim = 1203
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;HIT BY EX DOUBLE ROLLING SOBAT>=
;--- Hit Pause ---
[Statedef 1235]
type = A
movetype = H
physics = N
velset = 0,0

[State 1235, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 1235, End]
type = ChangeState
trigger1 = HitShakeOver
value = 1236

;--- Falling ---
[Statedef 1236]
type = A
movetype = H
physics = N

[State 1236, Vel]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 1236, Accel]
type = VelAdd
trigger1 = 1
y = gethitvar(yaccel)

[State 1236, ScreenBound]
type = null;ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1236, Push]
type = PlayerPush
trigger1 = 1
value = 0

[State 1236, Anim]
type = ChangeAnim
trigger1 = !Time
value = 5030

[State 1236, bounce]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10 || FrontEdgeBodyDist <= 10
value = 1237

[State 1236, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;--- Hitting Wall ---
[Statedef 1237]
type = A
movetype = H
physics = N

[State 1237, turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 1237, Pos]
type = PosSet
trigger1 = 1
x = -160 * Facing

[State 1237, Pos]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1237, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = 6
ignorehitpause = 1

[State 1237, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1237, Push]
type = PlayerPush
trigger1 = 1
value = 1

[State 1237, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5000

[State 1237, Snd]
type = PlaySnd
trigger1 = !Time
value = F8,0

[State 1237, End]
type = ChangeState
trigger1 = Time >= 4
value = 1238

;--- Falling ---
[Statedef 1238]
type = A
movetype = H
physics = N

[State 1238, Turn]
type = Turn
trigger1 = !Time

[State 1238, Accel]
type = VelAdd
trigger1 = 1
y = 0.5

[State 1238, Vel]
type = VelSet
trigger1 = !Time
x = -4
y = -9.5

[State 1238, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifelse(SelfAnimExist(5051), 5051, 5030)

[State 1238, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1238, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051
value = 5061

[State 1238, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 1238, Push]
type = PlayerPush
trigger1 = 1
value = 0

[State 1238, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;JACKKNIFE MAXIMUM>=
[StateDef 1300]
type = S
physics = S
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = PrevStateNo = 751
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 1, ifElse((command = "b" || command = "rlsb"), 1, 1))

[State 1300, Button Detect]
type = VarSet
trigger1 = PrevStateNo != 751
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1300, 5]
type = ChangeState
trigger1 = var(10) = 0
trigger1 = AnimElem = 4
value = 1301

[State 1300, 5]
type = ChangeState
trigger1 = var(10) = 1
trigger1 = AnimElem = 4
value = 1311

[State 1300, 5]
type = ChangeState
trigger1 = var(10) = 2
trigger1 = AnimElem = 4
value = 1321

;Low JackKnife Maximum - Air
[Statedef 1301]
type = A
movetype = A
physics = N
ctrl = 0
velset = 2,-5

[State 1301, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1301, 1]
type = VelAdd
trigger1 = 1
y = .4

[State 1301, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4,4
channel = 0

[State 1301, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5

[State 1301, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 88 < 7, 7, fvar(11) * 88)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.36, -4), -8
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1301, 4]
type = ChangeAnim
trigger1 = AnimElem = 6
value = 1302

[State 1301, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y > 0
value = 1302

;Medium JackKnife Maximum - Air
[Statedef 1311]
type = A
movetype = A
physics = N
ctrl = 0
velset = 3,-6

[State 1311, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1311, 1]
type = VelAdd
trigger1 = 1
y = .4

[State 1311, 2]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
value = 4,4
channel = 0

[State 1311, 2]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
value = 1,5

[State 1311, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -1.36, -2.5), -10
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -1.36, -2.5), -10
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1311, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 7
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = ifElse(var(20), -1.36, -2.5), -10.5
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -1.36, -2.5), -10.5
air.cornerPush.velOff = 0
airguard.velocity = -5, -1.5
airGuard.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1311, 4]
type = ChangeAnim
trigger1 = AnimElem = 10
value = 1302

[State 1311, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y > 0
value = 1302

;Strong JackKnife Maximum - Air
[Statedef 1321]
type = A
movetype = A
physics = N
ctrl = 0
velset = 4,-8

[State 1321, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1321, 1]
type = VelAdd
trigger1 = 1
y = .4

[State 1321, 2]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
value = 4,4
channel = 0

[State 1321, 2]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
value = 1,5

[State 1321, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -1.36, -2.5), -10
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -1.36, -2.5), -10
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1321, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 7
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -1.36, -2.5), -8
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -1.36, -2.5), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1321, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 11
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = ifElse(var(20), -1.36, -2.5), -8
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -1.36, -2.5), -8
air.cornerPush.velOff = 0
airguard.velocity = -5, -1.5
airGuard.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1321, 4]
type = ChangeAnim
trigger1 = Time = 29
value = 1302

[State 1321, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y > 0
value = 1302

;Landing
[Statedef 1302]
type = S
movetype = A
physics = S
anim = 1300
ctrl = 0
velset = 0,0

[State 1302, 1]
type = PosSet
trigger1 = 1
y = 0

[State 52, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1302, 2]
type = ChangeState
trigger1 = AnimElem = 2
value = 0
ctrl = 1

;EX JACKKNIFE MAXIMUM>=
[StateDef 1330]
type = S
physics = S
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

[State 1330, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1330, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1330, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 71

[State 1330, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 8
time = 1
value = SCA

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1330, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1331

;EX JackKnife Maximum - Air
[Statedef 1331]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1331
sprpriority = 1

[State 1331, Dust Helper]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1331, 2]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 19
value = 4,4
channel = 0

[State 1331, 2]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 19
value = 1,5
channel = 3

[State 1331, velset]
type = VelSet
trigger1 = Time = 0
x = 3.5
y = -9

[State 1331, velset]
type = VelSet
trigger1 = Time = 5
x = 0
y = 0

[State 1331, velset]
type = VelSet
trigger1 = Time = 50
x = .5
y = 5

[State 1331, Helper]
type = Helper
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
trigger3 = AnimElem = 8
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 19
helpertype = Normal
name = "Slash1"
ID = 1258
stateno = 1258
pos = 0,0
postype = P1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
size.xscale = .5
size.yscale = .25

[State 1331, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 1
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 4,5
guard.pauseTime = 4,5
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, -8
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = 0, -4
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1331, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 4,5
guard.pauseTime = 4,5
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, -8
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = 0, -4
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1331, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 4,5
guard.pauseTime = 4,5
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, -8
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = 0, -4
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1331, HitDef 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 12
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 18 < 7, 7, fvar(11) * 18)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 4,5
guard.pauseTime = 4,5
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, -8
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = 0, -4
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1331, HitDef 5]
type = HitDef
trigger1 = !var(16) && (var(15) < 6 || var(20))
trigger1 = AnimElem = 15
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 18 < 7, 7, fvar(11) * 18)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 4,5
guard.pauseTime = 4,5
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, -8
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = 0, -4
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1331, HitDef 6]
type = HitDef
trigger1 = !var(16) && (var(15) < 7 || var(20))
trigger1 = AnimElem = 19
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 18 < 7, 7, fvar(11) * 18)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 4,9
guard.pauseTime = 4,9
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3, -8
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -3, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1331, 3]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -5
value = 1302
ctrl = 0

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

[State 2900, 0]
type = Width
trigger1 = Time > 0
trigger1 = Time < 5
value = 20,0

[State 2900, 0]
type = Width
trigger1 = Time > 4
trigger1 = Time < 20
value = 30,0

[State 2900, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,2
channel = 0

[State 2900, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = Time = 0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getpower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, -8
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

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
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,4
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
attr = C, NA
hitFlag = MA
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getpower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 17 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2, -4
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -2, -4
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 116), var(36) := -20
palFX.time = 12*var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
