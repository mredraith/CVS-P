;SUPERS>=

;G.Kronprinz (L) LVL1
[StateDef 3000]
type = S
physics = S
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 6100

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = 1
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

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = Anim = 3200
trigger1 = AnimElem = 1
time = 56
value = , NA, AP, AT

[State 3000, Super Pause FX]
type = Helper
trigger1 = time = 6
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(-47 * const(size.xScale)), ceil(-96 * const(size.yScale))
superMoveTime = 47
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3000, Super Pause]
type = SuperPause
trigger1 = time = 6
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 3200
trigger1 = AnimElem = 3
value = 1300,0
channel = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 3200
trigger1 = animelem = 52
trigger2 = anim = 3210
trigger2 = animelem = 3
value = 1300,2
channel = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 3200
trigger1 = AnimElem = 4
value = 1300,3
channel = 1

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 3210
trigger1 = AnimElem = 3
value = 1300,4
channel = 1

[State 1300, Width]
type = Width
trigger1 = anim = 3210
trigger1 = animelem = 1
player = 15,0

[State 1300, VarSet]
type = VarSet
trigger1 = anim = 3200
trigger1 = time = 0
v = 10
value = 1

[State 1300, VarSet]
type = VarSet
trigger1 = anim = 3200
trigger1 = time >= 110
v = 10
value = 2

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = command != "holdp"
trigger1 = time = [49,134]
trigger1 = anim = 3200
trigger2 = (anim = 3200) && (animelemtime(45) = 2)
value = 3210

[State 1300, Helper]
type = Helper
Triggerall = var(10) = 1
trigger1 = anim = 3200
trigger1 = animelem = 52
trigger2 = anim = 3210
trigger2 = animelem = 3
helpertype = normal
name = "wave"
ID = 3263
stateno = 3263
pos = 65,-75
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 5
supermove
pausemove
size.xscale =.5
size.yscale =.5

[State 1300, Helper]
type = Helper
Triggerall = var(10) = 2
trigger1 = anim = 3200
trigger1 = animelem = 52
trigger2 = anim = 3210
trigger2 = animelem = 3
helpertype = normal
name = "wave"
ID = 3260
stateno = 3260
pos = 65,-75
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 5
supermove
pausemove
size.xscale =.5
size.yscale =.5

[State 1300, Helper]
type = Helper
trigger1 = anim = 3200
trigger1 = time = 44
helpertype = normal
name = "handfx"
ID = 1315
stateno = 1315
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 5
supermovetime = 6

[State 1300]
type = Explod
trigger1 = Anim = 3210
anim = 1311
ID = 1311
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 3
accel = 0,0
ownpal = 1
trans = addalpha
alpha = 256,256
removeongethit = 1
removetime = -1
persistent = 0
supermovetime = 47

[State 1300]
type = removeExplod
triggerall = NumExplod(1311) > 0
trigger1 = AnimElem = 3
ID = 1311

[State 1300, end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------
;G.Kronprinz (M) LVL1
[StateDef 3001]
type = S
physics = S
moveType = A
anim = 3201
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 6100

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = 1
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

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = Anim = 3201
trigger1 = AnimElem = 1
time = 56
value = , NA, AP, AT

[State 3000, Super Pause FX]
type = Helper
trigger1 = time = 6
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(-47 * const(size.xScale)), ceil(-96 * const(size.yScale))
superMoveTime = 47
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3000, Super Pause]
type = SuperPause
trigger1 = time = 6
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 3201
trigger1 = AnimElem = 3
value = 1300,0
channel = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 3201
trigger1 = animelem = 52
trigger2 = anim = 3210
trigger2 = animelem = 3
value = 1300,2
channel = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 3201
trigger1 = AnimElem = 4
value = 1300,3
channel = 1

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 3210
trigger1 = AnimElem = 3
value = 1300,4
channel = 1

[State 1300, Width]
type = Width
trigger1 = anim = 3210
trigger1 = animelem = 1
player = 15,0

[State 1300, VarSet]
type = VarSet
trigger1 = anim = 3201
trigger1 = time = 0
v = 10
value = 1

[State 1300, VarSet]
type = VarSet
trigger1 = anim = 3201
trigger1 = time >= 110
v = 10
value = 2

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = command != "holdp"
trigger1 = time = [49,134]
trigger1 = anim = 3201
trigger2 = (anim = 3201) && (animelemtime(45) = 2)
value = 3210

[State 1300, Helper]
type = Helper
Triggerall = var(10) = 1
trigger1 = anim = 3201
trigger1 = animelem = 52
trigger2 = anim = 3210
trigger2 = animelem = 3
helpertype = normal
name = "wave"
ID = 3264
stateno = 3264
pos = 65,-75
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 5
supermove
pausemove
size.xscale =.5
size.yscale =.5

