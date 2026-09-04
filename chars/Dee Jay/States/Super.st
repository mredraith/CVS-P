; _________________________________________
;| Dee Jay by varo_hades |
; 
;
;SUPER STATES=
;

;CLIMAX BREAK=
[StateDef 3000]
type = S
physics = N
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

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
var(17) = 43

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

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 3000, 0]
type = VarSet
trigger1 = Time = 0
v = 28
value = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-50 * const(size.xScale)), ceil(-85 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 5
time = 50+(var(10)*2)
moveTime = 50+(var(10)*2)
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, MoveHitReset]
type = MoveHitReset
trigger1 = !Time
ignorehitpause = 1

[State 3000, 1]
type = Width
trigger1 = Time > 0
trigger1 = Time < 5
trigger2 = Time >= 40
value = 20,0

[State 3000, 1]
type = Width
trigger1 = Time > 4
trigger1 = Time < 40
value = 30,0

[State 3000, 1]
type = PlaySnd
trigger1 = Anim = 3000
trigger1 = AnimElem = 1
value = 3000,0
channel = 0

[State 3000, 3]
type = PlaySnd
trigger1 = Anim = 3000
trigger1 = AnimElem = 3
value = 1,2

[State 3000, 3]
type = PlaySnd
trigger1 = Anim = 1003
trigger1 = AnimElem = 2
value = 1100,0
channel = 0

[State 3000, 3]
type = PlaySnd
trigger1 = Anim = 1102
trigger1 = AnimElem = 2
value = 1100,0
channel = 0

[State 3000, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 11
trigger1 = Anim = 3000
trigger1 = AnimElem = 5
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 0
getPower = 0,0
givePower = 36, 36
pauseTime = 10,10
guard.pauseTime = 10,10
animType = Heavy
air.animType = Up
fall.animType = Up
ground.type = High
air.type = High
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0, -20
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = 0, -20
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3000, 3]
type = VarAdd
trigger1 = Anim = 1102
trigger1 = AnimElem = 3
v = 29
value = 1

[State 3000, 3]
type = VarSet
trigger1 = AnimElem = 1
trigger2 = Var(29) = 2
v = 29
value = 0

[State 3000, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 12
trigger1 = Anim = 1102
trigger1 = AnimElem = 2
trigger1 = Var(29) = 0
attr = S, HA
hitFlag = MAF+
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 24.5 < 7, 7, fvar(11) * 24.5)), 0
getPower = 0,0
givePower = 36, 36
pauseTime = 0,0
guard.pauseTime = 0,0
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0, -7
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = 0, -7
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 143), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2stateno = 3016
kill = 0

[State 3000, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 13
trigger1 = Anim = 1105
trigger1 = AnimElem = 1,1
attr = S, HA
hitFlag = MAF+
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 24.5 < 7, 7, fvar(11) * 24.5)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0,0
guard.pauseTime = 0,0
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = -4, -6
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4, -6
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 120), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2stateno = 3016

[State 3000, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < 13
trigger1 = Anim = 1105
trigger1 = AnimElem = 2
attr = S, HA
hitFlag = MAF+
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 24.5 < 7, 7, fvar(11) * 24.5)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 20,5
guard.pauseTime = 20,5
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = -3, -8
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -3, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 120), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2stateno = 3017

[State 3000, 3]
type = VarAdd
trigger1 = Anim = 1102
trigger1 = AnimElem = 3
v = 28
value = 1

[State 3000, 4]
type = ChangeAnim
trigger1 = Anim = 3000
trigger1 = Movehit && NumTarget && Time > 60
trigger1 = P2BodyDist Y > -70
value = 1102

[State 3000, 4]
type = ChangeAnim
trigger1 = Anim = 1102
trigger1 = Var(28) = 9
value = 1105

[State 3000, 5]
type = ChangeState
trigger1 = var(46) = 0
trigger1 = Time = 90
trigger2 = var(46)
trigger2 = P2StateNo = 5110
trigger3 = Anim = 1105
trigger3 = AnimTime = 0
trigger4 = Anim = 3000
trigger4 = AnimTime = 90
trigger4 = MoveGuarded
value = 0
ctrl = 1

;Hit by Sunrise Theme
[Statedef 3015]
type = A
movetype = H
physics = N
velset = 0,0

[State 850, Anim2]
type = ChangeAnim2
trigger1 = Anim != 5260
value = 5260

[State 850, 0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 850, 1]
type = HitBy
trigger1 = 1
value = S, HA
time = 1

[State 850, 1]
type = NotHitBy
trigger1 = 1
value = CA, NA AP
time = 1

[State 850, 2]
type = HitVelSet
trigger1 = Time = 10
x = 1
y = 1

[State 850, 2]
type = PosAdd
trigger1 = AnimElem = 3
x = 10

