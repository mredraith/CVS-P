;| Axel Stone by Testament             |

;========================<SCREW UPPER>=============================
[StateDef 3000]
type = S
physics = S
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 1100, VelSet]
type = VelSet
trigger1 = Animelem = 2 || Animelem = 6 || Animelem = 10 || Animelem = 14 || Animelem = 18 || Animelem = 21
x = 5

[State 1120, FX]
type = Explod
trigger1 = AnimElem = 3
anim = 3006
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
scale = .7,.8
[State 1120, FX]
type = Explod
trigger1 = AnimElem = 8
anim = 3006
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
scale = .7,.8
[State 1120, FX]
type = Explod
trigger1 = AnimElem = 13
anim = 3006
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
scale = .7,.8
[State 1120, FX]
type = Explod
trigger1 = AnimElem = 18
anim = 3007
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
scale = .7,.8

[State 1120, FX]
type = Explod
trigger1 = AnimElem = 3
anim = 3005
ID = 3005
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
persistent = 1
ontop = 1
scale = 0.5,0.5
[State 1120, FX]
type = Explod
trigger1 = AnimElem = 8
anim = 3005
ID = 3005
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
persistent = 1
ontop = 1
scale = 0.5,0.5
[State 1120, FX]
type = Explod
trigger1 = AnimElem = 13
anim = 3005
ID = 3005
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
persistent = 1
ontop = 1
scale = 0.5,0.5
[State 1120, FX]
type = Explod
trigger1 = AnimElem = 18
anim = 3005
ID = 3005
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
persistent = 1
ontop = 1
scale = 0.5,0.5


[State 1120, FX]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
trigger4 = AnimElem = 18
anim = 1101
ID = 3005
postype = p1
pos = -15,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
persistent = 1
ontop = 0
scale=.9,0.5

[State 1120, FX]
type = Explod
trigger1 = AnimElem = 22
trigger2 = AnimElem = 23
anim = 1101
ID = 3005
postype = p1
pos = -15,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
persistent = 1
ontop = 0
scale=1,0.5

[State 1120, FX]
type = Explod
trigger1 = AnimElem = 21
anim = 1006
ID = 1006
postype = p1
pos = 11,-17
bindtime = -1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0
persistent = 0
ontop = 0
scale = 1.5,1


[State 1120, FX]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
trigger4 = AnimElem = 18
anim = 1102
ID = 3005
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
persistent = 1
ontop = 0
[State 1120, FX]
type = Explod
trigger1 = AnimElem = 22
trigger2 = AnimElem = 23
anim = 1102
ID = 3005
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
persistent = 1
ontop = 0


[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 54

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -9,-69
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 54
moveTime = 50
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, SCREW!]
type = PlaySnd
trigger1 = !Time
value = 3000,0
channel = 0

[State 3000, UPPER!]
type = PlaySnd
trigger1 = AnimElem = 10
value = 3100,1
channel = 0

[State 3000, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
value = 1,5
channel = 1

[State 3000, Small Screw Upper Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 1
channel = 3

[State 3000, Large Screw Upper Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3000, 2
channel = 4



[State 225, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 3||animelem = 8||animelem = 13||animelem = 18
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 5
getPower = 0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 7), ifElse(var(20), 3, 7)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 11 + 4 * var(9)
guard.hittime = (11 + 4 * var(9)) - 6
ground.slideTime = 11 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.83, -2.64), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.03, -2.14)
guard.cornerPush.velOff = 0
air.velocity = -2.5,-1
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
kill = 0

[State 225, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 6||animelem = 11||animelem = 16||animelem = 21
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 5
getPower = 0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 7), ifElse(var(20), 3, 7)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 11 + 4 * var(9)
guard.hittime = (11 + 4 * var(9)) - 6
ground.slideTime = 11 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.83, -2.64), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.03, -2.14)
guard.cornerPush.velOff = 0
air.velocity = -2.5,-1
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
kill = 0

