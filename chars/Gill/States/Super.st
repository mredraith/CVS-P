;METEOR STRIKE=
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
trigger1 = AnimElemTime(11) < 0
time = 1
value = SCA

[State 3000, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(88 * const(size.xScale)), ceil(-130 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3000, Super Pause]
type = SuperPause
trigger1 = !Time
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Attack Distance]
type = AttackDist
trigger1 = 1
value = Const(Size.Proj.Attack.Dist)

[State 3000, Holy Echo]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = 3000, 1

[State 3000, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 190, 1
channel = 0

[State 3000, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(1) = 0 || AnimElemTime(2) = 0 || AnimElemTime(3) = 0
x = 20 * Const(Size.XScale)

[State 3000, Helper]
type = Helper
trigger1 = !NumHelper(3310)
trigger1 = !Time
helpertype = Normal
stateno = 3310
ID = 3310
name = "Transparency"
postype = P1
pos = -BackEdgeDist, 0
facing = 1
keyctrl = 0
ownpal = 1

[State 3000, Helper]
type = Helper
trigger1 = !NumHelper(3311)
trigger1 = !Time
helpertype = Normal
stateno = 3310
ID = 3311
name = "Transparency"
postype = P1
pos = FrontEdgeDist, 0
facing = 1
keyctrl = 0
ownpal = 1

[State 3000, Hair]
type = Helper
trigger1 = AnimElem = 10
helpertype = Normal
stateno = 3001
name = "Hair"
postype = P1
pos = 0,0
facing = -1
keyctrl = 0
ownpal = 0
supermovetime = 99999999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 3000, PyroMeteor : Far Range]
type = Helper
trigger1 = AnimElem = 23
trigger2 = AnimElem = 31
trigger3 = AnimElem = 39
trigger4 = AnimElem = 47
helperType = Normal
stateNo = 3005
ID = 3005
name = "Meteor"
posType = P1
pos = 60 + Random % 180, Ceil(EnemyNear, Pos Y - 240)
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3000, CryoMeteor : Far Range]
type = Helper
trigger1 = AnimElem = 25
trigger2 = AnimElem = 33
trigger3 = AnimElem = 41
trigger4 = AnimElem = 49
helperType = Normal
stateNo = 3015
ID = 3015
name = "Hail"
posType = P1
pos = 60 + Random % 180, Ceil(EnemyNear, Pos Y - 240)
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3000, PyroMeteor : Close Range]
type = Helper
trigger1 = AnimElem = 27
trigger2 = AnimElem = 35
trigger3 = AnimElem = 43
trigger4 = AnimElem = 51
helperType = Normal
stateNo = 3005
ID = 3005
name = "Meteor"
posType = P1
pos = 0 + Random % 120, Ceil(EnemyNear, Pos Y - 240)
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3000, CryoMeteor : Close Range]
type = Helper
trigger1 = AnimElem = 29
trigger2 = AnimElem = 37
trigger3 = AnimElem = 45
trigger4 = AnimElem = 53
helperType = Normal
stateNo = 3015
ID = 3015
name = "Hail"
posType = P1
pos = 0 + Random % 120, Ceil(EnemyNear, Pos Y - 240)
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3000, Ctrlset]
type = CtrlSet
trigger1 = AnimElemTime(63) >= 0
value = 1

