; _________________________________________
;| Decapre by varo_hades |
; 
;
;SPECIAL MOVES==
;

;PSYCHO STING>=
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

[State 1000, Width]
type = Width
trigger1 = 1
edge = 2,0
player = 10,0

[State 1000, 1]
type = ChangeAnim
Trigger1 = !Time
value = ifelse(!var(10), 1000, ifelse(var(10) = 1, 1010, 1020))

[State 1000, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 1000, Position]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
x = 6

[State 1000, Position]
type = PosAdd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 9
trigger3 = AnimElem = 10
x = -6

[State 1000, 1]
type = statetypeset
trigger1 = AnimElem = 7
movetype = I

[State 1000, 1]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0 && var(10) = 0
value = ,NA
ignorehitpause = 1

[State 1000, 1]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0 && var(10) = 1
value = ,AP
ignorehitpause = 1

[State 1000, 1]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0 && var(10) = 2
value = ,AT
ignorehitpause = 1

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 0

[State 1000, Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3, 2
channel = 1

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 3+(random%2)
channel = 0

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000, 2

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1000, 1

[State 1000, Cloth]
type = Helper
trigger1 = AnimElem = 4
stateno = 1025
postype = p1
pos = 0,0
name = "dagger"
ownpal = 1
size.xscale = .625
size.yscale = .625

[State 1000, Flames]
type = explod
trigger1 = animelemtime(4) >= 0 && Time%3 = 0
anim = 8150
ID = 8150
sprpriority = 3
postype = p1
pos = 35,-30
random = 48,48
vel = -(random/250.0), (random/250.0)
facing = ifelse(random<500, -1, 1)
vfacing = ifelse(random<500, -1, 1)
scale =.5,.5
ownpal = 1

[State 1000, HitDef 1]
type = HitDef
;trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10), 119, 105)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10), 119, 105)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2, -11
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -11
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -90
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, HitDef 1]
type = HitDef
;trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6 && !MoveContact
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10), 119, 105)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10), 119, 105)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2, -11
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -11
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -90
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, Flame Particles]
type = Helper
trigger1 = AnimElemTime(2) > 0
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;EX PSYCHO STING>=
[StateDef 1030]
type = S
physics = S
moveType = A
anim = 1020
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
var(25) = 124

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1030, Width]
type = Width
trigger1 = 1
edge = 2,0
player = 10,0

[State 1030, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 1030, Position]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
x = 6

[State 1030, Position]
type = PosAdd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 9
trigger3 = AnimElem = 10
x = -6

[State 1030, 1]
type = statetypeset
trigger1 = AnimElem = 7
movetype = I

[State 1030, 1]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
value = ,AT
ignorehitpause = 1

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 0

[State 1030, Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3, 2
channel = 1

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 3+(random%2)
channel = 0

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000, 2

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1000, 1

[State 1030, Cloth]
type = Helper
trigger1 = AnimElem = 4
stateno = 1026
postype = p1
pos = 0,0
name = "dagger"
ownpal = 1
size.xscale = .625
size.yscale = .625

[State 1030, Flames]
type = explod
trigger1 = animelemtime(4) >= 0 && Time%3 = 0
anim = 8150
ID = 8150
sprpriority = 3
postype = p1
pos = 35,-30
random = 48,48
vel = -(random/250.0), (random/250.0)
facing = ifelse(random<500, -1, 1)
vfacing = ifelse(random<500, -1, 1)
scale =.5,.5
ownpal = 1

[State 1030, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2, -11
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -11
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -90
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1030, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2, -11
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -11
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -90
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1030, Flame Particles]
type = Helper
trigger1 = AnimElemTime(2) > 0
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;SPIRAL ARROW>=
[StateDef 1100]
type = A
physics = N
moveType = A
anim = 1150
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1170, ifElse(var(10) = 1, 1160, 1150))

[State 1100, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1100,0+(random%2)
channel = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3, 5
channel = 2

[State 1100, Velocity]
type = VelAdd
triggerall = AnimElemTime(3) > 0
trigger1 = AnimElemTime(6) < 0 && !var(10)
trigger2 = AnimElemTime(7) < 0 && var(10) = 1
trigger3 = AnimElemTime(8) < 0 && var(10) = 2
y = .5

[State 1100, Velocity]
type = Gravity
trigger1 = AnimElemTime(6) > 0 && !var(10)
trigger2 = AnimElemTime(7) > 0 && var(10) = 1
trigger3 = AnimElemTime(8) > 0 && var(10) = 2

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 3
x = 7+var(10)

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 64, ifElse(var(10), 58, 51)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 64, ifElse(var(10), 58, 51)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4, -5
air.cornerPush.velOff = 0
yAccel = 0.4
fall = 0
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 64, ifElse(var(10), 58, 51)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 64, ifElse(var(10), 58, 51)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4, -7
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4, -7
air.cornerPush.velOff = 0
yAccel = 0.4
fall = 1
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -21
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(3) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1105

;Land
[Statedef 1105]
type = S
physics = S
ctrl = 0
anim = 1155

[State 1105, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 1105, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1105, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1105, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1105, Velocity]
type = VelSet
trigger1 = AnimElem = 1
y = 0

[State 1105, Position]
type = VelMul
trigger1 = 1
x = .92

[State 1105, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = 0

[State 1105, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;EX SPIRAL ARROW>=
[StateDef 1130]
type = A
physics = N
moveType = A
anim = 1170
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1130, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

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
var(25) = 141

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-15 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1130, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 1130, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1100,0+(random%2)
channel = 0

[State 1130, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3, 5
channel = 2

[State 1130, Velocity]
type = VelAdd
triggerall = AnimElemTime(3) > 0
trigger1 = AnimElemTime(8) < 0
y = .5

[State 1130, Velocity]
type = Gravity
trigger1 = AnimElemTime(8) > 0

[State 1130, Velocity]
type = VelSet
trigger1 = AnimElem = 3
x = 7+var(10)

[State 1130, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 46 < 7, 7, fvar(11) * 46)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4, -5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 3
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 46 < 7, 7, fvar(11) * 46)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4, -7
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4, -7
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -21
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 46 < 7, 7, fvar(11) * 46)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4, -7
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4, -7
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -21
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(3) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1105

;RAPID DAGGER>=
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
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1200, Width]
type = Width
trigger1 = 1
edge = 20,0

[State 1200, 1]
type = ChangeAnim
Trigger1 = !Time
value = ifelse(!var(10), 1200, ifelse(var(10) = 1, 1210, 1220))

[State 1200, 1]
type = statetypeset
trigger1 = AnimElem = 22 && var(10) = 0
trigger2 = AnimElem = 28 && var(10) = 1
trigger3 = AnimElem = 34 && var(10) = 2
movetype = I

[State 1200, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200,0
channel = 0

[State 1200, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 0
channel = 2

[State 1200, Effect]
type = PlaySnd
trigger1 = var(10) = 0 && (AnimElem = 4 || AnimElem = 7 || AnimElem = 11)
trigger2 = var(10) = 1 && (AnimElem = 4 || AnimElem = 7 || AnimElem = 10 || AnimElem = 13 || AnimElem = 17)
trigger3 = var(10) = 2 && (AnimElem = 4 || AnimElem = 7 || AnimElem = 10 || AnimElem = 13 || AnimElem = 16 || AnimElem = 19 || AnimElem = 23)
value = 1200,1

[State 1200, Effect]
type = PlaySnd
trigger1 = var(10) = 0 && AnimElem = 21
trigger2 = var(10) = 1 && AnimElem = 27
trigger3 = var(10) = 2 && AnimElem = 33
value = 1200,2

[State 1200, Effect]
type = PlaySnd
trigger1 = var(10) = 0 && AnimElem = 25
trigger2 = var(10) = 1 && AnimElem = 31
trigger3 = var(10) = 2 && AnimElem = 37
value = 1000,1

[State 1200, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = 5

[State 1200, Velocity]
type = VelSet
trigger1 = AnimElem = 3
x = 3.6

[State 1200, Velocity]
type = VelSet
trigger1 = AnimElem = 21 && var(10) = 0
trigger2 = AnimElem = 27 && var(10) = 1
trigger3 = AnimElem = 33 && var(10) = 2
x = 0

[State 1200, Velocity]
type = VelMul
trigger1 = !var(10) && AnimElemTime(14) >= 0
trigger2 = var(10) = 1 && AnimElemTime(20) >= 0
trigger3 = var(10) = 2 && AnimElemTime(26) >= 0
x = .96

[State 1200, Helper]
type = Helper
trigger1 = AnimElem = 4
stateno = 7000
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 1200, Helper]
type = Helper
trigger1 = AnimElem = 7
stateno = 7001
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 1200, Helper]
type = Helper
trigger1 = AnimElem = 10 && !var(10) = 0
stateno = 7002
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 1200, Helper]
type = Helper
trigger1 = AnimElem = 13 && !var(10) = 0
stateno = 7003
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 1200, Helper]
type = Helper
trigger1 = AnimElem = 16 && var(10) = 2
stateno = 7004
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 1200, Helper]
type = Helper
trigger1 = AnimElem = 19 && var(10) = 2
stateno = 7005
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 1200, Helper]
type = Helper
trigger1 = AnimElem = 10 && var(10) = 0
stateno = 7010
ownpal = 1
size.xscale = 0.8
size.yscale = 0.8

