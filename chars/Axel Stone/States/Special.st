; _______________________________________
;| Axel Stone by Testament |
; 
;==
;SPECIAL MOVES>=
;==

;BARE KNUCKLE
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


[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,0
channel = 0

[State 1000, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11 && var(10) = 2
value = 1,5

[State 1000, Hurricane Upper Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 12 && var(10) = 2
value = 1000, 1


[State 1120, FX]
type = Explod
trigger1 = AnimElem = 1
anim = 1005
ID = 1005
postype = p1
pos = 10,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 0
persistent = 0
ontop = 1
scale = .8,.9

[State 1120, FX]
type = Explod
trigger1 = AnimElem = 5
anim = 1006
ID = 1006
postype = p1
pos = 4,-17
bindtime = -1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0
persistent = 0
ontop = 0
scale = 1,1

[State 1300, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
ID = 1300
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
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
ground.velocity = ifElse(var(20), -2.83, -2.64), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.03, -2.14)
guard.cornerPush.velOff = 0
air.velocity = -1.25, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120


[State 1300, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 6
ID = 1300
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 77, ifElse(var(10) = 1, 70, 63)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 77, ifElse(var(10) = 1, 70, 63)))), 7
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
ground.velocity = -6.25, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -6.25, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 49), var(36) := -36
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;EX BARE KNUCKLE
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

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 0, -55
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1


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
var(25) = 78

[State 1030, VarSet]
type = VarSet
trigger1 = !Time
var(47) = 0

[State 1120, FX]
type = Explod
trigger1 = AnimElem = 1
anim = 1005
ID = 1005
postype = p1
pos = 10,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 0
persistent = 0
ontop = 1
scale = .9,1

[State 1120, FX]
type = Explod
trigger1 = AnimElem = 5
anim = 1006
ID = 1006
postype = p1
pos = 4,-17
bindtime = -1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0
persistent = 0
ontop = 0
scale = 1,1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1030, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,0
channel = 0


[State 1030, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
trigger3 = AnimElem = 20
value = 1,5

[State 1030, Hurricane Upper Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 12
trigger3 = AnimElem = 21
value = 1000, 1


[State 6000, Helper]
type = Helper
trigger1 = animelem = 1
helpertype = player ;player
name = "Projectile Blocker"
ID = 1055
stateno = 1055
postype = p1
pos = ceil(0*.5), ceil(0*.5)
ownpal = 1
ignorehitpause = 0


[State 1300, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
ID = 1300
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 5
getPower = 0
givePower = 0, 0
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
ground.velocity = ifElse(var(20), -2.83, -2.64), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.03, -2.14)
guard.cornerPush.velOff = 0
air.velocity = -1.25, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120


[State 1300, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
ID = 1300
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 5
getPower = 0
givePower = 0, 0
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
ground.velocity = ifElse(var(20), -2.83, -2.64), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.03, -2.14)
guard.cornerPush.velOff = 0
air.velocity = -1.25, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120


[State 1300, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 6
ID = 1300
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 77, ifElse(var(10) = 1, 70, 63)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 77, ifElse(var(10) = 1, 70, 63)))), 7
getPower = 0
givePower = 0, 0
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
ground.velocity = -6.25, 3.125
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -6.25, 3.125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 49), var(36) := -36
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;GRAND UPPER
;==
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

[State 0, VelSet]
type = VelSet
trigger1 = time = [6,13]
x = 6
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 0
;ignorehitpause =
;persistent =

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 2
;ignorehitpause =
;persistent =

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 2
;ignorehitpause =
;persistent =



