;<SPECIALS>=

;Grosse Kicken
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
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && var(40) = 0
value = ifElse(var(10) = 2, 1020, ifElse(var(10) = 1, 1010, 1000))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && var(40) = 1
value = ifElse(var(10) = 2, 1021, ifElse(var(10) = 1, 1011, 1001))

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1000, 0
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,1

[State 1000, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1004
ID = 1004
pos = 8,-80
postype = p1
bindtime = 1
removetime = -2
scale = .5,.55
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1000, Projectile]
type = Helper
trigger1 = var(40) = 0
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1005
ID = 1005
name = "Reppuken Projectile"
posType = P1
pos = ceil(30 * const(size.xScale)), ceil(-5 * const(size.yScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, Projectile]
type = Helper
trigger1 = var(40) = 1
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1009
ID = 1005
name = "Reppuken Projectile"
posType = P1
pos = ceil(30 * const(size.xScale)), ceil(-5 * const(size.yScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, Width]
type = Width
trigger1 = time = 0
edge = 0,0
player = 10,0

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;----------------------------------------------
; LK Rising Kicken
[Statedef 1016]
type = S
physics = S
moveType = A
anim = 1006
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,0
channel = 0
volume = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,1

[State 1000, VarSet]
type = VarSet
trigger1 = 1
v = 10
value = 0

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 5
StateType = A
physics = N

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 5,= 0
x = 5
y = -4.0

[State 1100, Velocity]
type = null
trigger1 =AnimElem = 5,= 0
x = 0

[State 1100, Velmul]
type = Velmul
trigger1 = AnimElem = 5 >= 0
x = .96

[State 1100, 4]
type = VelAdd
trigger1 = AnimElem = 5 >= 0
y = .4

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1015
ID = 1005
name = "Reppuken Projectile"
posType = P1
pos = ceil(30 * const(size.xScale)), ceil(-3 * const(size.yScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 241, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = back
fall.animtype = back
priority = 3,Hit
pausetime = 8, 10
damage = ceil(ifElse(fvar(11) * 0 < 0, 0, fvar(11) * 0)), 0
guard.pausetime = 6, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 70), var(36) := -60
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
air.type = High
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.hittime  = 15
ground.velocity = -3,-6
guard.velocity = -10
air.velocity = -3,-6
airguard.velocity = -2.5,-2
ground.cornerpush.veloff = -10
guard.cornerpush.veloff = -10
air.cornerpush.veloff = -10
airguard.cornerpush.veloff = -10
getpower = 25,25
givepower = 10,10
persistent = 0
fall = 1
air.fall = 1
fall.recover = 0
air.recover = 0
yaccel = .5
forcestand = 15

[State 200, ice]
type = Explod
trigger1 = animelem = 4
anim = 1004
ID = 1004
pos = 8,-80
postype = p1
bindtime = 1
removetime = -2
scale = .5,.55
sprpriority = 3
accel = 0.03,0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1000, StateType]
type = StateTypeSet
trigger1 = AnimElem = 7
Movetype = I

[State 1001, 21]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1040

;----------------------------------------------
; MK Rising Kicken
[Statedef 1020]
type = S
physics = S
moveType = A
anim = 1015
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,0
channel = 0
volume = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,1

[State 1000, VarSet]
type = VarSet
trigger1 = 1
v = 10
value = 1

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 5
StateType = A
physics = N

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 5,= 0
x = 5
y = -4.0

[State 1100, Velocity]
type = null
trigger1 =AnimElem = 5,= 0
x = 0

[State 1100, Velmul]
type = Velmul
trigger1 = AnimElem = 5 >= 0
x = .96

[State 1100, 4]
type = VelAdd
trigger1 = AnimElem = 5 >= 0
y = .4

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1015
ID = 1005
name = "Reppuken Projectile"
posType = P1
pos = ceil(30 * const(size.xScale)), ceil(-3 * const(size.yScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 241, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = back
fall.animtype = back
priority = 3,Hit
pausetime = 8, 10
damage = ceil(ifElse(fvar(11) * 14 < 0, 0, fvar(11) * 14)), 7
guard.pausetime = 6, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 70), var(36) := -60
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
air.type = High
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.hittime  = 15
ground.velocity = -3,-6
guard.velocity = -10
air.velocity = -3,-6
airguard.velocity = -2.5,-2
ground.cornerpush.veloff = -10
guard.cornerpush.veloff = -10
air.cornerpush.veloff = -10
airguard.cornerpush.veloff = -10
getpower = 25,25
givepower = 10,10
persistent = 0
fall = 1
air.fall = 1
fall.recover = 0
air.recover = 0
yaccel = .5
forcestand = 15

[State 200, ice]
type = Explod
trigger1 = animelem = 4
anim = 1004
ID = 1004
pos = 8,-80
postype = p1
bindtime = 1
removetime = -2
scale = .5,.55
sprpriority = 3
accel = 0.03,0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1000, StateType]
type = StateTypeSet
trigger1 = AnimElem = 7
Movetype = I

[State 1001, 21]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1040

;----------------------------------------------
;HK Rising Kicken
[Statedef 1025]
type = S
physics = S
moveType = A
anim = 1025
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,0
channel = 0
volume = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,1

[State 1000, VarSet]
type = VarSet
trigger1 = 1
v = 10
value = 2

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 5
StateType = A
physics = N

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 5,= 0
x = 4
y = -5

[State 1100, 4]
type = VelAdd
trigger1 = AnimElem = 5 >= 0
trigger1 = AnimElem = 11 <= 0
y = .42

[State 1100, 4]
type = VelAdd
trigger1 = AnimElem = 11 >= 0
y = .3

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1015
ID = 1005
name = "Reppuken Projectile"
posType = P1
pos = ceil(30 * const(size.xScale)), ceil(-3 * const(size.yScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 241, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = back
fall.animtype = back
priority = 3,Hit
pausetime = 8, 8
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
guard.pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 70), var(36) := -60
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
air.type = High
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.hittime  = 18
ground.velocity = -3,-6
guard.velocity = -12
air.velocity = -3,-6
airguard.velocity = -2.5,-2
ground.cornerpush.veloff = -10
guard.cornerpush.veloff = -10
air.cornerpush.veloff = -10
airguard.cornerpush.veloff = -10
getpower = 25,25
givepower = 10,10
persistent = 0
fall = 1
air.fall = 1
fall.recover = 0
air.recover = 0
yaccel = .5
forcestand = 1

[State 241, HitDef]
type = HitDef
trigger1 = AnimElem = 9
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Heavy
air.animtype = up
fall.animtype = up
priority = 3,Hit
pausetime = 9, 9
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
guard.pausetime = 12, 8
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 85), var(36) := -80
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
air.type = High
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.hittime  = 15
ground.velocity = -4.8,7
guard.velocity = -4.8
air.velocity = -6.8,7
airguard.velocity = -2.5,-2
ground.cornerpush.veloff = -10
guard.cornerpush.veloff = -10
air.cornerpush.veloff = -10
airguard.cornerpush.veloff = -10
air.juggle = 0
getpower = 25,25
givepower = 10,10
persistent = 0
fall = 1
air.fall = 1
fall.recover = 0
air.recover = 0
yaccel = .5

[State 200, ice]
type = Explod
trigger1 = animelem = 4
anim = 1004
ID = 1004
pos = 8,-80
postype = p1
bindtime = 1
removetime = -2
scale = .5,.55
sprpriority = 3
accel = 0.03,0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1000, StateType]
type = StateTypeSet
trigger1 = AnimElem = 11
Movetype = I

[State 1001, 21]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1040

;----------------------------------------------
;EX Grosse Kicken
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
trigger1 = animelem = 2
value = 1000,0
channel = 0

[State 1030, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,1

[State 1030, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1004
ID = 1004
pos = 8,-80
postype = p1
bindtime = 1
removetime = -2
scale = .5,.55
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1030, Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1035
ID = 1005
name = "EX Reppuken Projectile"
posType = P1
pos = ceil(20 * const(size.xScale)), ceil(0 * const(size.yScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, Width]
type = Width
trigger1 = time = 0
edge = 0,0
player = 10,0

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;----------------------------------------------
; Rising Kicken Land
[Statedef 1040]
type = S
movetype = I
physics = S
velset = 0,0

[State 895,ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse(!var(10), 1040, ifelse(var(10) = 1, 1042, 1044))

[State 1002, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1000, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1305, 1]
type = VarSet
trigger1 = Time = 0
var(14) = 0
ignorehitpause = 1

[State 1002, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------
;EX Rising Kicken
[Statedef 1050]
type = S
movetype = A
physics = S
anim = 1050
poweradd = -500
ctrl = 0
velset = 0
facep2 = 1

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1050, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1050, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 124

[State 1050, EX FX]
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

[State 1050, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1050, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1050, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,0
channel = 0
volume = 0

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,1

[State 1050, StateType]
type = StateTypeSet
trigger1 = AnimElem = 5
StateType = A
physics = N

[State 1050, Velocity]
type = VelSet
trigger1 = AnimElem = 5,= 0
x = 4
y = -6

[State 1050, 4]
type = VelAdd
trigger1 = AnimElem = 5 >= 0
trigger1 = AnimElem = 11 <= 0
y = .42

[State 1050, 4]
type = VelAdd
trigger1 = AnimElem = 11 >= 0
y = .3

[State 1050, Projectile]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1045
ID = 1005
name = "EX Reppuken Projectile"
posType = P1
pos = ceil(40 * const(size.xScale)), ceil(-3 * const(size.yScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1050, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 4
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = back
fall.animtype = back
priority = 3,Hit
pausetime = 6, 6
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
guard.pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 70), var(36) := -60
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
air.type = High
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.hittime  = 18
ground.velocity = -3,-6
guard.velocity = -12
air.velocity = -3,-6
airguard.velocity = -2.5,-2
ground.cornerpush.veloff = -10
guard.cornerpush.veloff = -10
air.cornerpush.veloff = -10
airguard.cornerpush.veloff = -10
getpower = 25,25
givepower = 10,10
persistent = 0
fall = 1
air.fall = 1
fall.recover = 0
air.recover = 0
yaccel = .5
forcestand = 1

[State 1050, HitDef]
type = HitDef
trigger1 = AnimElem = 9
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Heavy
air.animtype = up
fall.animtype = up
priority = 3,Hit
pausetime = 10, 10
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
guard.pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 85), var(36) := -80
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = Low
air.type = High
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.hittime  = 15
ground.velocity = -4.8,7
guard.velocity = -4.8
air.velocity = -6.8,7
airguard.velocity = -2.5,-2
ground.cornerpush.veloff = -10
guard.cornerpush.veloff = -10
air.cornerpush.veloff = -10
airguard.cornerpush.veloff = -10
air.juggle = 0
getpower = 25,25
givepower = 10,10
persistent = 0
fall = 1
air.fall = 1
fall.recover = 0
air.recover = 0
yaccel = .5

[State 1050, ice]
type = Explod
trigger1 = animelem = 4
anim = 1004
ID = 1004
pos = 8,-80
postype = p1
bindtime = 1
removetime = -2
scale = .5,.55
sprpriority = 3
accel = 0.03,0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1050, StateType]
type = StateTypeSet
trigger1 = AnimElem = 11
Movetype = I

[State 1050, 21]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1040

;-------------------------------------------------------------
; Kreis
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
trigger1 = PrevStateNo != 751
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1100))

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 1
time = 6
value = ,AA,AP,NT,ST

[State 1100, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1100, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100,0
channel = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100,1
channel = 1

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,4

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41,0
channel = 2

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElem = 4
StateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = time = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Genocide Cutter Dust"
posType = P1
ownPal = 1

[State 1100, Position]
type = PosAdd
trigger1 = animelem = 3
x = ifelse(var(10)=2, 6, ifelse(var(10)=1, 3, 0))

[State 1100, Velocity]
type = VelSet
trigger1 = var(10) = 0
trigger1 = time = 6
x = 1.75
y = -5.5

[State 1100, Velocity]
type = VelSet
trigger1 = var(10) = 1
trigger1 = time = 6
x = 2.25
y = -7.0

[State 1100, Velocity]
type = VelSet
trigger1 = var(10) = 2
trigger1 = time = 6
x = 2.75
y = -8.5

[State 1100, Forward Momentum]
type = Veladd
trigger1 = time = 6
x = -1

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemtime(4) >= 0
y = ifelse(var(10)=2, .53, ifelse(var(10)=1, .48, .43))

; KREIS CODES PRIOR TO THE AUGUST UPDATE ==
;[State 1100, Velocity]
;type = VelSet
;trigger1 = var(10) = 0
;trigger1 = time = 5
;x = 1.75
;y = -6

;[State 1100, Velocity]
;type = VelSet
;trigger1 = var(10) = 1
;trigger1 = time = 5
;x = 2.25
;y = -7.5

;[State 1100, Velocity]
;type = VelSet
;trigger1 = var(10) = 2
;trigger1 = time = 5
;x = 2.75
;y = -9

;;[State 1100, Gravity]; AN EVEN OLDER EDIT
;;type = VelAdd
;;trigger1 = AnimElemTime(4)>=1
;;y = .65

;[State 1100, Gravity]
;type = VelAdd
;trigger1 = AnimElemTime(4)>=1
;trigger1 = AnimElemTime(9)<= 0
;y = .65

;[State 1100, Gravity]
;type = VelAdd
;trigger1 = AnimElemTime(9)>=1
;y = .57
; KREIS CODES PRIOR TO THE AUGUST UPDATE ==

[State 1100, Explod]
type = Explod
trigger1 = var(10) = 0
trigger1 = animelem = 4
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

[State 1100, Explod]
type = Explod
trigger1 = var(10) = 1
trigger1 = animelem = 4
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

[State 1100, Explod]
type = Explod
trigger1 = var(10) = 2
trigger1 = animelem = 4
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

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = animelem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
guard.pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(var(20), -4.36, ifelse(var(10)=2, -2.25, ifelse(var(10)=1, -1.75, -1.25))), ifelse(var(10)=2, -11, ifelse(var(10)=1, -10.25, -9.5))
ground.cornerPush.velOff = 0
guard.velocity = ifelse(var(20), -6.36, ifelse(var(10)=2, -7.02, ifelse(var(10)=1, -5.27, -3.52)))
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -2), -8
air.cornerPush.velOff = 0
yAccel = ifelse(var(20),.5,.63)
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -33
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = animelem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 67, ifElse(var(10), 60, 53)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 67, ifElse(var(10), 60, 53)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
guard.pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(var(20), -4.36, ifelse(var(10)=2, -2.25, ifelse(var(10)=1, -1.75, -1.25))), ifelse(var(10)=2, -11, ifelse(var(10)=1, -10.25, -9.5))
ground.cornerPush.velOff = 0
guard.velocity = ifelse(var(20), -6.36, ifelse(var(10)=2, -7.02, ifelse(var(10)=1, -5.27, -3.52)))
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -2), -8
air.cornerPush.velOff = 0
yAccel = ifelse(var(20),.5,.63)
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 7
movetype = I

[State 1100, ChangeState]
type = ChangeState
triggerall = command = "Slash"
trigger1 = (AnimElemtime(6) >= 0 && AnimElemtime(8) <= 3) && MoveHit
value = 1140

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(3) >= 2
value = 1105

;Landing
[StateDef 1105]
type = S
anim = 1105
physics = N
moveType = I
velSet = 0,0

[State 1105, Anim]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse(!var(10), 1105, ifelse(var(10) = 1, 1115, 1125))

[State 1105, PosSet]
type = PosSet
trigger1 = 1
y = 0

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

[State 1105, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1105, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; EX Kreis
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

[State 1130, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1130, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 1
time = 10
value = ,AA,AP,NT,ST

[State 1130, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1130, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100,0
channel = 0

[State 1130, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
value = 1100,1
channel = 2

[State 1130, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
value = 1,4

[State 1130, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
value = 41,0

[State 1130, StateType]
type = StateTypeSet
trigger1 = AnimElem = 3
StateType = A
physics = N

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Genocide Cutter Dust"
posType = P1
ownPal = 1

[State 1100, Velocity]
type = VelSet
trigger1 = time = 5
x = 2.75
y = -9

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 11
x = 2
y = -6

[State 1100, Gravity]
type = VelAdd
trigger1 = AnimElemTime(4)>=1
trigger1 = AnimElemTime(12)<= 0
y = .65

[State 1130, Gravity]
type = VelAdd
trigger1 = AnimElemTime(12)>=1
y = .45

[State 1130, Explod]
type = Explod
trigger1 = animelem = 4
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
trigger1 = animelem = 11
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

[State 1130, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 37)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2,-8
ground.cornerPush.velOff = 0
guard.velocity = -6.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 37)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 10)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.5, -11
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -1.5, -9
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 4 || var(20))
trigger1 = AnimElem = 11
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 37)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 12, 14), ifElse(var(20), 12, 14)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 10)
animType = Diagup
air.animType = Diagup
fall.animType = Diagup
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -3, -9
air.cornerPush.velOff = 0
yAccel = 0.61
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 13
movetype = I

[State 1130, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(3) >= 2
value = 1135

;EX Landing
[StateDef 1135]
type = S
anim = 1105
physics = N
moveType = I
velSet = 0,0

[State 1135, Anim]
type = ChangeAnim
trigger1 = Time = 0
value = 1135

[State 1135, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1135, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1135, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1135, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Kreis Slash
[Statedef 1140]
type     = A
movetype = A
physics  = N
anim = 1140
ctrl = 0
velSet = 0,0
sprPriority = 2
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1140, Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1100,1
channel = 1

[State 1140, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1300,2

[State 1140, PosAdd]
type = Posadd
trigger1 = time = 0
y = -10

[State 1140, PosAdd]
type = Posadd
trigger1 = AnimElem = 3
x = -15

[State 1140, Velocity]
type = Veladd
trigger1 = AnimElemTime(1)>=1
trigger1 = AnimElemTime(5)<= 0
x = 0.27

[State 1140, Velocity]
type = Veladd
trigger1 = AnimElemTime(5)>=1
x = -0.05

[State 1130, Gravity]
type = VelAdd
trigger1 = AnimElemTime(1)>=1
trigger1 = AnimElemTime(6)<= 0
y = .05

[State 1130, Gravity]
type = VelAdd
trigger1 = AnimElemTime(6)>=1
y = .35

[State 1140, Kick Slash]
type = Explod
trigger1 = time = 11
anim = 3190
ID = 3190
pos = 50,-60
postype = p1
bindtime = -1
vfacing = 1
facing = 1
removetime = -2
scale = .3,.45
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 1140, HitDef]
type = HitDef
trigger1 = time = 0
attr = A, SA
damage = ceil(ifElse(fvar(11) * 15 < 7, 7, fvar(11) * 15)), 7
animtype = up
guardflag = H
hitflag = MAF
priority = 3, Hit
pausetime = 11, 12
guard.pauseTime = 10,4
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -65
ground.type = High
ground.slidetime = 20
ground.hittime  = 21
ground.velocity = -3,20
air.type = High
air.velocity = -3,20
air.hittime = 12
fall = 1
fall.recover = 0
envshake.time = 10
envshake.ampl = 2
envshake.freq = 85
fall.envshake.ampl = 5
fall.envshake.freq = 85
fall.envshake.time = 10
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 1140, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemtime(9) >= 0
value = 1105

;---------------------------------------------------------
;Grossen Drucken
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

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1220, ifElse(var(10) = 1, 1210, 1200))

[State 1200, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1200, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 1200, Corner Push]
type = VarSet
trigger1 = Time = 6
fvar(5) = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,10
channel = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = anim = 1200
trigger1 = animelem = 7
trigger2 = anim = 1210
trigger2 = animelem = 10
trigger3 = anim = 1220
trigger3 = animelem = 13
value = 1000,2
channel = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1000,3
channel = 0

[State 1200, 2]
type = Explod
trigger1 = animelem = 4
anim = 6100
ID = 6100
pos = 14,0
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 2
ownpal = 1
removeongethit = 1

[State 1200, RemoveExplod]
type = RemoveExplod
trigger1 = anim = 1200
trigger1 = time = 26
trigger2 = anim = 1210
trigger2 = time = 36
trigger3 = anim = 1220
trigger3 = time = 46
id = 6100

[State 1200, Velocity]
type = VelSet
trigger1 = var(10) = 0
trigger1 = AnimElem = 4
x = 5.5

[State 1200, Velocity]
type = VelSet
trigger1 = var(10) = 1
trigger1 = AnimElem = 4
x = 6

[State 1200, Velocity]
type = VelSet
trigger1 = var(10) = 2
trigger1 = AnimElem = 4
x = 6.5

[State 1200, HitDef 1]
type = HitDef
triggerall = P2StateNo != [40,50]
triggerall = P2StateNo != [150,155]
trigger1 = !var(16) && (var(15) < 7 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 37)), 0
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 0, 1
guard.pauseTime = 4,0
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
guard.velocity = -1.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -66
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
ID = 1200
Kill = 0

[State 1200,1]
type = TargetBind
trigger1 = time > 1 && numtarget && movehit
pos = 40, 0
postype = P1
time = -1

[State 1200, 2]
type = ChangeState
trigger1 = time > 1 && numtarget && movehit
value = 1204
persistent = 0

[State 1200, 2]
type = ChangeState
triggerall = AnimElemTime(4) > 0
trigger1 = AnimTime = 0
trigger2 = Frontedgebodydist <= 0
trigger3 = P2statetype = L
trigger3 = P2BodyDist X <= 10
trigger4 = P2StateNo != [150,155]
trigger4 = P2BodyDist X <= 10
trigger5 = P2StateType = A
trigger5 = P2BodyDist X <= 10
value = 1215
ctrl = 1

;---------------------------------------------------------
; Alpha Counter Drucken
[StateDef 1201]
type = S
physics = N
moveType = A
anim = 1205
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1201, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1201, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 1201, Corner Push]
type = VarSet
trigger1 = Time = 6
fvar(5) = 0

[State 1201, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,10
channel = 0

[State 1201, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 1000,2
channel = 1

[State 1201, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1000,3
channel = 0

[State 1201, 2]
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

[State 1201, RemoveExplod]
type = RemoveExplod
trigger1 = time = 23
id = 6100

[State 1201, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 6

[State 1201, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 7 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 37)), 0
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = 0, 1
guard.pauseTime = 4,0
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
guard.velocity = -1.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -66
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
ID = 1200
Kill = 0

[State 1201,1]
type = TargetBind
trigger1 = time > 1 && numtarget && movehit
pos = 40, 0
postype = P1
time = -1

[State 1201, 2]
type = ChangeState
trigger1 = time > 1 && numtarget && movehit
value = 1204
persistent = 0

[State 1201, 2]
type = ChangeState
triggerall = AnimElemTime(4) > 0
trigger1 = AnimTime = 0
trigger2 = Frontedgebodydist <= 0
trigger3 = P2statetype = L
trigger3 = P2BodyDist X <= 10
value = 1215
ctrl = 1

;---------------------------------------------------------
; failed attempt
[Statedef 1215]
type = S
movetype = I
physics = S
anim = 1215
poweradd = 0
ctrl = 0
facep2 = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id =  6100

[State 1215, Dust Helper]
type = Helper
trigger1 = time = 0
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
pos = 15,-5
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1215, Velocity]
type = VelSet
trigger1 = AnimElemTime(1)>=1
trigger1 = AnimElemTime(3)<= 0
x = ifelse(var(10)=2, 2.75, ifelse(var(10)=1, 2.25, 1.75))

[State 1215, Velocity]
type = VelSet
trigger1 = AnimElemTime(3)>=1
trigger1 = AnimElemTime(4)<= 3
x = ifelse(var(10)=2, 1.75, ifelse(var(10)=1, 1.25, 0.75))

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------
;crash wall
[Statedef 1204]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1202

[State 1204, 0]
type = TargetFacing
trigger1 = time = 0
value = -1

[State 1204, Throw]
type = TargetState
trigger1 = time = 0
value = 1207

[State 1204, Dust Helper]
type = Helper
trigger1 = animelem = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1204, Voice]
type = PlaySnd
trigger1 = time = 3
value = 730,1
channel = 0

[State 1204, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,0

[State 1204, 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -25, -63
postype = P1
time = -1

[State 1204, Velocity]
type = VelSet
trigger1 = Time = 0
x = 11
y = -.9

[State 1204, VelAdd]
type = veladd
trigger1 = 1
y = .09

[State 1204, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 10
value = 1206

[State 1204, 1]
type = ChangeState
trigger1 = Pos Y >= 0 && Time > 5
value = 1205

;---------------------------------------------------------
;dash
[Statedef 1205]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1203

[State 1205, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1200,1
channel = 4

[State 1205, Velocity]
type = VelSet
trigger1 = Time = 0
x = 13.5

[State 1205, Dust Helper]
type = Helper
trigger1 = time = 0
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
pos = -15,-5
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1205, 1]
type = TargetBind
trigger1 = time%10=0
pos = -25, -63
postype = P1
time = -1

[State 1205, 1]
type = TargetBind
trigger1 = time%10=5
pos = -22, -63
postype = P1
time = -1

[State 1205, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 10
trigger2 = Time = 150
value = 1206

;---------------------------------------------------------
;crash after dash
[Statedef 1206]
type = S
movetype = A
physics = S
juggle = ifelse(target,gethitvar(fall),0,0)
velset = 0,0
ctrl = 0
anim = 1204

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id =  6100

[State 1206, Position]
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

[State 1206, Explosion]
type = Explod
trigger1 = AnimElem = 1
Anim = 1290
pos = 90,-70
postype = p1
ownpal = 1
sprpriority = 5
supermovetime = -1
removeongethit = 1
scale = .65,.65

[State 1206, Wall Impact]
type = Explod
trigger1 = AnimElem = 1
Anim = 8111
id = 8111
pos = 52,-70
postype = p1
ownpal = 1
sprpriority = 0
supermovetime = -1
removeongethit = 1
removetime = 20
scale = .75,75

[State 1206, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8111
scale = .35,.15+((time-6)*.0575)
trans = addalpha
alpha = 350-((time-6)*18),256

[State 1206, 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 45, -65
Time = -1
postype = P1

[State 1206, 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 95, -65
Time = -1
postype = P1
ignorehitpause = 1

[State 1206, Throw]
type = TargetState
triggerall = numtarget
triggerall = target,stateno != 1208
trigger1 = animelem = 3
value = 1208

[State 1206, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2
time = 25

[State 1206, HitDef 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10), 56, 49)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10), 56, 49)))), 15
snap = 95,0
getPower = ifElse(!var(13), 122, 106) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
guard.pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6, -5
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -6, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.sparkNo = -1
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -72
palfx.color = 32
palfx.sinadd = 80,25,0,8
palfx.mul = 512,256,128
palfx.time = 60 * var(9)
chainID = 1200

[State 1206, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 1209
ctrl = 1

;---------------------------------------------------------
;p2grabbed, dashing
[Statedef 1207]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 1207, screenbound]
type = screenbound
trigger1 = 1
value = 1

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1207, 1]
type = changeanim2
trigger1 = time = 0
value = 1207

;---------------------------------------------------------
;p2grabbed, falling
[Statedef 1208]
type = A
movetype = H
physics = N
velset = -6,-7.5
ctrl = 0
sprpriority = -1

[State 1208, screenbound]
type = screenbound
trigger1 = 1
value = 1

[State 1208, 1]
type = changeanim2
trigger1 = time = 0
value = 1208

[State 1208, Vel]
type = veladd
trigger1 = 1
y = .6

[State 1208, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 20

[State 1208, ChangeState]
type = selfstate
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 5100

;---------------------------------------------------------
; crash back dash
[StateDef 1209]
type = A
physics = N
moveType = I
velSet = 0,0
anim = 1209
ctrl = 0
sprPriority = 1

[State 105, Back Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 105,0

[State 105, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
facing = -1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 105, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, VelMul]
type = VelMul
trigger1 = AnimElemTime(2) > 0
x = 1.08

[State 105, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 0.65

[State 105, End]
type = ChangeState
trigger1 = AnimElemTime(2) >= 0
trigger1 = pos y > -vel y
value = 106

;---------------------------------------------------------
;EX Grossen Drucken
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
var(25) = 171

[State 1230, EX FX]
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

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1230, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1230, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 1200, Corner Push]
type = VarSet
trigger1 = Time = 8
fvar(5) = 0

[State 1230, 2]
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

[State 1230, RemoveExplod]
type = RemoveExplod
trigger1 = 1220
trigger1 = time = 49
id = 6100

[State 1230, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 4,1
channel = 0

[State 1230, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1000,3
channel = 0

[State 1230, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 6.9

[State 1230, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 7 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 37)), 0
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 1
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 6)
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
guard.velocity = -1.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -66
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
ID = 1230
Kill = 0

[State 1230, 1]
type = TargetBind
trigger1 = time > 1 && numtarget && movehit
pos = 40, 0
postype = P1
time = -1

[State 1230, 2]
type = ChangeState
trigger1 = time > 1 && numtarget && movehit
value = 1234
persistent = 0

[State 1230, 3]
type = ChangeState
triggerall = AnimElemTime(4) > 0
trigger1 = AnimTime = 0
trigger2 = Frontedgebodydist <= 0
trigger3 = P2statetype = L
trigger3 = P2BodyDist X <= 0
trigger4 = moveguarded
value = 1215
ctrl = 0

;---------------------------------------------------------
;crash wall
[Statedef 1234]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1202

[State 1234, 0]
type = TargetFacing
trigger1 = time = 0
value = -1

[State 1234, Throw]
type = TargetState
trigger1 = time = 0
value = 1207

[State 1234, Dust Helper]
type = Helper
trigger1 = animelem = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1234, Voice]
type = PlaySnd
trigger1 = time = 3
value = 730,1
channel = 0

[State 1234, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,0

[State 1234, 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -25, -63
postype = P1
time = -1

[State 1234, Velocity]
type = VelSet
trigger1 = Time = 0
x = 11
y = -.9

[State 1234, VelAdd]
type = veladd
trigger1 = 1
y = .09

[State 1234, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 10
value = 1236

[State 1234, 1]
type = ChangeState
trigger1 = Pos Y >= 0 && Time > 5
value = 1235

;---------------------------------------------------------
;dash
[Statedef 1235]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1203

[State 1235, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1200,1
channel = 4

[State 1235, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 52,0
channel = 5

[State 1235, Velocity]
type = VelSet
trigger1 = Time = 0
x = 13.5

[State 1235, Dust Helper]
type = Helper
trigger1 = time = 0
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
pos = -15,-5
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1235, 1]
type = TargetBind
trigger1 = time%10=0
pos = -25, -63
postype = P1
time = -1

[State 1235, 1]
type = TargetBind
trigger1 = time%10=5
pos = -22, -63
postype = P1
time = -1

[State 1235, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 10
trigger2 = Time = 150
value = 1236

;---------------------------------------------------------
;crash after dash
[Statedef 1236]
type = S
movetype = A
physics = S
juggle = ifelse(target,gethitvar(fall),0,0)
velset = 0,0
ctrl = 0
anim = 1204

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id =  6100

[State 1236, Position]
type = PosSet
trigger1 = time = 0
y = 0

[State 1236, width]
type = width
trigger1 = animelem = 1
edge = 40,0

[State 1236, width]
type = width
trigger1 = animelem = 2
edge = 75,0

[State 1236, width]
type = width
trigger1 = animelem = 3
edge = 90,0

[State 1236, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200,2

[State 1236, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,2

[State 1236, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200,3

[State 1236, Fire1]
type = Explod
trigger1 = AnimElem = 2
Anim = 1290
pos = 90,-65
postype = p1
ownpal = 1
sprpriority = 5
supermovetime = -1
removeongethit = 1
scale = .65,.65

[State 1236, Fire1]
type = Explod
trigger1 = AnimElem = 2
Anim = 8111
id = 8111
pos = 85,-65
postype = p1
ownpal = 1
sprpriority = 0
supermovetime = -1
removeongethit = 1
removetime = 20
scale = .75,75

[State 1236, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8111
scale = .35,.15+((time-6)*.0575)
trans = addalpha
alpha = 350-((time-6)*18),256

[State 1236, 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 45, -65
Time = -1
postype = P1

[State 1236, 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 95, -65
Time = -1
postype = P1
ignorehitpause = 1

[State 1206, Throw]
type = TargetState
triggerall = numtarget
triggerall = target,stateno != 1208
trigger1 = animelem = 3
value = 1208

[State 1236, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2
time = 25

[State 1236, HitDef 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 73 < 7, 7, fvar(11) * 73)), 0
snap = 95,0
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
guard.pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
animType = Diagup
air.animType = Diagup
fall.animType = Diagup
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6, -8
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -6, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.sparkNo = -1
sparkXY = -10 + 0 * (var(35) := 167), var(36) := -72
palfx.color = 32
palfx.sinadd = 80,25,0,8
palfx.mul = 512,256,128
palfx.time = 60 * var(9)
chainID = 1230

[State 1236, p2fx]
type = helper
trigger1 = movehit && numtarget && numhelper(8180) < 1
trigger1 = !(target,time) && (target,movetype = H)
helpertype = normal
stateno = 8180
ID = 8180
name = "p2fx"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 1236, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 1209
ctrl = 1

;-------------------------------------------------------------
; Grosse Kronprinz L
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

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 1300
trigger1 = AnimElem = 1
value = 1300,0
channel = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 1300
trigger1 = animelem = 30
trigger2 = anim = 1304
trigger2 = animelem = 2
value = 1300,2
channel = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 1300
trigger1 = AnimElem = 6
value = 1300,3
channel = 1

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 1304
trigger1 = AnimElem = 3
value = 1300,4
channel = 1

[State 1300, Width]
type = Width
trigger1 = anim = 1300
trigger1 = animelem = 29
trigger2 = anim = 1304
trigger2 = animelem = 1
player = 15,0

[State 1300, VarSet]
type = VarSet
trigger1 = anim = 1300
trigger1 = time = 0
v = 10
value = 1

[State 1300, VarSet]
type = VarSet
trigger1 = anim = 1300
trigger1 = time >= 50
v = 10
value = 2

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = command != "holdp"
trigger1 = time = [13,84]
trigger1 = anim = 1300
trigger2 = (anim = 1300) && (animelemtime(28) = 3)
value = 1304

[State 1300, Helper]
type = Helper
trigger1 = anim = 1300
trigger1 = animelem = 45
trigger2 = anim = 1304
trigger2 = animelem = 3
helpertype = normal
name = "wave"
ID = 1308
stateno = 1308
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
trigger1 = anim = 1300
trigger1 = animelem = 4
helpertype = normal
name = "handfx"
ID = 1320
stateno = 1320
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 5
supermove
pausemove

[State 1300]
type = Explod
trigger1 = Anim = 1304
anim = 1310
ID = 1310
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

[State 1300]
type = removeExplod
triggerall = NumExplod(1310) > 0
trigger1 = AnimElem = 3
ID = 1310

[State 1300, end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;-------------------------------------------------------------
; Grosse Kronprinz M
[StateDef 1301]
type = S
physics = S
moveType = A
anim = 1301
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 1301
trigger1 = AnimElem = 1
value = 1300,0
channel = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 1301
trigger1 = animelem = 30
trigger2 = anim = 1304
trigger2 = animelem = 2
value = 1300,2
channel = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 1301
trigger1 = AnimElem = 6
value = 1300,3
channel = 1

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 1304
trigger1 = AnimElem = 3
value = 1300,4
channel = 1

[State 1300, Width]
type = Width
trigger1 = anim = 1301
trigger1 = animelem = 29
trigger2 = anim = 1304
trigger2 = animelem = 1
player = 15,0

[State 1300, VarSet]
type = VarSet
trigger1 = anim = 1301
trigger1 = time = 0
v = 10
value = 1

[State 1300, VarSet]
type = VarSet
trigger1 = anim = 1301
trigger1 = time >= 50
v = 10
value = 2

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = command != "holdp"
trigger1 = time = [13,84]
trigger1 = anim = 1301
trigger2 = (anim = 1301) && (animelemtime(28) = 3)
value = 1304

[State 1300, Helper]
type = Helper
trigger1 = anim = 1301
trigger1 = animelem = 45
trigger2 = anim = 1304
trigger2 = animelem = 3
helpertype = normal
name = "wave"
ID = 1308
stateno = 1309
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
trigger1 = anim = 1301
trigger1 = animelem = 4
helpertype = normal
name = "handfx"
ID = 1320
stateno = 1321
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 5
supermove
pausemove

[State 1300]
type = Explod
trigger1 = Anim = 1304
anim = 1310
ID = 1310
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

[State 1300]
type = removeExplod
triggerall = NumExplod(1310) > 0
trigger1 = AnimElem = 3
ID = 1310

[State 1300, end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;-------------------------------------------------------------
; Grosse Kronprinz H
[StateDef 1302]
type = S
physics = S
moveType = A
anim = 1302
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 1302
trigger1 = AnimElem = 1
value = 1300,0
channel = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 1302
trigger1 = animelem = 30
trigger2 = anim = 1304
trigger2 = animelem = 2
value = 1300,2
channel = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 1302
trigger1 = AnimElem = 6
value = 1300,3
channel = 1

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 1304
trigger1 = AnimElem = 3
value = 1300,4
channel = 1

[State 1300, Width]
type = Width
trigger1 = anim = 1302
trigger1 = animelem = 29
trigger2 = anim = 1304
trigger2 = animelem = 1
player = 15,0

[State 1300, VarSet]
type = VarSet
trigger1 = anim = 1302
trigger1 = time = 0
v = 10
value = 1

[State 1300, VarSet]
type = VarSet
trigger1 = anim = 1302
trigger1 = time >= 50
v = 10
value = 2

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = command != "holdp"
trigger1 = time = [13,84]
trigger1 = anim = 1302
trigger2 = (anim = 1302) && (animelemtime(28) = 3)
value = 1304

[State 1300, Helper]
type = Helper
trigger1 = anim = 1302
trigger1 = animelem = 45
trigger2 = anim = 1304
trigger2 = animelem = 3
helpertype = normal
name = "wave"
ID = 1308
stateno = 1310
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
trigger1 = anim = 1302
trigger1 = animelem = 4
helpertype = normal
name = "handfx"
ID = 1320
stateno = 1322
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 5
supermove
pausemove

[State 1300]
type = Explod
trigger1 = Anim = 1304
anim = 1310
ID = 1310
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

[State 1300]
type = removeExplod
triggerall = NumExplod(1310) > 0
trigger1 = AnimElem = 3
ID = 1310

[State 1300, end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

; EX Grosse Kronprinz
[StateDef 1330]
type = S
physics = S
moveType = A
anim = 1303
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1330, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 4

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
var(25) = 124

[State 1330, EX FX]
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

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1330, Voice]
type = PlaySnd
trigger1 = anim = 1303
trigger1 = AnimElem = 1
value = 1300,0
channel = 0

[State 1330, Voice]
type = PlaySnd
trigger1 = anim = 1303
trigger1 = animelem = 30
trigger2 = anim = 1304
trigger2 = animelem = 2
value = 1300,2
channel = 0

[State 1330, Voice]
type = PlaySnd
trigger1 = anim = 1303
trigger1 = AnimElem = 6
value = 1300,3
channel = 1

[State 1300, Voice]
type = PlaySnd
trigger1 = anim = 1304
trigger1 = AnimElem = 3
value = 1300,4
channel = 1

[State 1330, Width]
type = Width
trigger1 = anim = 1303
trigger1 = animelem = 29
trigger2 = anim = 1304
trigger2 = animelem = 1
player = 15,0

[State 1330, VarSet]
type = VarSet
trigger1 = anim = 1303
trigger1 = time = 0
v = 10
value = 1

[State 1330, VarSet]
type = VarSet
trigger1 = anim = 1303
trigger1 = time >= 60
v = 10
value = 2

[State 1330, ChangeAnim]
type = ChangeAnim
trigger1 = command != "holdp"
trigger1 = time = [9,84]
trigger1 = anim = 1303
trigger2 = (anim = 1303) && (animelemtime(30) = 2)
value = 1304

[State 1330, Helper]
type = Helper
trigger1 = anim = 1303
trigger1 = animelem = 45
trigger2 = anim = 1304
trigger2 = animelem = 3
helpertype = normal
name = "wave"
ID = 1305
stateno = 1335
pos = 60,-75
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 5
supermove
pausemove
size.xscale =.5
size.yscale =.5

[State 1330, Helper]
type = Helper
trigger1 = anim = 1303
trigger1 = animelem = 4
helpertype = normal
name = "handfx"
ID = 1320
stateno = 1324
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 5
supermove
pausemove

[State 1330]
type = Explod
trigger1 = Anim = 1304
anim = 1310
ID = 1310
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

[State 1330]
type = removeExplod
triggerall = NumExplod(1310) > 0
trigger1 = AnimElem = 3
ID = 1310

[State 1330, end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------
;Grosse Zerstorung
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

[State 1400, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1400, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1400, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1420, ifElse(var(10) = 1, 1410, 1400))

[State 1400, Width]
type = Width
trigger1 = 1
edge = 10,0
player = 10,0

[State 1400, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 1400, VelSet]
type = VelSet
trigger1 = animelem = 6
x = ifElse(var(10) = 2, 15, ifElse(var(10) = 1, 10, 5))

[State 1400, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 0

[State 1400, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 8
statetype = S
movetype = A
physics = S

[State 1400, Dust Helper]
type = Helper
trigger1 = time = 0
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
pos = -15,-5
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1400, Voice]
type = PlaySnd
trigger1 = animelem = 5
value = 4,2
channel = 0

[State 1400, Voice]
type = PlaySnd
trigger1 = animelem = 13
value = 4,1
channel = 0

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = time = 7
trigger2 = time = 24
value = 1100,1
channel = 1

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = time = 7
trigger2 = time = 24
value = 1,4

[State 1400, Explod]
type = Explod
trigger1 = animelem = 6
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

[State 1400, Explod]
type = Explod
trigger1 = animelem = 13
anim = 1490
ID = 1490
pos = 6,-70
postype = p1
bindtime = 1
vfacing = -1
facing = -1
removetime = -2
supermove
pausemove
vel = .06,1
scale = .26,.3
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1400, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 36, ifElse(var(10), 33, 30)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 36, ifElse(var(10), 33, 30)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -0.36, -1.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -1.36, -2.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -3), -7
air.cornerPush.velOff = 0
yaccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -83
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 13
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 6, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 38, ifElse(var(10), 34, 30)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 38, ifElse(var(10), 34, 30)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 6)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 6)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -0.36, -0.52), ifelse(var(10)=2, -11.75, ifelse(var(10)=1, -11, -10.25))
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.36, -4.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -0.36, -0.52), ifelse(var(10)=2, -11.0, ifelse(var(10)=1, -10.25, -9.5))
air.cornerPush.velOff = 0
yaccel = ifElse(var(20),.5,.5)
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, PosAdd]
type = PosAdd
trigger1 = Animelem = 5
x = 19

[State 1400, PosAdd]
type = PosAdd
trigger1 = Animelem = 6
x = -17

[State 1400, PosAdd]
type = PosAdd
trigger1 = Animelem = 12
x = 23

[State 1400, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 15
movetype = I

[State 1400, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------
;EX Grosse Zerstorung
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
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1430, Width]
type = Width
trigger1 = 1
edge = 10,0
player = 10,0

[State 1430, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 1400, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 15

[State 1400, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 0

[State 1430, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 8
statetype = S
movetype = A
physics = S

[State 1430, Dust Helper]
type = Helper
trigger1 = time = 0
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
pos = -15,-5
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1400, Voice]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 10
value = 4,2
channel = 0

[State 1400, Voice]
type = PlaySnd
trigger1 = animelem = 13
value = 4,1
channel = 0

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 11
trigger3 = animelem = 15
value = 1100,1
channel = 1

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 11
trigger3 = animelem = 15
value = 1,4

[State 1400, Explod]
type = Explod
trigger1 = animelem = 6
anim = 1491
ID = 1491
pos = 80, -90
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

[State 1400, Explod]
type = Explod
trigger1 = animelem = 11
anim = 1491
ID = 1491
pos = 80,-83
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

[State 1400, Explod]
type = Explod
trigger1 = animelem = 15
anim = 1490
ID = 1490
pos = 6,-70
postype = p1
bindtime = 1
vfacing = -1
facing = -1
removetime = -2
supermove
pausemove
vel = .06,1
scale = .26,.3
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1400, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 27 < 7, 7, fvar(11) * 27)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 4), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 4), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), 0, -1.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -1.36, -2.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), 0, -2), -3
air.cornerPush.velOff = 0
yaccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -88
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 11
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 27 < 7, 7, fvar(11) * 27)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 4), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 6)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), 0, -1.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -1.36, -2.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), 0, -2), -8
air.cornerPush.velOff = 0
yaccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 83), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 15
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 6, Hit
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 37)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 6)
guard.pauseTime = ifElse(var(20), 6, 10), ifElse(var(20), 6, 4)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -0.36, -0.52), -13.5
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.36, -4.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -0.36, -0.52), -13.5
air.cornerPush.velOff = 0
yaccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35),var(36) := -120
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, PosAdd]
type = PosAdd
trigger1 = Animelem = 12
x = 18