[State 225, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Animelem = 22
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 43 < 7, 7, fvar(11) * 43)), 9
givePower = 0
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
ground.velocity = ifElse(var(20), -9.13, -9.04), -5
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6.13, -6.64)
guard.cornerPush.velOff = 0
air.velocity = -8.39, -5.65
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1 ;Make p2 fall down
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 3150, Flame Particles]
type = Helper
trigger1 = AnimElemTime(3) > 0
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

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(23) >= 0
moveType = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX SCREW UPPER>=============================
[StateDef 3050]
type = S
physics = S
moveType = A
anim = 3050
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1
juggle  = 4

[State 1100, VelSet]
type = VelSet
trigger1 = Animelem = 2 || Animelem = 6 || Animelem = 10 || Animelem = 14 || Animelem = 18 || Animelem = 21
x = 5

[State 1120, FX]
type = Explod
trigger1 = AnimElem = 3
anim = 3006
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
scale = .7,.8
[State 1120, FX]
type = Explod
trigger1 = AnimElem = 8
anim = 3006
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
scale = .7,.8
[State 1120, FX]
type = Explod
trigger1 = AnimElem = 13
anim = 3006
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
scale = .7,.8
[State 1120, FX]
type = Explod
trigger1 = AnimElem = 18
anim = 3006
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
scale = .7,.8

[State 1120, FX]
type = Explod
trigger1 = AnimElem = 3
anim = 3005
ID = 3005
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
persistent = 1
ontop = 1
scale = 0.5,0.5
[State 1120, FX]
type = Explod
trigger1 = AnimElem = 8
anim = 3005
ID = 3005
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
persistent = 1
ontop = 1
scale = 0.5,0.5
[State 1120, FX]
type = Explod
trigger1 = AnimElem = 13
anim = 3005
ID = 3005
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
persistent = 1
ontop = 1
scale = 0.5,0.5
[State 1120, FX]
type = Explod
trigger1 = AnimElem = 18
anim = 3005
ID = 3005
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
persistent = 1
ontop = 1
scale = 0.5,0.5


[State 1120, FX]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
trigger4 = AnimElem = 18
anim = 1101
ID = 3005
postype = p1
pos = -15,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
persistent = 1
ontop = 0
scale=.9,0.5

[State 1120, FX]
type = Explod
trigger1 = AnimElem = 22
trigger2 = AnimElem = 23
anim = 1101
ID = 3005
postype = p1
pos = -15,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
persistent = 1
ontop = 0
scale=1,0.5

[State 1120, FX]
type = Explod
trigger1 = AnimElem = 21
anim = 1006
ID = 1006
postype = p1
pos = 11,-17
bindtime = -1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 0
persistent = 0
ontop = 0
scale = 1.5,1


[State 1120, FX]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
trigger4 = AnimElem = 18
anim = 1102
ID = 3005
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
persistent = 1
ontop = 0
[State 1120, FX]
type = Explod
trigger1 = AnimElem = 22
trigger2 = AnimElem = 23
anim = 1102
ID = 3005
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 0
persistent = 1
ontop = 0


[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 54

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -9,-69
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 54
moveTime = 50
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, SCREW!]
type = PlaySnd
trigger1 = !Time
value = 3000,0
channel = 0

[State 3000, UPPER!]
type = PlaySnd
trigger1 = AnimElem = 11
value = 3100,1
channel = 0

[State 3000, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
value = 1,5
channel = 1

[State 3000, Small Screw Upper Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000, 1
channel = 3

[State 3000, Large Screw Upper Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3000, 2
channel = 4



[State 225, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 3||animelem = 8||animelem = 13||animelem = 18
forceNoFall = !var(20)
ID = 3050
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 5
getPower = 0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 7), ifElse(var(20), 3, 7)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 11 + 4 * var(9)
guard.hittime = (11 + 4 * var(9)) - 6
ground.slideTime = 11 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.83, -2.64), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.03, -2.14)
guard.cornerPush.velOff = 0
air.velocity = -2.5,-1
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
kill = 0

[State 225, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 6||animelem = 11||animelem = 16||animelem =19
forceNoFall = !var(20)
ID = 3050
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 5
getPower = 0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 7), ifElse(var(20), 3, 7)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 11 + 4 * var(9)
guard.hittime = (11 + 4 * var(9)) - 6
ground.slideTime = 11 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.83, -2.64), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.03, -2.14)
guard.cornerPush.velOff = 0
air.velocity = -2.5,-1
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
kill = 0


