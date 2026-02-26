; _________________________________________
;| Elena by varo_hades                     |
; 
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<BRAVE DANCE>=============================
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
trigger1 = AnimElemTime(5) < 0
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
pos = ceil(0 * const(size.xScale)), ceil(-60 * const(size.yScale))
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

[State 3000,1]
type = ChangeState
trigger1 = animtime = 0
value = 3010
ctrl = 0

;Attack
[Statedef 3010]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3010
juggle = 0

[State 3010, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 3

[State 3010, HitBy]
type = HitBy
trigger1 = time = 3
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 40,0

[State 3010, VelSet]
type = VelSet
trigger1 = time >= 0
x = 4

[State 3010, VelSet]
type = VelSet
trigger1 = time >= 10
x = 2

[State 3010, VelSet]
type = VelSet
trigger1 = time >= 15
x = 1

[State 3010, Dust Helper]
type = Helper
trigger1 = animelem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3010,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 3
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 8,8
guard.pausetime = 8,8
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -3
air.velocity = -2,-10
yaccel = 0.45
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3010,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 5
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 8,8
guard.pausetime = 8,8
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -3
air.velocity = -2,-10
yaccel = 0.45
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3010,1]
type = ChangeState
trigger1 = animtime = 0
value = 3011
ctrl = 0

[State 3010,Explod]
type = Explod
trigger1 = time = 0
ID = 2010
anim = 7060
sprpriority = 2
postype = p1
pos = 10,-50
bindtime = -1
pausemovetime = 0
removetime = -2
ignorehitpause = 1
scale = 0.85,0.85
vel = 0,0
ownpal = 1
supermove = 0
 persistent = 0

;Attack
[Statedef 3011]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3010
juggle = 0