[State 1300, Helper]
type = Helper
Triggerall = var(10) = 2
trigger1 = anim = 3201
trigger1 = animelem = 52
trigger2 = anim = 3210
trigger2 = animelem = 3
helpertype = normal
name = "wave"
ID = 3261
stateno = 3261
pos = 65,-75
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 5
supermove
pausemove
size.xscale =.5
size.yscale =.5

[State 1300, Helper]
type = Helper
trigger1 = anim = 3201
trigger1 = time = 44
helpertype = normal
name = "handfx"
ID = 1315
stateno = 1316
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 5
supermovetime = 6

[State 1300]
type = Explod
trigger1 = Anim = 3210
anim = 1311
ID = 1311
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 3
accel = 0,0
ownpal = 1
trans = addalpha
alpha = 256,256
removeongethit = 1
removetime = -1
persistent = 0
supermovetime = 47

[State 1300]
type = removeExplod
triggerall = NumExplod(1311) > 0
trigger1 = AnimElem = 3
ID = 1311

[State 1300, end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------
;G.Kronprinz (H) LVL1
[StateDef 3002]
type = S
physics = S
moveType = A
anim = 3202
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 6100

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = 1
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

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = Anim = 3202
trigger1 = AnimElem = 1
time = 56
value = , NA, AP, AT

[State 3000, Super Pause FX]
type = Helper
trigger1 = time = 6
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(-47 * const(size.xScale)), ceil(-96 * const(size.yScale))
superMoveTime = 47
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3000, Super Pause]
type = SuperPause
trigger1 = time = 6
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 3202
trigger1 = AnimElem = 3
value = 1300,0
channel = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 3202
trigger1 = animelem = 52
trigger2 = anim = 3210
trigger2 = animelem = 3
value = 1300,2
channel = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 3202
trigger1 = AnimElem = 4
value = 1300,3
channel = 1

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 3210
trigger1 = AnimElem = 3
value = 1300,4
channel = 1

[State 1300, Width]
type = Width
trigger1 = anim = 3210
trigger1 = animelem = 1
player = 15,0

[State 1300, VarSet]
type = VarSet
trigger1 = anim = 3202
trigger1 = time = 0
v = 10
value = 1

[State 1300, VarSet]
type = VarSet
trigger1 = anim = 3202
trigger1 = time >= 110
v = 10
value = 2

[State 1302, ChangeAnim]
type = ChangeAnim
TriggerAll = !AILevel
trigger1 = command != "holdp"
trigger1 = time = [49,134]
trigger1 = anim = 3202
trigger2 = (anim = 3202) && (animelemtime(45) = 2)
value = 3210

[State 1302, ChangeAnim]
type = ChangeAnim
TriggerAll = AILevel
trigger1 = time = 49
trigger1 = anim = 3202
value = 3210

[State 1300, Helper]
type = Helper
Triggerall = var(10) = 1
trigger1 = anim = 3202
trigger1 = animelem = 52
trigger2 = anim = 3210
trigger2 = animelem = 3
helpertype = normal
name = "wave"
ID = 3265
stateno = 3265
pos = 65,-75
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 5
supermove
pausemove
size.xscale =.5
size.yscale =.5

[State 1300, Helper]
type = Helper
Triggerall = var(10) = 2
trigger1 = anim = 3202
trigger1 = animelem = 52
trigger2 = anim = 3210
trigger2 = animelem = 3
helpertype = normal
name = "wave"
ID = 3262
stateno = 3262
pos = 65,-75
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 5
supermove
pausemove
size.xscale =.5
size.yscale =.5

[State 1300, Helper]
type = Helper
trigger1 = anim = 3202
trigger1 = time = 44
helpertype = normal
name = "handfx"
ID = 1315
stateno = 1317
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 5
supermovetime = 6

[State 1300]
type = Explod
trigger1 = Anim = 3210
anim = 1311
ID = 1311
postype = p1
pos = 0,0
bindtime = -1
sprpriority = 3
accel = 0,0
ownpal = 1
trans = addalpha
alpha = 256,256
removeongethit = 1
removetime = -1
persistent = 0
supermovetime = 47

[State 1300]
type = removeExplod
triggerall = NumExplod(1311) > 0
trigger1 = AnimElem = 3
ID = 1311

