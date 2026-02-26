;
;<SPECIAL MOVES>===
;

;<KINESIS>=
[Statedef 1000]
type = S
physics = S
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = Ifelse(enemynear,statetype=A&&(p2bodydist x=[70,160])&&(p2bodydist y=[-180,-70]),1+random%2,0)

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1010, 1020))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1000, IfElse(Facing = -1 , 1, 0)
channel = 0

[State 1000, Kinises Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1000, IfElse(Facing = -1 , 11, 10)
channel = 2
volumescale = 75

[State 1000, Kinesis 0]
type = Helper
Triggerall = !var(10)
trigger1 = AnimElem = 10
name = "Metallic Sphere"
pos = ceil(50*const(size.xscale)), ceil(-74*const(size.yscale));50,-74
postype = P1
stateno = 1005
id = 1005
helpertype = Normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xScale = 0.5
size.yScale = 0.5

[State 1000, Kinesis 30]
type = Helper
Triggerall = var(10) = 1
trigger1 = AnimElem = 10
name = "Metallic Sphere"
pos = ceil(18*const(size.xscale)), ceil(-92*const(size.yscale));18,-92
postype = P1
stateno = 1005
id = 1005
helpertype = Normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xScale = 0.5
size.yScale = 0.5

[State 1000, Kinesis 60]
type = Helper
Triggerall = var(10) = 2
trigger1 = AnimElem = 10
name = "Metallic Sphere"
pos = ceil(10*const(size.xscale)), ceil(-99*const(size.yscale))
postype = P1
stateno = 1005
id = 1005
helpertype = Normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
size.xScale = 0.5
size.yScale = 0.5

[State 1000, Ctrlset]
type = CtrlSet
trigger1 = AnimElemTime(19) >= 0
value = 1

[State 1000, Changestate]
type = Changestate
trigger1 = !AnimTime
value = 0
ctrl = 1

;<CYBER LARIAT>=
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

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA,AT
time = 2

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist x > 100, 2, ifElse(P2Dist x > 88, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1100, ifElse(var(10) = 1, 1110, 1120))

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100,0
channel = 0

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41,0
channel = 1

[State 1100, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 52,0
channel = 1

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 3
channel = 2

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, IfElse(Facing = -1, 6, 7)
channel = 3

[State 1100, Skid Dust]
type = Explod
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(11) < 0
trigger1 = !(AnimElemTime(7) % 3)
anim = 8104
sprPriority = 3
posType = P1
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 4.12

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 6.82 + (var(10) * 2.13)

[State 1100, VelMul]
type = VelMul
trigger1 = AnimElemTime(7) >= 1
x = 0.90

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 11
x = 0

[State 1100, Explod : Flame]
type = Explod
TriggerAll = Facing = -1
trigger1 = AnimElem = 4
anim = 1105
ID = 1105
postype = P1
bindtime = 33
vel = 0,0
accel = 0,0
pausemovetime = 0
scale = .5,.5
sprpriority = IfElse(Time < 5, -3, 3)
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 1100, ModifyExplod]
type = ModifyExplod
trigger1 = var(0) = 90
ID = 1115 - (Facing = -1) * 10
trans = Sub
ignorehitpause = 1

[State 1100, Explod : Ice]
type = Explod
TriggerAll = Facing = 1
trigger1 = AnimElem = 6
anim = 1115
ID = 1115
postype = P1
bindtime = 25
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = IfElse(Time < 13, -3, 3)
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 1100, HitDef : Flame]
type = HitDef
TriggerAll = Facing = -1
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 7
ID = 1101
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = ifElse(!var(13), 216, 72) * (!var(20)), 36 * (!var(20))
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
ground.type = High
ground.hitTime = 24
guard.hittime = (24) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.32, -7.49
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef : Ice]
type = HitDef
TriggerAll = Facing = 1
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 7
ID = 11101
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = ifElse(!var(13), 216, 72) * (!var(20)), 36 * (!var(20))
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
ground.type = High
ground.hitTime = 24
guard.hittime = (24) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.32, -7.49
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.53
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -76
palFX.time = 35
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1100)
trigger1 = Target(1100), Pos Y >= Ceil(-40 * Const(Size.YScale))
trigger1 = (Target(1100), StateNo = 5000); || (Target(1100), StateNo = 5010) || (Target(1100), StateNo = 5020)
value = 1105
ID = 1100
ignoreHitPause = 1