[State 3000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;(MAX) METEOR STRIKE=
[StateDef 3050]
type = S
physics = S
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
trigger1 = 1
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
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3050, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(88 * const(size.xScale)), ceil(-130 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = !Time
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, Attack Distance]
type = AttackDist
trigger1 = 1
value = Const(Size.Proj.Attack.Dist)

[State 3050, Holy Echo]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = 3000, 1

[State 3050, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 190, 1
channel = 0

[State 3050, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(1) = 0 || AnimElemTime(2) = 0 || AnimElemTime(3) = 0
x = 20 * Const(Size.XScale)

[State 3050, Helper]
type = Helper
trigger1 = !NumHelper(3310)
trigger1 = !Time
helpertype = Normal
stateno = 3310
ID = 3310
name = "Transparency"
postype = P1
pos = -BackEdgeDist, 0
facing = 1
keyctrl = 0
ownpal = 1

[State 3050, Helper]
type = Helper
trigger1 = !NumHelper(3311)
trigger1 = !Time
helpertype = Normal
stateno = 3310
ID = 3311
name = "Transparency"
postype = P1
pos = FrontEdgeDist, 0
facing = 1
keyctrl = 0
ownpal = 1

[State 3050, Hair]
type = Helper
trigger1 = AnimElem = 10
helpertype = Normal
stateno = 3001
name = "Hair"
postype = P1
pos = 0,0
facing = -1
keyctrl = 0
ownpal = 0
supermovetime = 99999999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 3050, PyroMeteor : Far Range]
type = Helper
trigger1 = AnimElem = 21
trigger2 = AnimElem = 27
trigger3 = AnimElem = 33
trigger4 = AnimElem = 39
trigger5 = AnimElem = 45
;trigger1 = AnimElem = 21
;trigger2 = AnimElem = 25
;trigger3 = AnimElem = 29
;trigger4 = AnimElem = 33
;trigger5 = AnimElem = 37
;trigger6 = AnimElem = 41
;trigger7 = AnimElem = 45
;trigger8 = AnimElem = 49
;trigger9 = AnimElem = 53
;trigger10 = AnimElem = 57
helperType = Normal
stateNo = 3005
ID = 3005
name = "Meteor"
posType = P1
pos = 60 + Random % 180, Ceil(EnemyNear, Pos Y - 240)
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, CryoMeteor : Far Range]
type = Helper
trigger1 = AnimElem = 22
trigger2 = AnimElem = 28
trigger3 = AnimElem = 34
trigger4 = AnimElem = 40
trigger5 = AnimElem = 46
;trigger1 = AnimElem = 22
;trigger2 = AnimElem = 26
;trigger3 = AnimElem = 30
;trigger4 = AnimElem = 34
;trigger5 = AnimElem = 38
;trigger6 = AnimElem = 42
;trigger7 = AnimElem = 46
;trigger8 = AnimElem = 50
;trigger9 = AnimElem = 54
;trigger10 = AnimElem = 58
helperType = Normal
stateNo = 3015
ID = 3015
name = "Hail"
posType = P1
pos = 60 + Random % 180, Ceil(EnemyNear, Pos Y - 240)
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, PyroMeteor : Close Range]
type = Helper
trigger1 = AnimElem = 23
trigger2 = AnimElem = 29
trigger3 = AnimElem = 35
trigger4 = AnimElem = 41
trigger5 = AnimElem = 47
;trigger1 = AnimElem = 23
;trigger2 = AnimElem = 27
;trigger3 = AnimElem = 31
;trigger4 = AnimElem = 35
;trigger5 = AnimElem = 39
;trigger6 = AnimElem = 43
;trigger7 = AnimElem = 47
;trigger8 = AnimElem = 51
;trigger9 = AnimElem = 55
;trigger10 = AnimElem = 59
helperType = Normal
stateNo = 3005
ID = 3005
name = "Meteor"
posType = P1
pos = -60 + Random % 120, Ceil(EnemyNear, Pos Y - 240)
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, CryoMeteor : Close Range]
type = Helper
trigger1 = AnimElem = 24
trigger2 = AnimElem = 30
trigger3 = AnimElem = 36
trigger4 = AnimElem = 42
trigger5 = AnimElem = 48
;trigger1 = AnimElem = 24
;trigger2 = AnimElem = 28
;trigger3 = AnimElem = 32
;trigger4 = AnimElem = 36
;trigger5 = AnimElem = 40
;trigger6 = AnimElem = 44
;trigger7 = AnimElem = 48
;trigger8 = AnimElem = 52
;trigger9 = AnimElem = 56
;trigger10 = AnimElem = 60
helperType = Normal
stateNo = 3015
ID = 3015
name = "Hail"
posType = P1
pos = -60 + Random % 120, Ceil(EnemyNear, Pos Y - 240)
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3050, Ctrlset]
type = CtrlSet
trigger1 = AnimElemTime(63) >= 0
value = 1