[State 3150, Flame Particles]
type = Helper
trigger1 = AnimElemTime(3) > 0
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

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(19) >= 0
moveType = I

[State 3200, ChangeState]
type = ChangeState
trigger1 = MoveHit && NumTarget(3050) && AnimElem = 20
value = 3051

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 3051
ctrl = 0

[StateDef 3051]
type = S
physics = N
moveType = A
anim = 3051
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0


[State 1120, FX]
type = Explod
trigger1 = AnimElem = 1
anim = 3055
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
scale = .5,.5

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
y = -8.5

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

[State 225, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 5
getPower = 0
givePower = 36, 36
pauseTime = ifElse(var(20), 3, 7), ifElse(var(20), 3, 7)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 11 + 4 * var(9)
guard.hittime = (11 + 4 * var(9)) - 6
ground.slideTime = 11 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.83, -2.64), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.03, -2.14)
guard.cornerPush.velOff = 0
air.velocity = -2.5,-1
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
kill = 0

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
trigger2 = AnimElem = 4,3 
trigger3 = AnimElem = 4,9 
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getpower = 0,0
givePower = 36, 36
pauseTime = 8, 8
guard.pauseTime = 10, 10
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -3.24, -9.75
ground.cornerPush.velOff = 0
guard.velocity = -9.52
guard.cornerPush.velOff = 0
air.velocity = -5.64, -8.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8012)
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 1

[State 3150, Flame Particles]
type = Helper
trigger1 = AnimElemTime(3) > 0
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

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 2900, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1401

;========================<DRAGON SMASH>=============================
;DRAGON SMASH
[StateDef 3100]
type = S
physics = S
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1