[State 1100, TargetBind]
type = TargetBind
trigger1 = NumTarget(1100)
trigger1 = Target(1100), StateNo = 1105
pos = Ceil(20 * Const(Size.XScale)), Ceil(-97 * Const(Size.YScale))
ignorehitpause = 1

[State 1100, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget(1101)
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1100, Ice Particles]
type = Helper
trigger1 = !NumHelper(18150)
trigger1 = MoveHit = 1 && NumTarget(11101)
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 18150
ID = 18150
name = "Ice Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
moveType = I

[State 1100, Ctrlset]
type = CtrlSet
trigger1 = AnimElemTime(13) >= 0
value = 1

[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
trigger2 = P2Dist X < 0
trigger2 = AnimElemTime(13) >= 0
value = 0
ctrl = 1

;Target (Impact)
[Statedef 1105]
type = A
physics = N
movetype = H
velset = 0,0
ctrl = 0
facep2 = 1
SprPriority = 0

[State 1105, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1105, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1105, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1105, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time
value = 1101

[State 1105, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 1106

;Target (Fall)
[Statedef 1106]
type = A
physics = N
movetype = H
velset = 0,0
ctrl = 0
SprPriority = 0

[State 1106, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1106, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1106, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1106, ChangeAnim]
type = ChangeAnim
Trigger1 = !Time
value = 5030

[State 1106, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5035)
Trigger1 = Anim = 5030
Trigger1 = !AnimTime
value = 5035

[State 1106, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5035)
Trigger1 = Anim = 5035
Trigger1 = !AnimTime
trigger2 = !SelfAnimExist(5035)
Trigger2 = Anim = 5030
Trigger2 = !AnimTime
value = 5050

[State 1106, PosFreeze]
type = PosFreeze
trigger1 = AnimElem = 1

[State 1106, PosAdd]
type = PosAdd
trigger1 = !Time
x = -Const(Size.Head.Pos.X)
y = -Const(Size.Head.Pos.Y)

[State 1106, VelSet]
type = VelSet
trigger1 = !Time
x = -2.0
y = -1

[State 1106, VelAdd]
type = VelAdd
trigger1 = 1
y = .53

[State 1106, SelfState]
type = SelfState
trigger1 = Pos Y >= 25 && Vel Y > 0 && Time > 0
value = 5100

;<PSYCHO HEADBUTT>=
[Statedef 1200]
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
var(10) = ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist x > 100, 2, ifElse(P2Dist x > 88, 1, 0))

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 40,0
channel = 3

[State 1200, ChangeAnim]
type = VelSet
trigger1 = AnimElem = 2
y = -4.0 + (var(10) * -0.50)
x = 3.75 + (var(10) * 1.00)

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 0
volume = 255
channel = 0

[State 1200, Width]
type = Width
trigger1 = 1
edge = 20,0

[State 1200, VelAdd]
type = Gravity
trigger1 = AnimElemTime(3) >= 0

[State 1200, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 87 < 7, 7, fvar(11) * 87)), 8
getPower = ifElse(!var(13), 216, 72) * (!var(20)), 36 * (!var(20))
givePower = 36, 36
pauseTime = ifElse(var(20), 7, 14), ifElse(var(20), 7, 14)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -15, 0
ground.cornerPush.velOff = 32
guard.velocity = -15
guard.cornerPush.velOff = 32
air.velocity = -2.67, -8.7
airguard.velocity = -6.67, -1.12
air.cornerPush.velOff = 32
yAccel = 0.53
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 46), var(36) := -82
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1200, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1205

;<PSYCHO HEADBUTT LANDING>=
[Statedef 1205]
type = S
physics = S
anim = 1205
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
;faceP2 = 1

[State 1205, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1205, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1205, PosSet]
type = PosSet
trigger1 = !Time
Y = 0

[State 240, Ctrlset]
type = CtrlSet
trigger1 = AnimElemTime(4) >= 0
value = 1

[State 1205, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;<MOONSAULT KNEE DROP>=
[Statedef 1300]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1300, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist x > 100, 2, ifElse(P2Dist x > 88, 1, 0))

[State 1300, Width]
type = Width
trigger1 = 1
edge = 20,0

