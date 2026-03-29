; _________________________________________
;| Oro by varo_hades |
; 
;
;SUPER STATES=
;

;YAGYOU DAMA=
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
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(15 * const(size.xScale)), ceil(-90 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 60
moveTime = 60
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 4,3

[State 3000, ChangeState]
type = ChangeState
trigger1 = time = 40
value = 3001
ctrl = 0

;Attack
[Statedef 3001]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3005
juggle = 0

[State 3001,SuperPause]
type = Explod
trigger1 = time = 0
anim = 3006
sprpriority = 2
postype = p1
pos = 0,0
bindtime = 1
pausemovetime = 60
removetime = -2
ignorehitpause = 0
scale = Const(size.xscale), Const(size.yscale)
vel = 0,0
ownpal = 1
supermove = 1

[State 3001, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 1000,1

[State 3001, Projectile 1]
type = Projectile
trigger1 = var(10) = 0
trigger1 = time = 24
ProjID = 3001
projanim = 3015
projhitanim = 3020;7000+(random%2)
projremanim = 3020
attr = A, HP
damage = 53,6
animtype = high
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
sparkxy = -5,-30
sparkno = -1;s17300+(Random%8)
guard.sparkno = -1
hitsound = S2,6
guardsound = S3,0
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -6
air.velocity = -3.5,-8.5
yaccel = 0.65
guard.velocity = -8
guard.ctrltime = 15
air.juggle = 0
fall = 0
air.fall = 1
fall.recover = 0
projremove = 1
projremovetime = 170
velocity = 1.6, -1 ; 1.2,-1.2 ;1.6,-1
accel = 0,0.015
offset = 60,-40
postype = p1
projshadow = 0,0,0
pausetime = 6,12
guard.pausetime = 6,12
projhits = 4
projpriority = 1
ownpal = 1
envshake.time = 5
envshake.freq = 110
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.freq = 110
fall.envshake.ampl = 10
ignorehitpause = 0
persistent = 0
getpower = 0;ifelse ( var(20) > 0,20, 60)
GivePower = 20

[State 3001, Projectile 1]
type = Projectile
trigger1 = var(10) = 1
trigger1 = time = 24
ProjID = 3001
projanim = 3015
projhitanim = 3020;7000+(random%2)
projremanim = 3020
attr = A, HP
damage = 53,6
animtype = high
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
sparkxy = -5,-30
sparkno = -1;s17300+(Random%8)
guard.sparkno = -1
hitsound = S2,6
guardsound = S3,0
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -6
air.velocity = -3.5,-8.5
yaccel = 0.65
guard.velocity = -8
guard.ctrltime = 15
air.juggle = 0
fall = 0
air.fall = 1
fall.recover = 0
projremove = 1
projremovetime = 170
velocity = 1.5,-1.6
accel = 0,0.023
offset = 60,-40
postype = p1
projshadow = 0,0,0
pausetime = 6,12
guard.pausetime = 6,12
projhits = 4
projpriority = 1
ownpal = 1
envshake.time = 5
envshake.freq = 110
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.freq = 110
fall.envshake.ampl = 10
ignorehitpause = 0
persistent = 0
getpower = 0;ifelse ( var(20) > 0,20, 60)
GivePower = 20

[State 3001, Projectile 1]
type = Projectile
trigger1 = var(10) = 2
trigger1 = time = 24
ProjID = 3001
projanim = 3015
projhitanim = 3020;7000+(random%2)
projremanim = 3020
attr = A, HP
damage = 53,6
animtype = high
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
sparkxy = -5,-30
sparkno = -1;s17300+(Random%8)
guard.sparkno = -1
hitsound = S2,6
guardsound = S3,0
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -6
air.velocity = -3.5,-8.5
yaccel = 0.65
guard.velocity = -8
guard.ctrltime = 15
air.juggle = 0
fall = 0
air.fall = 1
fall.recover = 0
projremove = 1
projremovetime = 170
velocity = 1.45,-3.5
accel = 0,0.06
offset = 60,-40
postype = p1
projshadow = 0,0,0
pausetime = 6,12
guard.pausetime = 6,12
projhits = 4
projpriority = 1
ownpal = 1
envshake.time = 5
envshake.freq = 110
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.freq = 110
fall.envshake.ampl = 10
ignorehitpause = 0
persistent = 0
getpower = 0;ifelse ( var(20) > 0,20, 60)
GivePower = 20

[State 3001, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;MAX YAGYOU DAMA=
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

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3050, SuperPause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(15 * const(size.xScale)), ceil(-90 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3050, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 60
moveTime = 60
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 4,3

[State 3050, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "z" && command = "y"), 2, ifElse((command = "x" && command = "z"), 1, 0))

[State 3050, ChangeState]
type = ChangeState
trigger1 = time = 40
value = 3051
ctrl = 0

;Attack
[Statedef 3051]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3005
juggle = 0

[State 3051,SuperPause]
type = Explod
trigger1 = time = 0
anim = 3006
sprpriority = 2
postype = p1
pos = 0,0
bindtime = 1
pausemovetime = 60
removetime = -2
ignorehitpause = 0
scale = Const(size.xscale), Const(size.yscale)
vel = 0,0
ownpal = 1
supermove = 1

[State 3051, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 1000,1

[State 3051, Projectile 1]
type = Projectile
trigger1 = var(10) = 0
trigger1 = time = 24
ProjID = 3001
projanim = 3015
projhitanim = 3020;7000+(random%2)
projremanim = 3020
attr = A, HP
damage = 39,6
animtype = high
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
sparkxy = -5,-30
sparkno = -1;s17300+(Random%8)
guard.sparkno = -1
hitsound = S2,6
guardsound = S3,0
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -6
air.velocity = -3.5,-8.5
yaccel = 0.65
guard.velocity = -8
guard.ctrltime = 15
air.juggle = 0
fall = 0
air.fall = 1
fall.recover = 0
projremove = 1
projremovetime = 170
velocity = 1.6, -1 ; 1.2,-1.2 ;1.6,-1
accel = 0,0.015
offset = 60,-40
postype = p1
projshadow = 0,0,0
pausetime = 6,12
guard.pausetime = 6,12
projhits = 8
projpriority = 1
ownpal = 1
envshake.time = 5
envshake.freq = 110
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.freq = 110
fall.envshake.ampl = 10
ignorehitpause = 0
persistent = 0
getpower = 0;ifelse ( var(20) > 0,20, 60)
GivePower = 20

[State 3051, Projectile 1]
type = Projectile
trigger1 = var(10) = 1
trigger1 = time = 24
ProjID = 3001
projanim = 3015
projhitanim = 3020;7000+(random%2)
projremanim = 3020
attr = A, HP
damage = 39,6
animtype = high
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
sparkxy = -5,-30
sparkno = -1;s17300+(Random%8)
guard.sparkno = -1
hitsound = S2,6
guardsound = S3,0
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -6
air.velocity = -3.5,-8.5
yaccel = 0.65
guard.velocity = -8
guard.ctrltime = 15
air.juggle = 0
fall = 0
air.fall = 1
fall.recover = 0
projremove = 1
projremovetime = 170
velocity = 1.5,-1.6
accel = 0,0.023
offset = 60,-40
postype = p1
projshadow = 0,0,0
pausetime = 6,12
guard.pausetime = 6,12
projhits = 8
projpriority = 1
ownpal = 1
envshake.time = 5
envshake.freq = 110
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.freq = 110
fall.envshake.ampl = 10
ignorehitpause = 0
persistent = 0
getpower = 0;ifelse ( var(20) > 0,20, 60)
GivePower = 20

[State 3051, Projectile 1]
type = Projectile
trigger1 = var(10) = 2
trigger1 = time = 24
ProjID = 3001
projanim = 3015
projhitanim = 3020;7000+(random%2)
projremanim = 3020
attr = A, HP
damage = 39,6
animtype = high
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
sparkxy = -5,-30
sparkno = -1;s17300+(Random%8)
guard.sparkno = -1
hitsound = S2,6
guardsound = S3,0
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -6
air.velocity = -3.5,-8.5
yaccel = 0.65
guard.velocity = -8
guard.ctrltime = 15
air.juggle = 0
fall = 0
air.fall = 1
fall.recover = 0
projremove = 1
projremovetime = 170
velocity = 1.45,-3.5
accel = 0,0.06
offset = 60,-40
postype = p1
projshadow = 0,0,0
pausetime = 6,12
guard.pausetime = 6,12
projhits = 8
projpriority = 1
ownpal = 1
envshake.time = 5
envshake.freq = 110
envshake.ampl = 5
fall.envshake.time = 10
fall.envshake.freq = 110
fall.envshake.ampl = 10
ignorehitpause = 0
persistent = 0
getpower = 0;ifelse ( var(20) > 0,20, 60)
GivePower = 20

[State 3051, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;YAGYOU OODAMA=
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

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3100, Super Pause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-20 * const(size.xScale)), ceil(-60 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 60
moveTime = 60
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 3110
ctrl = 0

;Attack
[Statedef 3110]
type = A
movetype = A
physics = N
velset = 0,0
juggle = 0
velset = 0,0
ctrl = 0
anim = 3110

[State 3110, jump up explode]
type = Explod
trigger1 = animelem = 5
anim = 3111
sprpriority = 4
postype = p1
pos = 0,0
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 1
scale = 1,1
ownpal = 1

[State 3110, ScreenBound]
type = ScreenBound
trigger1 = Time >= 0
value = 1
movecamera = 0,1

[State 3110, Dust Helper]
type = Helper
trigger1 = Animelem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3110, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 4,4

[State 3110, PlaySnd]
type = PlaySnd
trigger1 = time = 33
trigger2 = time = 43
trigger3 = time = 53
trigger4 = time = 63
trigger5 = time = 73
trigger6 = time = 83
trigger7 = time = 93
trigger8 = time = 103
trigger9 = time = 113
trigger10 = time = 123
trigger11 = time = 133
trigger12 = time = 143
trigger13 = time = 153
trigger14 = time = 163
trigger15 = time = 173
trigger16 = time = 183
trigger17 = time = 193
trigger18 = time = 203
trigger19 = time = 213
trigger20 = time = 223
value = 3100,1

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0.5
y = 0

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 10
x = 0

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 1
y = -16

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 4
y = -14

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 7
y = -12

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 10
y = -2

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 13
y = 0

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 28
x = -2

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 28
y = -4

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 30
y = -2

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 33
y = -1

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 36
y = 0

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 39
y = 1

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 42
y = 2

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 45
y = 3

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 48
y = 5

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 51
y = 7

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 54
y = 7

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 57
y = 8

[State 3110, VelSet]
type = VelSet
trigger1 = time >= 60
y = 9

[State 3110, Helper]
type = Helper
trigger1 = time = 29
helpertype = normal ;player
name = "Yagyou Oodama Projectile"
ID = 3105
stateno = 3105
pos = 75,-32
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 3110, ChangeAnim]
type = Changestate
triggerall = time > 60
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1102
ctrl = 0

;MAX YAGYOU OODAMA=
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

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3150, Super Pause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-20 * const(size.xScale)), ceil(-60 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3150, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 60
moveTime = 60
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3150, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 3160
ctrl = 0

;Attack
[Statedef 3160]
type = A
movetype = A
physics = N
velset = 0,0
juggle = 0
velset = 0,0
ctrl = 0
anim = 3110

[State 3160, jump up explode]
type = Explod
trigger1 = animelem = 5
anim = 3111
sprpriority = 4
postype = p1
pos = 0,0
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 1
scale = 1,1
ownpal = 1

[State 3160, ScreenBound]
type = ScreenBound
trigger1 = Time >= 0
value = 1
movecamera = 0,1

[State 3160, Dust Helper]
type = Helper
trigger1 = Animelem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3160, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 4,4

[State 3160, PlaySnd]
type = PlaySnd
trigger1 = time = 33
trigger2 = time = 43
trigger3 = time = 53
trigger4 = time = 63
trigger5 = time = 73
trigger6 = time = 83
trigger7 = time = 93
trigger8 = time = 103
trigger9 = time = 113
trigger10 = time = 123
trigger11 = time = 133
trigger12 = time = 143
trigger13 = time = 153
trigger14 = time = 163
trigger15 = time = 173
trigger16 = time = 183
trigger17 = time = 193
trigger18 = time = 203
trigger19 = time = 213
trigger20 = time = 223
value = 3100,1

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0.5
y = 0

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 10
x = 0

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 1
y = -16

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 4
y = -14

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 7
y = -12

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 10
y = -2

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 13
y = 0

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 28
x = -2

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 28
y = -4

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 30
y = -2

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 33
y = -1

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 36
y = 0

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 39
y = 1

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 42
y = 2

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 45
y = 3

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 48
y = 5

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 51
y = 7

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 54
y = 7

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 57
y = 8

[State 3160, VelSet]
type = VelSet
trigger1 = time >= 60
y = 9

[State 3160, Helper]
type = Helper
trigger1 = time = 29
helpertype = normal ;player
name = "Yagyou Oodama Projectile"
ID = 3105
stateno = 3155
pos = 75,-32
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 3160, ChangeAnim]
type = Changestate
triggerall = time > 60
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1102
ctrl = 0

;KISHIN TSUI=
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
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(-20 * const(size.xScale)), ceil(-60 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 60
moveTime = 60
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3200, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 3210
ctrl = 0

;Grab
[Statedef 3210]
type = A
movetype = A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 3210

[State 3210, NotHitBy]
type = NotHitBy
trigger1 = time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 20

[State 3210, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 4,2

[State 3210, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 1,2

[State 3210, 1]
type = HitDef
triggerall = p2movetype != A
Trigger1 = animelem = 4
Trigger2 = animelem = 5
Trigger3 = animelem = 6
attr = S, HT
hitflag = M-
priority = 5, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
sprpriority = 1
p2facing = 1
p1stateno = 3220
p2stateno = 3225
fall = 1
fall.recover = 0

[State 3210, VelSet]
type = VelSet
trigger1 = time >= 9
y = 0
x = 0

[State 3210, VelSet]
type = VelSet
trigger1 = time >= 10
x = 4
y = -4

[State 3210, VelSet]
type = VelSet
trigger1 = time >= 14
x = 12
y = -2

[State 3210, VelSet]
type = VelSet
trigger1 = time >= 18
x = 12
y = 2

[State 3210, VelSet]
type = VelSet
trigger1 = time >= 22
x = 12
y = 4

[State 3210, VelSet]
type = VelSet
trigger1 = time >= 26
x = 12
y = 6

[State 3210, VelSet]
type = VelSet
trigger1 = time >= 30
x = 12
y = 8

[State 3210, VelSet]
type = VelSet
trigger1 = time >= 34
x = 8
y = 10

[State 3210, VelSet]
type = VelSet
trigger1 = time >= 38
x = 8
y = 12

[State 3210, VelSet]
type = VelSet
trigger1 = time >= 42
x = 8
y = 14

[State 3210, VelSet]
type = VelSet
trigger1 = time >= 46
x = 8
y = 10

[State 3210, VelSet]
type = VelSet
trigger1 = time >= 50
x = 8
y = 10

[State 3210,ChangeState]
type = ChangeState
trigger1 = time >= 11
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3211
ctrl = 0

[State 3210, ScreenBound]
type = ScreenBound
trigger1 = Time >= 0
value = 1
movecamera = 0,1

;Fail
[Statedef 3211]
type = S
movetype = I
physics = S
velset = 0, 0
ctrl = 0
anim = 3211
juggle = 0
poweradd = 0

[State 3211, ScreenBound]
type = ScreenBound
trigger1 = Time >= 0
value = 1
movecamera = 0,1

[State 3211,ChangeState]
type = Posset
trigger1 = time >= 0
y = 0

[State 3211,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Attack
[Statedef 3220]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
velset = 0,0
ctrl = 0
anim = 3220

[State 3220, ScreenBound]
type = ScreenBound
trigger1 = Time >= 0
value = 1
movecamera = 0,1

[State 3220, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 40,0

[State 3220, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
;trigger2 = animelem = 18
trigger2 = animelem = 22
;trigger4 = animelem = 26
trigger3 = animelem = 30
;trigger6 = animelem = 34
trigger4 = animelem = 38
;trigger8 = animelem = 41
value = 1,5

[State 3220, PlaySnd]
type = PlaySnd
trigger1 = animelem = 18
trigger2 = animelem = 26
trigger3 = animelem = 34
trigger4 = animelem = 41
value = 1,5

[State 3220, PlaySnd]
type = PlaySnd
trigger1 = time = 25
value = 4,4

[State 3220, PlaySnd]
type = PlaySnd
trigger1 = time = 30
value = 1,2

[State 3220, PlaySnd]
type = PlaySnd
trigger1 = time = 54
value = 41,0

[State 3220, PlaySnd]
type = PlaySnd
trigger1 = time = 115
value = 3200,1

[State 3220, SprPriority]
type = SprPriority
trigger1 = time < 118
value = -1

[State 3220, SprPriority]
type = SprPriority
trigger1 = time > 118
value = 2

[State 3220,ChangeState]
type = Posset
trigger1 = time = 0
y = 0

[State 3220, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 3220, VelSet]
type = VelSet
trigger1 = time >= 53
x = 2
y = -16

[State 3220, VelSet]
type = VelSet
trigger1 = time >= 70
x = 0
y = 0

[State 3220, VelSet]
type = VelSet
trigger1 = time >= 118
x = 0
y = 16

[State 3220, VelSet]
type = VelSet
trigger1 = time >= 120
x = 0
y = 16

[State 3220, VelSet]
type = VelSet
trigger1 = time >= 124
x = 0
y = 16

[State 3220,ChangeState]
type = ChangeState
trigger1 = time >= 120
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3230
ctrl = 0

[State 3220, Dust Helper]
type = Helper
trigger1 = Animelem = 12
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

;Attack
[Statedef 3230]
type = S
movetype = I
physics = N
velset = 0, 0
ctrl = 0
anim = 3230
juggle = 0
poweradd = 0

[State 3230, ScreenBound]
type = ScreenBound
trigger1 = Time >= 0
value = 1
movecamera = 0,1

[State 3230, Impact Dust]
type = Helper
trigger1 = animelem = 1
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
facing = -1
ownPal = 1

[State 3230, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3200,2

[State 3230,ChangeState]
type = Posset
trigger1 = time = 0
y = 0

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 27
x = -4
y = -10

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 32
x = -4
y = -4

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 36
x = -4
y = -2

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 40
x = -4
y = 0

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 44
x = -4
y = 2

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 48
x = -4
y = 4

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 52
x = -4
y = 6

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 56
x = -4
y = 8

[State 3230, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 30
ampl = 10 ;6
freq = 80

[State 3230,ChangeState]
type = ChangeState
trigger1 = time >= 60
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3240
ctrl = 0

;Finish
[Statedef 3240]
type = S
movetype = I
physics = S
velset = 0, 0
ctrl = 0
anim = 0
juggle = 0
poweradd = 0

[State 3240, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3240, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3240,ChangeState]
type = Posset
trigger1 = time >= 0
y = 0

[State 3240,ChangeState]
type = ChangeState
trigger1 = time = 5
value = 0
ctrl = 1

;Player 2
[Statedef 3225]
type = A
movetype = H
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 3225, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3225

[State 3225, SprPriority]
type = SprPriority
trigger1 = 1
value = 1

[State 3225, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 3225, VelSet]
type = VelSet
trigger1 = time >= 26
x = 0
y = -16

[State 3225, VelSet]
type = VelSet
trigger1 = time >= 45
x = 0
y = 0

[State 3225, VelSet]
type = VelSet
trigger1 = time >= 116
x = 0
y = 16

[State 3225, VelSet]
type = VelSet
trigger1 = time >= 120
x = 0
y = 16

[State 3225, VelSet]
type = VelSet
trigger1 = time >= 124
x = 0
y = 16

[State 3225,ChangeState]
type = ChangeState
trigger1 = time >= 30
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3235
ctrl = 0

;Player 2
[Statedef 3235]
type = A
movetype = H
physics = N
juggle = 0
ctrl = 0

[State 3235, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -450
kill = 1

[State 3235, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3235

[State 3235,ChangeState]
type = velset
trigger1 = time <= 25
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0

[State 3235,ChangeState]
type = Posset
trigger1 = time = 0
y = 0

[State 3235,ChangeState]
type = velset
trigger1 = time >= 26
trigger1 = Pos Y >= 0
;trigger1 = Vel Y > 0
x = -6

[State 3235, 4] ;Hit ground
type = SelfState
trigger1 = time >= 26
;trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground
ctrl = 1

;KISHIN RIKI=
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

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(0 * const(size.xScale)), ceil(-80 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 60
moveTime = 60
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3300, VarSet]
type = VarSet
trigger1 = time = 5
v = 28
value = 600

[State 3300, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 3310
ctrl = 0

;Active
[Statedef 3310]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3300
juggle = 0

[State 3310,SND]
type = PlaySnd
trigger1 = time = 5
value = 4,3

[State 3310, VarSet]
type = VarSet
trigger1 =time = 0
v = 46
value = 600

[State 3310,ChangeState]
type = ChangeState
trigger1 = time = 1
value = 0
ctrl = 1

;Grab
[Statedef 3320]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3320
juggle = 0

[State 3320, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1,0

[State 3320, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 4,1

[State 3320, 1]
type = HitDef
Triggerall = Time = 0
trigger1 = p2statetype != A
attr = S, HT
hitflag = M-
priority = 5, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
sprpriority = 1
p2facing = 1
p1stateno = 3330
p2stateno = 3335
fall = 1
fall.recover = 0

[State 3320, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Attack
[Statedef 3330]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3330
juggle = 0

[State 3330, Impact Dust]
type = Helper
trigger1 = animelem = 11
trigger2 = animelem = 24
trigger3 = animelem = 37
trigger4 = animelem = 50
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
pos = -60,5
postype = p2
facing = -1
ownPal = 1

[State 3330, Impact Dust]
type = Helper
trigger1 = animelem = 4
trigger2 = animelem = 17
trigger3 = animelem = 30
trigger4 = animelem = 43
trigger5 = animelem = 56
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
pos = 60,5
postype = p2
facing = -1
ownPal = 1

[State 3330, VarSet]
type = null;VarSet
trigger1 = 1
v = 46
value = 0

[State 3330, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 3330, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA;,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 29

[State 3330, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 0,0

[State 3330, EnvShake]
type = Null;EnvShake
trigger1 = animelem = 4
trigger2 = animelem = 11
trigger3 = animelem = 17
trigger4 = animelem = 24
trigger5 = animelem = 30
trigger6 = animelem = 37
trigger7 = animelem = 43
trigger8 = animelem = 50
trigger9 = animelem = 56
time = 10
ampl = 10
freq = 80

[State 3330, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 11
trigger3 = animelem = 17
trigger4 = animelem = 24
trigger5 = animelem = 30
trigger6 = animelem = 37
trigger7 = animelem = 43
trigger8 = animelem = 50
trigger9 = animelem = 56
value = 820,2

[State 3330, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 11
trigger3 = animelem = 17
trigger4 = animelem = 24
trigger5 = animelem = 30
trigger6 = animelem = 37
trigger7 = animelem = 43
trigger8 = animelem = 50
trigger9 = animelem = 56
value = 4,3

[State 3330, 3]
type = Null;EnvColor
trigger1 = animelem = 4
trigger2 = animelem = 11
trigger3 = animelem = 17
trigger4 = animelem = 24
trigger5 = animelem = 30
trigger6 = animelem = 37
trigger7 = animelem = 43
trigger8 = animelem = 50
trigger9 = animelem = 56
time = 1
value = 255,255,255
under = 1

[State 3330, HitAdd]
type = HitAdd
trigger1 = animelem = 4
trigger2 = animelem = 11
trigger3 = animelem = 17
trigger4 = animelem = 24
trigger5 = animelem = 30
trigger6 = animelem = 37
trigger7 = animelem = 43
trigger8 = animelem = 50
trigger9 = animelem = 56
value = 1

[State 3330, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 4
trigger2 = animelem = 11
trigger3 = animelem = 17
trigger4 = animelem = 24
trigger5 = animelem = 30
trigger6 = animelem = 37
trigger7 = animelem = 43
trigger8 = animelem = 50
value = -28
kill = 0

[State 3330, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 56
value = -28
kill = 1

[State 3330, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Player 2
[Statedef 3335]
type = A
movetype = H
physics = N
velset = 0,0

[State 3335, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3335

[State 3335, VelSet]
type = VelSet
trigger1 = time >= 116;68
x = -4
y = -10

[State 3335, VelSet]
type = VelSet
trigger1 = time >= 120;72
y = -8

[State 3335, VelSet]
type = VelSet
trigger1 = time >= 124;76
y = -4

[State 3335, VelSet]
type = VelSet
trigger1 = time >= 128;80
y = -2

[State 3335, VelSet]
type = VelSet
trigger1 = time >= 132;84
y = 2

[State 3335, VelSet]
type = VelSet
trigger1 = time >= 136;88
y = 4

[State 3335, VelSet]
type = VelSet
trigger1 = time >= 140;92
y = 6

[State 3335, VelSet]
type = VelSet
trigger1 = time >= 144;96
y = 8

[State 3335, VelSet]
type = VelSet
trigger1 = time >= 148;100
y = 10

[State 3335, 4] ;Hit ground
type = SelfState
trigger1 = time >= 134;86
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100 ;Hit ground

;Kishin Kuuchuu Jigoku Guruma
[Statedef 3340]
type = A
movetype = A
physics = A
ctrl = 0
anim = 3350
juggle = 0
poweradd = 0

[State 3340, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1,0

[State 3340, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 4,1

[State 3340, 1]
type = HitDef
triggerall = p2statetype = A
Trigger1 = time = 0
trigger1 = p2stateno != [150,152]
attr = A, HT
hitflag = AF;AF-
priority = 5, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
sprpriority = 1
p2facing = 1
p1stateno = 3360
p2stateno = 3365
fall = 1
fall.recover = 0

[State 3340, ChangeState]
type = null;ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

;Grab
[Statedef 3360]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3360
juggle = 0

[State 3360, VarSet]
type = null;VarSet
trigger1 = 1
v = 46 ;fv = 10
value = 0

[State 3360, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 0,0

[State 3360, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 4

[State 3360, VelSet]
type = VelSet
trigger1 = time >= 4
x = 0
y = 6

[State 3360, VelSet]
type = VelSet
trigger1 = time >= 8
x = 0
y = 8

[State 3360, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 5
value = 41,0

[State 3360, Changestate]
type = Changestate
;trigger1 = time > 6
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3370

;Attack
[Statedef 3370]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3370
juggle = 0

[State 3370, HitAdd]
type = HitAdd
trigger1 = animelem = 2
value = 1

[State 3370, Hit Spark]
type = Helper
trigger1 = animelem = 2
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = 0,0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3370, Impact Dust]
type = Helper
trigger1 = animelem = 2
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
pos = 0,5
postype = p2
facing = -1
ownPal = 1

[State 3370, Posset]
type = Posset
trigger1 = time = 0
y = 0

[State 3370, EnvShake]
type = EnvShake
trigger1 = animelem = 2
time = 10
ampl = 10
freq = 80

[State 3370, PlaySnd]
type = PlaySnd
trigger1 = time = 40
value = 820,2

[State 3370, PlaySnd]
type = PlaySnd
trigger1 = time = 10
trigger2 = time = 30
trigger3 = time = 60
value = 2,5

[State 3370, PlaySnd]
type = PlaySnd
trigger1 = time = 20
trigger2 = time = 50
value = 2,4

[State 3370, 3]
type = Null;EnvColor
trigger1 = animelem = 2
time = 1
value = 255,255,255
under = 1

[State 3370, TargetLifeAdd]
type = null;TargetLifeAdd
trigger1 = animelem = 2
value = -45
kill = 1

[State 3370, Changestate]
type = Changestate
trigger1 = time = 30
value = 3380

;Attack
[Statedef 3380]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3360
juggle = 0

[State 3380, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = -14

[State 3380, VelSet]
type = VelSet
trigger1 = time >= 4
y = -12

[State 3380, VelSet]
type = VelSet
trigger1 = time >= 8
y = -6

[State 3380, VelSet]
type = VelSet
trigger1 = time >= 12
y = -4

[State 3380, VelSet]
type = VelSet
trigger1 = time >= 16
y = -2

[State 3380, VelSet]
type = VelSet
trigger1 = time >= 20
y = 0

[State 3380, VelSet]
type = VelSet
trigger1 = time >= 24
y = 0

[State 3380, VelSet]
type = VelSet
trigger1 = time >= 28
y = 0

[State 3380, VelSet]
type = VelSet
trigger1 = time >= 32
y = 0

[State 3380, VelSet]
type = VelSet
trigger1 = time >= 36
y = 8

[State 3380, VelSet]
type = VelSet
trigger1 = time >= 40
y = 10

[State 3380, VelSet]
type = VelSet
trigger1 = time >= 44
y = 12

[State 3380, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 4
value = 41,0

[State 3380, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
;trigger2 = animelem = 7
value = 41,0

[State 3380, Changestate]
type = Changestate
trigger1 = time > 30
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3390

;Finish
[Statedef 3390]
type = S
movetype = I
physics = N
velset = 0, 0
ctrl = 0
anim = 3399
juggle = 0
poweradd = 0

[State 3390, HitAdd]
type = HitAdd
trigger1 = animelem = 2
value = 1

[State 3390, Hit Spark]
type = Helper
trigger1 = animelem = 2
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = 0,0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3390, Impact Dust]
type = Helper
trigger1 = animelem = 2
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
pos = 0,5
postype = p2
facing = -1
ownPal = 1

[State 3390, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 820,2

[State 3390,ChangeState]
type = Posset
trigger1 = time = 0
y = 0

[State 3390, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 3390, VelSet]
type = VelSet
trigger1 = time >= 24
x = -4
y = -10

[State 3390, VelSet]
type = VelSet
trigger1 = time >= 28
x = -4
y = -4

[State 3390, VelSet]
type = VelSet
trigger1 = time >= 32
x = -4
y = -2

[State 3390, VelSet]
type = VelSet
trigger1 = time >= 36
x = -4
y = 0

[State 3390, VelSet]
type = VelSet
trigger1 = time >= 40
x = -4
y = 2

[State 3390, VelSet]
type = VelSet
trigger1 = time >= 44
x = -4
y = 4

[State 3390, VelSet]
type = VelSet
trigger1 = time >= 48
x = -4
y = 6

[State 3390, VelSet]
type = VelSet
trigger1 = time >= 52
x = -4
y = 8

[State 3390, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 30
ampl = 10 ;6
freq = 80

[State 3390,ChangeState]
type = ChangeState
trigger1 = time >= 30
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 0
ctrl = 1

;Player 2
[Statedef 3365]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
juggle = 0

[State 3365, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3365

[State 3365, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 4

[State 3365, VelSet]
type = VelSet
trigger1 = time >= 4
x = 0
y = 6

[State 3365, VelSet]
type = VelSet
trigger1 = time >= 8
x = 0
y = 8

[State 3365, Changestate]
type = Changestate
trigger1 = time > 6
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3375

;Player 2
[Statedef 3375]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
juggle = 0

[State 3375, Posset]
type = Posset
trigger1 = time = 0
y = 0

[State 3375, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3375

[State 3375, TargetLifeAdd]
type = LifeAdd
trigger1 = animelem = 2
value = -50
kill = 0

[State 3375, Changestate]
type = Changestate
trigger1 = time = 30
value = 3385

;Player 2
[Statedef 3385]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
;anim = 3365
juggle = 0

[State 3385, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3365

[State 3385, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = -14

[State 3385, VelSet]
type = VelSet
trigger1 = time >= 4
y = -12

[State 3385, VelSet]
type = VelSet
trigger1 = time >= 8
y = -6

[State 3385, VelSet]
type = VelSet
trigger1 = time >= 12
y = -4

[State 3385, VelSet]
type = VelSet
trigger1 = time >= 16
y = -2

[State 3385, VelSet]
type = VelSet
trigger1 = time >= 20
y = 0

[State 3385, VelSet]
type = VelSet
trigger1 = time >= 24
y = 0

[State 3385, VelSet]
type = VelSet
trigger1 = time >= 28
y = 0

[State 3385, VelSet]
type = VelSet
trigger1 = time >= 32
y = 0

[State 3385, VelSet]
type = VelSet
trigger1 = time >= 36
y = 8

[State 3385, VelSet]
type = VelSet
trigger1 = time >= 40
y = 10

[State 3385, VelSet]
type = VelSet
trigger1 = time >= 44
y = 12

[State 3385, Changestate]
type = Changestate
trigger1 = time > 30
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3395

;Player 2
[Statedef 3395]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
juggle = 0

[State 3395, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3395

[State 3395, VelSet]
type = VelSet
trigger1 = time >= 24
x = -6
y = -8

[State 3395, VelSet]
type = VelSet
trigger1 = time >= 28
y = -8

[State 3395, VelSet]
type = VelSet
trigger1 = time >= 32
y = -4

[State 3395, VelSet]
type = VelSet
trigger1 = time >= 36
y = 2

[State 3395, VelSet]
type = VelSet
trigger1 = time >= 40
y = 4

[State 3395, VelSet]
type = VelSet
trigger1 = time >= 44
y = 6

[State 3395, VelSet]
type = VelSet
trigger1 = time >= 48
y = 8

[State 3395, VelSet]
type = VelSet
trigger1 = time >= 52
y = 10

[State 3395, Changestate]
type = VelSet
trigger1 = time >= 16
x = -8

[State 3395, Changestate]
type = selfstate
trigger1 = time = 16
value = 5100
ctrl = 0

[State 3395, TargetLifeAdd]
type = LifeAdd
trigger1 = animelem = 2
value = -100
kill = 1

;MAX KISHIN RIKI=
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

[State 3350, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3350, Super Pause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(0 * const(size.xScale)), ceil(-80 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3350, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 60
moveTime = 60
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3350, VarSet]
type = VarSet
trigger1 = time = 5
v = 28
value = 1200

[State 3350, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 3355
ctrl = 0

;Active
[Statedef 3355]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3300
juggle = 0

[State 3355,SND]
type = PlaySnd
trigger1 = time = 5
value = 4,3

[State 3355, VarSet]
type = VarSet
trigger1 =time = 0
v = 46
value = 1200

[State 3355,ChangeState]
type = ChangeState
trigger1 = time = 1
value = 0
ctrl = 1

;TENGU ISHI=
[StateDef 3400]
type = A
physics = N
moveType = A
anim = 3400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3400, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
trigger1 = Time = 3
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

[State 3400, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3400, SuperPause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(0 * const(size.xScale)), ceil(-110 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3400, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 60
moveTime = 60
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3400, VarSet]
type = VarSet
trigger1 = time = 5
v = 28
value = 300

[State 3400, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 730,1

[State 3400,1]
type = ChangeState
trigger1 = animtime = 0
value = 3401
ctrl = 0

;Activate
[Statedef 3401]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 0
juggle = 0

[State 3401, VarSet]
type = VarSet
trigger1 =time = 0
v = 27
value = 300
ignorehitpause = 1

[State 3401, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "3405"
ID = 3405
stateno = 3405
pos = 60,-105
postype = back
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3401, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "3410"
ID = 3410
stateno = 3410
pos = 0,-105
postype = back
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3401, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "3415"
ID = 3415
stateno = 3415
pos = -60,-105
postype = back;p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

;[State 3401, MAXbarLeft]
;type = Explod
;trigger1 = var(29) = 1
;trigger1 = time = 0
;anim = 8898
;id = 3410
;sprpriority = -1
;ownpal = 1
;postype = left
;pos = 5,78
;removetime = -1
;ignorehitpause = 1
;bindtime = -1
;ontop = 0
;ownpal = 1
;scale = 1,1

;[State 3401, MAXbarLeft]
;type = Explod
;trigger1 = var(29) = 1
;trigger1 = time = 0
;anim = 8897
;id = 3400
;sprpriority = -1
;ownpal = 1
;postype = left
;pos = 5,78
;removetime = -1
;ignorehitpause = 1
;bindtime = -1
;ontop = 0
;ownpal = 1
;scale = 1,1

;[State 3401, MAXbarRight]
;type = Explod
;trigger1 = var(29) = 2
;trigger1 = time = 0
;anim = 8898
;id = 3410
;sprpriority = -1
;ownpal = 1
;postype = left
;pos = 315,78
;removetime = -1
;ignorehitpause = 1
;bindtime = -1
;ontop = 0
;ownpal = 1
;scale = 1,1

;[State 3401, MAXbarLeft]
;type = Explod
;trigger1 = var(29) = 2
;trigger1 = time = 0
;anim = 8897
;id = 3400
;sprpriority = -1
;ownpal = 1
;postype = left
;pos = 258,78
;removetime = -1
;ignorehitpause = 1
;bindtime = -1
;ontop = 0
;ownpal = 1
;scale = 1,1

[State 3401,1]
type = ChangeState
trigger1 = time = 1
value = 0
ctrl = 1

;MAX TENGU ISHI=
[StateDef 3450]
type = A
physics = N
moveType = A
anim = 3400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3450, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3450, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3450, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3450, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3450, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3450, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3450, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3450, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3450, SuperPause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(0 * const(size.xScale)), ceil(-110 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3450, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 60
moveTime = 60
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3450, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 730,1

[State 3450, VarSet]
type = VarSet
trigger1 = time = 5
v = 28
value = 300

[State 3450,1]
type = ChangeState
trigger1 = animtime = 0
value = 3451
ctrl = 0

;Activate
[Statedef 3451]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 0
juggle = 0

[State 3451, VarSet]
type = VarSet
trigger1 =time = 0
v = 27
value = 300
ignorehitpause = 1

[State 3451, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "3405"
ID = 3405
stateno = 3405
pos = 60,-105
postype = back
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3451, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "3410"
ID = 3410
stateno = 3410
pos = 0,-105
postype = back
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3451, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "3415"
ID = 3415
stateno = 3415
pos = -60,-105
postype = back;p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3451, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "3420"
ID = 3420
stateno = 3420
pos = 30,-185
postype = back
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3451, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "3425"
ID = 3425
stateno = 3425
pos = -30,-185
postype = back
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

;[State 3451, MAXbarLeft]
;type = Explod
;trigger1 = var(29) = 1
;trigger1 = time = 0
;anim = 8898
;id = 3410
;sprpriority = -1
;ownpal = 1
;postype = left
;pos = 5,78
;removetime = -1
;ignorehitpause = 1
;bindtime = -1
;ontop = 0
;ownpal = 1
;scale = 1,1

;[State 3451, MAXbarLeft]
;type = Explod
;trigger1 = var(29) = 1
;trigger1 = time = 0
;anim = 8897
;id = 3400
;sprpriority = -1
;ownpal = 1
;postype = left
;pos = 5,78
;removetime = -1
;ignorehitpause = 1
;bindtime = -1
;ontop = 0
;ownpal = 1
;scale = 1,1

;[State 3451, MAXbarRight]
;type = Explod
;trigger1 = var(29) = 2
;trigger1 = time = 0
;anim = 8898
;id = 3410
;sprpriority = -1
;ownpal = 1
;postype = left
;pos = 315,78
;removetime = -1
;ignorehitpause = 1
;bindtime = -1
;ontop = 0
;ownpal = 1
;scale = 1,1

;[State 3451, MAXbarLeft]
;type = Explod
;trigger1 = var(29) = 2
;trigger1 = time = 0
;anim = 8897
;id = 3400
;sprpriority = -1
;ownpal = 1
;postype = left
;pos = 258,78
;removetime = -1
;ignorehitpause = 1
;bindtime = -1
;ontop = 0
;ownpal = 1
;scale = 1,1

[State 3451,1]
type = ChangeState
trigger1 = time = 1
value = 0
ctrl = 1