[State 850, 2]
type = VelAdd
trigger1 = Time > 10
y = .25

[State 850, 2]
type = VelSet
triggerAll = Vel Y > 0
triggerAll = Pos Y > -50
trigger1 = P2StateNo = 3000
trigger2 = P2StateNo = 3000
trigger3 = P2StateNo = 3000
y = 0

[State 850, LifeAdd]
type = LifeAdd
trigger1 = Vel Y > 0
trigger1 = Pos Y > 0
value = -10

[State 850, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y > 0
value = 5110 ;Hit ground

;Hit Again by Sunrise Theme
[Statedef 3016]
type = A
movetype = H
physics = N
velset = 0,0

[State 855, Anim2]
type = ChangeAnim2
trigger1 = Anim != 5270
value = 5270

[State 855, 0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 855, 1]
type = HitBy
trigger1 = 1
value = SA, HA
time = 1

[State 855, 1]
type = NotHitBy
trigger1 = 1
value = C, NA AP
time = 1

[State 855, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 855, 2]
type = VelAdd
trigger1 = 1
y = 2

[State 855, LifeAdd]
type = LifeAdd
trigger1 = Vel Y > 0
trigger1 = Pos Y > 0
value = -10

[State 855, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y > 0
value = 5110 ;Hit ground

;Hit by Sunrise Theme - Fly
[Statedef 3017]
type = A
movetype = H
physics = N
velset = 0,0

[State 860, Anim2]
type = ChangeAnim2
trigger1 = Time = 5
value = 5290

[State 860, 1]
type = HitVelSet
trigger1 = Time = 5
x = 1
y = 1

[State 860, 2]
type = VelAdd
trigger1 = Time > 5
y = .6

[State 860, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y > 10
value = 5100 ;Hit ground

;MAX CLIMAX BREAK=
[StateDef 3050]
type = S
physics = N
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 2

[State 3050, 0]
type = VarSet
trigger1 = Time = 0
v = 28
value = 1

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 5
time = 1
value = SCA

[State 3050, SuperPause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-50 * const(size.xScale)), ceil(-85 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3050, SuperPause]
type = SuperPause
trigger1 = Time = 5
time = 50+(var(10)*2)
moveTime = 50+(var(10)*2)
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 3050, MoveHitReset]
type = MoveHitReset
trigger1 = !time
ignorehitpause = 1

[State 3050, 1]
type = Width
trigger1 = Time > 0
trigger1 = Time < 5
trigger2 = Time >= 40
value = 20,0

[State 3050, 1]
type = Width
trigger1 = Time > 4
trigger1 = Time < 40
value = 30,0

[State 3050, 1]
type = PlaySnd
trigger1 = Anim = 3000
trigger1 = AnimElem = 1
value = 3000,0
channel = 0

[State 3050, 3]
type = PlaySnd
trigger1 = Anim = 3000
trigger1 = AnimElem = 3
value = 1,2

[State 3050, 3]
type = PlaySnd
trigger1 = Anim = 1003
trigger1 = AnimElem = 2
value = 1100,0
channel = 0

[State 3050, 3]
type = PlaySnd
trigger1 = Anim = 1102
trigger1 = AnimElem = 2
value = 1100,0
channel = 0

[State 3050, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 11
trigger1 = Anim = 3000
trigger1 = AnimElem = 5
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 0
getPower = 0,0
givePower = 36, 36
pauseTime = 10,10
guard.pauseTime = 10,10
animType = Heavy
air.animType = Up
fall.animType = Up
ground.type = High
air.type = High
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0, -20
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = 0, -20
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3050, 3]
type = VarAdd
trigger1 = Anim = 1102
trigger1 = AnimElem = 3
v = 29
value = 1

[State 3050, 3]
type = VarSet
trigger1 = AnimElem = 1
trigger2 = Var(29) = 2
v = 29
value = 0

[State 3050, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 12
trigger1 = Anim = 1102
trigger1 = AnimElem = 2
trigger1 = Var(29) = 0
attr = S, HA
hitFlag = MAF+
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0,0
guard.pauseTime = 0,0
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0, -7
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = 0, -7
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 143), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2stateno = 3016
kill = 0

[State 3050, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 13
trigger1 = Anim = 1103
trigger1 = AnimElem = 2
attr = S, HA
hitFlag = MAF+
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0,0
guard.pauseTime = 0,0
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = -4, -6
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4, -6
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 120), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2stateno = 3016

[State 3050, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < 13
trigger1 = Anim = 1103
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF+
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 20,5
guard.pauseTime = 20,5
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = -3, -8
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -3, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 120), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p2stateno = 3017

[State 3050, 3]
type = VarAdd
trigger1 = Anim = 1102
trigger1 = AnimElem = 3
v = 28
value = 1

[State 3050, 4]
type = ChangeAnim
trigger1 = Anim = 3000
trigger1 = Movehit && NumTarget && Time > 60
trigger1 = P2BodyDist Y > -70
value = 1102

[State 3050, 4]
type = ChangeAnim
trigger1 = Anim = 1102
trigger1 = Var(28) = 14
value = 1103

[State 3050, 5]
type = ChangeState
trigger1 = var(46) = 0
trigger1 = Time = 90
trigger2 = var(46)
trigger2 = P2StateNo = 5110
trigger3 = Anim = 1103
trigger3 = AnimTime = 0
trigger4 = Anim = 3000
trigger4 = AnimTime = 90
trigger4 = MoveGuarded
value = 0
ctrl = 1

;SOBAT CARNIVAL=
[StateDef 3100]
type = S
physics = N
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
var(17) = 43

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

[State 3100, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 5
time = 1
value = SCA

[State 3100, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(18 * const(size.xScale)), ceil(-43 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 50+(var(10)*2)
moveTime = 50+(var(10)*2)
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3200, 1]
type = PlaySnd
trigger1 = Anim = 3100
trigger1 = AnimElem = 1
value = 3100,0
channel = 0

[State 3200, 3]
type = ChangeAnim
trigger1 = Anim = 3100
trigger1 = AnimElem = 2
value = 3101

[State 3200, 4]
type = Width
trigger1 = Time > 54
value = 20,0

[State 3200, 4]
type = VelSet
trigger1 = Time = 54
x = 5
y = -2.5

[State 3200, 5]
type = VelAdd
trigger1 = Anim = 3101
y = .5

[State 3200, 6]
type = ChangeState
trigger1 = Time > 54
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = AnimElem = 3
value = 3101

;Low
[Statedef 3101]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 3101, Helper]
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

[State 3101, 0]
type = Width
trigger1 = 1
value = 20,0

[State 3101, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3101, 1]
type = PlaySnd
trigger1 = Anim = 3101
trigger1 = AnimElem = 3
value = 1,2

[State 3101, 1]
type = PlaySnd
trigger1 = Anim = 3101
trigger1 = AnimElem = 3
value = 3100,1
channel = 0

[State 3101, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 6
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -2, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 164), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3101, 4]
type = VelSet
trigger1 = Anim = 3101
trigger1 = AnimElem = 6
x = 5
y = -2.5

[State 3101, 5]
type = VelAdd
trigger1 = Time > 8
y = .5

[State 3101, 6]
type = ChangeState
trigger1 = Time > 10
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = AnimElem = 8
value = 3102

;Final
[Statedef 3102]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 3102, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3102, Helper]
type = Helper
trigger1 = AnimElem = 8 && NumHelper(1252) = 0
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

[State 3102, 1]
type = Width
trigger1 = 1
value = 20,0

[State 3102, 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1,2

[State 3102, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 7
trigger1 = AnimElem = 8
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -2, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 183), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3102, 4]
type = VelSet
trigger1 = AnimTime = 0
x = 5
y = -2.5

[State 3102, 5]
type = VelAdd
trigger1 = Time > 10
y = .5

[State 3102, 6]
type = ChangeState
trigger1 = Time > 15
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = AnimElem = 3
value = 3103

;End
[Statedef 3103]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 3103, Helper]
type = Helper
trigger1 = AnimElem = 3 && Numhelper(1250) = 0
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

