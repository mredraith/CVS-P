; _________________________________________
;| Elena by varo_hades |
; 
;
;<SPECIAL MOVES=
;

;LYNX TAIL
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
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1020, ifElse(var(10) = 1, 1000, 1000))

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3 || animelem = 7
value = 1,5

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = var(10) = 2
trigger1 = animelem = 20 || animelem = 16
value = 1,5

[State 1000,2]
type = playsnd
trigger1 = animelem = 1
value = 1000,0

[State 1000, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 0
x = 6

[State 1000, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 5
x = 4

[State 1000, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 15
x = 0

[State 1000, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
trigger2 = AnimElem = 17 && var(10) = 2
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 33, ifElse(var(10), 60, 55)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 33, ifElse(var(10), 60, 55)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -3, -7
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, HitDef 2]
type = HitDef
triggerall = var(10) = [0,1]
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 8
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10), 60, 55)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10), 60, 55)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2, ifElse(var(10) = 2, -10, ifElse(var(10) = 1, -10, -6))
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, HitDef 2]
type = HitDef
triggerall = var(10) = 2
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 8
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 33, ifElse(var(10), 60, 55)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 33, ifElse(var(10), 60, 55)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, HitDef 3]
type = HitDef
triggerall = var(10) = 2
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 21
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 33, ifElse(var(10), 60, 55)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 33, ifElse(var(10), 60, 55)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2, -12
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1215,ChangeState]
type = ChangeState
triggerall = var(10) = [0,1]
trigger1 = animtime = 0
value = 1001
ctrl = 0

[State 1215,ChangeState]
type = ChangeState
triggerall = var(10) = 2
trigger1 = animtime = 0
value = 1002
ctrl = 0

;Finish
[Statedef 1001]
type = S
movetype = I
physics = S
velset = 0, 0
ctrl = 0
anim = 1001
juggle = 0
poweradd = 0

[State 1001, Landing Sound]
type = PlaySnd
trigger1 = Animelem = 3
value = 52,0

[State 1001, Landing Dust Explod]
type = Explod
trigger1 = Animelem = 3
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1001,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Finish
[Statedef 1002]
type = S
movetype = I
physics = S
velset = 0, 0
ctrl = 0
anim = 1021
juggle = 0
poweradd = 0

[State 1002, Landing Sound]
type = PlaySnd
trigger1 = Animelem = 3
value = 52,0

[State 1002, Landing Dust Explod]
type = Explod
trigger1 = Animelem = 3
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1002,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;EX LYNX TAIL
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

[State 1030, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3 || animelem = 7
value = 1,5

[State 1030, PlaySnd]
type = PlaySnd
trigger1 = animelem = 20 || animelem = 16
value = 1,5

[State 1030,2]
type = playsnd
trigger1 = animelem = 1
value = 1000,0

[State 1030,2]
type = playsnd
trigger1 = animelem = 1
value = 1000,1

[State 1030, VelSet]
type = VelSet
trigger1 = time >= 0
x = 6

[State 1030, VelSet]
type = VelSet
trigger1 = time >= 5
x = 4

[State 1030, VelSet]
type = VelSet
trigger1 = time >= 15
x = 0

[State 1030, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
trigger2 = AnimElem = 17
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 29 < 7, 7, fvar(11) * 29)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -3, -7
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1030, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 8
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 29 < 7, 7, fvar(11) * 29)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1030, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 21
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 29 < 7, 7, fvar(11) * 29)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1030, HitDef 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 32
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 29 < 7, 7, fvar(11) * 29)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2, -12
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
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