[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3100, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3100, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 54

[State 3100, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3100, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3100, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -20,-71
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 54
moveTime = 50
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

;velocidade
[State 3100, Vel]
type=velset
trigger1= anim=3100 && animelemtime(3)>=0 && animelemtime(4)<0
x=9

[State 3100, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3100,0
channel = 0

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3100,1
channel = 0
persistent = 1

[State 3100, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 16
value = 3100,2
channel = 0

[State 105, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos= 45,0
facing = 1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3100, Woosh Sound 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
value = 1,2

[State 3100, Woosh Sound 2]
type = PlaySnd
trigger1 = AnimElem = 18
trigger2 = AnimElem = 26
trigger3 = AnimElem = 37
trigger4 = AnimElem = 44
value = 1,5



[State 3100, VarSet]
type = VarSet
trigger1 = 1
var(10) = 0


[State 3100, VelSet: TNT Punch]
type = VelSet
trigger1 = AnimELemTime(3) >= 0 && AnimElemTime(15) < 0
x = 0.0

[State 3100, Stop]
type = VelSet
trigger1 = AnimElem = 15
x = 0

[State 3100, VelSet: Tiger Kick]
type = Velset
trigger1 = AnimElem = 38
x = 2.25
y = -10.0


[State 3100, TNT Punch Spark XY]
type = Null
trigger1 = AnimElem = 3 || AnimElem = 11
trigger1 = var(35) := 75 || var(36) := -55
trigger2 = AnimElem = 5 || AnimElem = 13
trigger2 = var(35) := 80 || var(36) := -81
trigger3 = AnimElem = 7
trigger3 = var(35) := 85 || var(36) := -68
trigger4 = AnimElem = 9
trigger4 = var(35) := 68 || var(36) := -92

[State 3100, TNT Punch Hit Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3 && anim=3100
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 33 < 7, 7, fvar(11) * 33)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
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
guard.velocity = -9.0
guard.cornerPush.velOff = 0
air.velocity = -.5,-3
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2stateno = 3120
kill=0

[State 3100, switch]
type=changeanim
trigger1= anim=3100
trigger1= animelemtime(4)>=0 && animelemtime(5)<0 && movehit
value=3101
ignorehitpause=0

[State 0, TargetBind]
type = TargetBind
triggerall = anim = 3101
trigger1 = animelem = 1;AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = ceil(100*.5),0

[State 0, PosSet]
type = PosSet
triggerall = anim = 3101
trigger1 = animelem =1
y = 0

[State 1100, VelSet]
type = VelSet
triggerall = anim = 3101
trigger1 = animelem =1
x = 0

[State 3100, TNT Punch Hit High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 7|| AnimElem = 9 || AnimElem = 10|| AnimElem = 12 || AnimElem = 14 && anim=3101
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 19 < 7, 7, fvar(11) * 19)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -3.0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -4.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill=0


[State 3100, End]
type=changestate
trigger1= anim=3100 && !animtime
value=0
ctrl=1

[State 1100, 5]
type = ChangeState
triggerall = anim = 3101
trigger1 = AnimTime = 0
value = 3102
ctrl = 0


;--------------------------------------------------
[Statedef 3102]
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
anim = 3102
ctrl = 0
hitdefpersist = 1
sprpriority = 2

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = time!
value = 41,0
channel = 1


[State 2900, VelSet]
type = VelSet
triggerall = anim = 3102
trigger1 = AnimElem = 1
y = -8.5

[State 2900, VelAdd]
type = VelAdd
triggerall = anim = 3102
trigger1 = AnimElemTime(2) >= 0
y = 0.5



[State 3100, TNT Punch Hit High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 1 || AnimElem = 2 
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = -1, -15
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -1,-7
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120


[State 1101, 9]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 1401

;========================<MAX EXPLODING HURRICANE TIGER HEEL>=============================
[StateDef 3150]
type = S
physics = S
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3150, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3150, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3150, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3150, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 54

[State 3150, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3150, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3150, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -20,-71
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 54
moveTime = 50
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

;velocidade
[State 3100, Vel]
type=velset
trigger1= anim=3100 && animelemtime(3)>=0 && animelemtime(4)<0
x=10

[State 3100, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3100,0
channel = 0

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3100,1
channel = 0
persistent = 1

[State 3100, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 28
value = 3100,2
channel = 0

[State 105, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos= 45,0
facing = 1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3100, Woosh Sound 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
value = 1,2

[State 3100, Woosh Sound 2]
type = PlaySnd
trigger1 = AnimElem = 18
trigger2 = AnimElem = 26
trigger3 = AnimElem = 37
trigger4 = AnimElem = 44
value = 1,5

[State 3100, VarSet]
type = VarSet
trigger1 = 1
var(10) = 0

[State 3100, VelSet: TNT Punch]
type = VelSet
trigger1 = AnimELemTime(3) >= 0 && AnimElemTime(15) < 0
x = 0.0

[State 3100, Stop]
type = VelSet
trigger1 = AnimElem = 15
x = 0

[State 3100, VelSet: Tiger Kick]
type = Velset
trigger1 = AnimElem = 38
x = 2.25
y = -10.0


[State 3100, TNT Punch Spark XY]
type = Null
trigger1 = AnimElem = 3 || AnimElem = 11
trigger1 = var(35) := 75 || var(36) := -55
trigger2 = AnimElem = 5 || AnimElem = 13
trigger2 = var(35) := 80 || var(36) := -81
trigger3 = AnimElem = 7
trigger3 = var(35) := 85 || var(36) := -68
trigger4 = AnimElem = 9
trigger4 = var(35) := 68 || var(36) := -92

[State 3100, TNT Punch Hit Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3 && anim=3100
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
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
guard.velocity = -9.0
guard.cornerPush.velOff = 0
air.velocity = -.5,-3
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall =0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2stateno = 3120
kill=0

[State 3100, switch]
type=changeanim
trigger1= anim=3100
trigger1= animelemtime(4)>=0 && animelemtime(5)<0 && movehit
value=3151
ignorehitpause=0

[State 0, TargetBind]
type = TargetBind
triggerall = anim = 3151
trigger1 = animelem = 1;AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = ceil(100*.5),0

[State 0, PosSet]
type = PosSet
triggerall = anim = 3151
trigger1 = animelem =1
y = 0

[State 1100, VelSet]
type = VelSet
triggerall = anim = 3151
trigger1 = animelem =27
x = 5

[State 3100, TNT Punch Hit High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 7|| AnimElem = 9 || AnimElem = 12|| AnimElem = 14 || AnimElem = 17 && anim=3151
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 16 < 7, 7, fvar(11) * 16)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -3.0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -4.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3100, TNT Punch Hit High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 19 || AnimElem = 22 || AnimElem = 24|| AnimElem = 26 && anim=3151
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 17 < 7, 7, fvar(11) * 17)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -3.0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -4.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3150, Flame Particles]
type = Helper
trigger1 = AnimElemTime(19) > 0
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

[State Randomizer1]
type = varrandom
trigger1 = 1
v = 52
range = -6, 6

[State Randomizer2]
type = varrandom
trigger1 = 1
v = 51
range = 6, 12

[State FireB]
type = Explod
trigger1 = AnimElemTime(17) > 0
persistent = 1
anim = 12213
id = 12213
postype = p1
pos = -5, -105
random = 5, 10
sprpriority = 5
ownpal = 1
vel = var(52), (var(51))
scale = 0.2, 1.5
accel = -(var(52))/4, -(var(51))/4


[State 3100, End]
type=changestate
trigger1= anim=3100 && !animtime
value=0
ctrl=1

[State 1100, 5]
type = ChangeState
triggerall = anim = 3151
trigger1 = AnimTime = 0
value = 3152
ctrl = 0


;--------------------------------------------------
[Statedef 3152]
type    = A
movetype= A
physics = N
juggle  = 0
velSet = 0,-9.5
anim = 3152
ctrl = 0
hitdefpersist = 1
sprpriority = 2

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = time!
value = 41,0
channel = 1




[State 2900, VelAdd]
type = VelAdd
triggerall = anim = 3152
trigger1 = AnimElemTime(2) >= 0
y = 0.38


[State 3100, TNT Punch Hit High]
type = HitDef
trigger1 = !var(16) && var(15) < 9
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5 || AnimElem = 6 
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 16 < 7, 7, fvar(11) * 16)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = 0, -11.6
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -120
palFX.time = 45
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3312, Final Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = AnimElem = 7
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = -4, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4, -11.6
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -120
palFX.time = 66
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Flame Particles]
type = Helper
trigger1 = AnimElemTime(1) > 0
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

[State Randomizer1]
type = varrandom
trigger1 = 1
v = 52
range = -5, 12

[State Randomizer2]
type = varrandom
trigger1 = 1
v = 51
range = 5, 21

[State FireB]
type = Explod
trigger1 = random <= 500 && vel Y < 0
persistent = 1
anim = 12213
id = 12213
postype = p1
pos = -6, -135
random = 5, 10
sprpriority = 5
ownpal = 1
vel = var(52), (var(51))
scale = 0.2, 1.5
accel = -(var(52))/4, -(var(51))/4

[State 1101, 9]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 1401

; ======================== 
[Statedef 3120]
type = S
movetype = H
physics = N
velset = 0,0

[State 3063, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3120

[State 0, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 0

[State 3063, SelfState]
type = SelfState
trigger1 = time = 100
value = 0
ctrl = 1
;---------

;========================<DOUBLE CYCLONE>=============================
[StateDef 3300]
type = S
physics = S
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

;[State 3300, Unguardable]
;type = VarSet
;trigger1 = Time = 6 && NumEnemy
;trigger1 = (EnemyNear, StateNo != [120,155])
;var(17) = 43

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1= AnimElemTime(3) < 0
time = 1
value = SCA

[State 3300, PlayerPush]
type = PlayerPush
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType = A || EnemyNear, StateType = L
value = 0
ignoreHitPause = 1

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 6
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = -40, -64
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = !Time
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3300, THIS IS!]
type = PlaySnd
trigger1 = Time = 4
value = 3300,0
channel = 0

[State 3300, YOUR PAIN!]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3300, 1
channel = 0

[State 3300, PARISH!]
type = PlaySnd
trigger1 = AnimElem =15
value = 3300,2
channel = 0

[State 3300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 1


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

[State 1120, FX]
type = Explod
trigger1 = AnimElem = 4
anim = 3304
ID = 3304
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0
ontop = 0
scale = .6,.8

[State 1120, FX]
type = Explod
trigger1 = AnimElem = 9
anim = 3305
ID = 3305
postype = p1
pos = 15,-136
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0
ontop = 0
scale = .6,.8

[State 1120, FX]
type = Explod
trigger1 = movecontact
trigger1 = Time=90 
anim = 3306
ID = 3306
postype = p1
pos = 15,-136
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0
ontop = 0
scale = .6,.8


[State 1120, FX]
type = Explod
trigger1 = AnimElem = 14
anim = 3308
ID = 3308
postype = p1
pos = 40,17
bindtime = -1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0
ontop = 0
scale = 1,1


[State 1120, FX]
type = Explod
trigger1 = AnimElem = 15
anim = 3307
ID = 3307
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0
ontop = 0
scale = .6,.8


[State 3100, TNT Punch Hit High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5 || AnimElem = 6 || AnimElem = 9|| AnimElem = 10 ||AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = -3.0
guard.cornerPush.velOff = 0
air.velocity = .32, 0.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0


[State 3312, Final Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = AnimElem = 14
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 40,20
guard.pauseTime = 30,10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = .87, -6.81
ground.cornerPush.velOff = 0
guard.velocity = -7.64
guard.cornerPush.velOff = 0
air.velocity = -4, -7.6
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -120
palFX.time = 66
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
x = 2

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(13) < 0
x = 2.7

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(36) < 0
x = 0.3

[State 3050, VelMul]
type = VelMul
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
trigger2 = AnimElemTime(9) >= 0 && AnimElemTime(13) < 0
trigger3 = AnimElemTime(14) >= 0
x = 0.93


[State 3050, Velocity]
type = VelSet
trigger1 = AnimElemTime(15) = 2
y = -11.5

[State 3050, Gravity]
type = VelAdd
trigger1 = AnimElemTime(15) >= 2
y = 0.47

[State 3100, TNT Punch Hit High]
type = HitDef
trigger1 = !var(16) && var(15) < 9
trigger1 = AnimElem = 15 || AnimElem = 16 || AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20 || AnimElem = 21 
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 29 < 7, 7, fvar(11) * 29)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = 0, -11.6
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -120
palFX.time = 45
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3312, Final Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = AnimElem = 22
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = -4, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -4, -11.6
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -120
palFX.time = 66
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Flame Particles]
type = Helper
trigger1 = AnimElemTime(3) > 0
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



[State Randomizer1]
type = varrandom
trigger1 = 1
v = 52
range = -6, 6

[State Randomizer2]
type = varrandom
trigger1 = 1
v = 51
range = 6, 12

[State FireB]
type = Explod
trigger1 = AnimElemTime(9) > 0
persistent = 1
anim = 12213
id = 12213
postype = p1
pos = -5, -105
random = 5, 10
sprpriority = 5
ownpal = 1
vel = var(52), (var(51))
scale = 0.2, 1.5
accel = -(var(52))/4, -(var(51))/4


[State Randomizer1]
type = varrandom
trigger1 = 1
v = 52
range = -5, 12

[State Randomizer2]
type = varrandom
trigger1 = 1
v = 51
range = 5, 21

[State FireB]
type = Explod
trigger1 = random <= 500 && vel Y < 0
persistent = 1
anim = 12213
id = 12213
postype = p1
pos = -6, -135
random = 5, 10
sprpriority = 5
ownpal = 1
vel = var(52), (var(51))
scale = 0.2, 1.5
accel = -(var(52))/4, -(var(51))/4



[State FireB]
type = Explod
trigger1 = random <= 500 && vel Y < 0
persistent = 1
anim = 12213
id = 12213
postype = p1
pos = -6, -135
random = 5, 10
sprpriority = 5
ownpal = 1
vel = var(52), (var(51))
scale = 0.2, 1.5
accel = -(var(52))/4, -(var(51))/4


[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 15
stateType = A
physics = N

[State 3300, VarSet]
type = VarSet
triggerAll = NumHelper(3305) && NumHelper(3306)
trigger1 = (Helper(3305), var(13)) + (Helper(3306), var(13)) >= 12
var(16) = 1

[State 1101, 9]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 1401

[State 3300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