[State 1200, Helper]
type = Helper
trigger1 = AnimElem = 16 && var(10) = 1
stateno = 7011
ownpal = 1
size.xscale = 0.8
size.yscale = 0.8

[State 1200, Helper]
type = Helper
trigger1 = AnimElem = 22 && var(10) = 2
stateno = 7012
ownpal = 1
size.xscale = 0.8
size.yscale = 0.8

[State 1200, Helper]
type = Helper
trigger1 = AnimElem = 20 && var(10) = 0
stateno = 7100
ownpal = 1
size.xscale = 0.8
size.yscale = 0.8

[State 1200, Helper]
type = Helper
trigger1 = AnimElem = 26 && var(10) = 1
stateno = 7101
ownpal = 1
size.xscale = 0.8
size.yscale = 0.8

[State 1200, Helper]
type = Helper
trigger1 = AnimElem = 32 && var(10) = 2
stateno = 7102
ownpal = 1
size.xscale = 0.8
size.yscale = 0.8

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1200, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6*ifelse(p2dist x>0,1,-1),0
ground.cornerPush.velOff = 0
guard.velocity = -8*ifelse(p2dist x>0,1,-1)
guard.cornerPush.velOff = 0
air.velocity = -6*ifelse(p2dist x>0,1,-1),-6
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 143), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 11 && var(10) = 0
trigger2 = AnimElem = 10 && var(10) != 0
trigger3 = AnimElem = 13 && var(10) != 0
trigger4 = AnimElem = 17 && var(10) = 1
trigger5 = AnimElem = 16 && var(10) = 2
trigger6 = AnimElem = 19 && var(10) = 2
trigger7 = AnimElem = 23 && var(10) = 2
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6*ifelse(p2dist x>0,1,-1),0
ground.cornerPush.velOff = 0
guard.velocity = -8*ifelse(p2dist x>0,1,-1)
guard.cornerPush.velOff = 0
air.velocity = -6*ifelse(p2dist x>0,1,-1),-6
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 143), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 21 && var(10) = 0
trigger2 = AnimElem = 27 && var(10) = 1
trigger3 = AnimElem = 33 && var(10) = 2
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 10, ifElse(var(10), 30, 49)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 10, ifElse(var(10), 30, 49)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3, -6
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -6, -6
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 143), var(36) := -75
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
Id = 1200

[State 1200, Flame Particles]
type = Helper
trigger1 = numtarget(1200)
trigger1 = AnimElemTime(2) > 0
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1200, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;EX RAPID DAGGER>=
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

[State 1230, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

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
var(25) = 124

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1230, Width]
type = Width
trigger1 = 1
edge = 20,0

[State 1230, 1]
type = statetypeset
trigger1 = AnimElem = 40
movetype = I

[State 1230, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1230, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200,0
channel = 0

[State 1230, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 0
channel = 2

[State 1230, Effect]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 7 || AnimElem = 10 || AnimElem = 13 || AnimElem = 16 || AnimElem = 19 || AnimElem = 22 || AnimElem = 25 || AnimElem = 29
value = 1200,1

[State 1230, Effect]
type = PlaySnd
trigger1 = AnimElem = 39
value = 1200,2

[State 1230, Effect]
type = PlaySnd
trigger1 = AnimElem = 43
value = 1000,1

[State 1230, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = 5

[State 1230, Velocity]
type = VelSet
trigger1 = AnimElem = 3
x = 3.6

[State 1230, Velocity]
type = VelSet
trigger1 = AnimElem = 39
x = 0

[State 1230, Velocity]
type = VelMul
trigger1 = AnimElemTime(32) >= 0
x = .96

[State 1230, Helper]
type = Helper
trigger1 = AnimElem = 4
stateno = 7000
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 1230, Helper]
type = Helper
trigger1 = AnimElem = 7
stateno = 7001
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 1230, Helper]
type = Helper
trigger1 = AnimElem = 10
stateno = 7002
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 1230, Helper]
type = Helper
trigger1 = AnimElem = 13
stateno = 7003
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 1230, Helper]
type = Helper
trigger1 = AnimElem = 16
stateno = 7004
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 1230, Helper]
type = Helper
trigger1 = AnimElem = 19
stateno = 7005
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 1230, Helper]
type = Helper
trigger1 = AnimElem = 22
stateno = 7006
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 1230, Helper]
type = Helper
trigger1 = AnimElem = 25
stateno = 7007
ownpal = 1
size.xscale = .4
size.yscale = .4