[State 1300, end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------
;Grosse Kreis (L) LVL1
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

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 6100

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

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
time = 10
value = SCA,AA,AP,NT,ST

[State 3100, Super Pause FX]
type = Helper
trigger1 = Time = 5
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(36 * const(size.xScale)), ceil(-40 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 5
time = 50
moveTime = 50
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 7
StateType = A
physics = N

[State 3001, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1300,0
channel = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1100,1
channel = 1

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1100,1
channel = 1

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,5

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Genocide Heaven Dust"
posType = P1
ownPal = 1

[State 3100, Position]
type = PosAdd
trigger1 = animelem = 6
x = 6

[State 1100, Velocity]
type = VelSet
trigger1 = time = 54
x = 1.5
y = -6.5

[State 1100, Vel X]
type = VelMul
trigger1 = AnimElemTime(7)>0
x = 1.01

[State 1100, Gravity]
type = VelAdd
trigger1 = AnimElemTime(10)>0
y = .65

[State 1130, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1190
ID = 1190
pos = 5,-63
postype = p1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .42,.43
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1190
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1490
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1491
ignorehitpause = 1

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = animelem = 7 || animelem = 9
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 85 < 7, 7, fvar(11) * 85)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 5,5
guard.pauseTime = 5,8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -3, -10
ground.cornerPush.velOff = 0
guard.velocity = -3
guard.cornerPush.velOff = 0
air.velocity = -3,-10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 105, 1]
type = StateTypeSet
trigger1 = AnimElem = 11
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3105

;---------------------------------------------------------
;Grosse Kreis (M) LVL1
[StateDef 3101]
type = S
physics = S
moveType = A
anim = 3101
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 6100

[State 3101, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3101, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3101, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3101, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3101, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3101, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3101, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3101, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
time = 10
value = SCA,AA,AP,NT,ST

[State 3101, Super Pause FX]
type = Helper
trigger1 = Time = 5
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(36 * const(size.xScale)), ceil(-40 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3101, SuperPause]
type = SuperPause
trigger1 = Time = 5
time = 50
moveTime = 50
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 7
StateType = A
physics = N

[State 3101, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 3101, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1300,0
channel = 0

[State 3101, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1100,1
channel = 1

[State 3101, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1100,1
channel = 1

[State 3101, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,5

[State 3101, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Genocide Heaven Dust"
posType = P1
ownPal = 1

[State 3100, Position]
type = PosAdd
trigger1 = animelem = 6
x = 12

[State 3101, Velocity]
type = VelSet
trigger1 = time = 54
x = 7.0
y = -4.0

[State 3101, Vel X]
type = VelMul
trigger1 = AnimElemTime(7)>0
x = 1.00

[State 3101, Gravity]
type = VelAdd
trigger1 = AnimElemTime(10)>0
y = .56

[State 1130, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1190
ID = 1190
pos = 5,-63
postype = p1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .46,.43
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1190
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1490
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1491
ignorehitpause = 1

[State 3101, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = animelem = 7 || animelem = 9
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 85 < 7, 7, fvar(11) * 85)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 5,5
guard.pauseTime = 5,5
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -6, -9
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -5,-9
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 105, 1]
type = StateTypeSet
trigger1 = AnimElem = 11
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3105

;---------------------------------------------------------
; G.Himel Kreis (L) LVL1
[StateDef 3102]
type = S
physics = S
moveType = A
anim = 3102
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3102, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3102, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3102, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3102, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3102, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3102, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3102, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3102, NotHitBy]
type = NotHitBy
trigger1 = time = 0
time = 57
value = , NA, AP, AT

[State 3102, Super Pause FX]
type = Helper
trigger1 = Time = 5
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(42 * const(size.xScale)), ceil(-130 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3102, SuperPause]
type = SuperPause
trigger1 = Time = 5
time = 50
moveTime = 50
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 14
StateType = A
physics = N

[State 3102, 1]
type = StateTypeSet
trigger1 = AnimElem = 19
movetype = I

[State 3102, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 3102, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 15
value = 1100,1
channel = 1

[State 3102, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 15
value = 1100,1
channel = 1

[State 3102, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,5

[State 3102, Voice]
type = PlaySnd
trigger1 = animelem = 14
value = 4,1
channel = 0

[State 3102, Velocity]
type = VelSet
trigger1 = AnimElem = 14
x = 2
y = -6.25

[State 3102, Gravity]
type = VelAdd
trigger1 = AnimElemTime(18)>0
y = .65

[State 3102, Super]
type = Explod
trigger1 = time = 53
anim = 3190
ID = 3190
pos = 50,-60
postype = p1
bindtime = 1
vfacing = 1
facing = 1
removetime = -2
vel = .2,1
scale = .3,.45
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3102, Explod]
type = Explod
trigger1 = animelem = 15
anim = 1190
ID = 1190
pos = 5,-63
postype = p1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .42,.43
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 3102, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1190
ignorehitpause = 1

[State 3102, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1491
ignorehitpause = 1

[State 3102, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 8
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 5,12
guard.pauseTime = 5,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = 3, 0
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -1.5, -7
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 87), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3102, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 5
trigger1 = animelem = 15
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 130 < 7, 7, fvar(11) * 130)), 7;Ifelse(enemy,gethitvar(hitcount) > 5,120,170)
getPower = 0,0
givePower = 36, 36
pauseTime = 5,6
guard.pauseTime = 5,6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -5, -13
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -5,-9
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3102, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3105

;-------------------------------------------------------------
; G.Himel Kreis (M) LVL1
[StateDef 3103]
type = S
physics = S
moveType = A
anim = 3103
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3103, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3103, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3103, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3103, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3103, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3103, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3103, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3103, NotHitBy]
type = NotHitBy
trigger1 = time = 0
time = 57
value = , NA, AP, AT

[State 3103, Super Pause FX]
type = Helper
trigger1 = Time = 5
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(42 * const(size.xScale)), ceil(-130 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3103, SuperPause]
type = SuperPause
trigger1 = Time = 5
time = 50
moveTime = 50
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3103, StateType]
type = StateTypeSet
trigger1 = AnimElem = 23
StateType = A
physics = N

[State 3103, 1]
type = StateTypeSet
trigger1 = AnimElem = 29
movetype = I

[State 3103, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 3103, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 25
value = 1100,1
channel = 1

[State 3103, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 25
value = 1100,1
channel = 1

[State 3103, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,5

[State 3103, Voice]
type = PlaySnd
trigger1 = animelem = 16
value = 4,2
channel = 0

[State 3103, Voice]
type = PlaySnd
trigger1 = animelem = 24
value = 4,1
channel = 0

[State 3103, PlaySnd]
type = PlaySnd
trigger1 = time = 68
value = 1100,1
channel = 1

[State 3103, PlaySnd]
type = PlaySnd
trigger1 = time = 68
value = 1,4

[State 3103, VelSet]
type = VelSet
trigger1 = animelem = 17
x = 9

[State 3103, VelSet]
type = VelSet
trigger1 = animelem = 19
x = 0

[State 3103, Velocity]
type = VelSet
trigger1 = AnimElem = 24
x = 2.5
y = -6.25

[State 3103, Gravity]
type = VelAdd
trigger1 = AnimElemTime(28)>0
y = .65

[State 3103, Super]
type = Explod
trigger1 = time = 53
anim = 3190
ID = 3190
pos = 50,-60
postype = p1
bindtime = 1
vfacing = 1
facing = 1
removetime = -2
vel = .2,1
scale = .3,.45
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3103, Explod]
type = Explod
trigger1 = animelem = 17
anim = 1491
ID = 1491
pos = 80,-90
postype = p1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .35,.25
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3103, Explod]
type = Explod
trigger1 = animelem = 25
anim = 1190
ID = 1190
pos = 5,-63
postype = p1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .42,.43
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 3103, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1190
ignorehitpause = 1

[State 3103, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1491
ignorehitpause = 1

[State 3103, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 8
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 5,12
guard.pauseTime = 5,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = 3, 0
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -1.5, -7
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 87), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3103, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 5
trigger1 = AnimElem = 17
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 5,12
guard.pauseTime = 5,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -1.5, -7
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -81
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3103, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 6
trigger1 = animelem = 25
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 110 < 7, 7, fvar(11) * 110)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 5,6
guard.pauseTime = 5,6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -5, -13
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -5,-9
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3103, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3105

;---------------------------------------------------------
;Landing
[Statedef 3105]
type = S
physics = S
ctrl = 0
anim = 3105
velset = 0,0

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

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, Effect]
type = PlaySnd
trigger1 = Time = 0
value = 52, 0

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------
; G.Kreis 2 (Slide) LVL1
[Statedef 3110]
type = C
movetype = A
physics = N
juggle = 0
anim = 3149
poweradd = -1000
ctrl = 0
velset = 0
facep2 = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 6100

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, PosSet]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 3100, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(7 * const(size.xScale)), ceil(-14 * const(size.yScale))
superMoveTime = 40
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA,AA,AP,NT,ST
time = 47

[State 3000, 3]
type = PlaySnd
trigger1 = Time = 44
value = 1300,0
volume = 0

[State 1000, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,4
channel = 0
volume = 255

[State 1100, Velocity]
type = VelSet
trigger1 = animelem=5,>0
x = 10

[State 3010-1, HitDef]
type = Hitdef
trigger1 = (p2stateno != [5020,5040])
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = C, HA
hitflag = M
guardflag = L
animtype = Hard
priority = 3,Hit
pausetime = 6,7
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 7
guard.pausetime = 3,4
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 68), var(36) := -6
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
air.hittime = 18
ground.velocity = -3.5
guard.velocity = -2
air.velocity = -4.5,-10
airguard.velocity = -6.5,-5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 25,25
persistent = 0
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
yAccel = (0.5 + (ComboCount * 0.01))
envShake.time = 8
envShake.ampl = 4
envShake.freq = 80

[State 1001, 21]
type = ChangeState
trigger1 = movecontact
trigger2 = time >= 63
trigger3 = Frontedgebodydist <= 6
value = 3115

;---------------------------------------------------------
;Grosse Kreis 2 LVL1
[StateDef 3115]
type = S
physics = S
moveType = A
anim = 3150
ctrl = 0
sprPriority = 1
faceP2 = 0

[State 3115, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3115, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3115, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3115, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3115, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = , AP
time = 8

[State 3115, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 3115, Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1100,1
channel = 1

[State 3115, Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1,5

[State 3115, Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 41,0

[State 3115, StateType]
type = StateTypeSet
trigger1 = AnimElem = 5
StateType = A
physics = N

[State 3115, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Genocide Heaven Dust"
posType = P1
ownPal = 1

[State 3115, Velmul]
type = Velmul
trigger1 = animelem=1,>0
trigger1 = animelem=5,<0
x = 1.02

[State 3115, Velmul]
type = Velmul
trigger1 = animelem=8,>0
x = .97

[State 3115, Velocity]
type = VelSet
trigger1 = AnimElem = 5,= 0
x = 5
y = -8

[State 3115, Velocity]
type = VelSet
trigger1 = AnimElem = 7,= 0
x = -3

[State 3115, 4]
type = VelAdd
trigger1 = AnimElem = 5 >= 0
y = .5

[State 1130, Explod]
type = Explod
trigger1 = animelem = 6
anim = 1190
ID = 1190
pos = 5,-63
postype = p1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .42,.43
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1190
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1490
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1491
ignorehitpause = 1

[State 3115, HitDef 1]
type = Hitdef
trigger1 = !var(16) && var(15) < 4
trigger1 = animelem = 6 || animelem = 8
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 60 < 7, 7, fvar(11) * 60)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 5,5
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -4.5,-10
ground.cornerPush.velOff = 0
guard.velocity = -3.5
guard.cornerPush.velOff = 0
air.velocity = -4.5,-10
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3115, 1]
type = StateTypeSet
trigger1 = AnimElem = 9
movetype = I

[State 3115, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3105

;---------------------------------------------------------
; MAX G.Kreis (Slide) LVL2
[Statedef 3120]
type = C
movetype = A
physics = N
juggle = 0
anim = 3149
poweradd = -2000
ctrl = 0
velset = 0
facep2 = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 6100

[State 3120, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3120, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3120, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3120, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3120, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, PosSet]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 3120, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(7 * const(size.xScale)), ceil(-14 * const(size.yScale))
superMoveTime = 40
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3120, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 3120, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 52

[State 3120, 3]
type = PlaySnd
trigger1 = Time = 44
value = 1300,0
volume = 0

[State 1000, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,4
channel = 0
volume = 255

[State 1100, Velocity]
type = VelSet
trigger1 = animelem=5,>0
x = 10

[State 3010-1, HitDef]
type = Hitdef
trigger1 = (p2stateno != [5020,5040])
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 5
attr = C, HA
hitflag = M
guardflag = L
animtype = Hard
priority = 3,Hit
pausetime = 3,4
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 7
guard.pausetime = 3,4
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 68), var(36) := -6
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
air.hittime = 18
ground.velocity = -3.5
guard.velocity = -4
air.velocity = -4.5,-10
airguard.velocity = -6.5,-5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 25,25
persistent = 0
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
yAccel = (0.5 + (ComboCount * 0.01))
envShake.time = 8
envShake.ampl = 4
envShake.freq = 80

[State 3120, 21]
type = ChangeState
trigger1 = movecontact
trigger2 = time >= 68
trigger3 = Frontedgebodydist <= 6
value = 3125

;---------------------------------------------------------
;MAX Grosse Kreis LVL2
[StateDef 3125]
type = S
physics = S
moveType = A
anim = 3155
ctrl = 0
sprPriority = 1
faceP2 = 0

[State 3125, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3125, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3125, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3125, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3125, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = , AP, AT
time = 12

[State 3125, Corner Push]
type = VarSet
trigger1 = Time = 1
fvar(5) = 0

[State 3125, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 3125, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
value = 1100,1
channel = 1

[State 3125, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
value = 1,5

[State 3125, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
value = 41,0

[State 3125, StateType]
type = StateTypeSet
trigger1 = AnimElem = 4
StateType = A
physics = N

[State 3125, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Genocide Heaven Dust"
posType = P1
ownPal = 1

[State 3125, Velocity]
type = VelSet
trigger1 = AnimElem = 5
x = 2.75
y = -9

[State 3125, Velocity]
type = VelSet
trigger1 = AnimElem = 13
x = 2
y = -7.5

[State 3125, Gravity]
type = VelAdd
trigger1 = AnimElemTime(6)>=1
trigger1 = AnimElemTime(14)<= 0
y = .65

[State 3125, Gravity]
type = VelAdd
trigger1 = AnimElemTime(14)>=1
y = .45

[State 1130, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1190
ID = 1190
pos = 5,-63
postype = p1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .42,.43
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 1130, Explod]
type = Explod
trigger1 = animelem = 13
anim = 1190
ID = 1190
pos = 5,-63
postype = p1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .42,.43
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1190
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1490
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1491
ignorehitpause = 1

[State 3125, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 47 < 7, 7, fvar(11) * 47)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
guard.pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -2, -9
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -2, -7
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3125, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 5
trigger1 = AnimElem = 8
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 5, Hit
damage = ceil(ifElse(fvar(11) * 47 < 7, 7, fvar(11) * 47)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
guard.pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -2, -10
ground.cornerPush.velOff = 0
guard.velocity = -5.52
guard.cornerPush.velOff = 0
air.velocity = -2, -9
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3125, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 6
trigger1 = AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 7, 9), ifElse(var(20), 7, 9)
guard.pauseTime = ifElse(var(20), 7, 9), ifElse(var(20), 7, 9)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -3, -9
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -3.15, -5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -70
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3125, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < 7
trigger1 = AnimElem = 14
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 7, 9), ifElse(var(20), 7, 9)
guard.pauseTime = ifElse(var(20), 7, 9), ifElse(var(20), 7, 9)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -3, -9
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -4.15, -7
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -90
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3125, 1]
type = StateTypeSet
trigger1 = AnimElem = 15
movetype = I

[State 3125, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3105

;G.Sklaven Rose LVL3
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

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

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA,AA,AP,NT,ST
time = 9

[State 3300, SuperPause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8525
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(-38 * const(size.xScale)), ceil(-83 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,2
darken = 0

[State 100, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,1
channel = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1000,3
channel = 0

[State 3300, 2]
type = Explod
trigger1 = animelem = 4
anim = 6100
ID = 6100
pos = 14,0
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 3300, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 23
id = 6100

[State 3300, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 220, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(4) = 0
x = 11

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 8

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1190
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1490
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1491
ignorehitpause = 1

[State 1200, 1]
type = HitDef
trigger1 = !var(16) && var(15) < 7
trigger1 = AnimElem = 4
attr = S, HA
damage = ceil(ifElse(fvar(11) * 0 < 0, 0, fvar(11) * 0)), 0
hitflag = MAF
guardflag = M
priority = 7, Hit
pauseTime = 0,1
guard.pauseTime = 11,1
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -66
getpower = 0, 0
givepower = 24,24
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -1.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
forcestand = 1
ID = 3000
envshake.time = 5
envshake.ampl = 2
kill = 0

[State 901,1]
type = TargetBind
trigger1 = time > 1 && numtarget && movehit
pos = 40, 0
postype = P1
time = -1
id = 3000

[State 1200, 2]
type = ChangeState
trigger1 = time > 1 && numtarget && movehit
value = 3304
persistent = 0

[State 1200, 2]
type = ChangeState
triggerall = AnimElemTime(4) > 0
trigger1 = AnimTime = 0
trigger2 = Frontedgebodydist <= 0
trigger3 = P2statetype = L
trigger3 = P2BodyDist X <= 10
trigger4 = moveguarded
value = 1215
ctrl = 1

;crash wall
[Statedef 3304]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3002

[State 1400, Dust]
type = helper
trigger1 = animelem = 1
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 730,1
channel = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,0

[State 1000, 0]
type = TargetFacing
trigger1 = time = 0
value = -1

[State 901, Throw]
type = TargetState
trigger1 = time = 0
value = 3307

[State 901,1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -25, -63
postype = P1
time = -1
id = 3000

[State 1205, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 10
value = 3306

[State 1510,1]
type = ChangeState
trigger1 = Pos Y >= 0 && Time > 5
value = 3305

;dash
[Statedef 3305]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3003
sprpriority = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1200,1
channel = 4

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 52,0
channel = 5

[State 0, Explod]
type = Explod
trigger1 = time =0
anim = 3092
ID = 3092
pos = -14,-72
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time =0
anim = 8104
ID = 8104
pos = -15,-5
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1100, Velocity]
type = VelSet
trigger1 = Time = 0
x = 16

[State 901,1]
type = TargetBind
trigger1 = time%10=0
pos = -25, -63
postype = P1
time = -1
id = 3000

[State 901,1]
type = TargetBind
trigger1 = time%10=5
pos = -22, -63
postype = P1
time = -1
id = 3000

[State 1205, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 10
trigger2 = Time = 150
value = 3306

;---------------------------------------------------------
;crash after dash
[Statedef 3306]
type = S
movetype = A
physics = S
juggle = ifelse(target,gethitvar(fall),0,0)
velset = 0,0
ctrl = 0
anim = 3004

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 6100

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3092

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 8104

[State 1206, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200,2

[State 1206, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,2

[State 1206, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200,3

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000,1

[State 3306, Rose]
type = helper
trigger1 = animelem = 3
stateno = 3315
id = 3315
name = "Rose"
pos = -360,0
postype = p1
facing = 1
helpertype = normal
keyctrl = 0
ownpal = 1

[State 3306, Gwan]
type = helper
trigger1 = animelem = 3
stateno = 1650
id = 1650
name = "Gwan"
pos = -360,0
postype = p1
facing = 1
helpertype = normal
keyctrl = 0
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal
name = "skull"
ID = 3090
stateno = 3090
pos = 30,5
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemovetime = 99999

[State 220, Position]
type = PosSet
trigger1 = time = 0
y = 0

[State 1206, width]
type = width
trigger1 = animelem = 1
edge = 40,0

[State 1206, width]
type = width
trigger1 = animelem = 2
edge = 75,0

[State 1206, width]
type = width
trigger1 = animelem = 3
edge = 90,0

[State 901,1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 45, -65
Time = -1
postype = P1
id = 3000

[State 901,1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 95, -65
Time = -1
postype = P1
ignorehitpause=1
id = 3000

[State 903, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2
time = 25

[State 1200, 1]
type = HitDef
trigger1 = !var(16) && var(15) < 8
trigger1 = AnimElem = 3
attr = S, HA
hitflag = MAF
guardflag = M
damage = Ifelse(enemy,gethitvar(hitcount) > 6,280,390)
getpower = 0, 0
givepower = 24,24
snap = 95,0
priority = 7,Hit
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
guard.pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -66
guard.dist = 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -4, -8
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
chainID = 3000 

[State 1205, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 1209
ctrl = 1

;---------------------------------------------------------
;p2grabbed, dashing
[Statedef 3307]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 1, Ex Flash]
type = palfx
trigger1 = !(gametime%3)
time = 2
add = 70,0,170
color = 256
mul = 170,170,170
sinadd = 95,95,95,15
ignorehitpause = 1

[State 1201, screenbound]
type = screenbound
trigger1 = 1
value = 1

[State 1510,1]
type = changeanim2
trigger1 = time = 0
value = 1207

;Grosse Sklaven LVL3
[StateDef 3310]
type = S
physics = N
moveType = A
anim = 3001
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3310, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3310, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3310, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3310, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3310, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3310, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3310, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,AA,AP,NT,ST
time = 48

[State 3310, SuperPause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(-38 * const(size.xScale)), ceil(-83 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3310, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,2
darken = 0

[State 100, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,1
channel = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1000,3
channel = 0

[State 3310, 2]
type = Explod
trigger1 = animelem = 4
anim = 6100
ID = 6100
pos = 14,0
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 3310, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 23
id = 6100

[State 3310, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 220, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(4) = 0
x = 11

[State 3310, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 8

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1190
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1490
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1491
ignorehitpause = 1

[State 3310, 1]
type = HitDef
trigger1 = !var(16) && var(15) < 7
trigger1 = AnimElem = 4
attr = S, HA
damage = ceil(ifElse(fvar(11) * 0 < 0, 0, fvar(11) * 0)), 0
hitflag = MAF
guardflag = M
priority = 7, Hit
pauseTime = 0,1
guard.pauseTime = 11,1
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -66
getpower = 0, 0
givepower = 24,24
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -1.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
forcestand = 1
ID = 3010
envshake.time = 5
envshake.ampl = 2
kill = 0

[State 3310,1]
type = TargetBind
trigger1 = time > 1 && numtarget && movehit
pos = 40, 0
postype = P1
time = -1
id = 3010

[State 3310, 2]
type = ChangeState
trigger1 = time > 1 && numtarget && movehit
value = 3311
persistent = 0

[State 3310, 2]
type = ChangeState
triggerall = AnimElemTime(4) > 0
trigger1 = AnimTime = 0
trigger2 = Frontedgebodydist <= 0
trigger3 = P2statetype = L
trigger3 = P2BodyDist X <= 10
trigger4 = moveguarded
value = 1215
ctrl = 1

;crash wall
[Statedef 3311]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3002

[State 3311, Dust]
type = helper
trigger1 = animelem = 1
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 3311, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 730,1
channel = 0

[State 3311, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,0

[State 3311, 0]
type = TargetFacing
trigger1 = time = 0
value = -1

[State 3311, Throw]
type = TargetState
trigger1 = time = 0
value = 3307

[State 3311,1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -25, -63
postype = P1
time = -1
id = 3010

[State 3311, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 10
value = 3313

[State 3311,1]
type = ChangeState
trigger1 = Pos Y >= 0 && Time > 5
value = 3312

;dash
[Statedef 3312]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3003
sprpriority = 0

[State 3312, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1200,1
channel = 4

[State 3312, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 52,0
channel = 5

[State 3312, Explod]
type = Explod
trigger1 = time =0
anim = 3092
ID = 3092
pos = -14,-72
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3312, Explod]
type = Explod
trigger1 = time =0
anim = 8104
ID = 8104
pos = -15,-5
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3312, Velocity]
type = VelSet
trigger1 = Time = 0
x = 16

[State 3312,1]
type = TargetBind
trigger1 = time%10=0
pos = -25, -63
postype = P1
time = -1
id = 3010

[State 3312,1]
type = TargetBind
trigger1 = time%10=5
pos = -22, -63
postype = P1
time = -1
id = 3010

[State 3312, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 10
trigger2 = Time = 150
value = 3313

;---------------------------------------------------------
;crash after dash
[Statedef 3313]
type = S
movetype = A
physics = S
juggle = ifelse(target,gethitvar(fall),0,0)
velset = 0,0
ctrl = 0
anim = 3005

[State 3313, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 6100

[State 3313, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3092

[State 3313, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 8104

[State 3313, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200,2

[State 3313, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,2

[State 3313, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200,3

[State 3313, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000,1

[State 3313, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal
name = "skull"
ID = 3090
stateno = 3090
pos = 30,5
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemovetime = 99999

[State 3313, Position]
type = PosSet
trigger1 = time = 0
y = 0

[State 3313, width]
type = width
trigger1 = animelem = 1
edge = 40,0

[State 3313, width]
type = width
trigger1 = animelem = 2
edge = 75,0

[State 3313, width]
type = width
trigger1 = animelem = 3
edge = 90,0

[State 3313,1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 45, -65
Time = -1
postype = P1
id = 3010

[State 3313,1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 95, -65
Time = -1
postype = P1
ignorehitpause=1
id = 3010

[State 3313, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2
time = 25

[State 3313, 1]
type = HitDef
trigger1 = !var(16) && var(15) < 8
trigger1 = AnimElem = 3
attr = S, HA
hitflag = MAF
guardflag = M
damage = Ifelse(enemy,gethitvar(hitcount) > 6,280,390)
getpower = 0, 0
givepower = 24,24
snap = 95,0
priority = 7,Hit
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
guard.pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -66
guard.dist = 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 120
ground.velocity = -4, -8
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
chainID = 3010

[State 3313, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 1209
ctrl = 1

;---------------------------------------------------------------------------
; Rose Entrance
[Statedef 3315]
type = S
movetype = I
physics = N
anim = 3006
poweradd = 0
ctrl = 0
facep2 = 0

[State 3315, Velocity]
type = VelSet
trigger1 = time >= 0
x = 3

[State 3315,4]
type = helper
triggerall = time >= 0
triggerall = !numhelper(3316)
trigger1 = time > 95
stateno = (3316)
id = (3316)
name = "Rose"
pos = 0,0
postype = p1
helpertype = normal
keyctrl = 0
ownpal = 1

[state 3315, destroyself]
type = destroyself
triggerall = time > 0
trigger1 = numhelper(3316)

;---------------------------------------------------------------------------
; Rose Cheer
[Statedef 3316]
type = S
movetype = I
physics = S
anim = 3007
poweradd = 0
ctrl = 0
facep2 = 0

[State 3316, Velocity]
type = VelSet
trigger1 = time = 0
x = 0

[State 3316, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3,3
volume = 255

[State 3316, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3317
ctrl = 1

;---------------------------------------------------------------------------
; Rose Depart
[Statedef 3317]
type = S
movetype = I
physics = N
anim = 3008
poweradd = 0
ctrl = 0
facep2 = 0

[State 3317, Width]
type = Width
trigger1 = time >= 0
edge = 1,0

[State 3317, Velocity]
type = VelSet
trigger1 = time >= 0
x = -1.8

[state 3317, destroyself]
type = destroyself
triggerall = time > 1
trigger1 = FrontEdgeDist <= -40
trigger2 = BackEdgeDist <= -40