[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1101
ID = 7000
pos = 43,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0
;persistent =




[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1102
ID = 7001
pos = 43,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1103
ID = 7002
pos = 36,-25
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0
;persistent =



[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1100, 0
channel = 0

[State 1100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100, 1
channel = 1



[State 1100, HitDef]
type = HitDef
trigger1 = animelem=3 && anim=1100 
trigger1 = !var(16) && (var(15) < 1 || var(20))
attr = S, SA
hitflag = MAF
guardFlag = MA
priority = 4, Hit
damage = 20,4
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = med
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 8
air.hitTime = 120
ground.velocity = -3.32
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -1.4,-3
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
forceStand = 1
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -16
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envshake.time = 7
envshake.ampl = 3
envShake.freq = 120

[State 1100, HitDef]
type = HitDef
trigger1 = animelem=5 && anim=1100 
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 100,10
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
ground.velocity = -4.32, -7.49
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
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
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;GRAND UPPER 2
;==
[StateDef 1110]
type = S
physics = N
moveType = A
anim = 1110
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = [7,19]
x = 5
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 0
;ignorehitpause =
;persistent =

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 5
;ignorehitpause =
;persistent =

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 5
;ignorehitpause =
;persistent =



[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1101
ID = 7000
pos = 43,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0
;persistent =




[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1102
ID = 7001
pos = 43,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1103
ID = 7002
pos = 36,-25
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0
;persistent =



[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100, 0
channel = 0

[State 1100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100, 1
channel = 1

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3


[State 1100, HitDef]
type = HitDef
trigger1 = animelem=3 && anim=1110 
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger2 = animelem=4 && anim=1110 
attr = S, SA
hitflag = MAF
guardFlag = MA
priority = 4, Hit
damage = 20,4
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = med
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 8
air.hitTime = 120
ground.velocity = -3.32
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -1.4,-3
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
forceStand = 1
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -16
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envshake.time = 7
envshake.ampl = 3
envShake.freq = 120

[State 1100, HitDef]
type = HitDef
trigger1 = animelem=5 && anim=1110 
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 74,9
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
ground.velocity = -4.32, -7.49
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
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
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;GRAND UPPER 3
;==
[StateDef 1120]
type = S
physics = N
moveType = A
anim = 1110
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = [7,19]
x = 6
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 0
;ignorehitpause =
;persistent =

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 5
;ignorehitpause =
;persistent =

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 5
;ignorehitpause =
;persistent =



[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1101
ID = 7000
pos = 43,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0
;persistent =




[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1102
ID = 7001
pos = 43,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1103
ID = 7002
pos = 36,-25
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = .5,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0
;persistent =



[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100, 0
channel = 0

[State 1100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100, 1
channel = 1

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3


[State 1000, 1]
type = HitDef
trigger1 = AnimElem = 3 && anim=1110 
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger2 = animelem = 4 && anim=1110 
attr = S, SA
damage = 15,3
animtype = med
guardflag = MA
hitflag = MAF
priority = 3, Hit
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -16
ground.type = low
ground.slidetime = 8
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -3
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 18
envshake.time = 7
envshake.ampl = 3
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 1000, 1]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 5&& anim=1110 
attr = S, SA
damage = 30,2
animtype = heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7, 7
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -16
ground.type = low
ground.slidetime = 8
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 18
envshake.time = 7
envshake.ampl = 3
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 1000, 1]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 7 && anim=1110 
attr = S, SA
damage = 53,8
animtype = Hard
guardflag = MA
hitflag = MAF
fall = 1
fall.recover = 0
priority = 3, Hit
pausetime = 12, 12
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -68
ground.type = low
ground.slidetime = 8
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = -5,-5
airguard.velocity = -4.9,-.8
air.type = High
air.velocity = -5.4,-5
air.hittime = 20
envshake.time = 12
envshake.ampl = 3
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; EX GRAND UPPER
;==
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 2

[State 1030, Hadoken Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1100, 0
channel = 1

[State 1100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100, 1
channel = 0



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
var(25) = 18

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 18, -45
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = [6,13]
x = 7
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 0
;ignorehitpause =
;persistent =

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 2
;ignorehitpause =
;persistent =

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 2
;ignorehitpause =
;persistent =



[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1101
ID = 7000
pos = 43,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 10
supermove
pausemove
scale = 1.1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0
;persistent =




[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1102
ID = 7001
pos = 43,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1.1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1103
ID = 7002
pos = 28,-10
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = .6,.6
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0
;persistent =


[State 1000, 1]
type = HitDef
trigger1 = AnimElem = 3 && anim=1100 
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger2 = animelem = 4 && anim=1100 
attr = S, SA
damage = 20,3
animtype = med
guardflag = MA
hitflag = MAF
priority = 3, Hit
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -16
ground.type = low
ground.slidetime = 8
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -3
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 18
envshake.time = 7
envshake.ampl = 3
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 1100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 5 && anim=1100 
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 90,10
getPower = 0
givePower = 0, 0
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animtype=Diagup
ground.type = High
air.type = High
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.32, -8.99
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall=1
fall.recover=0;1
;fall.recovertime=35
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;BURNING CRUSHER
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

[State 1200, Button Detect (Normal)]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))


[State 1120, FX]
type = Explod
trigger1 = AnimElem = 4
anim = 1201
ID = 1005
postype = p1
pos = 50,-10
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 0
persistent = 0
ontop = 0
scale = .5,.5


[State 1200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0 && var(10) != 2
trigger2 = AnimElemTime(5) < 0 && var(10) = 2
value = SCA
time = 1

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200,0
channel = 0

[State 1200, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 1


[State 1200, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1200,1
channel = 4

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
stateType = A
physics = N



[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 0 && var(10)
x = -0.025

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 1200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4 && var(10) = 2
x = 15

[State 1200, LK HitDef (Ground)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5 && !var(10)
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
air.hitTime = 120
ground.slidetime = 25 + 2 * var(9)
ground.hittime = 25 + 2 * var(9)
guard.hittime = (25 + 2 * var(9)) - 6
ground.velocity = -12,-4
guard.velocity = -5.5
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.velocity = -12,-4
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
sparkXY = -10 + 0 * (var(35) := 80), var(36):=-60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120


[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;==
;EX BURNING CRUSHER 
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
posType = P1
pos = -3, -59
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1

[State 1120, FX]
type = Explod
trigger1 = AnimElem = 4
anim = 1201
ID = 1005
postype = p1
pos = 50,-10
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 0
persistent = 0
ontop = 0
scale = .5,.5


[State 1200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0 && var(10) != 2
trigger2 = AnimElemTime(5) < 0 && var(10) = 2
value = SCA
time = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 0


[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200,0
channel = 1

[State 1200, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 2


[State 1200, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1200,1
channel = 4

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
stateType = A
physics = N


[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 6
[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 4
[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 1
[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0


[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 0 && var(10)
x = -0.025

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0


[State 1200, LK HitDef (Ground)]
type = HitDef
triggerall = !NumTarget(1230)
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5 
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
ID=1230
getPower = 0
givePower = 0, 0
damage = ceil(ifElse(fvar(11) * 110 < 7, 7, fvar(11) * 110)), 10
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
air.hitTime = 120
ground.slidetime = 25 + 2 * var(9)
ground.hittime = 25 + 2 * var(9)
guard.hittime = (25 + 2 * var(9)) - 6
ground.velocity = -12,-4
guard.velocity = -5.5
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.velocity = -12,-4
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
sparkXY = -10 + 0 * (var(35) := 80), var(36):=-60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120


[State 1235, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1230)
trigger1 = (Target(1230), StateNo = 5000) || (Target(1230), StateNo = 5010) || (Target(1230), StateNo = 5020)
value = 1236
ID = 1230
ignoreHitPause = 1

[State 1230, Flame Particles]
type = Helper
trigger1 = AnimElemTime(5) > 0
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


[State 1235, VarSet: No Juggle Check]
type = VarSet
trigger1 = MoveHit=1 && NumTarget
var(15) = 0

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1




;Being Launched
[StateDef 1236]
type = A
moveType = H
physics = N
velSet = 0,0

[State 1031, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5002

[State 1031, End]
type = ChangeState
trigger1 = HitShakeOver
value = 1237

;Heading Towards Wall
[StateDef 1237]
type = A
moveType = H
physics = N

[State 1032, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 1032, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 1032, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,1

[State 1032, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1032, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5052), 5052, 5030)

[State 1032, Bounce Off Wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10 || FrontEdgeBodyDist <= 10
value = 1238

[State 1032, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;Impacting Wall
[StateDef 1238]
type = A
moveType = H
physics = N

[State 1033, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 1033, PosSet]
type = PosSet
trigger1 = 1
x = -160 * Facing

[State 1033, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1033, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,1

[State 1033, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 1033, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5010


[State 1200, Shake Screen]
type = EnvShake
trigger1 = time = 0
time = 16 
ampl = 6 
freq = 150

[State 1033, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = 5000,11

[State 1033, End]
type = ChangeState
trigger1 = Time >= 4
value = 1239


;Bouncing Off Wall
[Statedef 1239]
type = A
moveType = H
physics = N

[State 1034, Turn]
type = Turn
trigger1 = !Time

[State 1034, Gravity]
type = VelAdd
trigger1 = 1
y = 0.5

[State 1034, VelSet]
type = VelSet
trigger1 = !Time
x = -2.5 ;-2.85
y = -8.5

[State 1034, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 1034, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1034, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 1034, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0

[State 1034, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1034, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;GOLDEN HEEL>=
[StateDef 1300]
type = S
physics =C
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
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist x > 155, 2, ifElse(P2Dist x > 145, 1, 0))

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1320, ifElse(var(10) = 1, 1310, 1300))

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1300,0
channel = 0

[State 1300, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 40,0
channel = 1

[State 1300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 3

[State 1300, Golden Heel Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1300,1
channel = 4

[State 1300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
stateType = A
physics = N


[State 110, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1
pos=15,0

[State 101, Skid Dust]
type = Explod
trigger1 = AnimElem = 6
anim = 8104
sprPriority=3
posType = P1
pos = 50,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1




[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = ifElse(var(10) = 2, 8.2, ifElse(var(10) = 1, 6.8, 4.8))
y= 0

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = ifElse(var(10) = 2, 2.6, ifElse(var(10) = 1, 2.4, 2.2))




[State 1300, Air Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
ID = 1300
attr = C, SA
guardflag = LA
hitflag = MAF
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 0, 63, ifElse(var(10) = 1, 70, 77)) < 7, 7, fvar(11) * ifElse(var(10) = 0, ifElse(NumTarget(1300), 42, 63), ifElse(var(10) = 1, ifElse(NumTarget(1300), 47, 70), ifElse(NumTarget(1300), 51, 77))))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pausetime = 12,12
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
down.hitTime = 20
ground.velocity=-1.33,-6.85
ground.cornerPush.velOff = 0
guard.velocity= ifelse(var(20), -6.83, -12.65)
guard.cornerPush.velOff = 0
air.velocity=-1.33,-6.85
down.velocity=-4,-4
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(15) < 2 && NumTarget(1300)) || var(20))
trigger1 = AnimElem = 5
trigger1= !movecontact && !movereversed && prevstateno!=750 
ID = 1301
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 0, 63, ifElse(var(10) = 1, 70, 77)) < 7, 7, fvar(11) * ifElse(var(10) = 0, ifElse(NumTarget(1300), 42, 63), ifElse(var(10) = 1, ifElse(NumTarget(1300), 47, 70), ifElse(NumTarget(1300), 51, 77))))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pausetime = 14,14
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
down.hitTime = 20
ground.velocity= -6.83, 0
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -5.40, 6.57
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State -3, Xe[gύX]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



;EX GOLDEN HEEL>=
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
var(25) = 32

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 8, -65
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1
loop=0


[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,0
channel = 2
loop=0

[State 1200, Fire Sound]
type = PlaySnd
trigger1 = Time=11
value = 1200,1
channel = 3


[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3 && Anim = 1430
stateType = A
physics = N


[State 1330, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 2

[State 1330, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 11

[State 1330, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 0
x = -0.65


[State 110, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1
pos=15,0

[State 101, Skid Dust]
type = Explod
trigger1 = AnimElem = 8
anim = 8104
sprPriority=3
posType = P1
pos = 50,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 5&& anim=1330
anim = 1101
ID = 7000
pos = 43,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 10
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0
;persistent =



[State 0, Explod]
type = Explod
trigger1 = animelem = 6 && anim=1330
anim = 1101
ID = 7000
pos = 43,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 10
supermove
pausemove
scale = 1.1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0
;persistent =


[State 0, Explod]
type = Explod
trigger1 = animelem = 7 && anim=1330
anim = 1102
ID = 7001
pos = 43,0
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 1130, RemoveExplod]
type = RemoveExplod
trigger1 = MoveHit || (pos y > -vel y && Anim = 1330)
ID = 7000
ignoreHitPause = 1


[State 1140, HitDef]
type = HitDef
trigger1 = AnimElem = 6
trigger1 = !var(16) && (var(15) < 2 || var(20))
ID = 1330
attr = A, SA
hitFlag = MAF
guardflag = LA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 12
getPower = 0,0
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
ground.velocity = -2.3,-5.5
guard.velocity = -8
air.velocity = -2.5,-5.5
airguard.velocity = -6.67,1
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
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
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -22
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120


[State 1330, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State -3, Xe[gύX]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 1130, ChangeState: Follow Up]
type = ChangeState
trigger1 = MoveHit
value = 1335

;------------------------------
[StateDef 1335]
type = A
physics = N
moveType = A
anim = 1335
velSet = 0


[State 1330, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 19

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1300,0
channel = 0

[State 1300, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 40,0
channel = 1

[State 1300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 3

[State 1300, Golden Heel Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1300,1
channel = 4

[State 1300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
stateType = A
physics = N

[State 1300, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Golden Heel Dust"
posType = P1
ownPal = 1

[State 1414, efect]
type = explod
trigger1 = AnimElem = 6
persistent = 0
anim = 130777
pos = 60,-100
scale = 1, 1
postype = p1
sprpriority = 3

[State 1414, efect]
type = explod
trigger1 = AnimElem = 6
persistent = 0
anim = 130666
pos = -5,10
scale = .9, .9
postype = p1
removetime = 9
sprpriority = 1
removeongethit = 1


[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x =2.6
y= -7.9

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 4
y=-2

[State 1300, VelSet]
type = Veladd
trigger1 = AnimElemTime(5) >= 0
y=.45




[State 1300, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || (var(15) < 2 && NumTarget(1330)) || var(20))
trigger1 = AnimElem = 6
ID = 1301
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 0, 63, ifElse(var(10) = 1, 70, 77)) < 7, 7, fvar(11) * ifElse(var(10) = 0, ifElse(NumTarget(1300), 42, 63), ifElse(var(10) = 1, ifElse(NumTarget(1300), 47, 70), ifElse(NumTarget(1300), 51, 77))))), 7
pausetime = 14,14
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
down.hitTime = 20
ground.velocity = 0, 6.57
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.40, 6.57
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
sparkXY = -10 + 0 * (var(35) := 49), var(36) := -36
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120


[State 200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 1335
elem = 7
ignoreHitPause = 1


[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1300, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;TNT PUNCH>=
;Slash Kick
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

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist x > 250, 2, ifElse(P2Dist x > 200, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1420, ifElse(var(10) = 1, 1410, 1400))



[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,0
channel = 2

[State 1200, Fire Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 3

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = ifElse(Anim = 1420, 9.0, ifElse(Anim = 1410, 6.5, 5.5))
y = ifElse(Anim = 1420, -2.55, ifElse(Anim = 1410, -2.3, -2.0))

[State 1100, Gravity]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
y = 0.25

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Slash Kick Dust"
posType = P1
ownPal = 1

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 3
trigger1 = !var(16) && (var(15) < 1 || var(20))
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 77, ifElse(var(10) = 1, 84, 91)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 77, ifElse(var(10) = 1, 84, 91)))), ifElse(var(10) = 2, 11, ifElse(var(10) = 1, 10, 9))
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
ground.velocity = -4.32, -7.49
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
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
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1401


;Landing
[StateDef 1401]
type = S
physics = S
moveType = I
Anim = 1401
velSet = 0,0

[State 1101, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1101, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1101, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1101, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;EX SLASH KICK>=
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
var(25) = 32

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 18, -60
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1
loop=0


[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,0
channel = 2
loop=0

[State 1200, Fire Sound]
type = PlaySnd
trigger1 = Time=11
value = 1200,1
channel = 3


[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3 && Anim = 1430
stateType = A
physics = N

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 2 && Anim = 1430
x = 11.5
y = -3.25

[State 1130, Gravity]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0 && Anim = 1430
y = 0.25

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElem = 2 && Anim = 1430
helperType = Normal
stateNo = 8100
ID = 8100
name = "Slash Kick Dust"
posType = P1
ownPal = 1

[State 1130, EX Slash Kick FX]
type = Explod
trigger1 = AnimElem = 2
anim = 1436
ID = 1135
sprPriority = 4
posType = P1
pos = 0,-16
bindTime = -1
scale = 1,0.75
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1
removeongethit = 1
ignorehitpause = 0
persistent = 0
ontop = 1


[State 1130, RemoveExplod]
type = RemoveExplod
trigger1 = MoveHit || (pos y > -vel y && Anim = 1430)
ID = 1135
ignoreHitPause = 1


[State 1130, HitDef]
type = HitDef
trigger1 = AnimElem = 4
trigger1 = !var(16) && (var(15) < 1 || var(20))
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 12
getPower = 0,0
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
ground.velocity = -4.32, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -2;-7.49
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = ifElse(EnemyNear, StateType = A, 1, 0)
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = Anim = 1401
moveType = I

[State 1130, ChangeAnim]
type = ChangeAnim
trigger1 = pos y > -vel y && Anim = 1430
value = 1401

[State 1130, VelSet]
type = VelSet
trigger1 = Anim = 1401
x = 0
y = 0

[State 1130, PosSet]
type = PosSet
trigger1 = Anim = 1401
y = 0

[State 1130, Landing Dust Explod]
type = Explod
trigger1 = Anim = 1401 && AnimElemTime(1) = 0
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130 Landing Sound]
type = PlaySnd
trigger1 = Anim = 1401 && AnimElemTime(1) = 0
value = 52,0

[State 1130, ChangeState: End]
type = ChangeState
trigger1 = Anim = 1401 && !AnimTime
value = 0
ctrl = 1

[State 1130, ChangeState: Follow Up]
type = ChangeState
trigger1 = MoveHit
value = 1440


;EX Slash Kick Follow Up
[StateDef 1440]
type = A
physics = N
moveType = A
anim = 1435
velSet = 4,0

[State 1140, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 16


[State 1200, Fire Sound]
type = PlaySnd
trigger1 = Time=6
value = 1,2
channel = 1

[State 1120, FX]
type = Explod
trigger1 = AnimElem = 3
anim = 1437
ID = 1437
postype = p1
pos = 28,-13
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 0
persistent = 0
ontop = 1
scale = 1,1

[State 105, 1]
type = VelAdd
trigger1 = AnimElemTime(3) > 1
y = .75

[State 1140, HitDef]
type = HitDef
trigger1 = AnimElem = 3
trigger1 = !var(16) && (var(15) < 2 || var(20))
ID = 1140
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 12
getPower = 0,0
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
ground.velocity = -4,-5.5
guard.velocity = -8
air.velocity = -5,3.5
airguard.velocity = -6.67,1
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
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
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -22
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120


[State 1140, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1440)
trigger1 = (Target(1440), StateNo = 5000) || (Target(1440), StateNo = 5010) || (Target(1440), StateNo = 5020)
value = 1145
ID = 1140
ignoreHitPause = 1

[State 1140, End]
type = ChangeState
trigger1 = AnimElem = 4
value = 1441


;EX Slash Kick Follow up (Falling)
[StateDef 1441]
type = A
physics = A
moveType = I

[State 1141, Gravity]
type = VelAdd
trigger1 = 1
y = 0.3

[State 1141, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1442


;Landing
[StateDef 1442]
type = S
physics = S
moveType = I
anim = 47
velSet = 0,0

[State 1142, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1142, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1142, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1142, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;HIT BY EX SLASH KICK>=
;Being Launched
[StateDef 1145]
type = A
moveType = H
physics = N
velSet = 0,0

[State 1145, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5002

[State 1146, End]
type = ChangeState
trigger1 = HitShakeOver
value = 1446


;Heading Towards Wall
[StateDef 1146]
type = A
moveType = H
physics = N

[State 1146, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 1146, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 1146, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,1
ignoreHitPause = 1

[State 1146, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1146, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030

[State 1146, Bounce Off Wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10 || FrontEdgeBodyDist <= 10
value = 1147

[State 1146, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;Impacting Wall
[StateDef 1147]
type = A
moveType = H
physics = N

[State 1147, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 1147, PosSet]
type = PosSet
trigger1 = 1
x = -160 * Facing

[State 1147, Hitting the Wall FX]
type = Explod
trigger1= !Time
anim = F72
pos = 0, floor(ScreenPos y) - 50
posType = Back
sprPriority = 3

[State 1147, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1147, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,1
ignoreHitPause = 1

[State 1147, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignoreHitPause = 1

[State 1147, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5000

[State 1147, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,0

[State 1147, End]
type = ChangeState
trigger1 = Time >= 4
value = 1148


;Bouncing Off Wall
[Statedef 1148]
type = A
moveType = H
physics = N

[State 1148, Turn]
type = Turn
trigger1 = !Time

[State 1148, Gravity]
type = VelAdd
trigger1 = 1
y = 0.5

[State 1148, VelSet]
type = VelSet
trigger1 = !Time
x = -2.5
y = -9

[State 1148, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 1148, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1148, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 1148, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 1148, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1148, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100




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
trigger1 = AnimElem = 2
value = 1200,0
channel = 0

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40,0
channel = 1


[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tiger Kick Dust"
posType = P1
ownPal = 1

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 3.5
y = -7.5

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.5

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(7) < 0
x = -0.025

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 2900, Tiger Kick Flames]
type = Explod
trigger1 = AnimElem = 5
anim = 1215
sprPriority = 3
posType = P1
bindTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 85 < 7, 7, fvar(11) * 85)), 0
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
ground.velocity = -5.04, -7.75
ground.cornerPush.velOff = 0
guard.velocity = -9.52
guard.cornerPush.velOff = 0
air.velocity = -5.04, -7.25
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
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 2900, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1401



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
trigger1 = AnimElem = 3
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
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
damage = ceil(ifElse(fvar(11) * 52 < 7, 7, fvar(11) * 52)), 0
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
ground.velocity = -3.14, -6.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -3.14, -5.25
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
sparkXY = -12 + 0 * (var(35) := 50), var(36) := -19
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
