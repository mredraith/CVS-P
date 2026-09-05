; _________________________________________
;| Decapre by varo_hades |
; 
;
;SUPER STATES=
;

;STRAFE DAGGER>=
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
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 53

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-21 * const(size.xScale)), ceil(-51 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 50
moveTime = 50
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, 1]
type = statetypeset
trigger1 = AnimElem = 4
statetype = A
physics = N

[State 3000, Voice]
type = PlaySnd
trigger1 = animelemtime(1) = 10
value = 3200, 7
channel = 2

[State 3000, Voice]
type = PlaySnd
trigger1 = animelemtime(1) = 25
value = 3000,0
channel = 0

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3000,1
channel = 0

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000,2
channel = 1

[State 3000, Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3, 5
channel = 2

[State 3000, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 3000, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = 8.5+1*var(10)

[State 3000, Super]
type = Helper
trigger1 = AnimElem = 5
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

[State 3000, Cloth]
type = Helper
trigger1 = AnimElem = 4
stateno = 7900
pos = 0,0
persistent = 0
supermovetime = 5
size.xscale = 0.6
size.yscale = 0.6

[State 3000, Flames]
type = explod
trigger1 = animelemtime(4) >= 0 && Time%3 = 0
anim = 8150
ID = 8150
sprpriority = 3
postype = p1
pos = -20,-55
random = 48,48
vel = -(random/250.0), (random/250.0)
facing = ifelse(random<500, -1, 1)
vfacing = ifelse(random<500, -1, 1)
scale =.5,.5
ownpal = 1

[State 3000, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
trigger8 = AnimElem = 12
trigger9 = AnimElem = 13
trigger10 = AnimElem = 14
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = -7.5, -6.5
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -7.5, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 11+(random%2))
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -45-ceil((pos y-enemynear,pos y)*.5)
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3000, Flame Particles]
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

[State 3000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3005

;Land
[Statedef 3005]
type = S
physics = N
ctrl = 0
anim = 3005

[State 3005, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 3005, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 52,0

[State 3005, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3005, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3005, Velocity]
type = VelMul
trigger1 = AnimElem = 2
x = .4 + (var(10)*0.1)

[State 3005, 2]
type = VelSet
trigger1 = AnimElem = 4
y = 0

[State 3005, Cloth]
type = Helper
trigger1 = AnimElem = 1
stateno = 7901
pos = 0,0
persistent = 0
supermovetime = 5
size.xscale = .625
size.yscale = .625

[State 3005, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;MAX STRAFE DAGGER>=
[StateDef 3050]
type = S
physics = N
moveType = A
anim = 3050
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

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 53

[State 3050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 2

[State 3050, SuperPause FX]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-21 * const(size.xScale)), ceil(-51 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3050, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 54
moveTime = 54
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, 1]
type = statetypeset
trigger1 = AnimElem = 4
statetype = A
physics = N

[State 3050, Voice]
type = PlaySnd
trigger1 = animelemtime(1) = 10
value = 3200, 7
channel = 2

[State 3050, Voice]
type = PlaySnd
trigger1 = animelemtime(1) = 25
value = 3000,0
channel = 0

[State 3050, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3000,1
channel = 0

[State 3050, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000,2
channel = 1

[State 3050, Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3, 5
channel = 2

[State 3050, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 3050, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = 8.5+1*var(10)

[State 3050, Super]
type = Helper
trigger1 = AnimElem = 5
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

[State 3050, Cloth]
type = Helper
trigger1 = AnimElem = 4
stateno = 7910
pos = 0,0
persistent = 0
supermovetime = 5
size.xscale = 0.6
size.yscale = 0.6

[State 3050, Flames]
type = explod
trigger1 = animelemtime(4) >= 0 && Time%3 = 0
anim = 8150
ID = 8150
sprpriority = 3
postype = p1
pos = -20,-55
random = 48,48
vel = -(random/250.0), (random/250.0)
facing = ifelse(random<500, -1, 1)
vfacing = ifelse(random<500, -1, 1)
scale =.5,.5
ownpal = 1

[State 3050, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
trigger8 = AnimElem = 12
trigger9 = AnimElem = 13
trigger10 = AnimElem = 14
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 32 < 7, 7, fvar(11) * 32)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 6,8
guard.pauseTime = 6,8
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = -7.5, -6.5
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -7.5, -6.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 11+(random%2))
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -45-ceil((pos y-enemynear,pos y)*.5)
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3050, Flame Particles]
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

[State 3050, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3005

;PSYCHO STREAM>=
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
trigger1 = Time = 0
value = SCA
time = 54

[State 3100, Super Pause FX]
type = Helper
trigger1 = Time = 5
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(9 * const(size.xScale)), ceil(-63 * const(size.yScale))
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

[State 3100, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100,0
channel = 0

[State 3100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100, 1

[State 3100, Effect]
type = PlaySnd
trigger1 = AnimElem = 21
value = 3100, 2

[State 3100,Super]
type = Helper
trigger1 = AnimElem = 21
id = 3105
name = "shinku"
pos = ceil(85*const(size.xscale)),ceil(-58*const(size.yscale))
postype = P1
stateno = 3105
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
supermovetime = 3+(var(10)*2)
size.xscale = 0.2
size.yscale = 0.2

[State 3100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;MAX PSYCHO STREAM>=
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
trigger1 = Time = 0
value = SCA
time = 54

[State 3150, Super Pause FX]
type = Helper
trigger1 = Time = 5
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(9 * const(size.xScale)), ceil(-63 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3150, SuperPause]
type = SuperPause
trigger1 = Time = 5
time = 50
moveTime = 50
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3150, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100,0
channel = 0

[State 3150, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100, 1

[State 3150, Effect]
type = PlaySnd
trigger1 = AnimElem = 21
value = 3100, 2

[State 3150,Super]
type = Helper
trigger1 = AnimElem = 21
id = 3155
name = "shinku"
pos = ceil(85*const(size.xscale)),ceil(-58*const(size.yscale))
postype = P1
stateno = 3155
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
supermovetime = 3+(var(10)*2)
size.xscale = 0.2
size.yscale = 0.2

[State 3150, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;DCM>=
[StateDef 3200]
type = S
physics = N
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
trigger1 = Time = 0
value = SCA
time = 64

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(-13 * const(size.xScale)), ceil(-55 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = Time = 4
time = 49
moveTime = 49
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3200, Dust]
type = Helper
trigger1 = Animelem = 2
helperType = Normal
stateno = 8100
ID = 8100
name = "Jump Dust"
ownpal = 1
posType = P1
pausemovetime = 99999999999999
supermovetime = 99999999999999

[State 3200, Voice]
type = PlaySnd
trigger1 = time = 3
value = 3200,0
channel = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40,0
channel = 1

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 2

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1600,0
channel = 3

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3200,6
channel = 0

[State 3200, Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 52, 0
channel = 20

[State 3200, Spark]
type = Explod
trigger1 = AnimElem = 5
Anim = 8102
pos = 0, 0
postype = p1
ownpal = 1
sprpriority = 3
;pausemovetime = -1
supermovetime = -1
scale = .5,.5

[State 3200, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = 10

[State 3200, Velocity]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 3200, 1]
type = statetypeset
trigger1 = AnimElem = 4
movetype = I

[State 3200, StateType]
type = StateTypeSet
trigger1 = AnimElem = 4
StateType = S
physics = S

[State 3200, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 65 < 7, 7, fvar(11) * 65)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,13
guard.pauseTime = 12,13
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -6, -6
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -42
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0
id = 3200

[State 3200,1]
type = TargetBind
trigger1 = time > 1 && numtarget(3200)
pos = 40, 0
time = -1

[State 3200, 2]
type = ChangeState
trigger1 = time > 1 && numtarget(3200)
trigger1 = movehit
value = 3201
persistent = 0

[State 3200, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Conect
[Statedef 3201]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3201
velset = 0,0

[State 3201, 0]
type = TargetFacing
trigger1 = time = 0
value = -1

[State 3201, Throw]
type = TargetState
trigger1 = AnimElem = 1
value = 3206

[State 3201, Position]
type = PosSet
trigger1 = animelem = 3
x = -30*facing
y = 0

[State 3201, Width]
type = Width
trigger1 = Time = 0
edge = 50,0

[State 3201, EnvColor]
type = PlaySnd
trigger1 = animelem = 4
value = 3200,5

[State 3201, EnvColor]
type = PlaySnd
trigger1 = animelem = 2
value = 3200,7
channel = 6

[State 3201, EnvColor]
type = PlaySnd
trigger1 = animelemtime(22) = 20
value = 1000, 1

[State 3201,1]
type = TargetBind
trigger1 = animelem = 1
pos = ceil(60*const(size.xscale)),0
time = 1

[State 3201,1]
type = TargetBind
trigger1 = animelem = 3
pos = ceil(60*const(size.xscale)), -100
time = 1

[State 3201, AssertSpecial]
type = AssertSpecial
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(4) < 0
flag = NoBG
flag2 = NoFG
flag3 = timerfreeze

[State 3201, EnvColor]
type = PlaySnd
trigger1 = animelemtime(3) >= 10
trigger1 = animelemtime(4) < 0
trigger1 = Time % 12 = 2
value = 2,11+(random%2)
channel = 5

[State 3201, EnvColor]
type = PlaySnd
trigger1 = animelemtime(3) >= 10
trigger1 = animelemtime(4) < 0
trigger1 = Time % 12 = 2
value = 3200,1
channel = 6

[State 3201, EnvColor]
type = PlaySnd
trigger1 = animelemtime(3) = 4
value = 3200,4
channel = 7

[State 3201, EnvColor]
type = PlaySnd
trigger1 = animelem = 4
value = 3200,2

[State 3201, EnvColor]
type = PlaySnd
trigger1 = animelem = 1
value = 2,12
channel = 5

[State 3201, HitSpark]
type = Helper
trigger1 = animelem = 1
trigger2 = animelemtime(3) >= 10
trigger2 = animelemtime(4) < 0
trigger2 = Time % 12 = 2
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
pos = 0, -50
random = 20,40
postype = P2
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3201, Add Hits!]
type = HitAdd
trigger1 = animelem = 1
trigger2 = animelemtime(3) >= 10
trigger2 = animelemtime(4) < 0
trigger2 = Time % 12 = 2
value = 1

[State 3201, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 1
trigger2 = animelemtime(3) >= 10
trigger2 = animelemtime(4) < 0
trigger2 = Time % 12 = 2
value = ceil(ifelse((-25*fvar(11))>-7,-7,(-25*fvar(11))))
kill = 0

;[State 3201, TargetLifeAdd]
;type = TargetLifeAdd
;trigger1 = animelemtime(4) = 10
;value = ceil(ifelse((-65*fvar(11))>-7,-7,(-65*fvar(11))))

[State 3201, 1]
type = TargetPowerAdd
trigger1 = animelem = 1
trigger2 = animelemtime(3) >= 10
trigger2 = animelemtime(4) < 0
trigger2 = Time % 12 = 2
value = 35
ignorehitpause = 1
persistent = 1

[State 3201,Super]
type = Helper
trigger1 = AnimElemTime(3) = 10
id = 1123
name = "hadouken"
pos = -140, -115
postype = P1
stateno = 1123
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xscale = 1
size.yscale = 0.5

[State 3201,Super]
type = Helper
trigger1 = AnimElemTime(3) = 22
id = 1173
name = "hadouken"
pos = 140, -165
postype = P1
stateno = 1173
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xscale = 1
size.yscale = 0.5

[State 3201,Super]
type = Helper
trigger1 = AnimElemTime(3) = 34
id = 1113
name = "hadouken"
pos = -140, -145
postype = P1
stateno = 1113
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xscale = 1
size.yscale = 0.5

[State 3201,Super]
type = Helper
trigger1 = AnimElemTime(3) = 46
id = 1183
name = "hadouken"
pos = 140, -145
postype = P1
stateno = 1183
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xscale = 1
size.yscale = 0.5

[State 3201,Super]
type = Helper
trigger1 = AnimElemTime(3) = 58
id = 1133
name = "hadouken"
pos = -140, -185
postype = P1
stateno = 1133
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xscale = 1
size.yscale = 0.5

[State 3201,Super]
type = Helper
trigger1 = AnimElemTime(3) = 70
id = 1163
name = "hadouken"
pos = 140, -135
postype = P1
stateno = 1163
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xscale = 1
size.yscale = 0.5

[State 3201,Super]
type = Helper
trigger1 = AnimElemTime(3) = 82
id = 1153
name = "hadouken"
pos = 30, -240
postype = P1
stateno = 1153
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xscale = 0.5
size.yscale = 1

[State 3201,Super]
type = Helper
trigger1 = AnimElemTime(3) = 94
id = 1143
name = "hadouken"
pos = 30, 0
postype = P1
stateno = 1143
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xscale = 0.5
size.yscale = 1

[State 3201, Throw]
type = TargetState
trigger1 = animelemtime(4) = 20
value = 3207

[State 3201, 1]
type = changestate
trigger1 = AnimElemtime(4) = 20 ;12
value = 3202

;FX
[Statedef 1123] ; right up diagonal
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 1123
sprpriority = 4

[State 1123, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1123, Velocity]
type = VelSet
trigger1 = time = 0
x = 75
y = -17

[State 1123, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;FX
[Statedef 1173] ; left down diagonal
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 1173
sprpriority = 4

[State 1173, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1173, Velocity]
type = VelSet
trigger1 = time = 0
x = -75
y = 17

[State 1173, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;FX
[Statedef 1113] ; right horizontal
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 1113
sprpriority = 4

[State 1113, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1113, Velocity]
type = VelSet
trigger1 = time = 0
x = 75

[State 1113, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;FX
[Statedef 1183] ; left horizontal
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 1183
sprpriority = 4

[State 1183, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1183, Velocity]
type = VelSet
trigger1 = time = 0
x = -75

[State 1183, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;FX
[Statedef 1133] ; right down diagonal
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 1133
sprpriority = 4

[State 1133, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1133, Velocity]
type = VelSet
trigger1 = time = 0
x = 75
y = 17

[State 1133, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;FX
[Statedef 1163] ; left up diagonal
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 1163
sprpriority = 4

[State 1163, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1163, Velocity]
type = VelSet
trigger1 = time = 0
x = -75
y = -17

;FX
[Statedef 1153] ; down vertical
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 1153
sprpriority = 4

[State 1153, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1153, Velocity]
type = VelSet
trigger1 = time = 0
x = 0
y = 75

;FX
[Statedef 1143] ; up vertical
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 1143
sprpriority = 4

[State 1143, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1143, Velocity]
type = VelSet
trigger1 = time = 0
x = 0
y = -75

;Attack
[Statedef 3202]
type = A
movetype = A
physics = A
ctrl = 0
anim = 3202
velset = 0,0

[State 3202, Position]
type = PosSet
trigger1 = AnimElem = 1
x = -10*facing
y = -220

[State 3202, EnvShake]
type = EnvShake
trigger1 = animelem = 1
time = 12
ampl = 3

[State 3202, Gravity]
type = VelAdd
trigger1 = AnimElem = 1
y = .65

[State 3202, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 1
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 85 < 7, 7, fvar(11) * 85)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 1,10
guard.pauseTime = 1,10
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0, -5
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = 0, -5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 11+(random%2))
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := 20
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0
guard.kill = 0
p1stateno = 3203
p2stateno = 3255

[State 3202, Flame Particles]
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

[State 3202, Cloth]
type = Helper
trigger1 = AnimElem = 1
stateno = 7560
postype = p1
pos = 0,0
name = "dagger"
ownpal = 1
size.xscale = 0.4
size.yscale = 0.4

[State 3202, Flames]
type = explod
trigger1 = animelemtime(1) >= 0 && Time%3 = 0
anim = 8150
ID = 8150
sprpriority = 3
postype = p1
pos = 15,-20
random = 48,48
vel = -(random/250.0), (random/250.0)
facing = ifelse(random<500, -1, 1)
vfacing = ifelse(random<500, -1, 1)
scale =.5,.5
ownpal = 1

;FX
[Statedef 7560]
type = S
movetype = I
physics = N
anim = 7560
ctrl = 0
sprpriority = 5

[State 7560, Trans]
type = Trans
trigger1 = 1
trans = Addalpha
alpha = 256,256

[State 7560, Bind]
type=BindToParent
trigger1 = 1
pos = ceil(40*const(size.xscale)),ceil(-60*const(size.yscale))
;pos = ceil(90*const(size.xscale)),ceil(-200*const(size.yscale))
postype = p1
;facing = 1

[State 7560, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 0

[State 7560, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 3202

;Attack
[Statedef 3203]
type = A
movetype = A
physics = N
velset = 0,0

[State 3003, Width]
type = Width
trigger1 = 1
edge = 40,0

[State 3203, Throw]
type = TargetState
trigger1 = Time = 0
value = 3255

[State 3203, Anim]
type = ChangeAnim
trigger1 = Time = 0
value = 3203
persistent = 0

[State 3203, Velocity]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 8

[State 3203, Gravity]
type = VelAdd
trigger1 = AnimElemtime(1) = 2
y = .65

[State 3203, Gravity]
type = VelAdd
trigger1 = AnimElemTime(1) = 0
y = .55

[State 3203, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3200, 3
channel = 1

[State 3203, Cloth]
type = Helper
trigger1 = AnimElem = 1
stateno = 7570
postype = p1
pos = 0,0
name = "dagger"
ownpal = 1
size.xscale = 0.4
size.yscale = 0.4

[State 3203, Flames]
type = explod
trigger1 = animelemtime(1) >= 0 && Time%3 = 0
anim = 8150
ID = 8150
sprpriority = 3
postype = p1
pos = 15,-20
random = 48,48
vel = -(random/250.0), (random/250.0)
facing = ifelse(random<500, -1, 1)
vfacing = ifelse(random<500, -1, 1)
scale =.5,.5
ownpal = 1

[State 3203, Fire1]
type = Explod
trigger1 = AnimElem = 1
Anim = 1146
pos = 20,20
postype = p1
ownpal = 1
sprpriority = 5
;pausemovetime = -1
supermovetime = -1
scale = .5,.5

[State 3203,1]
type = TargetBind
trigger1 = AnimElem = 1
pos = ceil(27*const(size.xscale)),ceil(0*const(size.yscale))
time = -1

[State 3203, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3204 ; 3252

;FX
[Statedef 7570]
type = S
movetype = I
physics = N
anim = 7560
ctrl = 0
sprpriority = 5

[State 7570, Trans]
type = Trans
trigger1 = 1
trans = Addalpha
alpha = 256,256

[State 7570, Bind]
type=BindToParent
trigger1 = 1
pos = ceil(40*const(size.xscale)),ceil(-60*const(size.yscale))
;pos = ceil(90*const(size.xscale)),ceil(-200*const(size.yscale))
postype = p1
;facing = 1

[State 7570, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 0

[State 7570, DestroySelf]
type = DestroySelf
trigger1 = animtime = 1
trigger2 = root,stateno != 3203

;Attack
[Statedef 3204]
type = S
movetype = A
physics = N
velset = 0,0
anim = 3204

[State 3204, Throw]
type = TargetState
trigger1 = Time = 0
value = 3208 ; 3256

[State 3204, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3204, Spark]
type = Explod
trigger1 = AnimElem = 1
Anim = 8102
pos = ceil(35*const(size.xscale)), 0
postype = p1
ownpal = 1
sprpriority = -3
;pausemovetime = -1
supermovetime = -1
scale = .5,.5

[State 3204, Impact Dust]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
pos = ceil(35*const(size.xscale)), 5
posType = P1
facing = -1
ownPal = 1

[State 3204, Spark]
type = Explod
trigger1 = AnimElem = 1
Anim = 8050
pos = 0, 0
postype = p1
ownpal = 1
sprpriority = -3
;pausemovetime = -1
supermovetime = -1
scale = .5,.5

[State 3204,1]
type = targetBind
trigger1 = animelem = 1
pos = ceil(27*const(size.xscale)),0
time = 12

[State 3204, Velocity]
type = VelSet
trigger1 = animelem = 5
x = -2.5
y = -6.5

[State 3204, Gravity]
type = VelAdd
trigger1 = AnimElemTime(5) > 0
y = .55

[State 3204, StateType]
type = StateTypeSet
trigger1 = AnimElem = 5
StateType = A
physics = N

[State 3204, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 820,2

[State 3204, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3200,8
channel = 0

[State 3204, Effect]
type = PlaySnd
trigger1 = Animelem = 3
value = 52, 0
channel = 20

[State 3204, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40,0
channel = 1

[State 3204, Voice]
type = PlaySnd
trigger1 = AnimElemtime(5) = 10
value = 3200,10

[State 3204, Add Hits!]
type = HitAdd
trigger1 = AnimElem = 1
value = 1

[State 3204, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 1
value = ceil(ifelse((-65*fvar(11))>-7,-7,(-65*fvar(11))))

[State 3204, Hurt]
type = TargetPowerAdd
trigger1 = AnimElem = 1
value = 35

[State 3204, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 15
amrl = 5

[State 3204, Cloth]
type = Helper
trigger1 = AnimElem = 1
stateno = 7580
postype = p1
pos = 0,0
name = "dagger"
ownpal = 1
size.xscale = 0.4
size.yscale = 0.4

[State 3204, Flames]
type = explod
trigger1 = animelemtime(1) >= 0 && Time%3 = 0 && animelemtime(5) < 0
anim = 8150
ID = 8150
sprpriority = 3
postype = p1
pos = 15,-20
random = 48,48
vel = -(random/250.0), (random/250.0)
facing = ifelse(random<500, -1, 1)
vfacing = ifelse(random<500, -1, 1)
scale =.5,.5
ownpal = 1

[State 3204, Spark]
type = Explod
trigger1 = AnimElem = 1
Anim = 8055
pos = 20, 0
postype = p1
ownpal = 1
sprpriority = -1
;pausemovetime = -1
supermovetime = -1
scale = .5,1

[State 3204, Fire1]
type = Explod
trigger1 = AnimElem = 1
Anim = 8321
pos = 20,0
postype = p1
ownpal = 1
sprpriority = 5
;pausemovetime = -1
supermovetime = -1
scale = .5,.5

[State 3204, Spark]
type = Explod
trigger1 = Animelem = 2
Anim = 8102
ownpal = 1
sprpriority = -3
scale = .5,.5

[State 3204, Super]
type = Helper
trigger1 = AnimElem = 5
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

[State 3204, State End]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3205 ;3253

;FX
[Statedef 7580]
type = S
movetype = I
physics = N
anim = 7560
ctrl = 0
sprpriority = 5

[State 7580, Trans]
type = Trans
trigger1 = 1
trans = Addalpha
alpha = 256,256

[State 7580, Bind]
type=BindToParent
trigger1 = 1
pos = ceil(40*const(size.xscale)),ceil(-60*const(size.yscale))
;pos = ceil(90*const(size.xscale)),ceil(-200*const(size.yscale))
postype = p1
;facing = 1

[State 7580, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 0

[State 7580, DestroySelf]
type = DestroySelf
trigger1 = animtime = 1
trigger2 = root,stateno != 3204
trigger3 = root,stateno = 3204 && root,animelemtime(2) = 0

;Land
[Statedef 3205]
type = S
physics = S
ctrl = 0
anim = 3205
velset = 0,0

[State 3205, Spark]
type = Explod
trigger1 = Time = 0
Anim = 8102
pos = 0, 0
postype = p1
ownpal = 1
sprpriority = -3
;pausemovetime = -1
supermovetime = -1
scale = .5,.5

[State 3205, 0]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3205, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3205, Effect]
type = PlaySnd
trigger1 = Time = 0
value = 52, 0
channel = 20

[State 3205, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Player 2
[Statedef 3255]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = -1

[State 3255, screenbound]
type = screenbound
trigger1 = 1
value = 1

[State 3255, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3255

;Player 2
[Statedef 3257]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 3257, ChangeState]
type = selfstate
trigger1 = Time > 5
value = 5100

[State 3257, 1]
type = NotHitBy
trigger1 = 1
value = SCA

;Player 2
[Statedef 3206]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0, 0
sprpriority = -1

[State 3206, 0]
type = HitFallSet
trigger1 = time = 0
value = 1

[State 3206, 2]
type = ChangeAnim2
trigger1 = time = 0
value = 3206

[State 3206, Position]
type = PosSet
trigger1 = animelem = 2
x = 0

;Player 2
[Statedef 3207]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = -1

[State 3207, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5051)
value = 5051

[State 3207, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = Time = 0 ;If no transition anim
trigger1 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 3207, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = 5050 ;anim+10
persistent = 0

[State 3207, 2]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;Player 2
[Statedef 3208]
type = A
movetype = H
physics = N
velset = 0,0

[State 3208, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3208

[State 3208, 1]
type = NotHitBy
trigger1 = Time <= 20
value = SCA

[State 3208, Vel]
type = VelSet
trigger1 = AnimElem = 2
x = 0
y = -6

[State 3208, Vel]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = .55

[State 3208, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 20

[State 3208, 2]
type = SelfState
trigger1 = AnimElemTime(2) > 0
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;DCM>=
[StateDef 3300]
type = S
physics = N
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
trigger1 = Time = 0
value = SCA
time = 64

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(-13 * const(size.xScale)), ceil(-55 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = Time = 4
time = 49
moveTime = 49
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3300, Dust]
type = Helper
trigger1 = Animelem = 2
helperType = Normal
stateno = 8100
ID = 8100
name = "Jump Dust"
ownpal = 1
posType = P1
pausemovetime = 99999999999999
supermovetime = 99999999999999

[State 3300, Voice]
type = PlaySnd
trigger1 = time = 3
value = 3200,0
channel = 0

[State 3300, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40,0
channel = 1

[State 3300, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 2

[State 3300, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1600,0
channel = 3

[State 3300, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3200,6
channel = 0

[State 3300, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = 10
y = -8.667

[State 3300, Velocity]
type = VelMul
trigger1 = AnimElemTime(4) > 0
x = .8

[State 3300, Gravity]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = .65

[State 3300, 1]
type = statetypeset
trigger1 = AnimElem = 4
movetype = I
physics = A

[State 3300, StateType]
type = StateTypeSet
trigger1 = AnimElem = 4
StateType = A
physics = A

[State 3300, HitDef 1]
type = HitDef
;trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 65 < 7, 7, fvar(11) * 65)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,13
guard.pauseTime = 12,13
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -6, -6
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
air.fall = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -42
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0
Id = 3300

[State 3300,1]
type = TargetBind
trigger1 = time > 1 && numtarget(3300)
pos = 40, 0
time = -1

[State 3300, 2]
type = ChangeState
trigger1 = time > 1 && numtarget(3300)
value = 3201
persistent = 0

[State 3300, 2]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(3) > 0
value = 1005