[State 1030,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1031
ctrl = 0

;Finish
[Statedef 1031]
type = S
movetype = I
physics = S
velset = 0, 0
ctrl = 0
anim = 193
juggle = 0
poweradd = 0

[State 1031, Landing Sound]
type = PlaySnd
trigger1 = Animelem = 1
value = 52,0

[State 1031, Landing Dust Explod]
type = Explod
trigger1 = Animelem = 1
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1031,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;MALLET SMASH
[StateDef 1100]
type = A
physics = N
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
value = ifElse(var(10) = 2, 1130, ifElse(var(10) = 1, 1100, 1100))

[State 1100,Explod]
type = Explod
trigger1 = var(10) = 0
trigger1 = time = 3
ID = 1100
anim = 7040
sprpriority = 2
postype = p1
pos = -100,-165
bindtime = -1
pausemovetime = -1
removetime = -2
ignorehitpause = 1
scale = 1,1
vel = 0,0
ownpal = 1
supermove = 0
persistent = 0
 
[State 1100,Explod]
type = Explod
trigger1 = var(10) = 1
trigger1 = time = 3
ID = 1170
anim = 7041
sprpriority = 2
postype = p1
pos = -100,-165
bindtime = -1
pausemovetime = -1
removetime = -2
ignorehitpause = 1
scale = 1,1
vel = 0,0
ownpal = 1
supermove = 0
persistent = 0
 
[State 1100,Explod]
type = Explod
trigger1 = var(10) = 2
trigger1 = time = 3
ID = 1150
anim = 7050
sprpriority = 2
postype = p1
pos = -100,-165
bindtime = -1
pausemovetime = -1
removetime = -2
ignorehitpause = 1
scale = 1,1
vel = 0,0
ownpal = 1
supermove = 0
persistent = 0

[State 1100,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1110
ctrl = 0

;Attack
[Statedef 1110]
type = A
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = ifElse(var(10) = 2, 1140, ifElse(var(10) = 1, 1110, 1110))
juggle = 5
poweradd = 0

[State 1110, Dust Helper]
type = Helper
trigger1 = animelem = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1110,laysnd]
type = playsnd
trigger1 = animelem = 1
value = 40,0

[State 1110,laysnd]
type = playsnd
trigger1 = animelem = 1
value = 1100,0

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 0
x = 3
y = -4

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 4
y = -2

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 6
y = 0

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 7
y = 2

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 9
y = 6

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 0
x = 4.5
y = -6

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 4
y = -4

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 6
y = -2

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 7
y = 0

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 9
y = 2

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 11
y = 4

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 13
y = 8

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 15
y = 10

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 0
x = 5
y = -10

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 4
y = -8

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 8
y = -2

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 9
y = 0

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 10
y = 4
x = 5

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 12
y = 8

[State 1110, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 16
y = 12

[State 1110,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1120
ctrl = 0

;Finish
[Statedef 1120] ;att middle
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = ifElse(var(10) = 2, 1150, ifElse(var(10) = 1, 1120, 1120))
juggle = 5
poweradd = 0

[State 1120,ChangeState]
type = Posset
trigger1 = time >= 0
y = 0

[State 1120, Landing Sound]
type = PlaySnd
trigger1 = Animelem = 1
value = 52,0

[State 1120, Landing Dust Explod]
type = Explod
trigger1 = Animelem = 1
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1120, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 1
attr = S, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 50, ifElse(var(10), 50, 40)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 50, ifElse(var(10), 50, 40)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
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

[State 1120, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 50, ifElse(var(10), 50, 40)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 50, ifElse(var(10), 50, 40)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
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

[State 1120, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 3
trigger1 = hitcount < 2
attr = S, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 62, ifElse(var(10), 57, 52)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 62, ifElse(var(10), 57, 52)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
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

[State 1120,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;EX MALLET SMASH
[StateDef 1130]
type = A
physics = N
moveType = A
anim = 1130
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
var(25) = 131

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1130,Explod]
type = Explod
trigger1 = time = 3
ID = 1150
anim = 7050
sprpriority = 2
postype = p1
pos = -100,-165
bindtime = -1
pausemovetime = -1
removetime = -2
ignorehitpause = 1
scale = 1,1
vel = 0,0
ownpal = 1
supermove = 0
persistent = 0

[State 1130,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1140
ctrl = 0

;Attack
[Statedef 1140]
type = A
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 1140
juggle = 5
poweradd = 0

[State 1140, Dust Helper]
type = Helper
trigger1 = animelem = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1140,laysnd]
type = playsnd
trigger1 = animelem = 1
value = 40,0

[State 1140,laysnd]
type = playsnd
trigger1 = animelem = 1
value = 1100,0

[State 1140, VelSet]
type = VelSet
trigger1 = time >= 0
x = 6
y = -11

[State 1140, VelSet]
type = VelSet
trigger1 = time >= 4
y = -9

[State 1140, VelSet]
type = VelSet
trigger1 = time >= 8
y = -3

[State 1140, VelSet]
type = VelSet
trigger1 = time >= 9
y = 0

[State 1140, VelSet]
type = VelSet
trigger1 = time >= 10
y = 5
x = 6

[State 1140, VelSet]
type = VelSet
trigger1 = time >= 12
y = 9

[State 1140, VelSet]
type = VelSet
trigger1 = time >= 16
y = 13

[State 1140,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1150
ctrl = 0

;Finish
[Statedef 1150] ;att middle
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 1150
juggle = 5
poweradd = 0

[State 1150,ChangeState]
type = Posset
trigger1 = time >= 0
y = 0

[State 1150, Landing Sound]
type = PlaySnd
trigger1 = Animelem = 1
value = 52,0

[State 1150, Landing Dust Explod]
type = Explod
trigger1 = Animelem = 1
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1150, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 1
attr = S, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
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

[State 1150, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
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

[State 1150, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 3
trigger1 = hitcount < 2
attr = S, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
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

[State 1150,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;SPIN SCYTHE
[StateDef 1200]
type = S
physics = S
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
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1220, ifElse(var(10) = 1, 1200, 1200))

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 10
trigger2 = animelem = 26
value = 1,5

[State 1200,3]
type = PlaySnd
trigger1 = animelem = 1
value = 1200,0

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 0
x = 1

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 10
x = 0.5

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 20
x = 0.25

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 30
x = 0

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 0
x = 1.5

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 10
x = 1

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 20
x = 0.5

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 30
x = 0

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 0
x = 2

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 10
x = 1

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 20
x = 0.5

[State 1200, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 30
x = 0

[State 1200, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 12
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 60, ifElse(var(10), 55, 50)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 60, ifElse(var(10), 55, 50)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 28
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 60, ifElse(var(10), 55, 50)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 60, ifElse(var(10), 55, 50)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 6, 12)
animType = Medium
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -12, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200,ChangeState]
type = ChangeState
;trigger1 = var(51) = 0
triggerall = time >= 22
trigger1 = command = "SpinScythe"
value = 1210
ctrl = 0

[State 1200,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Etra Kick
[Statedef 1210]
type = S
movetype = A
physics = S
;velset = 0
anim = 1210
ctrl = 0
juggle = 10
poweradd = 0

[State 1210,3]
type = PlaySnd
trigger1 = time = 6
value = 1200,1

[State 1210,3]
type = PlaySnd
trigger1 = time = 16
value = 1200,2

[State 1210, VelSet]
type = VelSet
trigger1 = time >= 0
x = 4

[State 1210, VelSet]
type = VelSet
trigger1 = time >= 10
x = 0

[State 1210, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 10 < 7, 7, fvar(11) * 10)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Medium
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1210, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 9
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 10 < 7, 7, fvar(11) * 10)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Medium
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3, -10
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -3, -10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1210,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;EX SPIN SCYTHE
[StateDef 1230]
type = S
physics = S
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
var(25) = 131

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-65 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1230, PlaySnd]
type = PlaySnd
trigger1 = animelem = 11
trigger2 = animelem = 27
trigger3 = animelem = 43
value = 1,5

[State 1230,3]
type = PlaySnd
trigger1 = animelem = 1
value = 1200,0

[State 1230, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2

[State 1230, VelSet]
type = VelSet
trigger1 = time >= 6
x = 4

[State 1230, VelSet]
type = VelSet
trigger1 = time >= 12
x = 2

[State 1230, VelSet]
type = VelSet
trigger1 = time >= 16
x = 0

[State 1230, VelSet]
type = VelSet
trigger1 = time >= 20
x = 2

[State 1230, VelSet]
type = VelSet
trigger1 = time >= 26
x = 4

[State 1230, VelSet]
type = VelSet
trigger1 = time >= 32
x = 2

[State 1230, VelSet]
type = VelSet
trigger1 = time >= 36
x = 0

[State 1230, VelSet]
type = VelSet
trigger1 = time >= 40
x = 2

[State 1230, VelSet]
type = VelSet
trigger1 = time >= 46
x = 4

[State 1230, VelSet]
type = VelSet
trigger1 = time >= 50
x = 2

[State 1230, VelSet]
type = VelSet
trigger1 = time >= 54
x = 0

[State 1230, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 12
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 37)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 4,10
guard.pausetime = 4,10
animType = Medium
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 28
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 37)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 4,10
guard.pausetime = 4,10
animType = Medium
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 44
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 4,10
guard.pausetime = 4,10
animType = Medium
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230,ChangeState]
type = ChangeState
trigger1 = animtime=0
value = 1235
ctrl = 0

;Finish
[Statedef 1235]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1235
ctrl = 0
juggle = 0
poweradd = 0

[State 1235, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 40,0

[State 1235,3]
type = PlaySnd
trigger1 = animelem = 1
value = 1200,0

[State 1235, VelSet]
type = VelSet
trigger1 = time >= 0
x = 6

[State 1235, VelSet]
type = VelSet
trigger1 = time >= 6
x = 5

[State 1235, VelSet]
type = VelSet
trigger1 = time >= 10
x = 4

[State 1235, VelSet]
type = VelSet
trigger1 = time >= 14
x = 2

[State 1235, VelSet]
type = VelSet
trigger1 = time >= 26
x = 0

[State 1230, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 4,10
guard.pausetime = 4,10
animType = Medium
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2, -12
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1235, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;RHINO HORN
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
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 20
statetype = A ;S,A,C,L
movetype = A ;I,A,H
physics = N ;A,C,S,N
;ignorehitpause =
;persistent =

[State 1300,3]
type = PlaySnd
trigger1 = animelem = 1
value = 1300,0

[State 1300, 8]
type = Velset
trigger1 = var(10) = 0
trigger1 = time >= 10
x = 1
y = 0

[State 1300, 8]
type = Velset
trigger1 = var(10) = 0
trigger1 = time >= 15
x = 2
y = 0

[State 1300, 8]
type = Velset
trigger1 = var(10) = 0
trigger1 = time >= 22
x = 4
y = -3

[State 1300, 8]
type = Velset
trigger1 = var(10) = 0
trigger1 = time >= 26
y = -2

[State 1300, 8]
type = Velset
trigger1 = var(10) = 0
trigger1 = time >= 26
y = -1

[State 1300, 8]
type = Velset
trigger1 = var(10) = 0
trigger1 = time >= 30
y = 0

[State 1300, 8]
type = Velset
trigger1 = var(10) = 0
trigger1 = time >= 34
x = 4
y = 1

[State 1300, 8]
type = Velset
trigger1 = var(10) = 0
trigger1 = time >= 38
x = 3
y = 2

[State 1300, 8]
type = Velset
trigger1 = var(10) = 0
trigger1 = time >= 42
x = 2
y = 4

[State 1300, 8]
type = Velset
trigger1 = var(10) = 0
trigger1 = time >= 44
x = 2
y = 6

[State 1300, 8]
type = Velset
trigger1 = var(10) = 0
trigger1 = time >= 48
x = 2
y = 8

[State 1300, 8]
type = Velset
trigger1 = var(10) = 1
trigger1 = time >= 10
x = 2
y = 0

[State 1300, 8]
type = Velset
trigger1 = var(10) = 1
trigger1 = time >= 15
x = 3
y = 0

[State 1300, 8]
type = Velset
trigger1 = var(10) = 1
trigger1 = time >= 22
x = 4
y = -5

[State 1300, 8]
type = Velset
trigger1 = var(10) = 1
trigger1 = time >= 26
y = -3.5

[State 1300, 8]
type = Velset
trigger1 = var(10) = 1
trigger1 = time >= 26
y = -1.5

[State 1300, 8]
type = Velset
trigger1 = var(10) = 1
trigger1 = time >= 30
y = -1.5

[State 1300, 8]
type = Velset
trigger1 = var(10) = 1
trigger1 = time >= 34
x = 8
y = 1

[State 1300, 8]
type = Velset
trigger1 = var(10) = 1
trigger1 = time >= 38
x = 6
y = 2

[State 1300, 8]
type = Velset
trigger1 = var(10) = 1
trigger1 = time >= 42
x = 3
y = 4

[State 1300, 8]
type = Velset
trigger1 = var(10) = 1
trigger1 = time >= 44
x = 3
y = 6

[State 1300, 8]
type = Velset
trigger1 = var(10) = 1
trigger1 = time >= 48
x = 2
y = 8

[State 1300, 8]
type = Velset
trigger1 = var(10) = 2
trigger1 = time >= 10
x = 2
y = 0

[State 1300, 8]
type = Velset
trigger1 = var(10) = 2
trigger1 = time >= 15
x = 4
y = 0

[State 1300, 8]
type = Velset
trigger1 = var(10) = 2
trigger1 = time >= 22
x = 6
y = -6

[State 1300, 8]
type = Velset
trigger1 = var(10) = 2
trigger1 = time >= 26
y = -4

[State 1300, 8]
type = Velset
trigger1 = var(10) = 2
trigger1 = time >= 26
y = -2

[State 1300, 8]
type = Velset
trigger1 = var(10) = 2
trigger1 = time >= 30
y = -1

[State 1300, 8]
type = Velset
trigger1 = var(10) = 2
trigger1 = time >= 34
x = 10
y = 1

[State 1300, 8]
type = Velset
trigger1 = var(10) = 2
trigger1 = time >= 38
x = 8
y = 2

[State 1300, 8]
type = Velset
trigger1 = var(10) = 2
trigger1 = time >= 42
x = 6
y = 4

[State 1300, 8]
type = Velset
trigger1 = var(10) = 2
trigger1 = time >= 44
x = 4
y = 6

[State 1300, 8]
type = Velset
trigger1 = var(10) = 2
trigger1 = time >= 48
x = 2
y = 8

[State 1300, Dust Helper]
type = Helper
trigger1 = animelem = 21
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1300, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 21
trigger1 = hitcount < 1
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 44, ifElse(var(10), 40, 55)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 44, ifElse(var(10), 40, 55)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -12, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
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

[State 1300, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 22
trigger1 = hitcount < 1
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 44, ifElse(var(10), 40, 55)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 44, ifElse(var(10), 40, 55)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -12, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
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

[State 1300, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 23
trigger1 = hitcount < 1
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 44, ifElse(var(10), 40, 55)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 44, ifElse(var(10), 40, 55)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -12, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
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

[State 1300, HitDef 4]
type = HitDef
triggerall = var(10) = 0
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 26
trigger1 = hitcount < 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 44, ifElse(var(10), 40, 55)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 44, ifElse(var(10), 40, 55)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2, -10
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
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

[State 1300, HitDef 5]
type = HitDef
triggerall = var(10) = 0
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 32
trigger1 = hitcount < 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 44, ifElse(var(10), 40, 55)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 44, ifElse(var(10), 40, 55)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2, -8
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
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

[State 1300, HitDef 4]
type = HitDef
triggerall = var(10) = [1,2]
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 26
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 44, ifElse(var(10), 40, 55)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 44, ifElse(var(10), 40, 55)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
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

[State 1300, HitDef 5]
type = HitDef
triggerall = var(10) = [1,2]
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 32
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 44, ifElse(var(10), 40, 55)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 44, ifElse(var(10), 40, 55)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5, -6
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -5, -6
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
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

[State 1300,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1310
ctrl = 0

;Finish
[Statedef 1310]
type = S
movetype = I
physics = S
velset = 0, 0
ctrl = 0
anim = 1310
juggle = 0
poweradd = 0

[State 1310, Landing Sound]
type = PlaySnd
trigger1 = Animelem = 1
value = 52,0

[State 1310, Landing Dust Explod]
type = Explod
trigger1 = Animelem = 1
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1310,ChangeState]
type = Posset
trigger1 = time >= 0
y = 0

[State 1310,ChangeState]
type = Velset
trigger1 = time >= 0
x = 2

[State 1310,ChangeState]
type = Velset
trigger1 = time >= 4
x = 1

[State 1310,ChangeState]
type = Velset
trigger1 = time >= 8
x = 0

[State 1310,ChangeState]
type = ChangeState
trigger1 = time = 18
value = 0
ctrl = 1

;EX RHINO HORN
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

[State 1330, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

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
var(25) = 131

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1330, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 20
statetype = A ;S,A,C,L
movetype = A ;I,A,H
physics = N ;A,C,S,N
;ignorehitpause =
;persistent =

[State 1330,3]
type = PlaySnd
trigger1 = animelem = 1
value = 1300,0

[State 1330, 8]
type = Velset
trigger1 = time >= 10
x = 2
y = 0

[State 1330, 8]
type = Velset
trigger1 = time >= 15
x = 5
y = 0

[State 1330, 8]
type = Velset
trigger1 = time >= 22
x = 7
y = -6

[State 1330, 8]
type = Velset
trigger1 = time >= 26
y = -4

[State 1330, 8]
type = Velset
trigger1 = time >= 26
y = -2

[State 1330, 8]
type = Velset
trigger1 = time >= 30
y = -1

[State 1330, 8]
type = Velset
trigger1 = time >= 34
x = 11
y = 1

[State 1330, 8]
type = Velset
trigger1 = time >= 38
x = 9
y = 2

[State 1330, 8]
type = Velset
trigger1 = time >= 42
x = 7
y = 4

[State 1330, 8]
type = Velset
trigger1 = time >= 44
x = 5
y = 6

[State 1330, 8]
type = Velset
trigger1 = time >= 48
x = 3
y = 8

[State 1330, Dust Helper]
type = Helper
trigger1 = animelem = 21
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1330, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 21
trigger1 = hitcount < 1
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -10, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
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

[State 1330, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 22
trigger1 = hitcount < 1
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -10, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
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

[State 1330, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 23
trigger1 = hitcount < 1
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -10, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
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

[State 1330, HitDef 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 26
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
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

[State 1330, HitDef 5]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 31
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
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

[State 1330, HitDef 6]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 32
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5, -6
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -5, -6
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
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

[State 1330,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1310
ctrl = 0

;SCRATCH WHEEL
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
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1400, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1400, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1420, ifElse(var(10) = 1, 1410, 1400))

[State 1400, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 3

[State 1400, HitBy]
type = HitBy
trigger1 = time = 3
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 40,0

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 1400,0

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 4
x = 0.8
y = -6

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 6
y = -4

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 10
y = -2

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 14
y = -1

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 18
y = 1

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 22
x = 0
y = 3

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 24
y = 5

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 28
y = 8

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 32
y = 10

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time >= 35
y = 12

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 0
x = 1.6

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 6
y = -10

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 10
y = -3

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 14
y = -1

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 20
y = 0.5

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 23
x = 0
y = 1

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 26
x = -1
y = 3

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 29
y = 8

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 32
y = 10

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time >= 35
y = 12

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 8
x = 2
y = -10

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 10
y = -9

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 14
y = -8

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 16
y = -4

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 18
y = -2

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 22
y = -1

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 24
x = 0
y = 1

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 26
y = 2

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 28
y = 5

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 29
y = 7

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 32
y = 9

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 36
y = 10

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 40
y = 12

[State 1400, VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time >= 44
y = 16

[State 1400, Explod]
type = Explod
trigger1 = var(10) = 0
trigger1 = Time = 10
anim = 7020
ID = 1400
sprpriority = 1
postype = p1
pos = 2,-30
bindtime = -1
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1
persistent = 0
removeongethit = 1

[State 1400, Explod]
type = Explod
trigger1 = var(10) = 1
trigger1 = Time = 6
anim = 7020
ID = 1400
sprpriority = 1
postype = p1
pos = 2,-30
bindtime = -1
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1
persistent = 0
removeongethit = 1

[State 1400, Explod]
type = Explod
trigger1 = var(10) = 2
trigger1 = Time = 6
anim = 7030
ID = 1400
sprpriority = 1
postype = p1
pos = 2,-30
bindtime = -1
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1
persistent = 0
removeongethit = 1

[State 1400, Dust Helper]
type = Helper
trigger1 = animelem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1400, HitDef 1]
type = HitDef
triggerall = var(10) = 0
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Time = 0
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 42, ifElse(var(10), 57, 105)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 42, ifElse(var(10), 57, 105)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2, -12
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, HitDef 1]
type = HitDef
triggerall = var(10) = 1
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Animelem = 2
trigger1 = hitcount < 2
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 42, ifElse(var(10), 58, 105)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 42, ifElse(var(10), 58, 105)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, HitDef 2]
type = HitDef
triggerall = var(10) = 1
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Animelem = 3
trigger1 = hitcount < 2
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 42, ifElse(var(10), 58, 105)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 42, ifElse(var(10), 58, 105)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, -10
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
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

[State 1400, HitDef 3]
type = HitDef
triggerall = var(10) = 1
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Animelem = 4
trigger1 = hitcount < 2
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 42, ifElse(var(10), 58, 105)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 42, ifElse(var(10), 58, 105)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, -10
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, HitDef 1]
type = HitDef
triggerall = var(10) = 2
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Animelem = 2
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 42, ifElse(var(10), 58, 105)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 42, ifElse(var(10), 58, 105)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, HitDef 2]
type = HitDef
triggerall = var(10) = 2
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = Animelem = 3
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 42, ifElse(var(10), 58, 105)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 42, ifElse(var(10), 58, 105)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, -10
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
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

[State 1400, HitDef 3]
type = HitDef
triggerall = var(10) = 2
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = Animelem = 4
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 42, ifElse(var(10), 58, 105)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 42, ifElse(var(10), 58, 105)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, -12
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1410
ctrl = 0

;Finish
[Statedef 1410]
type = S
movetype = I
physics = S
velset = 0, 0
ctrl = 0
anim = 1401
juggle = 0
poweradd = 0

[State 1410, Landing Sound]
type = PlaySnd
trigger1 = Animelem = 1
value = 52,0

[State 1410, Landing Dust Explod]
type = Explod
trigger1 = Animelem = 1
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1410,ChangeState]
type = Posset
trigger1 = time >= 0
y = 0

[State 1410,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;EX SCRATCH WHEEL
[StateDef 1430]
type = S
physics = S
moveType = A
anim = 1420
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
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
var(25) = 131

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-65 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1430, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 3

[State 1430, HitBy]
type = HitBy
trigger1 = time = 3
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 1430, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 40,0

[State 1430, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 1400,0

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 8
x = 2
y = -10

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 10
y = -9

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 14
y = -8

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 16
y = -4

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 18
y = -2

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 22
y = -1

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 24
x = 0
y = 1

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 26
y = 2

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 28
y = 5

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 29
y = 7

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 32
y = 9

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 36
y = 11

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 40
y = 13

[State 1430, VelSet]
type = VelSet
trigger1 = time >= 44
y = 17

[State 1430, Explod]
type = Explod
trigger1 = Time = 6
anim = 7030
ID = 1400
sprpriority = 1
postype = p1
pos = 2,-30
bindtime = -1
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1
persistent = 0
removeongethit = 1

[State 1430, Dust Helper]
type = Helper
trigger1 = animelem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1430, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Animelem = 2
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, 0
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = Animelem = 3
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, -10
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
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

[State 1430, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = Animelem = 4
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, -12
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, HitDef 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = Animelem = 5
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6, -12
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1410
ctrl = 0

;PUNCH ZERO COUNTER
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
trigger1 = AnimElemTime(12) < 0
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

[State 2900, VelSet]
type = VelSet
trigger1 = time>= 33
x = -6

[State 2900, VelSet]
type = VelSet
trigger1 = time>= 34
x = 0

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = Time = 0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 55 < 7, 7, fvar(11) * 55)), 0
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
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(14) >= 0
movetype = I

[State 2900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;KICK ZERO COUNTER
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
trigger1 = AnimElem = 2
value = 4, 4
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 2910, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0

[State 2910, VelSet]
type = VelSet
trigger1 = time >= 6
x = 2

[State 2910, VelSet]
type = VelSet
trigger1 = time >= 14
x = 1

[State 2910, VelSet]
type = VelSet
trigger1 = time >= 20
x = 0

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = Time = 0
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 55 < 7, 7, fvar(11) * 55)), 0
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
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 196), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
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