[State 1400, PosAdd]
type = PosAdd
trigger1 = Animelem = 14
x = 24

[State 1430, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 16
movetype = I

[State 1430, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------
;Grosse Wand
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

[State 1500, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1500, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1100,2
channel = 0

[State 1500, Effect]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1500,0

[State 1500, Helper]
type = Helper
trigger1 = time = 5
helpertype = normal
name = "fx"
ID = 1505
stateno = 1505
pos = 34,-52
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 4

[State 1500, End]
type = Changestate
trigger1 = Time >= 15 && !numhelper(1505)
trigger2 = !var(10) && time = 20
trigger3 = var(10) = 1 && time = 35
trigger4 = var(10) = 2 && time = 50
value = 1501

;---------------------------------------------------------
;Grosse Wand End
[Statedef 1501]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1501
velset = 0,0

[State 1501, End]
type = Changestate
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------
;EX Grosse Wand
[StateDef 1530]
type = S
physics = S
moveType = A
anim = 1530
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
trigger1 = Time = 0
y = 0

[State 1530, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1100,2
channel = 0

[State 1530, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1500,0

[State 1530, Hit Pushback]
type = HitDef
trigger1 = time = 9
attr = S, SA
hitflag = MAF
guardflag = M
damage = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
priority = 3, Hit
pausetime = 1, 12
guard.pausetime = 1, 6
sparkNo = -1 + 0 * (var(33) := 8013)
sparkxy = -10 + 0 * (var(35) := 47), var(36) := -53
hitsound = -1
ground.hitTime = 20
ground.slideTime = 17
ground.velocity = -5
guard.hitTime = 18
air.velocity = -5,-5
air.hittime = 60
fall = 0
fall.recover = 0
p2facing = 1

[State 1530, Helper]
type = Helper
trigger1 = time = 3
helpertype = normal
name = "fx"
ID = 1535
stateno = 1535
pos = 34,-52
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 4

[State 1530, End]
type = Changestate
trigger1 = Time >= 15 && !numhelper(1535)
trigger2 = time = 50
value = 1531

;---------------------------------------------------------
;EX Grosse Wand End
[Statedef 1531]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1531
velset = 0,0

[State 1501, End]
type = Changestate
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Grosse Prinzessin
[Statedef 1600]
type = S
movetype = I
physics = S
ctrl = 0
facep2 = 0

[State 1600, Custom Combo Reset]
type = PalFX
trigger1 = prevstateno = 220 && (animelem=1,>0 && animelem=8,<0)
trigger2 = prevstateno = 225 && (animelem=1,>0 && animelem=8,<0)
trigger3 = prevstateno = 250 && (animelem=1,>0 && animelem=14,<0)
trigger4 = prevstateno = 280 && (animelem=1,>0 && animelem=17,<0)
trigger5 = var(20) := -1
time = 1

[State 1600, EX Flash]
type = VarSet
trigger1 = prevstateno = 220 && (animelem=1,>0 && animelem=8,<0)
trigger2 = prevstateno = 225 && (animelem=1,>0 && animelem=8,<0)
trigger3 = prevstateno = 250 && (animelem=1,>0 && animelem=14,<0)
trigger4 = prevstateno = 280 && (animelem=1,>0 && animelem=17,<0)
var(25) = 131

[State 1600, EX FX]
type = Explod
trigger1 = prevstateno = 220 && (animelem=1,>0 && animelem=8,<0)
trigger2 = prevstateno = 225 && (animelem=1,>0 && animelem=8,<0)
trigger3 = prevstateno = 250 && (animelem=1,>0 && animelem=14,<0)
trigger4 = prevstateno = 280 && (animelem=1,>0 && animelem=17,<0)
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(0 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1600, EX Startup Sound]
type = PlaySnd
trigger1 = prevstateno = 220 && (animelem=1,>0 && animelem=8,<0)
trigger2 = prevstateno = 225 && (animelem=1,>0 && animelem=8,<0)
trigger3 = prevstateno = 250 && (animelem=1,>0 && animelem=14,<0)
trigger4 = prevstateno = 280 && (animelem=1,>0 && animelem=17,<0)
value = 0,1000
channel = 1

[State 1600, PowerAdd]
type = PowerAdd
trigger1 = prevstateno = 220 && (animelem=1,>0 && animelem=8,<0)
trigger2 = prevstateno = 225 && (animelem=1,>0 && animelem=8,<0)
trigger3 = prevstateno = 250 && (animelem=1,>0 && animelem=14,<0)
trigger4 = prevstateno = 280 && (animelem=1,>0 && animelem=17,<0)
value = -500

[State 1600, ChangeAnim]
type = ChangeAnim
triggerall = Time = 0
trigger1 = Prevstateno != 0
value = 0

[State 1600, Rose]
type = helper
trigger1 = time = 0
stateno = 1610
id = 1610
name = "Rose"
pos = -360,0
postype = p1
facing = 1
helpertype = normal
keyctrl = 0
ownpal = 1

[State 1600, Gwan]
type = helper
trigger1 = time = 0
stateno = 1650
id = 1650
name = "Gwan"
pos = -370,0
postype = p1
facing = 1
helpertype = normal
keyctrl = 0
ownpal = 1

[State 1600, end]
type = ChangeState
trigger1 = time >= 1
value = 0
ctrl = 1

;---------------------------------------------------------
;Counter P
[StateDef 2900]
type = S
physics = N
moveType = A
anim = 2900
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,2
channel = 0

[State 2900, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
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
pauseTime = 6, 6
guard.pauseTime = 10, 10
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
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 169), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 2900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------
;Counter K
[StateDef 2910]
type = S
physics = N
moveType = A
anim = 2910
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,2
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = Time = 0
attr = C, SA
hitFlag = MA
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
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
ground.slideTime = 17
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
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 196), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(7) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