[State 1230, Helper]
type = Helper
trigger1 = AnimElem = 28
stateno = 7013
ownpal = 1
size.xscale = 0.8
size.yscale = 0.8

[State 1230, Helper]
type = Helper
trigger1 = AnimElem = 38
stateno = 7103
ownpal = 1
size.xscale = 0.8
size.yscale = 0.8

[State 1230, Dust Helper]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1230, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6*ifelse(p2dist x>0,1,-1),0
ground.cornerPush.velOff = 0
guard.velocity = -8*ifelse(p2dist x>0,1,-1)
guard.cornerPush.velOff = 0
air.velocity = -6*ifelse(p2dist x>0,1,-1),-6
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 143), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 10
trigger2 = AnimElem = 13
trigger3 = AnimElem = 16
trigger4 = AnimElem = 19
trigger5 = AnimElem = 22
trigger6 = AnimElem = 25
trigger7 = AnimElem = 29
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 11 < 7, 7, fvar(11) * 11)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 3, 6)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6*ifelse(p2dist x>0,1,-1),0
ground.cornerPush.velOff = 0
guard.velocity = -8*ifelse(p2dist x>0,1,-1)
guard.cornerPush.velOff = 0
air.velocity = -6*ifelse(p2dist x>0,1,-1),-6
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 143), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 39
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3, -6
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -6, -6
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 12)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 143), var(36) := -75
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
Id = 1230

[State 1230, Flame Particles]
type = Helper
trigger1 = numtarget(1230)
trigger1 = AnimElemTime(2) > 0
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1230, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;SCRAMBLE>=
[StateDef 1300]
type = S
physics = S
moveType = I
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1300, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1300, 1]
type = NotHitBy
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(5) < 0
value = SCA

[State 1300, 1]
type = playerpush
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(5) < 0
value = 0

[State 1300, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 1300, Effect]
type = PlaySnd
trigger1 = Animelem = 3
value = 52, 0
channel = 20

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1300,0
channel = 0