[State 3011, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 3000,1

[State 3011, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 40,0

[State 3011, VelSet]
type = VelSet
trigger1 = time >= 0
x = 4

[State 3011, VelSet]
type = VelSet
trigger1 = time >= 10
x = 2

[State 3011, VelSet]
type = VelSet
trigger1 = time >= 15
x = 1

[State 3011, Dust Helper]
type = Helper
trigger1 = animelem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3011,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 3
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 8,8
guard.pausetime = 8,8
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -3
air.velocity = -2,-10
yaccel = 0.45
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3011,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 5
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 8,8
guard.pausetime = 8,8
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -3
air.velocity = -2,-10
yaccel = 0.45
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3011,1]
type = ChangeState
trigger1 = animtime = 0
value = 3030
ctrl = 0

[State 3011,Explod]
type = Explod
trigger1 = time = 0
ID = 2011
anim = 7060
sprpriority = 2
postype = p1
pos = 10,-50
bindtime = -1
pausemovetime = 0
removetime = -2
ignorehitpause = 1
scale = 0.85,0.85
vel = 0,0
ownpal = 1
supermove = 0
persistent = 0

;Finish
[Statedef 3030]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 3030
juggle = 0
poweradd = 0

[State 3030, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 40,0

[State 3030, StateTypeSet]
type = StateTypeSet
trigger1 = time >=5
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N

[State 3030, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 1400,0

[State 3030, VelSet]
type = VelSet
trigger1 = time >= 8
x = 2
y = -12

[State 3030, VelSet]
type = VelSet
trigger1 = time >= 10
y = -10

[State 3030, VelSet]
type = VelSet
trigger1 = time >= 14
y = -8

[State 3030, VelSet]
type = VelSet
trigger1 = time >= 16
y = -6

[State 3030, VelSet]
type = VelSet
trigger1 = time >= 18
y = -4

[State 3030, VelSet]
type = VelSet
trigger1 = time >= 22
y = -1

[State 3030, VelSet]
type = VelSet
trigger1 = time >= 24
x = 0
y = 1

[State 3030, VelSet]
type = VelSet
trigger1 = time >= 26
y = 2

[State 3030, VelSet]
type = VelSet
trigger1 = time >= 28
y = 4

[State 3030, VelSet]
type = VelSet
trigger1 = time >= 29
y = 6

[State 3030, VelSet]
type = VelSet
trigger1 = time >= 32
y = 8

[State 3030, VelSet]
type = VelSet
trigger1 = time >= 36
y = 10

[State 3030, VelSet]
type = VelSet
trigger1 = time >= 40
y = 12

[State 3030, VelSet]
type = VelSet
trigger1 = time >= 44
y = 16

[State 3030, Dust Helper]
type = Helper
trigger1 = animelem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3030,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 2
priority = 4, Hit
attr = A,SA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 14,14
guard.pausetime = 14,14
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -2,-10
air.velocity = -2,-10
yaccel = 0.6
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3011,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 3
priority = 4, Hit
attr = A,SA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 10,10
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -2,-10
air.velocity = -2,-10
yaccel = 0.6
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3011,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 4
priority = 4, Hit
attr = S,SA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 8,8
guard.pausetime =  8,8
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -2,-12
air.velocity = -2,-12
yaccel = 0.6
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3030,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3040
ctrl = 0

[State 3030,Explod]
type = Explod
trigger1 = time = 6
ID = 2030
anim = 7030
sprpriority = 1
postype = p1
pos = 2,-30
bindtime = -1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
removeongethit = 1
scale = 1,1
vel = 0,0
ownpal = 1
supermove = 0
 persistent = 0
 
;Land
[Statedef 3040]
type = S
movetype = I
physics = S
velset = 0, 0
ctrl = 0
anim = 1401
juggle = 0
poweradd = 0

[State 3040, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3040, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3040,ChangeState]
type = Posset
trigger1 = time >= 0
y = 0

[State 3040,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;========================<MAX BRAVE DANCE>=============================
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
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
trigger1 = AnimElemTime(5) < 0
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
pos = ceil(0 * const(size.xScale)), ceil(-60 * const(size.yScale))
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

[State 3050,1]
type = ChangeState
trigger1 = animtime = 0
value = 3060
ctrl = 0

;Attack
[Statedef 3060]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3010
juggle = 0

[State 3060, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 3

[State 3060, HitBy]
type = HitBy
trigger1 = time = 3
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3060, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 40,0

[State 3060, VelSet]
type = VelSet
trigger1 = time >= 0
x = 4

[State 3060, VelSet]
type = VelSet
trigger1 = time >= 10
x = 2

[State 3060, VelSet]
type = VelSet
trigger1 = time >= 15
x = 1

[State 3060, Dust Helper]
type = Helper
trigger1 = animelem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3060,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 3
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 8,8
guard.pausetime = 8,8
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -3
air.velocity = -2,-10
yaccel = 0.45
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3060,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 5
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 8,8
guard.pausetime = 8,8
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -3
air.velocity = -2,-10
yaccel = 0.45
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3060,1]
type = ChangeState
trigger1 = animtime = 0
value = 3061
ctrl = 0

[State 3060,Explod]
type = Explod
trigger1 = time = 0
ID = 2010
anim = 7060
sprpriority = 2
postype = p1
pos = 10,-50
bindtime = -1
pausemovetime = 0
removetime = -2
ignorehitpause = 1
scale = 0.85,0.85
vel = 0,0
ownpal = 1
supermove = 0
 persistent = 0

;Attack
[Statedef 3061]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3010
juggle = 0

[State 3061, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 3000,1

[State 3061, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 40,0

[State 3061, VelSet]
type = VelSet
trigger1 = time >= 0
x = 4

[State 3061, VelSet]
type = VelSet
trigger1 = time >= 10
x = 2

[State 3061, VelSet]
type = VelSet
trigger1 = time >= 15
x = 1

[State 3061, Dust Helper]
type = Helper
trigger1 = animelem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3061,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 3
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 8,8
guard.pausetime = 8,8
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -3
air.velocity = -2,-10
yaccel = 0.45
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3061,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 5
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 8,8
guard.pausetime = 8,8
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -3
air.velocity = -2,-10
yaccel = 0.45
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3061,1]
type = ChangeState
trigger1 = animtime = 0
value = 3062
ctrl = 0

[State 3061,Explod]
type = Explod
trigger1 = time = 0
ID = 2011
anim = 7060
sprpriority = 2
postype = p1
pos = 10,-50
bindtime = -1
pausemovetime = 0
removetime = -2
ignorehitpause = 1
scale = 0.85,0.85
vel = 0,0
ownpal = 1
supermove = 0
persistent = 0

;Attack
[Statedef 3062]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3010
juggle = 0

[State 3062, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 3000,1

[State 3062, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 40,0

[State 3062, VelSet]
type = VelSet
trigger1 = time >= 0
x = 4

[State 3062, VelSet]
type = VelSet
trigger1 = time >= 10
x = 2

[State 3062, VelSet]
type = VelSet
trigger1 = time >= 15
x = 1

[State 3062, Dust Helper]
type = Helper
trigger1 = animelem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3062,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 3
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 8,8
guard.pausetime = 8,8
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -3
air.velocity = -2,-10
yaccel = 0.45
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3062,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 5
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 8,8
guard.pausetime = 8,8
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -3
air.velocity = -2,-10
yaccel = 0.45
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3062,1]
type = ChangeState
trigger1 = animtime = 0
value = 3063
ctrl = 0

[State 3062,Explod]
type = Explod
trigger1 = time = 0
ID = 2011
anim = 7060
sprpriority = 2
postype = p1
pos = 10,-50
bindtime = -1
pausemovetime = 0
removetime = -2
ignorehitpause = 1
scale = 0.85,0.85
vel = 0,0
ownpal = 1
supermove = 0
persistent = 0

;Attack
[Statedef 3063]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3010
juggle = 0

[State 3063, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 3000,1

[State 3063, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 40,0

[State 3063, VelSet]
type = VelSet
trigger1 = time >= 0
x = 4

[State 3063, VelSet]
type = VelSet
trigger1 = time >= 10
x = 2

[State 3063, VelSet]
type = VelSet
trigger1 = time >= 15
x = 1

[State 3063, Dust Helper]
type = Helper
trigger1 = animelem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3063,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 3
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 8,8
guard.pausetime = 8,8
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -3
air.velocity = -2,-10
yaccel = 0.45
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3063,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 5
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 8,8
guard.pausetime = 8,8
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -3
air.velocity = -2,-10
yaccel = 0.45
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3063,1]
type = ChangeState
trigger1 = animtime = 0
value = 3030
ctrl = 0

[State 3063,Explod]
type = Explod
trigger1 = time = 0
ID = 2011
anim = 7060
sprpriority = 2
postype = p1
pos = 10,-50
bindtime = -1
pausemovetime = 0
removetime = -2
ignorehitpause = 1
scale = 0.85,0.85
vel = 0,0
ownpal = 1
supermove = 0
persistent = 0

;Finish
[Statedef 3080]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 3030
juggle = 0
poweradd = 0

[State 3080, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 40,0

[State 3080, StateTypeSet]
type = StateTypeSet
trigger1 = time >=5
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N

[State 3080, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 1400,0

[State 3080, VelSet]
type = VelSet
trigger1 = time >= 8
x = 2
y = -12

[State 3080, VelSet]
type = VelSet
trigger1 = time >= 10
y = -10

[State 3080, VelSet]
type = VelSet
trigger1 = time >= 14
y = -8

[State 3080, VelSet]
type = VelSet
trigger1 = time >= 16
y = -6

[State 3080, VelSet]
type = VelSet
trigger1 = time >= 18
y = -4

[State 3080, VelSet]
type = VelSet
trigger1 = time >= 22
y = -1

[State 3080, VelSet]
type = VelSet
trigger1 = time >= 24
x = 0
y = 1

[State 3080, VelSet]
type = VelSet
trigger1 = time >= 26
y = 2

[State 3080, VelSet]
type = VelSet
trigger1 = time >= 28
y = 4

[State 3080, VelSet]
type = VelSet
trigger1 = time >= 29
y = 6

[State 3080, VelSet]
type = VelSet
trigger1 = time >= 32
y = 8

[State 3080, VelSet]
type = VelSet
trigger1 = time >= 36
y = 10

[State 3080, VelSet]
type = VelSet
trigger1 = time >= 40
y = 12

[State 3080, VelSet]
type = VelSet
trigger1 = time >= 44
y = 16

[State 3080, Dust Helper]
type = Helper
trigger1 = animelem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3080,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 2
priority = 4, Hit
attr = A,SA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 14,14
guard.pausetime = 14,14
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -2,-10
air.velocity = -2,-10
yaccel = 0.6
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3080,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 3
priority = 4, Hit
attr = A,SA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 10,10
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -2,-10
air.velocity = -2,-10
yaccel = 0.6
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3080,2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 4
priority = 4, Hit
attr = S,SA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 8,8
guard.pausetime =  8,8
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -2,-12
air.velocity = -2,-12
yaccel = 0.6
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3080,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3040
ctrl = 0

[State 3080,Explod]
type = Explod
trigger1 = time = 6
ID = 2030
anim = 7030
sprpriority = 1
postype = p1
pos = 2,-30
bindtime = -1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
removeongethit = 1
scale = 1,1
vel = 0,0
ownpal = 1
supermove = 0
 persistent = 0

;========================<HEALING>=============================
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
trigger1 = AnimElemTime(15) < 0
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
pos = ceil(5 * const(size.xScale)), ceil(-60 * const(size.yScale))
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
trigger1 = time = 95
value = 3101
ctrl = 0

;Continue
[Statedef 3101]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3101
juggle = 0

[State 3101, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 3

[State 3101, HitBy]
type = HitBy
trigger1 = time = 3
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3101, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3100,0

[State 3101, LifeAdd]
type = LifeAdd
trigger1 = time >= 0
value = 5

[State 3101, ChangeState]
type = ChangeState
triggerall = time < 45
trigger1 = command = "x" && command = "y"
trigger2 = command = "x" && command = "z"
trigger3 = command = "z" && command = "y"
value = 3110
ctrl = 0

[State 3101, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Finish
[Statedef 3110]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3110
juggle = 0

[State 3110, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 3110, ChangeState]
type = ChangeState
trigger1 = time>14
trigger1 = command = "MalletSmash"
value = 1100
ctrl = 0

[State 3110, ChangeState]
type = ChangeState
trigger1 = time>14
;trigger1 = var(51)=0
trigger1 = command = "EXMalletSmash"
value = 1130
ctrl = 0

;========================<HEALING>=============================
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
trigger1 = AnimElemTime(15) < 0
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
pos = ceil(5 * const(size.xScale)), ceil(-60 * const(size.yScale))
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

[State 3100, ChangeState]
type = ChangeState
trigger1 = time = 95
value = 3151
ctrl = 0

;Continue
[Statedef 3151]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3101
juggle = 0

[State 3151, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 3

[State 3151, HitBy]
type = HitBy
trigger1 = time = 3
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3151, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3100,0

[State 3151, LifeAdd]
type = LifeAdd
trigger1 = time >= 0
value = 10

[State 3151, ChangeState]
type = ChangeState
triggerall = time < 45
trigger1 = command = "x" && command = "y"
trigger2 = command = "x" && command = "z"
trigger3 = command = "z" && command = "y"
value = 3110
ctrl = 0

[State 3151, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;========================<ULTRA BRAVE DANCE>=============================
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
trigger1 = AnimElemTime(5) < 0
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
pos = ceil(0 * const(size.xScale)), ceil(-50 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3200,1]
type = ChangeState
trigger1 = time = 60
value = 3210
ctrl = 0

;Attack
[Statedef 3210]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 3210
juggle = 0
poweradd = 0

[State 3210,Explod]
type = Explod
trigger1 = time = 0
anim = 7020
sprpriority = 1
postype = p1
pos = 2,-30
bindtime = -1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
vel = 0,0
ownpal = 1
supermove = 0
persistent = 0
removeongethit = 1

[State 3210, VelSet]
type = VelSet
trigger1 = time>=4
x = 12
y = 0

[State 3210, VelSet]
type = VelSet
trigger1 = time>=7
x = 8

[State 3210, VelSet]
type = VelSet
trigger1 = time>=10
x = 6

[State 3210, VelSet]
type = VelSet
trigger1 = time>=14
x = 4

[State 3210, VelSet]
type = VelSet
trigger1 = time>=18
x = 3

[State 3210, VelSet]
type = VelSet
trigger1 = time>=22
x = 2

[State 3210, VelSet]
type = VelSet
trigger1 = time>=26
x = 0

[State 3210,0]
type = PlaySnd
trigger1 = Time = 10
value = 40,0

[State 3210,0]
type = PlaySnd
trigger1 = Time = 26
value = 52,0

[State 3210, landing explode]
type = Explod
trigger1 = time = 26
anim = 8102
sprpriority = 4
postype = p1
pos = 0,0
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 0.8,0.8
ownpal = 1

[State 3210, landing explode]
type = Explod
trigger1 = time = 26
anim = 7220
sprpriority = 4
postype = p1
pos = 0,5
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 0.6,0.6
ownpal = 1

[State 3210, StateTypeSet]
type = StateTypeSet
trigger1 = time = [8,26]
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N

[State 3210, StateTypeSet]
type = StateTypeSet
trigger1 = time >= 27
statetype = S       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N

[State 3210, Dust Helper]
type = Helper
trigger1 = animelem = 6
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3210, Hp]
type = HitDef
trigger1 = !var(16) && var(15) < 20
trigger1 = time = 0
priority = 6, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 60 < 7, 7, fvar(11) * 60)), 7
kill = 0
getPower = 0,0
givePower = 36, 36
pausetime = 8,12
guard.pausetime = 8,12
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 30
guard.ctrltime = 17
ground.velocity = 6
air.velocity = 4,-7
yaccel = 0.55
guard.velocity = -14
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
fall = 0
air.fall = 0
fall.recover = 0
p2stateno = 3211

[State 3210, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3220
ctrl = 0

;P2 throw
[Statedef 3211]
type = S
movetype = H
physics = N
velset = 0,0

[State 3211, ChangeState]
type = ChangeState
trigger1 = hitshakeover
value = 3212

;Player 2
[Statedef 3212]
type = S
movetype = H
physics = N
velset = 0,0

[State 3212, VelSet]
type = VelSet
trigger1 = time>=0
x = 2

[State 3212, VelSet]
type = VelSet
trigger1 = time>=6
x = 0

[State 3212, ChangeAnim2]
type = ChangeAnim2
trigger1 = time=0
value = 3215

[State 3212, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3212, selfstat]
type = selfstate
Trigger1 = animtime = 0
value = 0
ctrl = 1

;Attack
[Statedef 3220]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 3220
juggle = 0
poweradd = 0

[State 3220, Dust Helper]
type = Helper
trigger1 = animelem = 5 ||animelem = 33
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3220, Dust Helper]
type = Helper
trigger1 = animelem = 19
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = -20, 0
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3220, Dust Helper]
type = Helper
trigger1 = animelem = 46||animelem = 54
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = -25, 0
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3220, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5 ||animelem = 19 ||animelem = 33||animelem = 46||animelem = 54
value = 1,5

[State 3220, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5 ||animelem = 33||animelem = 54
value = 4,0

[State 3220, PlaySnd]
type = PlaySnd
trigger1 = animelem = 19 ||animelem = 46
value = 4,1

[State 3220,hitdef]
type = HitDef
trigger1 = !var(16) && var(15) < 20
trigger1 = animelem = 5
trigger2 = animelem = 33
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 4,12
guard.pausetime = 4,12
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =17
ground.velocity = -2
air.velocity = -2,-8
yaccel = 0.6
guard.velocity = -2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0
p2stateno = 3211

[State 3220,hitdef]
type = HitDef
trigger1 = !var(16) && var(15) < 20
trigger1 = animelem = 19
trigger2 = animelem = 46
trigger3 = animelem = 54
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = low
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 4,12
guard.pausetime = 4,12
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =17
ground.velocity = -2
air.velocity = -2,-8
yaccel = 0.6
guard.velocity = -2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0
p2stateno = 3211

[State 3220,hitdef]
type = HitDef
trigger1 = !var(16) && var(15) < 20
trigger1 = animelem = 54
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = low
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 4,12
guard.pausetime = 4,12
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =17
ground.velocity = -2
air.velocity = -2,-8
yaccel = 0.6
guard.velocity = -2
ground.cornerpush.veloff = -20
guard.cornerpush.veloff = -20
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p1stateno = 3230
kill = 0
p2stateno = 3211

[State 3220, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 52
ctrl = 0

[State 3220, VelSet]
type = VelSet
trigger1 = time>=0
x = 6

[State 3220, VelSet]
type = VelSet
trigger1 = time>=6
x = 0

[State 3220, VelSet]
type = VelSet
trigger1 = time>=61
x = 0

[State 3220, VelSet]
type = VelSet
trigger1 = time>=66
x = 0

;Conect
[Statedef 3230]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 3230
juggle = 0
poweradd = 0

[State 3230,Explod]
type = Explod
trigger1 = animelem = 1 ||animelem = 17;33,44
anim = 7020
sprpriority = 1
postype = p1
pos = 2,-30
bindtime = -1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
vel = 0,0
ownpal = 1
supermove = 0
;persistent = 0
removeongethit = 1

[State 3230,Explod]
type = Explod
trigger1 = animelem = 33 ||animelem = 44
anim = 7021
sprpriority = 1
postype = p1
pos = 2,-30
bindtime = -1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
vel = 0,0
ownpal = 1
supermove = 0
;persistent = 0
removeongethit = 1

[State 3230, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5 || animelem = 21 || animelem = 35 || animelem = 46
value = 40,0

[State 3230, StateTypeSet]
type = StateTypeSet
trigger1 = time >= 8
statetype = A       ;S,A,C,L
movetype = A       ;I,A,H
physics = N         ;A,C,S,N

[State 3230, StateTypeSet]
type = StateTypeSet
trigger1 = time >= 24
statetype = S       ;S,A,C,L
movetype = A       ;I,A,H
physics = N         ;A,C,S,N

[State 3230, StateTypeSet]
type = StateTypeSet
trigger1 = time >= 39
statetype = A       ;S,A,C,L
movetype = A       ;I,A,H
physics = N         ;A,C,S,N

[State 3230, StateTypeSet]
type = StateTypeSet
trigger1 = time >= 55
statetype = S       ;S,A,C,L
movetype = A       ;I,A,H
physics = N         ;A,C,S,N

[State 3230, StateTypeSet]
type = StateTypeSet
trigger1 = time >= 66
statetype = A       ;S,A,C,L
movetype = A       ;I,A,H
physics = N         ;A,C,S,N

[State 3230, StateTypeSet]
type = StateTypeSet
trigger1 = time >= 76
statetype = S       ;S,A,C,L
movetype = A       ;I,A,H
physics = N         ;A,C,S,N

[State 3230, StateTypeSet]
type = StateTypeSet
trigger1 = time >= 85
statetype = A       ;S,A,C,L
movetype = A       ;I,A,H
physics = N         ;A,C,S,N

[State 3230, StateTypeSet]
type = StateTypeSet
trigger1 = time >= 95
statetype = S       ;S,A,C,L
movetype = A       ;I,A,H
physics = N         ;A,C,S,N

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 8
x = 6

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 24
x = 0

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 39
x = 2

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 55
x = 0

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 66
x = 4

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 76
x = 0

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 85
x = 4

[State 3230, VelSet]
type = VelSet
trigger1 = time >= 95
x = 0

[State 3230, Dust Helper]
type = Helper
trigger1 = animelem = 6
trigger2 = animelem = 22
trigger3 = animelem = 36
trigger4 = animelem = 47
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3230, Hp]
type = HitDef
trigger1 = !var(16) && var(15) < 20
trigger1 = animelem = 5
trigger2 = animelem = 21
trigger3 = animelem = 35
trigger4 = animelem = 46
priority = 5, Hit
attr = A,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getPower = 0,0
givePower = 36, 36
kill = 0
pausetime = 6,12
guard.pausetime = 6,12
ground.slidetime = 30
ground.hittime = 30
guard.hittime = (30) - 6
air.hittime = 30
guard.ctrltime = 17
ground.velocity = 0
air.velocity = -4,-8
yaccel = 0.55
guard.velocity = -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
fall = 0
air.fall = 1
fall.recover = 0
kill = 0

[State 3230, Hp]
type = HitDef
trigger1 = !var(16) && var(15) < 20
trigger1 = animelem = 6
trigger2 = animelem = 22
trigger3 = animelem = 36
trigger4 = animelem = 47
priority = 5, Hit
attr = A,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getPower = 0,0
givePower = 36, 36
kill = 0
pausetime = 6,12
guard.pausetime = 6,12
ground.slidetime = 30
ground.hittime = 30
guard.hittime = (30) - 6
air.hittime = 30
guard.ctrltime = 17
ground.velocity = 0
air.velocity = -4,-8
yaccel = 0.55
guard.velocity = -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -95
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
fall = 0
air.fall = 1
fall.recover = 0
kill = 0

[State 3230, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3240
ctrl = 0

;Finish
[Statedef 3240]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 3240
juggle = 0
poweradd = 0

[State 3240, StateTypeSet]
type = StateTypeSet
trigger1 = time >= 5
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N

[State 3240, 4]
type = Explod
trigger1 = Time = 5
anim = 8100
sprpriority = 4
postype = p1
pos = 0,5
bindtime = 1
removetime = -2
ignorehitpause = 1
scale = 1,1
ownpal = 1

[State 3240, 4]
type = Explod
trigger1 = Time = 5
anim = 8100
sprpriority = 4
postype = p1
pos = 0,5
bindtime = 1
removetime = -2
ignorehitpause = 1
scale = 0.75, 0.75
ownpal = 1

[State 3240, 4]
type = Explod
trigger1 = Time = 10
anim = 8100
sprpriority = 4
postype = p1
pos = 0,5
bindtime = 1
removetime = -2
ignorehitpause = 1
scale = 0.5 ,0.5
ownpal = 1

[State 3240, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 1400,0
volume = 0

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 4
x = 2
y = -10

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 8
y = -8

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 12
y = -6

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 15
y = -4

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 18
y = -2

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 21
y = -2

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 24
x = 1
y = -2

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 27
y = -1

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 30
y = -1

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 33
x = 0
y = -0.5

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 36
y = -0.5

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 39
y = -0.5

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 42
y = 0

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 45
y = 1

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 48
y = 2

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 51
y = 4

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 54
y = 6

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 57
y = 8

[State 3240, VelSet]
type = VelSet
trigger1 = time >= 60
y = 10

[State 3240, Dust Helper]
type = Helper
trigger1 = animelem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3240,HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 20
trigger1 = animelem = 3
trigger2 = animelem = 11
trigger3 = animelem = 20
priority = 4, Hit
attr = A,SA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 10 < 7, 7, fvar(11) * 10)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 4,6
guard.pausetime = 4,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 17
ground.velocity = -2,-10
air.velocity = -2,-10
yaccel = 0.45
guard.velocity = -14
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
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

[State 3240,HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 20
trigger1 = animelem = 4
trigger2 = animelem = 12
priority = 4, Hit
attr = A,SA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 10 < 7, 7, fvar(11) * 10)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 4,6
guard.pausetime = 4,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =17
ground.velocity = -2,-8
air.velocity = -2,-8
yaccel = 0.45
guard.velocity = -14
ground.cornerpush.veloff = -5
guard.cornerpush.veloff = -5
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
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

[State 3240,HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 20
trigger1 = animelem = 21
priority = 5, Hit
attr = A,SA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = ceil(ifElse(fvar(11) * 10 < 7, 7, fvar(11) * 10)), 7
getPower = 0,0
givePower = 36, 36
pausetime = 22,22
guard.pausetime = 22,22
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =17
ground.velocity = -6,8
air.velocity = -6,8
yaccel = 0.45
guard.velocity = -14
ground.cornerpush.veloff = -25
guard.cornerpush.veloff = -25
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
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
kill = 1

[State 3240,Explod]
type = Explod
trigger1 = time = 2
trigger2 = time = 15
trigger3 = time = 28
anim = 7030
sprpriority = 1
postype = p1
pos = 2,-30
bindtime = -1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
vel = 0,0
ownpal = 1
supermove = 0
;persistent = 0

[State 3240,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;========================<SPINNING BEAT>=============================
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
trigger1 = time = 3
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
pos = ceil(0 * const(size.xScale)), ceil(-60 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 60
moveTime = 60
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3300, Dust Helper]
type = Helper
trigger1 = animelem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3300, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 3301
ctrl = 0

;Attack
[Statedef 3301]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3301
juggle = 0

[State 3301, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 4

[State 3301, HitBy]
type = HitBy
trigger1 = time = 4
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3301,SND]
type = PlaySnd
trigger1 = time = 1
value = 3300,0

[State 3301, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 40,0

[State 3301, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 3301, VelSet]
type = VelSet
trigger1 = time >= 2
x = 16
y = -12

[State 3301, VelSet]
type = VelSet
trigger1 = time >= 4
x = 14
y = -10

[State 3301, VelSet]
type = VelSet
trigger1 = time >= 6
x = 12
y = -2

[State 3301, VelSet]
type = VelSet
trigger1 = time >= 8
x = 10
y = 0

[State 3301, VelSet]
type = VelSet
trigger1 = time >= 10
x = 8
y = 1

[State 3301, VelSet]
type = VelSet
trigger1 = time >= 12
x = 8
y = 4

[State 3301, VelSet]
type = VelSet
trigger1 = time >= 16
x = 8
y = 6

[State 330|, Dust Helper]
type = Helper
trigger1 = animelem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3301,2]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = time = 0
trigger1 = p2stateno!=3341
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 0,10
getpower = 0
GivePower = 20
pausetime = 12,12
guard.pausetime = 12,12
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 22
ground.velocity = -3
air.velocity = -2,-10
yaccel = 0.45
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p1stateno = 3310
p2stateno = 3340

[State 3301,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3302
ctrl = 0

;Fail
[Statedef 3302]
type = S
movetype = I
physics = S
velset = 0, 0
ctrl = 0
anim = 3302
juggle = 0
poweradd = 0

[State 3302, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3302, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3302,ChangeState]
type = Posset
trigger1 = time >= 0
y = 0

[State 3302,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Conect
[Statedef 3310]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3310
juggle = 0

[State 3310, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA;,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 56

[State 3310, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 3310, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2

[State 3310, VelSet]
type = VelSet
trigger1 = time >= 46
x = 0

[State 3310, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 50,0

[State 3310, Hit Spark]
type = Helper
trigger1 = time = 8
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(20 * const(size.xScale)), ceil(-20 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3310, Hit Spark]
type = Helper
trigger1 = time = 17
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(25 * const(size.xScale)), ceil(-80 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3310, Hit Spark]
type = Helper
trigger1 = time = 26
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(30 * const(size.xScale)), ceil(-75 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3310, Hit Spark]
type = Helper
trigger1 = time = 41
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(35 * const(size.xScale)), ceil(-85 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3310, EnvShake]
type = EnvShake
trigger1 = time = 8
trigger2 = time = 17
trigger3 = time = 26
trigger4 = time = 41
time = 10
ampl = 10
freq = 60

[State 3310, 1]
type = Pause
trigger1 = time = 8
trigger2 = time = 17
trigger3 = time = 26
trigger4 = time = 41
time = 5
movetime = 0

[State 3310, PlaySnd]
type = PlaySnd
trigger1 = time = 8
trigger2 = time = 17
trigger3 = time = 26
value = 2,5

[State 3310, PlaySnd]
type = PlaySnd
trigger1 = time = 41
value = 2,5

[State 3310, 3]
type = Null;EnvColor
trigger1 = time = 8
trigger2 = time = 49
trigger3 = time = 40
trigger4 = time = 80
time = 3
value = 255,255,255
under = 1

[State 3310, EnvShake]
type = EnvShake
trigger1 = time = 41
time = 20
ampl = 10
freq = 60

[State 3310, 1]
type = Null;Pause
trigger1 = time = 41
time = 20
movetime = 0

[State 3310, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 8
trigger2 = time = 17
trigger3 = time = 26
value = -50
kill = 0

[State 3310, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 41
value = -100
kill = 1

[State 3310, hitadd]
type = hitadd
trigger1 = time = 8
trigger2 = time = 17
trigger3 = time = 26
trigger4 = time = 41
value = 1

[State 3310, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;P2 throw part 02
[Statedef 3340]
type = S
movetype = H
physics = N
velset = 0,0

[State 3340, VelSet]
type = VelSet
trigger1 = time >= 0
x = -2

[State 3340, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5000

[State 3340, 1]
type = ChangeAnim2
Trigger1 = Time = 8
Trigger2 = Time = 26
value = 5010

[State 3340, 1]
type = ChangeAnim2
Trigger1 = Time = 17
value = 5000

[State 3340, 1]
type = ChangeAnim2
Trigger1 = Time = 52
value = 3350

[State 3340, ChangeState]
type = ChangeState
trigger1 =  time = 52
trigger2 = p2stateno != 3310
value = 3341
ctrl = 0

;P2 throw part 02
[Statedef 3341]
type = A
movetype = H
physics = N
velset = 0,0

[State 3341, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3351

[State 3341, PosAdd]
type = PosAdd
Trigger1 = Time = 0
y = -60

[State 3341, AngleSet]
type = AngleDraw
trigger1 = time >= 0
value = 20

[State 3341, AngleSet]
type = AngleDraw
trigger1 = time >= 5
value = 30

[State 3341, AngleSet]
type = AngleDraw
trigger1 = time >= 10
value = 40

[State 3341, AngleSet]
type = AngleDraw
trigger1 = time >= 15
value = 50

[State 3341, AngleSet]
type = AngleDraw
trigger1 = time >= 20
value = 60

[State 3341, AngleSet]
type = AngleDraw
trigger1 = time >= 25
value = 70

[State 3341, AngleSet]
type = AngleDraw
trigger1 = time >= 30
value = 80

[State 3341, AngleSet]
type = AngleDraw
trigger1 = time >= 35
value = 90

[State 3341, AngleSet]
type = AngleDraw
trigger1 = time >= 40
value = 100

[State 3341, VelSet]
type = VelSet
trigger1 = time >= 3
x = -4

[State 3341, VelSet]
type = VelSet
trigger1 = time >= 0
y = 0

[State 3341, VelSet]
type = VelSet
trigger1 = time >= 3
y = -12

[State 3341, VelSet]
type = VelSet
trigger1 = time >= 6
y = -10

[State 3341, VelSet]
type = VelSet
trigger1 = time >= 9
y = -6

[State 3341, VelSet]
type = VelSet
trigger1 = time >= 12
y = -2

[State 3341, VelSet]
type = VelSet
trigger1 = time >= 15
y = 0

[State 3341, VelSet]
type = VelSet
trigger1 = time >= 18
y = 2

[State 3341, VelSet]
type = VelSet
trigger1 = time >= 21
y = 4

[State 3341, VelSet]
type = VelSet
trigger1 = time >= 24
y = 6

[State 3341, VelSet]
type = VelSet
trigger1 = time >= 28
y = 8

[State 3341, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -60
value = 5100 ;Hit ground

;========================<MAX SPINNING BEAT>=============================
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
pos = ceil(0 * const(size.xScale)), ceil(-60 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3350, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 60
moveTime = 60
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3350, Dust Helper]
type = Helper
trigger1 = animelem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3350, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 3351
ctrl = 0

;Attack
[Statedef 3351]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3301
juggle = 0

[State 3351, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 4

[State 3351, HitBy]
type = HitBy
trigger1 = time = 4
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3351,SND]
type = PlaySnd
trigger1 = time = 1
value = 3300,0

[State 3351, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 40,0

[State 3351, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 3351, VelSet]
type = VelSet
trigger1 = time >= 2
x = 16
y = -12

[State 3351, VelSet]
type = VelSet
trigger1 = time >= 4
x = 14
y = -10

[State 3351, VelSet]
type = VelSet
trigger1 = time >= 6
x = 12
y = -2

[State 3351, VelSet]
type = VelSet
trigger1 = time >= 8
x = 10
y = 0

[State 3351, VelSet]
type = VelSet
trigger1 = time >= 10
x = 8
y = 1

[State 3351, VelSet]
type = VelSet
trigger1 = time >= 12
x = 8
y = 4

[State 3351, VelSet]
type = VelSet
trigger1 = time >= 16
x = 8
y = 6

[State 3351, Dust Helper]
type = Helper
trigger1 = animelem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3351,2]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = time = 0
trigger1 = p2stateno!=3381
priority = 5, Hit
attr = S,HA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 0,10
getpower = 0
GivePower = 20
pausetime = 12,12
guard.pausetime = 12,12
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime = 22
ground.velocity = -3
air.velocity = -2,-10
yaccel = 0.45
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p1stateno = 3360
p2stateno = 3380

[State 3351,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3352
ctrl = 0

;Fail
[Statedef 3352]
type = S
movetype = I
physics = S
velset = 0, 0
ctrl = 0
anim = 3302
juggle = 0
poweradd = 0

[State 3352, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3352, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3352,ChangeState]
type = Posset
trigger1 = time >= 0
y = 0

[State 3352,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Conect
[Statedef 3360]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3360
juggle = 0

[State 3360, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA;,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 110

[State 3360, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 3360, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2

[State 3360, VelSet]
type = VelSet
trigger1 = time >= 100
x = 0

[State 3360, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 50,0

[State 3360, Hit Spark]
type = Helper
trigger1 = time = 8
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(20 * const(size.xScale)), ceil(-20 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3360, Hit Spark]
type = Helper
trigger1 = time = 17
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(25 * const(size.xScale)), ceil(-80 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3360, Hit Spark]
type = Helper
trigger1 = time = 26
trigger2 = time = 49
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(30 * const(size.xScale)), ceil(-75 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3360, Hit Spark]
type = Helper
trigger1 = time = 40
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(50 * const(size.xScale)), ceil(-75 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3360, Hit Spark]
type = Helper
trigger1 = time = 56
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(50 * const(size.xScale)), ceil(-20 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3360, Hit Spark]
type = Helper
trigger1 = time = 65
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(30 * const(size.xScale)), ceil(-80 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3360, Hit Spark]
type = Helper
trigger1 = time = 80
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(50 * const(size.xScale)), ceil(-75 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3360, Hit Spark]
type = Helper
trigger1 = time = 95
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = ceil(35 * const(size.xScale)), ceil(-85 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3360, EnvShake]
type = EnvShake
trigger1 = time = 8
trigger2 = time = 17
trigger3 = time = 26
trigger4 = time = 49
trigger5 = time = 40
trigger6 = time = 56
trigger7 = time = 65
trigger8 = time = 80
trigger9 = time = 95
time = 10
ampl = 10
freq = 60

[State 3360, 1]
type = Pause
trigger1 = time = 8
trigger2 = time = 17
trigger3 = time = 26
trigger4 = time = 49
trigger5 = time = 40
trigger6 = time = 56
trigger7 = time = 65
trigger8 = time = 80
;trigger9 = time = 95
time = 5
movetime = 0

[State 3360, PlaySnd]
type = PlaySnd
trigger1 = time = 8
trigger2 = time = 17
trigger3 = time = 26
trigger4 = time = 49
trigger5 = time = 40
trigger6 = time = 56
trigger7 = time = 65
trigger8 = time = 80
value = 2,5

[State 3360, PlaySnd]
type = PlaySnd
trigger1 = time = 95
value = 2,5

[State 3360, 3]
type = Null;EnvColor
trigger1 = time = 8
trigger2 = time = 49
trigger3 = time = 40
trigger4 = time = 80
time = 3
value = 255,255,255
under = 1

[State 3360, EnvShake]
type = EnvShake
trigger1 = time = 95
time = 20
ampl = 10
freq = 60

[State 3360, 1]
type = Null;Pause
trigger1 = time = 95
time = 20
movetime = 0

[State 3360, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 8
trigger2 = time = 17
trigger3 = time = 26
trigger4 = time = 49
trigger5 = time = 40
trigger6 = time = 56
trigger7 = time = 65
trigger8 = time = 80
value = -35
kill = 0

[State 3360, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 95
value = -70
kill = 1

[State 3360, hitadd]
type = hitadd
trigger1 = time = 8
trigger2 = time = 17
trigger3 = time = 26
trigger4 = time = 49
trigger5 = time = 40
trigger6 = time = 56
trigger7 = time = 65
trigger8 = time = 80
trigger9 = time = 95
value = 1

[State 3360, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;P2 throw part 02
[Statedef 3380]
type = S
movetype = H
physics = N
velset = 0,0

[State 3380, VelSet]
type = VelSet
trigger1 = time >= 0
x = -2

[State 3380, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5000

[State 3380, 1]
type = ChangeAnim2
Trigger1 = Time = 8
Trigger2 = Time = 26
trigger3 = time = 56
value = 5010

[State 3380, 1]
type = ChangeAnim2
Trigger1 = Time = 17
Trigger2 = Time = 49
trigger3 = time = 65
value = 5000

[State 3380, 1]
type = ChangeAnim2
Trigger1 = Time = 106
value = 3350

[State 3380, ChangeState]
type = ChangeState
trigger1 =  time = 106
trigger2 = p2stateno != 3360
value = 3381
ctrl = 0

;P2 throw part 02
[Statedef 3381]
type = A
movetype = H
physics = N
velset = 0,0

[State 3381, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3351

[State 3381, PosAdd]
type = PosAdd
Trigger1 = Time = 0
y = -60

[State 3381, AngleSet]
type = AngleDraw
trigger1 = time >= 0
value = 20

[State 3381, AngleSet]
type = AngleDraw
trigger1 = time >= 5
value = 30

[State 3381, AngleSet]
type = AngleDraw
trigger1 = time >= 10
value = 40

[State 3381, AngleSet]
type = AngleDraw
trigger1 = time >= 15
value = 50

[State 3381, AngleSet]
type = AngleDraw
trigger1 = time >= 20
value = 60

[State 3381, AngleSet]
type = AngleDraw
trigger1 = time >= 25
value = 70

[State 3381, AngleSet]
type = AngleDraw
trigger1 = time >= 30
value = 80

[State 3381, AngleSet]
type = AngleDraw
trigger1 = time >= 35
value = 90

[State 3381, AngleSet]
type = AngleDraw
trigger1 = time >= 40
value = 100

[State 3381, VelSet]
type = VelSet
trigger1 = time >= 3
x = -4

[State 3381, VelSet]
type = VelSet
trigger1 = time >= 0
y = 0

[State 3381, VelSet]
type = VelSet
trigger1 = time >= 3
y = -12

[State 3381, VelSet]
type = VelSet
trigger1 = time >= 6
y = -10

[State 3381, VelSet]
type = VelSet
trigger1 = time >= 9
y = -6

[State 3381, VelSet]
type = VelSet
trigger1 = time >= 12
y = -2

[State 3381, VelSet]
type = VelSet
trigger1 = time >= 15
y = 0

[State 3381, VelSet]
type = VelSet
trigger1 = time >= 18
y = 2

[State 3381, VelSet]
type = VelSet
trigger1 = time >= 21
y = 4

[State 3381, VelSet]
type = VelSet
trigger1 = time >= 24
y = 6

[State 3381, VelSet]
type = VelSet
trigger1 = time >= 28
y = 8

[State 3381, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -60
value = 5100 ;Hit ground