[State 3050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;JUPITER'S DEAL=
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
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3100, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 17,-84
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 20

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = -10

[State 3100, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 3100, HitDef: Grapple]
type = HitDef
trigger1 = AnimElem = 2
trigger1 = !var(38)
ID = 3100
attr = S, NT
hitFlag = M-
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 3101

[State 3100, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800,0
channel = 0

[State 3100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,0
channel = 1

[State 3100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 3100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Transition
[StateDef 3101]
type = S
physics = N
moveType = A
anim = 3101
ctrl = 0
velSet = 0,0
sprPriority = -1

[State 3101, Helper]
type = Helper
trigger1 = PrevStateNo = 3100 && !Time
HelperType = Normal
Name = "Arm"
StateNo = 814
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause = 1
sprPriority = 5
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 3101, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3105

[State 3101, Throw]
type = TargetFacing
trigger1 = Time <= 1
value = 1

[State 3101, Width]
type = Width
trigger1 = 1
edge = ceil(94 * const(size.xScale)),0

[State 3101, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = ceil(90 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 3101, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(71 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 3101, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(40 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 3101, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(26 * const(size.xScale)), ceil(-64 * const(size.yScale))

[State 3101, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(39 * const(size.xScale)), ceil(-80 * const(size.yScale));20,-110

[State 3101, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0
pos = ceil(42 * const(size.xScale)), ceil(-108 * const(size.yScale));20,-150

[State 3101, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3102
ctrl = 0

;Damage
[StateDef 3102]
type = S
physics = N
moveType = A
anim = 3102
ctrl = 0
velSet = 0,0
sprPriority = -1

[State 3102, Timer Start]
type = VarSet
trigger1 = !Time
var(53) = 60

[State 3102, Timer End (Round Over)]
type = VarSet
trigger1 = RoundState != 2
var(53) = 0

[State 3102, Timer Countdown]
type = VarAdd
trigger1 = HitCount
var(53) = -1

[State 3102, Flames]
type = Explod
TriggerAll = Facing = -1
trigger1 = Time % 2 = 0 && AnimElemTime(2) >= 0
ID = 3102
anim = 8150
sprpriority = 6
postype = P2
vel = 0, -5
pos = 0 + Random % 35,0 + Random % 60
removetime = -2
scale = .75,.75
ownpal = 1
bindtime = 1
ignorehitpause = 1

[State 3102, ModifyExplod]
type = ModifyExplod
trigger1 = var(0) = 90
ID = 13102 - (Facing = -1) * 10000
trans = Sub
ignorehitpause = 1

[State 3102, Flames]
type = Explod
TriggerAll = Facing = 1
trigger1 = Time % 12 = 0 && AnimElemTime(2) >= 0
ID = 13102
anim = 10010
sprpriority = 6
postype = P2
vel = 0, -1.75
pos = 0 + Random % 12, 0 + Random % 25
removetime = -2
scale = .75,.75
ownpal = 1
bindtime = 1
ignorehitpause = 1

[State 3102, TargetBind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = ceil(48*const(size.xscale)), ceil(-134*const(size.yscale))

[State 3102, TargetBind 3]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
pos = ceil(58*const(size.xscale)), ceil(-134*const(size.yscale))

[State 3102, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 3
value = floor(ifElse(24 * fvar(11) < 7, -7, -24 * fvar(11)))
kill = 0

[State 3102, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(3) = 0
time = 18
freq = 120
ampl = 3

[State 3102, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = 20

[State 3102, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3106 + (Facing = 1) * 100000 

[State 3102, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = 1

[State 3102, Hit Count Increment]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
var(13) = 1

[State 3102, Juggle Points Increment]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
var(15) = 1
ignoreHitPause = 1

[State 3102, Juggle Flag Set]
type = VarSet
trigger1 = NumTarget && AnimElemTime(3) = 0
var(16) = 1
ignoreHitPause = 1

[State 3102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 195,0
channel = 0

[State 3102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,4
channel = 1

[State 3102, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElemTime(3) = 0
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = 43 + Random % 20, -134 + Random % 20
ownPal = 1
facing = -1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3102, ChangeState]
type = ChangeState
trigger1 = var(53) <= 0
trigger1 = !Animtime
trigger2 = NumTarget
trigger2 = !(Target, Alive) && AnimElem = 5
trigger3 = Time >= 180
value = 3103
ctrl = 0

;Palm Upper Finish
[Statedef 3103]
type = S
physics = S
movetype = A
anim = 3103
ctrl = 0
sprpriority = -1

[State 3103, Explod : Flame]
type = Explod
TriggerAll = Facing = 1
trigger1 = AnimElem = 2
anim = 3110
ID = 3110
pos = 20, -20
postype = P1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 3
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0

[State 3103, ModifyExplod]
type = ModifyExplod
trigger1 = var(0) = 90
ID = 3110 + (Facing = -1) * 10000
trans = Sub
ignorehitpause = 1

[State 3103, Explod : Ice]
type = Explod
TriggerAll = Facing = -1
trigger1 = AnimElem = 3
anim = 13110
ID = 13110
pos = -20, -20
postype = P1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 3
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0

[State 3103, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 820,0
channel = 0

[State 3103, TargetState]
type = TargetState
trigger1 = !Time
value = 3107

[State 3103, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(6) < 0
pos = ceil(58*const(size.xscale)), ceil(-134*const(size.yscale))

[State 3102, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(3) = 0
time = 18
freq = 120
ampl = 6

[State 3103, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElemTime(5) = 0
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = 60, -145
ownPal = 1
facing = -1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3103, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2,5
channel = 1

[State 3103, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
value = 1

[State 3103, Hit Count Increment]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
var(13) = 1

[State 3103, Juggle Points Increment]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
var(15) = 1
ignoreHitPause = 1

[State 3103, Juggle Flag Set]
type = VarSet
trigger1 = NumTarget && AnimElemTime(5) = 0
var(16) = 1
ignoreHitPause = 1

[State 3102, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 5
value = floor(ifElse(35 * fvar(11) < 7, -7, -35 * fvar(11)))
kill = 1

[State 3103, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
value = 20

[State 3103, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget(3505)
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3103, Ice Particles]
type = Helper
trigger1 = !NumHelper(18150)
trigger1 = MoveHit = 1 && NumTarget(3515)
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 18150
ID = 18150
name = "Ice Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3103, State End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;DESTROY CLAW (ARM)=
[Statedef 3104]
type = S
anim = 814
ctrl = 0
sprPriority = 5

[State 3104, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0,0

[State 3104, DestroySelf]
type = DestroySelf
trigger1 = Root, AnimElemTime(5) = 0
trigger2 = !Root, StateNo = 3101

;DESTROY CLAW (TARGET)=
[StateDef 3105]
type = A
physics = N
moveType = H
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3105, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3105

[State 3105, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[StateDef 3106]
type = A
physics = N
moveType = H
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3106, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3106

[State 3106, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[StateDef 103106]
type = A
physics = N
moveType = H
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 103106, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 255, 255, 255
mul = 140, 140, 140
color = 0

[State 103106, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 103106

[State 103106, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


[StateDef 3107]
type = A
movetype = H
physics = N

[State 3107, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3107

[State 3107, SprPriority]
type = SprPriority
trigger1 = !Time
value = -1

[State 3107, VelSet]
type = VelSet
trigger1 = !Time 
y = 1
x = 0

[State 3107, VelSet]
type = VelSet
trigger1 = Time = 8
x = 2
y = -11

[State 3107, VelMul]
type = VelAdd
trigger1 = AnimElemTime (1) >= 8
y = .5

[State 3107, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 3107, SelfState]
type = SelfState
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 5100

;Punched
[Statedef 3108]
type = A
physics = N
moveType = H
ctrl = 0

[State 3108, VelAdd]
type = VelAdd
trigger1 = 1
y = .50

[State 3108, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5030

[State 3108, ChangeAnim2]
type = ChangeAnim2
trigger1 = SelfAnimExist(5035)
Trigger1 = anim = 5030
Trigger1 = AnimTime = 0
value = 5035

[State 3108, ChangeAnim2]
type = ChangeAnim2
trigger1 = SelfAnimExist(5035)
Trigger1 = anim = 5035
Trigger1 = AnimTime = 0
trigger2 = !SelfAnimExist(5035)
Trigger2 = anim = 5030
Trigger2 = AnimTime = 0
value = 5050

[State 3108, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3108, PosAdd]
type = PosAdd
trigger1 = Time = 0
y = -const(size.head.pos.Y)

[State 3108, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;JUPITER'S DEAL=
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

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3100, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 17,-84
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 3100, HitDef: Grapple]
type = HitDef
trigger1 = AnimElem = 2
trigger1 = !var(38)
ID = 3150
attr = S, NT
hitFlag = M-
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 3151

[State 3100, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800,0
channel = 0

[State 3100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,0
channel = 1

[State 3100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 3100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Transition
[StateDef 3151]
type = S
physics = N
moveType = A
anim = 3101
ctrl = 0
velSet = 0,0
sprPriority = -1

[State 3151, Helper]
type = Helper
trigger1 = PrevStateNo = 3150 && !Time
HelperType = Normal
Name = "Arm"
StateNo = 814
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause = 1
sprPriority = 5
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 3151, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3105

[State 3151, Throw]
type = TargetFacing
trigger1 = Time <= 1
value = 1

[State 3151, Width]
type = Width
trigger1 = 1
edge = ceil(94 * const(size.xScale)),0

[State 3151, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = ceil(90 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 3151, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = ceil(71 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 3151, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(40 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 3151, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(26 * const(size.xScale)), ceil(-64 * const(size.yScale))

[State 3151, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(39 * const(size.xScale)), ceil(-80 * const(size.yScale));20,-110

[State 3151, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0
pos = ceil(42 * const(size.xScale)), ceil(-108 * const(size.yScale));20,-150

[State 3151, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3152
ctrl = 0

;Damage
[StateDef 3152]
type = S
physics = N
moveType = A
anim = 3152
ctrl = 0
velSet = 0,0
sprPriority = -1

[State 3152, Timer Start]
type = VarSet
trigger1 = !Time
var(53) = 80

[State 3152, Timer End (Round Over)]
type = VarSet
trigger1 = RoundState != 2
var(53) = 0

[State 3152, Timer Countdown]
type = VarAdd
trigger1 = HitCount
var(53) = -1

[State 3152, Flames]
type = Explod
ID = 3505
trigger1 = !Time
anim = IfElse(Facing = 1, 3515, 3505)
sprpriority = 6
postype = P1
vel = 0, 0
pos = 50, 0
removetime = -2
scale = .375,.75
ownpal = 1
ignorehitpause = 1

[State 3152, ModifyExplod]
type = ModifyExplod
trigger1 = var(0) = 90
ID = 3505
trans = Sub

[State 3152, ModifyExplod]
type = ModifyExplod
TriggerAll = var(0) = 90
trigger1 = Time >= 80
ID = 3505
scale = .375 - (.16 * Time), .75 - (.16 * Time)
trans = Sub

[State 3152, ModifyExplod]
type = ModifyExplod
TriggerAll = var(0) != 90
trigger1 = Time >= 80
ID = 3505
scale = .375 - (.16 * Time), .75 - (.16 * Time)
trans = AddAlpha
alpha = 256 - (4 * Time), 256

[State 3152, Power Charge Dust]
type = Explod
ID = 3507
trigger1 = !(Time % 6)
anim = IfElse(Facing = 1, 3517, 3507)
sprPriority = -3
posType = P1
pos = 50, -ceil(pos y)
scale = 1.25,1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3152, ModifyExplod]
type = ModifyExplod
trigger1 = var(0) = 90
ID = 3507
trans = Sub

[State 3152, ModifyExplod]
type = ModifyExplod
TriggerAll = var(0) = 90
trigger1 = Time >= 80
ID = 3507
scale = 1.25 - (.026 * Time), 1 - (.02 * Time)
trans = Sub

[State 3152, ModifyExplod]
type = ModifyExplod
TriggerAll = var(0) != 90
trigger1 = Time >= 80
ID = 3507
scale = 1.25 - (.32 * Time), 1 - (.32 * Time)
trans = AddAlpha
alpha = 256 - (4 * Time), 256

[State 3152, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(3) = 0
time = 18
freq = 120
ampl = 3

[State 3152, PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = 3150,0
channel = 3

[State 3152, TargetBind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = ceil(48*const(size.xscale)), ceil(-134*const(size.yscale))

[State 3152, TargetBind 3]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
pos = ceil(58*const(size.xscale)), ceil(-134*const(size.yscale))

[State 3152, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 3
value = floor(ifElse(18 * fvar(11) < 7, -7, -18 * fvar(11)))
kill = 0

[State 3152, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = 20

[State 3152, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3106

[State 3152, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = 1

[State 3152, Hit Count Increment]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
var(13) = 1

[State 3152, Juggle Points Increment]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
var(15) = 1
ignoreHitPause = 1

[State 3152, Juggle Flag Set]
type = VarSet
trigger1 = NumTarget && AnimElemTime(3) = 0
var(16) = 1
ignoreHitPause = 1

[State 3152, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 195,0
channel = 0

[State 3152, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,4
channel = 1

[State 3152, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElemTime(3) = 0
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = 43 + Random % 20, -134 + Random % 20
ownPal = 1
facing = -1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3152, ChangeState]
type = ChangeState
trigger1 = var(53) <= 0
trigger1 = !Animtime
trigger2 = NumTarget
trigger2 = !(Target, Alive) && AnimElem = 5
trigger3 = Time >= 180
value = 3153
ctrl = 0

;Palm Upper Finish
[Statedef 3153]
type = S
physics = S
movetype = A
anim = 3103
ctrl = 0
sprpriority = -1

[State 3152, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(6) = 0
time = 18
freq = 120
ampl = 6

[State 3153, Explod : Flame]
type = Explod
TriggerAll = Facing = 1
trigger1 = AnimElem = 2
anim = 3110
ID = 3160
pos = 20, -20
postype = P1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 3
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0

[State 3153, ModifyExplod]
type = ModifyExplod
trigger1 = var(0) = 90
ID = 3160 + (Facing = -1) * 10000
trans = Sub
ignorehitpause = 0

[State 3153, Explod : Ice]
type = Explod
TriggerAll = Facing = -1
trigger1 = AnimElem = 3
anim = 13110
ID = 13160
pos = -20, -20
postype = P1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 3
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 0

[State 3153, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 820,0
channel = 0

[State 3153, TargetState]
type = TargetState
trigger1 = !Time
value = 3107

[State 3153, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(6) < 0
pos = ceil(58*const(size.xscale)), ceil(-134*const(size.yscale))

[State 3153, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElemTime(5) = 0
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P1
pos = 60, -145
ownPal = 1
facing = -1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3153, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2,5
channel = 1

[State 3153, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
value = 1

[State 3153, Hit Count Increment]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
var(13) = 1

[State 3153, Juggle Points Increment]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
var(15) = 1
ignoreHitPause = 1

[State 3153, Juggle Flag Set]
type = VarSet
trigger1 = NumTarget && AnimElemTime(5) = 0
var(16) = 1
ignoreHitPause = 1

[State 3153, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 5
value = floor(ifElse(35 * fvar(11) < 7, -7, -35 * fvar(11)))
kill = 1

[State 3153, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(5) = 0
value = 20

[State 3153, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget(3505)
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3153, Ice Particles]
type = Helper
trigger1 = !NumHelper(18150)
trigger1 = MoveHit = 1 && NumTarget(3515)
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 18150
ID = 18150
name = "Ice Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3153, State End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;SERAPHIC WING=
[StateDef 3300]
type = S
physics = S
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
poweradd = 0
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[state 3300]
type = NotHitby
trigger1 = AnimElemTime(8) >= 0 && Animelemtime(39) < 0
value = SCA

[State 3300, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(39) < 0
value = 0

[State 3300, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 14
value = -3000

[State 3300, Super Pause FX]
type = Helper
trigger1 = AnimElemTime(10) = 0
helperType = Normal
stateNo = 8520
ID = 8520
name = "Superpause FX"
posType = p1
pos = ceil(4 * const(size.xScale)), ceil(-103 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, Super Pause]
type = SuperPause
trigger1 = AnimElemTime(10) = 0
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3300, Voice]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = 3300, 0
volumescale = 75
channel = 0

[State 3300, Holyness]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = 3300, 1
volumescale = 75
channel = 2

[State 3300, StopSnd]
type = StopSnd
trigger1 = !WinKO
trigger1 = AnimElemTime(39) = 0
channel = 2

[State 3300, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(2) = 0
StateType = A

[State 3300, Velocity]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = Pos X * IfElse(Facing = 1, -1, 1) * 0.155
y = -2.87

[State 3300, Velocity]
type = VelSet
trigger1 = AnimElemTime(6) = 0
x = 0
y = 0

[State 3300]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 0
movetype = A

[State 3300, Chicken Wangs]
type = Explod
trigger1 = AnimElemTime(6) = 0
ID = 3318
anim = 3318
pos = 0, Ceil(-100 * const(size.yscale))
postype = P1
sprpriority = -1
facing = 1
bindtime = -1
ownpal = 1
removeongethit = 1
pausemovetime = 999999999999
supermove = 1
ignoreHitPause = 1
scale = .75 * const(size.xScale),.75 * const(size.yScale)

[State 3300, ModifyExplod]
type = ModifyExplod
trigger1 = var(0) = 90
ID = 3318
trans = Sub

[State 3300, Seraphic Wing]
type = Helper
trigger1 = AnimElemTime(14) = 17
helperType = Normal
stateNo = 3301
ID = 3301
name = "Seraphic Wing"
posType = Back
ownPal = 1

[State 3300, Helper]
type = Helper
trigger1 = !NumHelper(3310)
trigger1 = !Time
helpertype = Normal
ID = 3310
name = "Transparency"
pos = -BackEdgeDist, 0
postype = p1
stateno = 3310
facing = 1
keyctrl = 0
ownpal = 1

[State 3300, Helper]
type = Helper
trigger1 = !NumHelper(3311)
trigger1 = !Time
helpertype = Normal
ID = 3311
name = "Transparency"
pos = FrontEdgeDist, 0
postype = p1
stateno = 3310
facing = 1
keyctrl = 0
ownpal = 1

[State 3300, Helper]
type = Helper
trigger1 = !NumHelper(3312)
trigger1 = !Time
helpertype = Normal
ID = 3312
name = "Center"
pos = Ceil(GameWidth/2),0
postype = Back
stateno = 3312
facing = 1
keyctrl = 0
ownpal = 1
supermove = 1
pausemovetime = 99999999
supermovetime = 99999999
size.height = Ceil(GameHeight)
size.ground.back = 0
size.ground.front = 0

[State 3300, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(15) >= 0
trigger1 = AnimElemTime(39) < 0
flag = NoFG
flag2 = NoBG

[State 3300, Seraphic Wing BackGround Explod]
type = Explod
trigger1 = AnimElemTime(15) = 0
anim = 3315
ID = 3315
postype = Left
pos = 160, Floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
sprpriority = -20
bindTime = -1
removeTime = 173
pauseMoveTime = -1
superMoveTime = -1

[State 3300, Helper]
type = Helper
trigger1 = AnimElemTime(15) = 0
trigger2 = AnimElemTime(19) = 1
trigger3 = AnimElemTime(23) = 1
trigger4 = AnimElemTime(27) = 2
trigger5 = AnimElemTime(31) = 2
helpertype = Normal
name = "Rainbow"
pos = Ceil(GameWidth/2), -Ceil(GameHeight/2)
postype = Back
stateno = 3317
facing = 1
keyctrl = 0
ownpal = 1
pausemovetime = 99999999

[State 3300, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElemTime(39) = 0
ID = 3315

[State 3300]
type = StateTypeSet
trigger1 = AnimElemTime(39) = 0
movetype = I 

[State 3300, Gravity]
type = Gravity
trigger1 = AnimElemTime(46) >= 0

[State 3300, End]
type = ChangeState
triggerAll = Pos Y > -Vel Y
trigger1 = AnimElemTime(46) > 0
value = 3305

[State 3300, End]
type = ChangeState
trigger1 = AnimElemTime(39) >= 0 && WinKo
value = 185
Ctrl = 1 - Win

;SERAPHIC WING LANDING=
[Statedef 3305]
type = S
physics = S
anim = 3305
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 3305, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3305, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3305, PosSet]
type = PosSet
trigger1 = !Time
Y = 0

[State 3305, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;RESURRECTION=
[StateDef 3400]
type = S
physics = S
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

[State 3400, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3400, Corner Push]
type = VarSet
trigger1 = 1
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
trigger1 = AnimElemTime(12) < 15
time = 1
value = SCA

[State 3400, Super Pause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8520
ID = 8520
name = "Superpause FX"
posType = p1
pos = ceil(-35 * const(size.xScale)), ceil(-10 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3400, Super Pause]
type = SuperPause
trigger1 = !Time
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3400, Flag]
type = VarSet
trigger1 = !Time
Trigger2 = var(48) = 0
var(45) = 2

[State -2, VarSet]
type = VarSet
triggerall = !Time
Trigger1 = var(47) = 1
Trigger2 = var(48) = 1
trigger3 = NumPartner
var(45) = 0

[State 3000, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 3400, 0
channel = 0

[State 3000, Holy Echo]
type = PlaySnd
trigger1 = AnimElemTime(10) = 0
value = 3000, 1
channel = 2

[State 3300, StopSnd]
type = StopSnd
trigger1 = StateNo != 3400
channel = 2

[State -2, Helper]
type = Helper
trigger1 = !NumHelper(3401)
trigger1 = !NumHelper(3402)
trigger1 = AnimElemTime(8) >= 0
trigger1 = AnimElemTime(12) < 48
name = "Wind"
pos = Ceil(P2Dist X - (Const(Size.Ground.Front) + Enemy, Const(Size.Ground.Front) + 1) * IfElse(P2Dist X < 0, -1, 1)), Ceil(-Pos Y)
postype = p1
ID = 3401 + (P2Dist X < 0)
stateno = 3401
facing = IfElse(P2Dist X < 0, -1, 1)
helpertype = normal
keyctrl = 0
ownpal = 1
size.height = 1000
size.ground.back = const(size.ground.back)
size.ground.front = const(size.ground.front)

[State 3400, Glow]
type = Helper
trigger1 = AnimElemTime(10) = 0
helperType = Normal
stateNo = 3405
ID = 3405
name = "Superpause FX"
posType = p1
superMoveTime = 255
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
ownpal = 1

[State 3400, Glow]
type = Helper
trigger1 = AnimElemTime(10) = 1
helperType = Normal
stateNo = 3407
ID = 3407
name = "Superpause FX"
posType = p1
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3400, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(10) = 0
StateType = A

[State 3400, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(11) = 0
trigger2 = AnimElemTime(11) = 1
trigger3 = AnimElemTime(11) = 2
trigger4 = AnimElemTime(11) = 3
trigger5 = AnimElemTime(11) = 4
trigger6 = AnimElemTime(11) = 0
trigger7 = AnimElemTime(12) = 3
trigger8 = AnimElemTime(12) = 6
trigger9 = AnimElemTime(12) = 9
trigger10 = AnimElemTime(12) = 14
trigger11 = AnimElemTime(12) = 18
trigger12 = AnimElemTime(12) = 22
trigger13 = AnimElemTime(12) = 26
trigger14 = AnimElemTime(12) = 30
trigger15 = AnimElemTime(12) = 34
trigger16 = AnimElemTime(12) = 38
trigger17 = AnimElemTime(12) = 42
trigger18 = AnimElemTime(12) = 46
trigger19 = AnimElemTime(12) = 50
trigger20 = AnimElemTime(12) = 54
trigger21 = AnimElemTime(12) = 58
trigger22 = AnimElemTime(12) = 62
y = -1*const(size.yscale)

[State 3400, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(12) = 2
trigger2 = AnimElemTime(12) = 3
trigger3 = AnimElemTime(12) = 4
y = 1*const(size.yscale)

[State 3400, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(13) = 5
y = 2*const(size.yscale)

[State 3400, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(13) = 6
trigger2 = AnimElemTime(13) = 7
trigger3 = AnimElemTime(13) = 8
y = 3 * const(size.yscale)

[State 3400, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(13) = 9
trigger2 = !AnimTime
y = 4 * Const(size.yscale)

[State 3400, LifeAdd]
type = LifeAdd
trigger1 = AnimElemTime(9) >= 5
trigger1 = AnimElemTime(13) < 0
value = Ceil(var(46)*0.014)
;value = Ceil(Const(data.life)*0.014)

[State 3400, End]
type = ChangeState
trigger1 = !AnimTime
value = 1205
ctrl = 1

;HADES ORBIT=
[StateDef 3500]
type = S
physics = S
moveType = A
anim = 3500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3500, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3500, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3500, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3500, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3500, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3500, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3500, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3500, By Splode]
type = VarSet
trigger1 = !Time
fvar(1) = Ifelse(Facing = 1, Pi/4, (5*Pi)/3) 

[State 3500, By Splode]
type = VarSet
trigger1 = !Time
fvar(2) = Ifelse(Facing = 1, (7*Pi)/6, ((7*Pi)/6) - (Pi/2))

[State 3500, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3500, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(48 * const(size.xScale)), ceil(-135 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3500, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3500, Kinises Startup Sound]
type = PlaySnd
trigger1 = AnimElemTime(16) = 0
value = 1000, 11
volumescale = 75

[State 3505, Kinises Startup Sound]
type = PlaySnd
trigger1 = AnimElemTime(16) = 0
value = 1000, 10
volumescale = 75

[State 3515, Kinises Startup Sound]
type = PlaySnd
trigger1 = AnimElemTime(16) = 0
value = 1000, 11
volumescale = 75

[State 3500, Hair]
type = Helper
trigger1 = AnimElem = 10
helpertype = Normal
stateno = 3001
name = "Hair"
postype = P1
pos = 0,0
facing = -1
keyctrl = 0
ownpal = 0
supermovetime = 99999999
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 3500, Hades Orbit: Flame Orb]
type = Helper
trigger1 = AnimElem = 16
helperType = Normal
stateNo = 3505
ID = 3505
name = "PyroKinesis"
persistent = 0
posType = P1
pos = 0,-90
superMoveTime = 255
pauseMoveTime = 255
size.xscale = 0.5
size.yscale = 0.5
ownPal = 1

[State 3500, Hades Orbit: Ice Orb]
type = Helper
trigger1 = AnimElem = 15
helperType = Normal
stateNo = 3515
ID = 3515
name = "CryoKinesis"
persistent = 0
posType = P1
pos = 0,-90
superMoveTime = 255
pauseMoveTime = 255
size.xscale = 0.5
size.yscale = 0.5
ownPal = 1

[State 3500, Ctrlset]
type = CtrlSet
trigger1 = AnimElemTime(20) >= 0
value = 1

[State 3500, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;HADES COMET=
[StateDef 3550]
type = S
physics = S
moveType = A
anim = 3550
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3550, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3550, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3550, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3550, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3550, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3550, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3550, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3550, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3550, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-65 * const(size.xScale)), ceil(-105 * const(size.yScale));-55,-94
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3550, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3550, Hades Orbit: Flame Orb]
type = Helper
TriggerAll = NumHelper(3505)
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 3555
ID = 3555
name = "PyroKinesis"
persistent = 0
posType = P1
pos = 0,-80
superMoveTime = 255
pauseMoveTime = 255
size.xscale = 0.6
size.yscale = 0.6
ownPal = 1

[State 3550, Hades Orbit: Ice Orb]
type = Helper
TriggerAll = NumHelper(3515)
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 3565
ID = 3565
name = "CryoKinesis"
persistent = 0
posType = P1
pos = 0,-80
superMoveTime = 255
pauseMoveTime = 255
size.xscale = 0.4
size.yscale = 0.4
ownPal = 1

[State 3500, Ctrlset]
type = CtrlSet
trigger1 = AnimElemTime(12) >= 0
value = 1

[State 3550, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1