[State 1300, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1600,0
channel = 2

[State 1300, Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1600,2

[State 1300, StateType]
type = StateTypeSet
trigger1 = AnimElem = 3
StateType = A
physics = N

[State 1300, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 4.5 ;2.5+(var(5)*3.05)
y = -8.25 ;ifelse(!var(5),-8.5,ifelse(var(5)=1,-8.25,-8)) ; -8 ;ifelse(!var(5),-9.5,ifelse(var(5)=1,-9,-8.5))

[State 1300, Gravity]
type = VelAdd
trigger1 = AnimElemTime(4) > 1
y = .5

[State 1300, Velocity]
type = VelMul
trigger1 = AnimElemtime(5) > 0
x = 0.9 ;ifelse(!var(5),.94,ifelse(var(5)=1,.90,.86)) ;ifelse(!var(5),.94,ifelse(var(5)=1,.92,.90))

[State 1300, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = Command = "z"
value = 1360

[State 1300, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = Command = "y"
value = 1370

[State 1300, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = Command = "x"
value = 1380

[State 1300, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = Command = "a" || Command = "b" || Command = "c"
value = 1400

[State 1300, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 1360

[State 1300, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 1370

[State 1300, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 1380

[State 1300, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = p2bodydist X > 4 && Random > 950
trigger2 = (p2bodydist X = [0,6]) && Random = [330,349]
value = 1400

[State 1300, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "x"
value = 600

[State 1300, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "y"
value = 610

[State 1300, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "z"
value = 620

[State 1300, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "a"
value = 630

[State 1300, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "b"
value = 640

[State 1300, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "c"
value = 650

[State 1300, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 600

[State 1300, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 610

[State 1300, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 620

[State 1300, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 630

[State 1300, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 640

[State 1300, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 650

[State 1300, Super]
type = Helper
trigger1 = AnimElem = 3
id = 8100
name = "jump Effect"
pos = 0,0
postype = P1
stateno = 8100
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
;pausemovetime = 99999999999999
supermovetime = 99999999999999

[State 1300, Helper]
type = Helper
trigger1 = AnimElem = 4
stateno = 1330
ownpal = 1

[State 1300, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(2) > 0
value = 1305

;EX SCRAMBLE>=
[StateDef 1301]
type = S
physics = S
moveType = I
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1301, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1301, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1301, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1301, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 124

[State 1301, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1301, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1301, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1301, 1]
type = NotHitBy
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(5) < 0
value = SCA

[State 1301, 1]
type = playerpush
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(5) < 0
value = 0

[State 1301, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 1301, Effect]
type = PlaySnd
trigger1 = Animelem = 3
value = 52, 0
channel = 20

[State 1301, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1300,0
channel = 0

[State 1301, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1600,0
channel = 2

[State 1301, Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1600,2

[State 1301, StateType]
type = StateTypeSet
trigger1 = AnimElem = 3
StateType = A
physics = N

[State 1301, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 4.5 ;2.5+(var(5)*3.05)
y = -8.25 ;ifelse(!var(5),-8.5,ifelse(var(5)=1,-8.25,-8)) ; -8 ;ifelse(!var(5),-9.5,ifelse(var(5)=1,-9,-8.5))

[State 1301, Gravity]
type = VelAdd
trigger1 = AnimElemTime(4) > 1
y = .5

[State 1301, Velocity]
type = VelMul
trigger1 = AnimElemtime(5) > 0
x = 0.9 ;ifelse(!var(5),.94,ifelse(var(5)=1,.90,.86)) ;ifelse(!var(5),.94,ifelse(var(5)=1,.92,.90))

[State 1301, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = Command = "z"
value = 1365

[State 1301, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = Command = "y"
value = 1370

[State 1301, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = Command = "x"
value = 1380

[State 1301, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = Command = "a" || Command = "b" || Command = "c"
value = 1430

[State 1301, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 1365

[State 1301, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 1370

[State 1301, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 1380

[State 1301, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = p2bodydist X > 4 && Random > 950
trigger2 = (p2bodydist X = [0,6]) && Random = [330,349]
value = 1430

[State 1301, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "x"
value = 605

[State 1301, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "y"
value = 615

[State 1301, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "z"
value = 625

[State 1301, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "a"
value = 635

[State 1301, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "b"
value = 645

[State 1301, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "c"
value = 655

[State 1301, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 605

[State 1301, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 615

[State 1301, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 625

[State 1301, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 635

[State 1301, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 645

[State 1301, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 655

[State 1301, Super]
type = Helper
trigger1 = AnimElem = 3
id = 8100
name = "jump Effect"
pos = 0,0
postype = P1
stateno = 8100
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
;pausemovetime = 99999999999999
supermovetime = 99999999999999

[State 1301, Helper]
type = Helper
trigger1 = AnimElem = 4
stateno = 1331
ownpal = 1

[State 1301, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(2) > 0
value = 1305

;SCRAMBLE>=
[StateDef 1310]
type = S
physics = S
moveType = I
anim = 1310
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1310, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1310, 1]
type = NotHitBy
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(5) < 0
value = SCA

[State 1310, 1]
type = playerpush
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(5) < 0
value = 0

[State 1310, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 1310, Effect]
type = PlaySnd
trigger1 = Animelem = 3
value = 52, 0
channel = 20

[State 1310, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1300,0
channel = 0

[State 1310, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1600,0
channel = 2

[State 1310, Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1600,2

[State 1310, StateType]
type = StateTypeSet
trigger1 = AnimElem = 3
StateType = A
physics = N

[State 1310, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 8.5
y = -8 ;ifelse(!var(5),-8.5,ifelse(var(5)=1,-8.25,-8)) ; -8 ;ifelse(!var(5),-9.5,ifelse(var(5)=1,-9,-8.5))

[State 1310, Gravity]
type = VelAdd
trigger1 = AnimElemTime(4) > 1
y = .48

[State 1310, Velocity]
type = VelMul
trigger1 = AnimElemtime(5) > 0
x = .86 ;ifelse(!var(5),.94,ifelse(var(5)=1,.90,.86)) ;ifelse(!var(5),.94,ifelse(var(5)=1,.92,.90))

[State 1310, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = Command = "z"
value = 1360

[State 1310, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = Command = "y"
value = 1370

[State 1310, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = Command = "x"
value = 1390

[State 1310, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = Command = "a" || Command = "b" || Command = "c"
value = 1400

[State 1310, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 1360

[State 1310, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 1370

[State 1310, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 1380

[State 1310, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = p2bodydist X > 4 && Random > 950
trigger2 = (p2bodydist X = [0,6]) && Random = [330,349]
value = 1400

[State 1310, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "x"
value = 600

[State 1310, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "y"
value = 610

[State 1310, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "z"
value = 620

[State 1310, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "a"
value = 630

[State 1310, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "b"
value = 640

[State 1310, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "c"
value = 650

[State 1310, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 600

[State 1310, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 610

[State 1310, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 620

[State 1310, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 630

[State 1310, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 640

[State 1310, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 650

[State 1310, Super]
type = Helper
trigger1 = AnimElem = 3
id = 8100
name = "jump Effect"
pos = 0,0
postype = P1
stateno = 8100
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
;pausemovetime = 99999999999999
supermovetime = 99999999999999

[State 1310, Helper]
type = Helper
trigger1 = AnimElem = 4
stateno = 1340
ownpal = 1

[State 1310, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(2) > 0
value = 1305

;EX SCRAMBLE>=
[StateDef 1311]
type = S
physics = S
moveType = I
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1311, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1311, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1311, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1311, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 124

[State 1311, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1311, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1311, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1311, 1]
type = NotHitBy
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(5) < 0
value = SCA

[State 1311, 1]
type = playerpush
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(5) < 0
value = 0

[State 1311, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 1311, Effect]
type = PlaySnd
trigger1 = Animelem = 3
value = 52, 0
channel = 20

[State 1311, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1300,0
channel = 0

[State 1311, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1600,0
channel = 2

[State 1311, Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1600,2

[State 1311, StateType]
type = StateTypeSet
trigger1 = AnimElem = 3
StateType = A
physics = N

[State 1311, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 8.5
y = -8 ;ifelse(!var(5),-8.5,ifelse(var(5)=1,-8.25,-8)) ; -8 ;ifelse(!var(5),-9.5,ifelse(var(5)=1,-9,-8.5))

[State 1311, Gravity]
type = VelAdd
trigger1 = AnimElemTime(4) > 1
y = .48

[State 1311, Velocity]
type = VelMul
trigger1 = AnimElemtime(5) > 0
x = .86 ;ifelse(!var(5),.94,ifelse(var(5)=1,.90,.86)) ;ifelse(!var(5),.94,ifelse(var(5)=1,.92,.90))

[State 1311, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = Command = "z"
value = 1365

[State 1311, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = Command = "y"
value = 1370

[State 1311, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = Command = "x"
value = 1390

[State 1311, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = Command = "a" || Command = "b" || Command = "c"
value = 1430

[State 1311, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 1365

[State 1311, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 1370

[State 1311, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 1380

[State 1312, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(4) > 6 && AnimElemtime(5) < 0
trigger1 = p2bodydist X > 4 && Random > 950
trigger2 = (p2bodydist X = [0,6]) && Random = [330,349]
value = 1430

[State 1311, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "x"
value = 605

[State 1311, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "y"
value = 615

[State 1311, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "z"
value = 625

[State 1311, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "a"
value = 635

[State 1311, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "b"
value = 645

[State 1311, 8]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = Command = "c"
value = 655

[State 1311, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 605

[State 1311, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 615

[State 1311, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 625

[State 1311, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 635

[State 1311, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 645

[State 1311, 8]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemtime(5) > 0
trigger1 = p2bodydist X > 4 && Random < 450
trigger2 = (p2bodydist X = [0,6]) && Random = [151,329]
value = 655

[State 1315, Super]
type = Helper
trigger1 = AnimElem = 3
id = 8100
name = "jump Effect"
pos = 0,0
postype = P1
stateno = 8100
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
;pausemovetime = 99999999999999
supermovetime = 99999999999999

[State 1315, Helper]
type = Helper
trigger1 = AnimElem = 4
stateno = 1341
ownpal = 1

[State 1311, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(2) > 0
value = 1305

;Up
[Statedef 1330]
type = S
movetype = I
physics = N
ctrl = 0
anim = 1330
sprpriority = 3

[State 1330, 0]
type = BindToRoot
trigger1 = 1
pos = 0,0

[State 1330, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-(time*51),time*51

[State 1330, DestroySelf]
type = DestroySelf
trigger1 = time = 5
trigger2 = root,stateno = 1300 && root,animelem = 5
trigger3 = root,time = 1
trigger4 = root,movetype = H

;EX Up
[Statedef 1331]
type = S
movetype = I
physics = N
ctrl = 0
anim = 1330
sprpriority = 3

[State 1331, 0]
type = BindToRoot
trigger1 = 1
pos = 0,0

[State 1331, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-(time*51),time*51

[State 1331, DestroySelf]
type = DestroySelf
trigger1 = time = 5
trigger2 = root,stateno = 1301 && root,animelem = 5
trigger3 = root,time = 1
trigger4 = root,movetype = H

;Diagonal
[Statedef 1340]
type = S
movetype = I
physics = N
ctrl = 0
anim = 1340
sprpriority = 3

[State 1340, 0]
type = BindToRoot
trigger1 = 1
pos = 0,0

[State 1340, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-(time*51),time*51

[State 1340, DestroySelf]
type = DestroySelf
trigger1 = time = 5
trigger2 = root,stateno = 1310 && root,animelem = 5
trigger3 = root,time = 1
trigger4 = root,movetype = H

;Diagonal
[Statedef 1341]
type = S
movetype = I
physics = N
ctrl = 0
anim = 1340
sprpriority = 3

[State 1341, 0]
type = BindToRoot
trigger1 = 1
pos = 0,0

[State 1341, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-(time*51),time*51

[State 1341, DestroySelf]
type = DestroySelf
trigger1 = time = 5
trigger2 = root,stateno = 1311 && root,animelem = 5
trigger3 = root,time = 1
trigger4 = root,movetype = H

;Land
[Statedef 1305]
type = S
physics = S
ctrl = 0
anim = 1305
velset = 0,0

[State 1305, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1305, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1305, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1305, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1305, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Attack
[Statedef 1360]
type = A
movetype = A
physics = N
juggle = 8
ctrl = 0
anim = 1360
poweradd = 72 * !var(20)
facep2 = 1

[State 1360, 8]
type = velset
trigger1 = AnimElem = 1
x = 0
y = 15

[State 1360, Vel]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
y = .55

[State 1360, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1360, 8]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1300,1
channel = 0

[State 1360, 4]
type = ChangeState
trigger1 = AnimElemTime(1) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1361

;Attack
[Statedef 1361]
type = S
movetype = A
physics = S
juggle = 8
ctrl = 0
anim = 1361
velset = 0,0

[State 1361, Impact Dust]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
facing = -1
ownPal = 1

[State 1361, Spark]
type = Explod
trigger1 = AnimElem = 2
Anim = 8050
pos = 0, 0
postype = p1
ownpal = 1
sprpriority = -3
;pausemovetime = -1
supermovetime = -1
scale = .5,.5

[State 1361, Effect]
type = PlaySnd
trigger1 = Time = 0
value = 52, 0
channel = 20

[State 1361, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 3
channel = 1

[State 1361, 8]
type = PlaySnd
trigger1 = AnimElem = 2
value = 820,2
channel = 1

[State 1361, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1361, EnvShake]
type = EnvShake
trigger1 = animelem = 2
time = 10
;freq = 30
;ampl = -3

[State 1361, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 116 < 7, 7, fvar(11) * 116)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = UP
fall.animType = UP
ground.type = Low
air.type = High
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1.5, -8
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -1.5, -9
air.cornerPush.velOff = 0
yAccel = 0.3
fall = 1
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -22
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
p2stateno = 1367



[State 1361, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 259, End]
type = ChangeState
trigger1= movehit = 1
trigger1= command = "holdup" 
value = 40
ctrl = 1

;Attack
[Statedef 1365]
type = A
movetype = A
physics = N
juggle = 8
ctrl = 0
anim = 1360
poweradd = 0
facep2 = 1

[State 1365, 8]
type = velset
trigger1 = AnimElem = 1
x = 0
y = 15

[State 1365, Vel]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
y = .55

[State 1365, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1365, 8]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1300,1
channel = 0

[State 1365, 4]
type = ChangeState
trigger1 = AnimElemTime(1) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1366

;Attack
[Statedef 1366]
type = S
movetype = A
physics = S
juggle = 8
ctrl = 0
anim = 1365
velset = 0,0

[State 1366, Impact Dust]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
facing = -1
ownPal = 1

[State 1366, Spark]
type = Explod
trigger1 = AnimElem = 2
Anim = 8050
pos = 0, 0
postype = p1
ownpal = 1
sprpriority = -3
;pausemovetime = -1
supermovetime = -1
scale = .5,.5

[State 1366, Effect]
type = PlaySnd
trigger1 = Time = 0
value = 52, 0
channel = 20

[State 1366, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 3
channel = 1

[State 1366, 8]
type = PlaySnd
trigger1 = AnimElem = 2
value = 820,2
channel = 1

[State 1366, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1366, EnvShake]
type = EnvShake
trigger1 = animelem = 2
time = 10
;freq = 30
;ampl = -3

[State 1366, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 1
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Heavy
air.animType = UP
fall.animType = UP
ground.type = Low
air.type = High
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1.5, -9
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -1.5, -9
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -22
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1366, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = UP
fall.animType = UP
ground.type = Low
air.type = High
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1.5, -9
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -1.5, -9
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -22
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1366, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1














;P2 hit by attack
[StateDef 1367]
type = A
physics = N
moveType = H
ctrl = 0
velSet = -1,-8



[State 0, VelAdd]
type = VelAdd
trigger1 = time> 7
x = 0
y = .50





[State 825, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 5061




[State 0, ChangeState]
type = Selfstate
trigger1 = Pos Y >= 0 & Vel Y> 0
value = 5100
ctrl = 0

















;Throw
[Statedef 1350]
type = A
movetype = A
physics = N
juggle = 8
velset = 0,0
ctrl = 0
anim = 1350

[State 1350, VarSet]
type = VarSet
triggerall = AILevel
trigger1 = Time = 0
var(10) = random%3

[State 1350, 1]
type = statetypeset
trigger1 = AnimElem = 3
movetype = I

[State 1350, Accel]
type = gravity
trigger1 = time >= 0

[State 1350, 1]
type = HitDef
triggerall = P2MoveType != H
triggerall = P2StateNo != [150,155]
triggerall = P2bodydist X = [-const(size.ground.front),ifelse(!var(5),66,ifelse(var(5)=1,56,46))]
triggerall = P2bodydist Y = [-64,-enemynear,const(size.head.pos.y)-54]
trigger1 = AnimElem = 1
attr = A, ST
hitflag = A-
priority = 3, Miss
SparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
p1facing = 1
p2facing = 1
p1stateno = 860
guard.dist = 0
getpower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
fall = 1
air.fall = 1
fall.recover = 0
numhits = 0

[State 1350, 1]
type = HitDef
triggerall = P2StateNo != [150,155]
triggerall = P2bodydist X = [-const(size.ground.front),ifelse(!var(5),66,ifelse(var(5)=1,56,46))]
triggerall = P2bodydist Y = [-64,-enemynear,const(size.head.pos.y)-54]
trigger1 = AnimElem = 1
attr = A, ST
hitflag = AF
priority = 3, Miss
SparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
p1facing = 1
p2facing = 1
p1stateno = 860
guard.dist = 0
getpower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
fall = 1
air.fall = 1
fall.recover = 0
numhits = 0

[State 1350, Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 900, 1
channel = 1

[State 1350, 4]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52

;Fail
[Statedef 1370]
type = A
movetype = A
physics = N
juggle = 8
ctrl = 0
anim = 1370
facep2 = 1

[State 1370, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1370, Velocity]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 15

[State 1370, Gravity]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
y = .49

[State 1370, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1370, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1300, 2
channel = 1

[State 1370, 1]
type = statetypeset
trigger1 = AnimElem = 1
movetype = I

[State 1370, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1371

;Land
[Statedef 1371]
type = S
physics = S
ctrl = 0
anim = 1371
velset = 0,0

[State 1371, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1371, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1371, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1371, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Nothing
[Statedef 1380]
type = A
movetype = A
physics = N
juggle = 8
ctrl = 0
anim = 1380

[State 1380, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1380, Velocity]
type = Velset
trigger1 = AnimElem = 1
trigger1 = Animtime < 24
x = -8.5 ;(-4.5*exp(0.63)) ;(-5.5*exp((0.615*var(5))))
y = 9.3 ;-1*exp(0.1) ;ifelse(!var(5),9.5,ifelse(var(5) = 1, 9.3, 9.1))

[State 1380, Gravity]
type = VelAdd
trigger1 = AnimElemTime(1) = 0
y = .49

[State 1380, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1380, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1300, 3
channel = 1

[State 1380, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1600, 2
channel = 2

[State 1380, 1]
type = statetypeset
trigger1 = AnimElem = 1
movetype = I

[State 1380, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1381

;Nothing
[Statedef 1390]
type = A
movetype = A
physics = N
juggle = 8
ctrl = 0
anim = 1380

[State 1390, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1390, Velocity]
type = Velset
trigger1 = AnimElem = 1
trigger1 = Animtime < 24
x = -14.5 ;(-4.5*exp(1.09)) ;(-5.5*exp((0.615*var(5))))
y = 9 ;9-1*exp(0.35) ;ifelse(!var(5),9.5,ifelse(var(5) = 1, 9.3, 9.1))

[State 1390, Gravity]
type = VelAdd
trigger1 = AnimElemTime(1) = 0
y = .47

[State 1390, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1390, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1300, 3
channel = 1

[State 1390, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1600, 2
channel = 2

[State 1390, 1]
type = statetypeset
trigger1 = AnimElem = 1
movetype = I

[State 1390, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1381

;Finish
[Statedef 1381]
type = S
physics = S
ctrl = 0
anim = 1381
velset = 0,0

[State 1381, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1381, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1381, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1381, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;CANNON STRIKE>=
[StateDef 1400]
type = A
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
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1400, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1400, 8]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1400,0
channel = 0

[State 1400, 8]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3, 5
channel = 2

[State 1400, 8]
type = velset
trigger1 = AnimElem = 4
x = ifelse(!var(10), 4, ifelse(var(10) = 1, 5, 6))
y = 5.5

[State 1400, Vel]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = .49

[State 1400, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1400, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10), 119, 105)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10), 119, 105)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 16)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 19
guard.hittime = (19) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -5, -5.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -22
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, 9]
type = ChangeState
trigger1 = AnimElemTime(4) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1405

;Land
[Statedef 1405]
type = S
physics = S
ctrl = 0
anim = 1405
velset = 0,0

[State 1405, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1405, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1405, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1405, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;EX CANNON STRIKE>=
[StateDef 1430]
type = A
physics = N
moveType = A
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(prevstateno = 1301, 0, ifelse(prevstateno = 1311, 0, -500))
faceP2 = 1

[State 1430, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

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
var(25) = 124

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1430, 8]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1400,0
channel = 0

[State 1430, 8]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3, 5
channel = 2

[State 1430, 8]
type = velset
trigger1 = AnimElem = 4
x = 7
y = 5.5

[State 1430, Vel]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = .49

[State 1430, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1430, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
attr = A, SA
hitFlag = MA
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 77)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 16)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -5, -5.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -22
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, 9]
type = ChangeState
trigger1 = AnimElemTime(4) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1405

;INVISIBLE RAY>=
[StateDef 1500]
type = S
physics = S
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
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1500, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1500, 1]
type = ChangeAnim
Trigger1 = !Time
value = ifelse(!var(10), 1500, ifelse(var(10) = 1, 1510, 1520))

[State 1500, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 1500, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1500, 0
channel = 0

[State 1500, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1500, 1
channel = 1

[State 1500, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3100, 1
channel = 2

[State 1500,Super]
type = Helper
trigger1 = time = 1
id = 1501
name = "fireball_effect"
pos = 0,0
postype = P1
stateno = 1501
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale = 0.6
size.yscale = 0.6

[State 1500,Super]
type = Helper
trigger1 = AnimElemTime(5) = 1
id = 1505
name = "fireball"
pos = 50,-78
postype = P1
stateno = 1505
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1500, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;EX INVISIBLE RAY>=
[StateDef 1530]
type = S
physics = S
moveType = A
anim = 1520
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
var(25) = 124

[State 1530, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1530, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1530, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 1530, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1500, 0
channel = 0

[State 1530, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1500, 1
channel = 1

[State 1530, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3100, 1
channel = 2

[State 1530,Super]
type = Helper
trigger1 = time = 1
id = 1501
name = "fireball_effect"
pos = 0,0
postype = P1
stateno = 1531
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale = 0.6
size.yscale = 0.6

[State 1530,Super]
type = Helper
trigger1 = AnimElemTime(5) = 1
id = 1505
name = "fireball"
pos = 50,-78
postype = P1
stateno = 1535
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1530, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;SCRAMBLE>=
[StateDef 1600]
type = S
physics = N
moveType = I
anim = 1600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1600, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1600, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1600, 1]
type = NotHitBy
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(6) < 0
value = SCA

[State 1600, 1]
type = playerpush
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(6) < 0
value = 0

[State 1600, 5];?K
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemTime(3) > 0
triggerall = AnimElemTime(5) < 0
trigger1 = command = "a" || Command = "b" || Command = "c"
value = 1630

[State 1600, 8]
type = ChangeState
triggerall = !AILevel
triggerall = Animelemtime(4) > 0
triggerall = Animelemtime(5) < 0
trigger1 = Animelemtime(4) < 7
trigger1 = Command = "x"
value = 1610

[State 1600, 8]
type = ChangeState
triggerall = !AILevel
triggerall = Animelemtime(4) > 0
triggerall = Animelemtime(5) < 0
trigger1 = Animelemtime(4) >= 7
trigger1 = Animelemtime(4) < 12
trigger1 = Command = "x"
value = 1611

[State 1600, 8]
type = ChangeState
triggerall = !AILevel
triggerall = Animelemtime(4) > 0
triggerall = Animelemtime(5) < 0
trigger1 = Animelemtime(4) >= 12
trigger1 = Animelemtime(4) < 17
trigger1 = Command = "x"
value = 1612

[State 1600, 8]
type = ChangeState
triggerall = !AILevel
triggerall = Animelemtime(4) > 0
triggerall = Animelemtime(5) < 0
trigger1 = Animelemtime(4) >= 17
trigger1 = Animelemtime(4) < 23
trigger1 = Command = "x"
value = 1613

[State 1600, 5]
type = ChangeAnim
triggerall = !AILevel
triggerall = AnimElemTime(4) > 0
triggerall = AnimElemTime(5) < 0
trigger1 = command = "y"
value = anim
elem = 5

[State 1600, 8]
type = ChangeState
triggerall = !AILevel
triggerall = Animelemtime(4) > 0
trigger1 = Animelemtime(5) < 0
trigger1 = Command = "z"
value = 1620

[State 1600, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1300,0
channel = 0

[State 1600, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1600, 0

[State 1600, Velocity]
type = VelSet
trigger1 = AnimElem = 3
x = 8

[State 1600, Velocity]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 11600, Velocity]
type = VelMul
trigger1 = AnimElemTime(5) > 0
x = 0.85

[State 1600, Helper]
type = Helper
trigger1 = AnimElem = 4
stateno = 1650
ownpal = 1

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

[State 1600, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1600, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1600, Effect]
type = PlaySnd
trigger1 = Time = 0
value = 52, 0
channel = 20

[State 52, Effect]
type = PlaySnd
trigger1 = Animelemtime(5) = 1
value = 1600, 2

[State 1600, 5]
type = ChangeAnim
triggerall = !AILevel
triggerall = AnimElemTime(3) > 0
triggerall = AnimElemTime(5) <= 0
trigger1 = P2bodydist X <= 0
value = anim
elem = 5

[State 1600, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;EX SCRAMBLE>=
[StateDef 1601]
type = S
physics = N
moveType = I
anim = 1600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1601, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1601, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1601, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1601, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 124

[State 1601, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1601, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1601, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1601, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1601, 1]
type = NotHitBy
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(6) < 0
value = SCA

[State 1601, 1]
type = playerpush
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(6) < 0
value = 0

[State 1601, 5];?K
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemTime(3) > 0
triggerall = AnimElemTime(5) < 0
trigger1 = command = "a" || Command = "b" || Command = "c"
value = 1631

[State 1601, 8]
type = ChangeState
triggerall = !AILevel
triggerall = Animelemtime(4) > 0
triggerall = Animelemtime(5) < 0
trigger1 = Animelemtime(4) < 7
trigger1 = Command = "x"
value = 1610

[State 1601, 8]
type = ChangeState
triggerall = !AILevel
triggerall = Animelemtime(4) > 0
triggerall = Animelemtime(5) < 0
trigger1 = Animelemtime(4) >= 7
trigger1 = Animelemtime(4) < 12
trigger1 = Command = "x"
value = 1611

[State 1601, 8]
type = ChangeState
triggerall = !AILevel
triggerall = Animelemtime(4) > 0
triggerall = Animelemtime(5) < 0
trigger1 = Animelemtime(4) >= 12
trigger1 = Animelemtime(4) < 17
trigger1 = Command = "x"
value = 1612

[State 1601, 8]
type = ChangeState
triggerall = !AILevel
triggerall = Animelemtime(4) > 0
triggerall = Animelemtime(5) < 0
trigger1 = Animelemtime(4) >= 17
trigger1 = Animelemtime(4) < 23
trigger1 = Command = "x"
value = 1613

[State 1601, 5]
type = ChangeAnim
triggerall = !AILevel
triggerall = AnimElemTime(4) > 0
triggerall = AnimElemTime(5) < 0
trigger1 = command = "y"
value = anim
elem = 5

[State 1601, 8]
type = ChangeState
triggerall = !AILevel
triggerall = Animelemtime(4) > 0
trigger1 = Animelemtime(5) < 0
trigger1 = Command = "z"
value = 1620

[State 1601, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1300,0
channel = 0

[State 1601, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1600, 0

[State 1601, Velocity]
type = VelSet
trigger1 = AnimElem = 3
x = 8

[State 1601, Velocity]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1601, Velocity]
type = VelMul
trigger1 = AnimElemTime(5) > 0
x = 0.85

[State 1601, Helper]
type = Helper
trigger1 = AnimElem = 4
stateno = 1651
ownpal = 1

[State 1601, Dust Helper]
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

[State 1601, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1601, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1601, Effect]
type = PlaySnd
trigger1 = Time = 0
value = 52, 0
channel = 20

[State 1601, Effect]
type = PlaySnd
trigger1 = Animelemtime(5) = 1
value = 1600, 2

[State 1601, 5]
type = ChangeAnim
triggerall = !AILevel
triggerall = AnimElemTime(3) > 0
triggerall = AnimElemTime(5) <= 0
trigger1 = P2bodydist X <= 0
value = anim
elem = 5

[State 1601, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Attack
[Statedef 1630]
type = C
movetype = A
physics = N
juggle = 8
ctrl = 0
poweradd = 72 * !var(20)
anim = 1630
facep2 = 1

[State 1630, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 1630, 1]
type = statetypeset
trigger1 = AnimElem = 3
movetype = I

[State 1630, Position]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 1630, Position]
type = VelMul
trigger1 = 1
x = .96

[State 1630, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 1630, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1600, 1
channel = 0

[State 1630, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 100, 10
channel = 19

[State 1630, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
attr = C, SA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = High
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4, -5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4, -5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 143), var(36) := -9
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1630, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Attack
[Statedef 1631]
type = C
movetype = A
physics = N
juggle = 8
ctrl = 0
poweradd = 72 * !var(20)
anim = 1631
facep2 = 1

[State 1631, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 1631, 1]
type = statetypeset
trigger1 = AnimElem = 4
movetype = I

[State 1631, Position]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 1631, Position]
type = VelMul
trigger1 = 1
x = .96

[State 1631, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 1631, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1600, 1
channel = 0

[State 1631, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 100, 10
channel = 19

[State 1631, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
attr = C, SA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 55 < 7, 7, fvar(11) * 55)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = High
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4, -5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 143), var(36) := -9
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1631, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3
attr = C, SA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 55 < 7, 7, fvar(11) * 55)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = High
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4, -5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4, -5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 143), var(36) := -9
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1631, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Land
[Statedef 1610]
type = A
movetype = A
physics = N
juggle = 8
ctrl = 0
anim = 1610

[State 1610, VarSet]
type = VarSet
triggerall = !AILevel
trigger1 = Time = 0
var(10) = ifelse(Command = "x", 0, ifelse(Command = "y", 1, 2))

[State 1610, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1610, Velocity]
type = Velset
trigger1 = AnimElem = 1
x = -7
y = 0

[State 1610, Velocity]
type = Veladd
trigger1 = AnimElem = 1
x = -0.45

[State 1610, 2]
type = VelSet
trigger1 = AnimElem = 2
x = 0

[State 1610, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1300, 3
channel = 1

[State 1610, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1600, 2
channel = 2

[State 1610, 1]
type = statetypeset
trigger1 = AnimElem = 1
movetype = I

[State 1610, Landing Sound]
type = PlaySnd
trigger1 = Animelem = 2
value = 52,0

[State 1610, Landing Dust Explod]
type = Explod
trigger1 = Animelem = 2
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1610, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Land
[Statedef 1611]
type = A
movetype = A
physics = N
juggle = 8
ctrl = 0
anim = 1611

[State 1610, VarSet]
type = VarSet
triggerall = !AILevel
trigger1 = Time = 0
var(10) = ifelse(Command = "x", 0, ifelse(Command = "y", 1, 2))

[State 1610, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1610, Velocity]
type = Velset
trigger1 = AnimElem = 1
x = -7
y = 0

[State 1610, Velocity]
type = Veladd
trigger1 = AnimElem = 1
x = -0.45

[State 1610, 2]
type = VelSet
trigger1 = AnimElem = 2
x = 0

[State 1610, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1300, 3
channel = 1

[State 1610, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1600, 2
channel = 2

[State 1610, 1]
type = statetypeset
trigger1 = AnimElem = 1
movetype = I

[State 1611, Landing Sound]
type = PlaySnd
trigger1 = Animelem = 2
value = 52,0

[State 1611, Landing Dust Explod]
type = Explod
trigger1 = Animelem = 2
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1610, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Land
[Statedef 1612]
type = A
movetype = A
physics = N
juggle = 8
ctrl = 0
anim = 1612

[State 1612, VarSet]
type = VarSet
triggerall = !AILevel
trigger1 = Time = 0
var(10) = ifelse(Command = "x", 0, ifelse(Command = "y", 1, 2))

[State 1612, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1612, Velocity]
type = Velset
trigger1 = AnimElem = 1
x = -8
y = 0

[State 1612, Velocity]
type = Veladd
trigger1 = AnimElem = 1
x = -0.45

[State 1612, 2]
type = VelSet
trigger1 = AnimElem = 2
x = 0

[State 1612, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1300, 3
channel = 1

[State 1612, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1600, 2
channel = 2

[State 1612, 1]
type = statetypeset
trigger1 = AnimElem = 1
movetype = I

[State 1612, Landing Sound]
type = PlaySnd
trigger1 = Animelem = 2
value = 52,0

[State 1612, Landing Dust Explod]
type = Explod
trigger1 = Animelem = 2
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1612, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Land
[Statedef 1613]
type = A
movetype = A
physics = N
juggle = 8
ctrl = 0
anim = 1613

[State 1613, VarSet]
type = VarSet
triggerall = !AILevel
trigger1 = Time = 0
var(10) = ifelse(Command = "x", 0, ifelse(Command = "y", 1, 2))

[State 1613, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1613, Velocity]
type = Velset
trigger1 = AnimElem = 1
x = -8
y = 0

[State 1613, Velocity]
type = Veladd
trigger1 = AnimElem = 1
x = -0.45

[State 1613, 2]
type = VelSet
trigger1 = AnimElem = 2
x = 0

[State 1613, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1300, 3
channel = 1

[State 1613, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1600, 2
channel = 2

[State 1613, 1]
type = statetypeset
trigger1 = AnimElem = 1
movetype = I

[State 1613, Landing Sound]
type = PlaySnd
trigger1 = Animelem = 2
value = 52,0

[State 1613, Landing Dust Explod]
type = Explod
trigger1 = Animelem = 2
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1613, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Finish
[Statedef 1650]
type = S
movetype = I
physics = N
ctrl = 0
anim = 1650
sprpriority = 3

[State 1650, 0]
type = BindToRoot
trigger1 = 1
pos = 0,0

[State 1650, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-(time*51),time*51

[State 1650, DestroySelf]
type = DestroySelf
trigger1 = time = 5
trigger2 = root,stateno = 1600 && root,animelem = 5
trigger3 = root,time = 1
trigger4 = root,movetype = H

;Finish
[Statedef 1651]
type = S
movetype = I
physics = N
ctrl = 0
anim = 1650
sprpriority = 3

[State 1651, 0]
type = BindToRoot
trigger1 = 1
pos = 0,0

[State 1651, Transparency]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-(time*51),time*51

[State 1651, DestroySelf]
type = DestroySelf
trigger1 = time = 5
trigger2 = root,stateno = 1601 && root,animelem = 5
trigger3 = root,time = 1
trigger4 = root,movetype = H

;Fail
[Statedef 1620]
type = S
physics = N
ctrl = 0
anim = 1620
sprpriority = 2

[State 1620, 1]
type = VelSet
trigger1 = animelem = 1
x = 18

[State 1620, 1]
type = VelMul
trigger1 = 1
x = .9

[State 1620, 1]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 1620, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1600,2

[State 1620, HitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
value = SCA

[State 1620, Push]
type = PlayerPush
trigger1 = AnimElemTime(2) < 0
value = 0

;[State 1620, Transparency]
;type = trans
;trigger1 = Time = [0,5]
;trans = addalpha
;alpha = 256-(time*50),time*50

;[State 1620, Transparency]
;type = trans
;trigger1 = Time = [6,8]
;trans = addalpha
;alpha = (time-6)*80,256-((time-6)*80)

[State 1620, 1] ;Turn if not facing opponent
type = Turn
trigger1 = AnimElemTime(2) >= 0
trigger1 = p2dist X < 0

[State 1620, 4]
type = ChangeState
trigger1 = AnimTime = 0
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

[State 2900, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 0

[State 2900, Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1200, 2
channel = 2

[State 2900, Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1000, 1

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 72 < 7, 7, fvar(11) * 72)), 0
getpower = 0,0
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
sparkXY = -10 + 0 * (var(35) := 185), var(36) := -62
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, Cloth]
type = Helper
trigger1 = AnimElem = 4
stateno = 7551
postype = p1
pos = 0,0
name = "dagger"
ownpal = 1
size.xscale = 0.4
size.yscale = 0.3

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 2900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;FX PROJECTILE=
[Statedef 7551]
type = S
movetype = I
physics = N
anim = 7550
ctrl = 0
sprpriority = 5

[State 1025, Trans]
type = Trans
trigger1 = 1
trans = Addalpha
alpha = 256,256

[State 1025, Bind]
type=BindToParent
trigger1 = 1
pos = ceil(185*const(size.xscale)),ceil(-208*const(size.yscale))
;pos = ceil(90*const(size.xscale)),ceil(-200*const(size.yscale))
postype = p1
;facing = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 0

[State 1025, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 2900
trigger3 = root,stateno = 2900 && root,animelemtime(6) = 0

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
value = 4, 4
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 72 < 7, 7, fvar(11) * 72)), 0
getpower = 0,0
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
sparkXY = -10 + 0 * (var(35) := 196), var(36) := -15
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(4) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