[State 3103, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3103, 1]
type = Width
trigger1 = 1
value = 20,0

[State 3103, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2

[State 3103, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 8
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -2, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3103, 4]
type = VelSet
trigger1 = AnimElem = 6
x = 5
y = -2.5

[State 3103, 5]
type = VelAdd
trigger1 = Time > 8
y = .5

[State 3103, 6]
type = ChangeState
trigger1 = Time > 10
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = AnimElem = 8
value = 3104

;Sobat Carnival Lvl 1 - End
[Statedef 3104]
type = S
movetype = A
physics = N
anim = 3104
ctrl = 0
velset = 0,0

[State 3104, Helper]
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

[State 3104, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3104, 1]
type = Width
trigger1 = 1
value = 20,0

[State 3104, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 3104, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 8
trigger1 = AnimElem = 1
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -4, -8
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3104, 4]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;MAX SOBAT CARNIVAL=
[StateDef 3150]
type = S
physics = N
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
var(17) = 43

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

[State 3150, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 2

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 8
time = 1
value = SCA

[State 3150, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(18 * const(size.xScale)), ceil(-43 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3150, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 50+(var(10)*2)
moveTime = 50+(var(10)*2)
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 3150, 1]
type = PlaySnd
trigger1 = Anim = 3100
trigger1 = AnimElem = 1
value = 3100,0
channel = 0

[State 3150, 3]
type = ChangeAnim
trigger1 = Anim = 3100
trigger1 = AnimElem = 2
value = 3101

[State 3150, 4]
type = Width
trigger1 = Time > 54
value = 20,0

[State 3150, 4]
type = VelSet
trigger1 = Time = 54
x = 5
y = -2.5

[State 3150, 5]
type = VelAdd
trigger1 = Anim = 3101
y = .5

[State 3150, 6]
type = ChangeState
trigger1 = Time > 54
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = AnimElem = 3
value = 3110

;Hard
[Statedef 3110]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3 && Numhelper(1250) = 0
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

[State 3221, 0]
type = Width
trigger1 = 1
value = 20,0

[State 3221, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3221, 1]
type = PlaySnd
trigger1 = Anim = 3101
trigger1 = AnimElem = 3
value = 1,2

[State 3221, 1]
type = PlaySnd
trigger1 = Anim = 3101
trigger1 = AnimElem = 3
value = 3100,1
channel = 0

[State 3150, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 6
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -2, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 164), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3221, 4]
type = VelSet
trigger1 = Anim = 3101
trigger1 = AnimElem = 6
x = 5
y = -2.5

[State 3221, 5]
type = VelAdd
trigger1 = Time > 8
y = .5

[State 3221, 6]
type = ChangeState
trigger1 = Time > 10
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = AnimElem = 8
value = 3111

;Start
[Statedef 3111]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 8 && NumHelper(1252) = 0
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

[State 3222, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3222, 1]
type = Width
trigger1 = 1
value = 20,0

[State 3222, 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1,2

[State 3150, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 7
trigger1 = AnimElem = 8
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -2, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3222, 4]
type = VelSet
trigger1 = AnimTime = 0
x = 5
y = -2.5

[State 3222, 5]
type = VelAdd
trigger1 = Time > 10
y = .5

[State 3222, 6]
type = ChangeState
trigger1 = Time > 15
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = AnimElem = 3
value = 3112

;Conect
[Statedef 3112]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 0, Helper]
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

[State 3223, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3223, 1]
type = Width
trigger1 = 1
value = 20,0

[State 3223, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2

[State 3150, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 8
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -2, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 160), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3223, 4]
type = VelSet
trigger1 = AnimElem = 6
x = 5
y = -2.5

[State 3223, 5]
type = VelAdd
trigger1 = Time > 8
y = .5

[State 3223, 6]
type = ChangeState
trigger1 = Time > 10
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = AnimElem = 8
value = 3113

;Prefinal
[Statedef 3113]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 8 && Numhelper(1252) = 0
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

[State 3224, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3224, 1]
type = Width
trigger1 = 1
value = 20,0

[State 3224, 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1,2

[State 3150, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 9
trigger1 = AnimElem = 8
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -2, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 183), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3224, 4]
type = VelSet
trigger1 = AnimTime = 0
x = 5
y = -2.5

[State 3224, 5]
type = VelAdd
trigger1 = Time > 10
y = .5

[State 3224, 6]
type = ChangeState
trigger1 = Time > 15
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = AnimElem = 3
value = 3114

;Final
[Statedef 3114]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 0, Helper]
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

[State 3225, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3225, 1]
type = Width
trigger1 = 1
value = 20,0

[State 3225, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2

[State 3150, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -2, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3225, 4]
type = VelSet
trigger1 = AnimElem = 6
x = 5
y = -2.5

[State 3225, 5]
type = VelAdd
trigger1 = Time > 8
y = .5

[State 3225, 6]
type = ChangeState
trigger1 = Time > 10
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = AnimElem = 8
value = 3115

;Sobat Carnival Lvl 3 - End
[Statedef 3115]
type = S
movetype = A
physics = N
anim = 3104
ctrl = 0
velset = 0,0

[State 0, Helper]
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

[State 3226, 0]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3226, 1]
type = Width
trigger1 = 1
value = 20,0

[State 3226, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 3150, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = AnimElem = 1
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -4, -8
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3226, 4]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;CLIMAX BEAT=
[StateDef 3200]
type = S
physics = S
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3200, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = Animelemtime(19) < 5
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(-16 * const(size.xScale)), ceil(-75 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 3200, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 80
moveTime = 80
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,2
darken = 0

[State 3200, ???]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3200,0
channel = 0

[State 3200, Explod]
type = Explod
trigger1 = AnimElem = 19 || AnimElem = 20
anim = 3226
ID = 3227
pos = 60,-95
postype = P1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
persistent = 1

[State 3200, ???]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12 || AnimElem = 14
value = 195,1

[State 3200, ???]
type = PlaySnd
trigger1 = AnimElem = 19
value = 1,1

[State 3200, Dust Helper]
type = Helper
trigger1 = AnimElem = 18
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
pos = -20,0
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3200, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 6
trigger1 = Time = 0
attr = S, HT
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 25
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
P1StateNo = 3210
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3200, ??????]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Connect
[Statedef 3210]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3210
sprpriority = -1

[State 800,***]
type = TargetBind
trigger1 = Time = 0
pos = ceil(50*const(size.xscale)),ceil(-140*const(size.xscale))
time = 1

[State 800,***]
type = TargetState
trigger1 = Time = 0
value = 3216

[State 800,***]
type = TargetFacing
trigger1 = 1
value = -1

[State 1];????????
type = NotHitBy
trigger1 = 1
value = SCA

[State 200, ??????]
type = ChangeState
trigger1 = var(10) = 2
trigger1 = Time >= 30
value = 3221

[State 200, ??????]
type = ChangeState
trigger1 = var(10) != 2
trigger1 = Time >= 30
value = 3211

;Attack
[Statedef 3211]
type = S
movetype = A
physics = N
anim = 3211
sprpriority = 1

[State 3, ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100,0

[State -3,?????]
Type = Varset
Trigger1 = PrevStateno != 3211
Trigger1 = Time = 0
var(2) = 0
IgNoreHitPause = 1

[State -3,?????]
Type = Varadd
trigger1 = AnimElem = 2
var(2) = 1
ignorehitpause = 1

[State 2010,***]
type = TargetState
trigger1 = Time = 0
value = 3215

[State 800,***]
type = TargetBind
trigger1 = AnimElem = 1
pos = ceil(50*const(size.xscale)),ceil(-140*const(size.xscale))
time = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2 || AnimElem = 4
anim = 3226
ID = 3227
pos = 60,-65
postype = P1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,20
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
persistent = 1

[State 110, Dust Helper]
type = Helper
trigger1 = AnimElem = 2 || AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = -25,0
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State -2, ??????????????]
type = TargetLifeAdd
trigger1 = AnimElem = 2 || AnimElem = 4
value = ceil(ifelse(10 * fvar(11) < 7, -7, -10 * fvar(11)))
kill = 0

[State -2, 3]
type = EnvShake
trigger1 = AnimElem = 2 || AnimElem = 4
time = 20
freq = 60
ampl = -4
phase = 90
ignorehitpause = 1

[State 821, Hit Spark]
type = Helper
trigger1= AnimElem = 2 || AnimElem = 4
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P2
pos = ceil(0 * const(size.xScale)), ceil(0 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3, ]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4
value = 2,2

[State 3, ]
type = HitAdd
trigger1 = AnimElem = 2 || AnimElem = 4
value = 1

[State 2010, ??????]
type = ChangeState
trigger1 = var(2) <= ifelse(var(10) = 2,6,ifelse(var(10) = 1,8,4))
trigger1 = AnimTime = 0
value = 3211

[State 2010, ??????]
type = ChangeState
trigger1 = var(2) >= ifelse(var(10) = 0,6,ifelse(var(10) = 1,8,4))
trigger1 = AnimTime = 0
value = 3221

;Punches
[Statedef 3212]
type = S
movetype = A
physics = N
anim = 3212
sprpriority = 1
velset = 0,0

[State 3, ???]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8,19
channel = 0

[State 1011, ??]
type = AfterImage
trigger1 = AnimTime = 0
time = 0
trans = add

[State -2, ??????????????]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = ceil(ifelse(20 * fvar(11) < 7, -7, -20 * fvar(11)))

[State -2, 3]
type = EnvShake
trigger1 = AnimElem = 3
time = 20
freq = 120
ampl = -12
phase = 180
ignorehitpause = 1

[State 3, ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2

[State 3, ]
type = HitAdd
trigger1 = AnimElem = 3
value = 1

[State 2010,***]
type = TargetState
trigger1 = AnimElem = 3
value = 3217

[State 2010, ??????]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Player 2
[Statedef 3215]
type = S
movetype = H
physics = N
velset = 0,0
sprpriority = -2

[State 3000, NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA

[State 811, ????????????]
type = ChangeAnim2
trigger1 = Time = 0
value = 3215

[State 10000, ??]
type = ScreenBound
trigger1 = 1
movecamera = 0,0

;Player 2
[Statedef 3216]
type = A
movetype = H
physics = N
sprpriority = -2
VelSet = 0,-8

[State 811, ????????????]
type = ChangeAnim2
trigger1 = Time = 0
value = 3215

[State 1000, 3]
type = VelAdd
trigger1 = 1
y = 0.45

[State 5100, 12]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

[State 10000, ??]
type = ScreenBound
trigger1 = 1
movecamera = 0,0

;Player 2
[Statedef 3217]
type = A
movetype = H
physics = N
sprpriority = -2
VelSet = -3,-12

[State 1000, 3]
type = VelAdd
trigger1 = 1
y = 0.45

[State 1000, 7]
type = AngleDraw
trigger1 = 1

[State 1995, ????]
type = AngleAdd
trigger1 = 1
value = -30

[State 5100, 12]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;Player 2
[Statedef 3221]
type = S
movetype = A
physics = N
anim = 3221
sprpriority = 1

[State 3010, ??]
type = Width
trigger1 = Time = 0
value = 0,120

[State 3, ???]
type = PlaySnd
Trigger1 = PrevStateNo != 3221
trigger1 = AnimElem = 1
value = 3200,1
channel = 0

[State -3,?????]
Type = Varset
Trigger1 = PrevStateNo != 3221
Trigger1 = Time = 0
var(2) = 0
IgNoreHitPause = 1

[State -3,?????]
Type = Varadd
trigger1 = AnimElem = 3
var(2) = 1
ignorehitpause = 1

[State 2010,***]
type = TargetState
trigger1 = Time = 0
value = 3215

[State 800,***]
type = TargetBind
trigger1 = AnimElem = 1
pos = ceil(-20*const(size.xscale)),ceil(-140*const(size.xscale))
time = 1

[State -2, ??????????????]
type = TargetLifeAdd
trigger1 = AnimElem = 2 || AnimElem = 4
value = ceil(ifelse(20 * fvar(11) < 7, -7, -20 * fvar(11)))
kill = 0

[State -2, 3]
type = EnvShake
trigger1 = AnimElem = 2 || AnimElem = 4
time = 20
freq = 60
ampl = -4
phase = 90
ignorehitpause = 1

[State 821, Hit Spark]
type = Helper
trigger1= AnimElem = 2 || AnimElem = 4
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P2
pos = ceil(0 * const(size.xScale)), ceil(0 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2 || AnimElem = 4
anim = 3226
ID = 3227
pos = -5,-74
postype = P1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 70,40
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
persistent = 1

[State 110, Dust Helper]
type = Helper
trigger1 = AnimElem = 2 || AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = -40,10
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3, ]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4
value = 2,2

[State 3, ]
type = HitAdd
trigger1 = AnimElem = 2 || AnimElem = 4
value = 3

[State 2010, ??????]
type = ChangeState
trigger1 = var(2) <= ifelse(var(10) = 0,5,ifelse(var(10) = 1,8,4))
trigger1 = AnimTime = 0
value = 3221

[State 2010, ??????]
type = ChangeState
trigger1 = var(2) >= ifelse(var(10) = 0,5,ifelse(var(10) = 1,8,4))
trigger1 = AnimTime = 0
value = 3222

;Final
[Statedef 3222]
type = S
movetype = A
physics = N
anim = 3222
sprpriority = 1
velset = 0,0

[State 800,***]
type = TargetBind
trigger1 = time = 0
pos = ceil(-20*const(size.xscale)),ceil(-60*const(size.xscale))
time = 1

[State 210, 3]
type = Turn
trigger1 = AnimTime = 0

[State 810,***]
type = TargetState
trigger1 = Time = 0
value = 3226

[State 3, ???]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3200,2
channel = 0

[State 3, ???]
type = PlaySnd
trigger1 = AnimElem = 12 || AnimElem = 14
value = 195,1

[State 1011, ??]
type = AfterImage
trigger1 = AnimTime = 0
time = 0
trans = add

[State -2, ??????????????]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = ceil(ifelse(20 * fvar(11) < 7, -7, -20 * fvar(11)))

[State -2, 3]
type = EnvShake
trigger1 = AnimElem = 6
time = 20
freq = 120
ampl = -12
phase = 180
ignorehitpause = 1

[State 110, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
facing = -1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 821, Hit Spark]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P2
pos = ceil(0 * const(size.xScale)), ceil(-60 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3, ]
type = PlaySnd
trigger1 = AnimElem = 6
value = 2,2

[State 3, ]
type = HitAdd
trigger1 = AnimElem = 6
value = 1

[State 810,***]
type = Targetvelset
trigger1 = AnimElem = 6
x = -5

[State 810,***]
type = TargetState
trigger1 = AnimElem = 6
value = 3260

[State 2010, ??????]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Player 2
[Statedef 3226]
type = A
movetype = H
physics = N
sprpriority = -2
VelSet = 2,-4

[State 210, 3]
type = Turn
trigger1 = Time = 0

[State 811, ????????????]
type = ChangeAnim2
trigger1 = Time = 0
value = 3225

[State 1000, 3]
type = VelAdd
trigger1 = 1
y = 0.45

[State 5100, 12]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

[State 10000, ??]
type = ScreenBound
trigger1 = 1
movecamera = 0,0

;Player 2
[Statedef 3260]
type = A
movetype = H
physics = N

[State 5600, ^[]
type = Turn
triggerAll = RoundState = 2
trigger1 = P2BodyDist X != [0,360]

[State 1];G̏Ԃ
type = NotHitBy
trigger1 = 1
value = SCA

[State 1994, Xe[gύX]
type = ChangeState
triggerAll = PrevStateno = [3261,3262]
trigger1 = Time = 0
value = 3262

[State 210, 3]
type = PlayerPush
trigger1 = 1
value = 0

[State 820, 䂵̃AjύX]
type = ChangeAnim
Trigger1 = Time = 0
value = ifelse(SelfAnimExist(5052) = 1,5052,5030)

[State 821, xZ]
type = VelAdd
trigger1 = BackEdgeBodyDist >= 10
trigger2 = FrontEdgeBodyDist >= 10
x = -2

[State 821, xZ]
type = Velset
trigger1 = Time = 0
y = 0

[State 1993, Xe[gύX] ;ǂɓ鎞̃Xe[gɍs
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10
trigger2 = FrontEdgeBodyDist <= 10
value = 3261

[State 821, đ̃Xe[gɖ߂]
type = SelfState
trigger1 = Time = 100
value = 5100

;Player 2
[Statedef 3261]
type = A
movetype = H
physics = N

[State 1];G̏Ԃ
type = NotHitBy
trigger1 = 1
value = SCA

[State 1995, ړx]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1995, ړx]
type = Veladd
trigger1 = Time = 0
x = 0
y = 0

[State 820, 䂵̃AjύX]
type = ChangeAnim
Trigger1 = Time = 0
value = 5000

[State 1994, UԂ]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 20)

[State 1994, ʒuړ]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist
y = -10

[State 1994, ړ~߂]
type = PosFreeze
trigger1 = 1
x = 0
y = 0

[State 1994, JXN[̗L]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1000, 3]
type = EnvShake
Trigger1 = Time = 0
time = 20
freq = 60
ampl = -4
phase = 120

[State 1994, Xe[gύX]
type = ChangeState
trigger1 = Time = 5
value = 3262

;Player 2
[Statedef 3262]
type = A
movetype = H
physics = N

[State 210, 3]
type = PlayerPush
trigger1 = 1
value = 0

[State 1995, ړx]
type = VelSet
trigger1 = Time = 0
x = 1
y = -4

[State 1995, d͑]
type = VelAdd
trigger1 = 1
y = .33

[State 1995, AjύX]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse(SelfAnimExist(5052) = 1,5052,5050)

[State 1995, Xe[gɖ߂]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

;THEME OF SUNRISE=
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
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
trigger1 = Time = 3
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

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

[State 3300, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 5
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(30 * const(size.xScale)), ceil(-30 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 50+(var(10)*2)
moveTime = 50+(var(10)*2)
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3300, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3300,0
channel = 0

[State 3300, Helper]
type = Helper
trigger1 = AnimElem = 4
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

[State 3300, 3]
type = ChangeState
trigger1 = AnimElem = 4
value = 3301

;Air
[Statedef 3301]
type = A
movetype = A
physics = N
ctrl = 0
velset = 3,-6

[State 3301, 1]
type = VelAdd
trigger1 = Time > 10
y = .3

[State 3301, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3301, Helper]
type = Helper
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
helpertype = Normal
name = "Slash2"
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

[State 3301, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3300,1
channel = 0

[State 3301, 2]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
value = 1,5

[State 3301, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 6
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 10
ground.velocity = -3, -8
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -3, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 146), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3301, 4]
type = ChangeAnim
trigger1 = Anim = 3300
trigger1 = Time = 32
value = 1302

[State 3301, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y > 0
value = 1302

;MAX THEME OF SUNRISE=
[StateDef 3350]
type = S
physics = N
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3350, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3350, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3350, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3350, Corner Push]
type = VarSet
trigger1 = time = 3
fvar(5) = 0

[State 3350, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3350, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3350, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3350, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 2

[State 3350, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3350, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(30 * const(size.xScale)), ceil(-30 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3350, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 50+(var(10)*2)
moveTime = 50+(var(10)*2)
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 3350, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3300,0
channel = 0

[State 3350, Helper]
type = Helper
trigger1 = AnimElem = 4
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

[State 3350, 3]
type = ChangeState
trigger1 = AnimElem = 4
value = 3351

;Air
[Statedef 3351]
type = A
movetype = A
physics = N
ctrl = 0
velset = 3,-5

[State 3351, 1]
type = VelAdd
trigger1 = Time > 20
y = .2

[State 3351, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3351, Helper]
type = Helper
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
helpertype = Normal
name = "Slash2"
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

[State 3351, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3300,1
channel = 0

[State 3351, 2]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
value = 1,5

[State 3351, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 6
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 7, Hit
damage = ceil(ifElse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 10
ground.velocity = -3, -10
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -3, -6
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 146), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3351, 4]
type = ChangeAnim
trigger1 = Anim = 3300
trigger1 = Time = 60
value = 1302

[State 3351, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y > 0
value = 1302

;SOBAT FESTIVAL=
[StateDef 3400]
type = S
physics = N
moveType = A
anim = 3400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3400, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3400, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3400, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3400, Corner Push]
type = VarSet
trigger1 = time = 3
fvar(5) = 0

[State 3400, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3400, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3400, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3400, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 2

[State 3400, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(12) < 0
time = 1
value = SCA

[State 3400, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-10 * const(size.xScale)), ceil(-40 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3400, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 50 +(var(10)*2)
moveTime = 50 +(var(10)*2)
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,2
darken = 0

[State 3400, Width]
type = Width
trigger1 = 1
edge = 50,0
player = 40,0

[State 3400, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 3000,0
channel = 0

[State 3400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 11 || AnimElem = 26
value = 1000,1
channel = 1

[State 3400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 30
value = 1,3

[State 3400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 16
value = 1,1

[State 3400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 18
value = 1,2

[State 3400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 33
value = 3300,1
channel = 0

[State 3400, 1]
type = Explod
trigger1 = AnimElem = 11 || AnimElem = 26
anim = 7010
id = 7010
pos = ceil(0*const(size.xscale)),ceil(-50*const(size.yscale))
postype = P1
sprpriority = 3
ownpal = 1
bindtime = -1
removeongethit = 1
persistent = 1
removetime = -2
scale = const(size.xscale),const(size.yscale)
ignorehitpause = 0

[State 3400, 3]
type = Explod
trigger1 = AnimElem = 16
anim = 7009
id = 7009
pos = ceil(10*const(size.xscale)),ceil(-60*const(size.yscale))
postype = P1
sprpriority = 3
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = -2
scale = 0.7*const(size.xscale),0.7*const(size.yscale)
persistent = 1
ignorehitpause = 0

[State 3400, 4]
type = Explod
trigger1 = AnimElem = 18
anim = 7007
id = 7007
pos = ceil(10*const(size.xscale)),ceil(-50*const(size.yscale))
postype = P1
sprpriority = 3
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = -2
scale = 0.7*const(size.xscale),0.7*const(size.yscale)
persistent = 1
ignorehitpause = 0

[State 3400, 5]
type = Explod
trigger1 = AnimElem = 30
anim = 7012
id = 7012
pos = ceil(20*const(size.xscale)),ceil(-30*const(size.yscale))
postype = P1
sprpriority = 3
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = -2
scale = 1*const(size.xscale),0.7*const(size.yscale)
persistent = 1
ignorehitpause = 0

[State 3400, 5]
type = Explod
trigger1 = AnimElem = 33
anim = 7015
id = 7015
pos = ceil(135*const(size.xscale)),ceil(-80*const(size.yscale))
postype = P1
sprpriority = 3
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = -2
scale = 0.6*const(size.xscale),0.6*const(size.yscale)
persistent = 1
ignorehitpause = 0

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElem = 9 || AnimElem = 13 || AnimElem = 18 || AnimElem = 24 || AnimElem = 30
x = 4

[State 3400, VelSet]
type = VelSet
trigger1 = animelem = 33
x = 0

[State 3400, TargetBind]
type = TargetBind
triggerAll = AnimElem <= 38
trigger1 = MoveHit
pos = 65,0
time = 1

[State 3400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 13 || AnimElem = 20 || AnimElem = 26 || AnimElem = 38 || AnimElem = 43 || AnimElem = 47
value = 1,4

[State 3400, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 12
trigger1 = AnimElem = 11
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 8,12
guard.pauseTime = 8,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -1.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -1.52
guard.cornerPush.velOff = 0
air.velocity = -2, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 12
trigger1 = AnimElem = 16
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 8,12
guard.pauseTime = 8,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -1.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -1.52
guard.cornerPush.velOff = 0
air.velocity = -2, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 12
trigger1 = AnimElem = 17
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 8,12
guard.pauseTime = 8,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -1.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -1.52
guard.cornerPush.velOff = 0
air.velocity = -2, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 12
trigger1 = AnimElem = 20
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 8,12
guard.pauseTime = 8,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -1.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -1.52
guard.cornerPush.velOff = 0
air.velocity = -2, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 12
trigger1 = AnimElem = 26
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 8,12
guard.pauseTime = 8,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -1.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -1.52
guard.cornerPush.velOff = 0
air.velocity = -2, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 12
trigger1 = AnimElem = 33
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 88 < 7, 7, fvar(11) * 88)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 28,28
guard.pauseTime = 28,20
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -4, -12
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -4, -12
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3400, ??????]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