[State 1300, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SC, AT
time = 2

[State 1300, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(2) = 0
StateType = A

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 41,0
channel = 3

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) >= 0
trigger1 = P2Dist X > 0
x = IfElse(!var(10), Floor((P2Dist X)/50), IfElse (var(10) = 1, Floor((P2Dist X)/25), Floor((P2Dist X)/15)))

[State 1300, Velocity]
type = VelSet
trigger1 = AnimElemTime(2) = 0
y = -11.0

[State 105, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 0.65

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 15
value = 4, 0
channel = 0

[State 1300, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 7
pauseTime = ifElse(var(20), 11, 8), ifElse(var(20), 11, 8)
getPower = 0,0
animtype = Heavy
air.animtype = Back
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = (18) - 6
guard.ctrltime = 18
ground.velocity = -1
guard.velocity = -8
air.velocity = -1,-6
airguard.velocity = -6.67,-1
fall = 0
air.fall = 1
yaccel = .49
persistent = 0
givepower = 35, 35
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -53
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1301
ignorehitpause = 1

[State 1300, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(2) >= 0 && Pos Y + Vel Y >= 0
value = 1305

;<MOONSAULT KNEE DROP (2ND HIT)>=
[Statedef 1301]
type = A
physics = N
moveType = A
anim = 1301
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1301, Gravity]
type = Gravity
trigger1 = 1

[State 1301, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = !Time
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 7
pauseTime = ifElse(var(20), 11, 8), ifElse(var(20), 11, 8)
getPower = ifElse(!var(13), 216, 72) * (!var(20)), 36 * (!var(20))
animtype = Heavy
air.animtype = Back
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = (18) - 6
guard.ctrltime = 18
ground.velocity = -12
guard.velocity = -12
air.velocity = -1,-6
airguard.velocity = -6.67,-1
fall = 0
air.fall = 1
yaccel = .49
persistent = 0
givepower = 35, 35
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -53
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1301, PosSet]
type = PosSet
trigger1 = Pos Y + Vel Y >= 0
Y = 0

[State 1301, ChangeState]
type = ChangeState
trigger1 = Pos Y + Vel Y >= 0
value = 1305

;<MOONSAULT KNEE DROP LANDING>=
[Statedef 1305]
type = S
physics = S
anim = 1305
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1305, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1305, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1301, PosSet]
type = PosSet
trigger1 = !Time
Y = 0

[State 1305, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;<PUNCH ZERO COUNTER>=
[Statedef 2900]
type = S
physics = N
moveType = A
anim = 2900
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100, 0

[State 2900, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,1
channel = 1

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 75 < 7, 7, fvar(11) * 75)), 0
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -8.23, -9.45
ground.cornerPush.velOff = 0
guard.velocity = -3
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 112), var(36) := -87

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 2900, Ctrlset]
type = CtrlSet
trigger1 = AnimElemTime(14) >= 0
value = 1

[State 2900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;<KICK ZERO COUNTER>=
[StateDef 2910]
type = S
physics = N
moveType = A
anim = 2910
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 1
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 2910, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, IfElse(Facing = -1, 6, 7)
volumescale = 50
channel = 2

[State 2910, Explod : Flame]
type = Explod
TriggerAll = Facing = -1
trigger1 = AnimElem = 1
anim = 10450
ID = 12911
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

[State 2910, Explod : Ice]
type = Explod
TriggerAll = Facing = 1
trigger1 = AnimElem = 3
anim = 10455
ID = 12915
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

[State 2910, HitDef : Flame]
type = HitDef
TriggerAll = Facing = -1
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
ID = 12910
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 75 < 7, 7, fvar(11) * 75)), 0
getpower = 0,0
givepower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Trip
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.35, -8.25
ground.cornerPush.velOff = 0
guard.velocity = -8.25
guard.cornerPush.velOff = 0
air.velocity = -2.35, -8.25
air.cornerPush.velOff = 0
yAccel = 0.677
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 116), var(36) := -7
palFX.time = 35
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 2910, HitDef : Ice]
type = HitDef
TriggerAll = Facing = 1
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
ID = 2910
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 75 < 7, 7, fvar(11) * 75)), 0
getpower = 0,0
givepower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Trip
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -2.35, -8.25
ground.cornerPush.velOff = 0
guard.velocity = -8.25
guard.cornerPush.velOff = 0
air.velocity = -2.35, -8.25
air.cornerPush.velOff = 0
yAccel = 0.677
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 116), var(36) := -7

[State 2910, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget(12910)
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 2910, Ice Particles]
type = Helper
trigger1 = !NumHelper(18150)
trigger1 = MoveHit = 1 && NumTarget(2910)
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 18150
ID = 18150
name = "Ice Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(6) >= 0
moveType = I

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(14) >= 0
stateType = S

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1