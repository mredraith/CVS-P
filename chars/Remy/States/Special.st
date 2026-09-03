; _________________________________________
;| Character by Author Name |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;
;SPECIAL MOVES=
;

;LIGHT OF VIRTUE HIGH>=
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
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,3
channel = 0

[State 1000, Sonic Boom Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 61,0
channel = 1

[State 3000, spark]
type = explod
trigger1 = animelem = 2
anim = 1010
id = 1010
pos = 0,-0
sprpriority = 7
trans = add
scale = 0.9,0.9
bindtime = -1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 1005
ID = 1005
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-68 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 30,0

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;LIGHT OF VIRTUE LOW>=
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
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,3
channel = 0

[State 1100, Sonic Boom Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 61,0
channel = 1

[State 3000, spark]
type = explod
trigger1 = animelem = 2
anim = 1010
id = 1010
pos = 15,18
sprpriority = 7
trans = add
scale = 0.9,0.9
bindtime = -1

[State 1100, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 1005
ID = 1005
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-28 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1100, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 30,0

[State 1100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;--------------------------<LIGHT OF VIRTUE HIGH EX>-------------------------------------------------
[StateDef 1050]
type = S
physics = S
moveType = A
anim = 1050
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1010, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(20) > 0
var(20) = -335

[State 1010, EX Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000

[State 1010, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 40

[State 1010, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -4, -60
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,3
channel = 0

[State 1000, Sonic Boom Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 61,0
channel = 1

[State 3000, spark]
type = explod
trigger1 = animelem = 2
anim = 1010
id = 1010
pos = 0,-0
sprpriority = 7
trans = add
scale = 0.9,0.9
bindtime = -1

[State 1050, Projectile 1]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 1015
ID = 1015
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-68 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1050, Projectile 2]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 1016
ID = 1016
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-55 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1050, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 30,0

[State 1050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;LIGHT OF VIRTUE LOW EX

[StateDef 1150]
type = S
physics = S
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1010, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(20) > 0
var(20) = -335

[State 1010, EX Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000

[State 1010, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 40

[State 1010, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -4, -60
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1


[State 1150, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1150, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,3
channel = 0

[State 1150, Sonic Boom Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 61,0
channel = 1

[State 3000, spark]
type = explod
trigger1 = animelem = 2
anim = 1010
id = 1010
pos = 15,18
sprpriority = 7
trans = add
scale = 0.9,0.9
bindtime = -1

[State 1150, Projectile 1]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 1005
ID = 1005
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-28 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1150, Projectile 2]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 1017
ID = 1017
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xScale)), ceil(-28 * const(size.yScale))
size.xScale = .5
size.yScale = .5
ownPal = 1

[State 1150, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 30,0

[State 1150, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Special Light
[Statedef 1200]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[state 1200,Posset]
type=posset
trigger1=!time
y=0

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1200

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1,4
channel = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = 60,0
channel = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 5,1
channel = 1

[State 1200, VelSet]
type = VelAdd
trigger1 = animelem = 2
x = 0.4
y = -2


[State 1200, VelSet]
type = VelAdd
trigger1 = animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13
x = 6.5
y = 5


[State 40, Dust Helper]
type = Helper
trigger1 = animelem=1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1200, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<15 || var(20))
trigger1= !time
ID = 1200
attr = S,SA
hitflag = HAF
guardflag = M
damage = 64,6
getpower = 5
givepower = 36, 36
pausetime = 4,4
guard.pausetime = 7,7
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4,-0
ground.cornerpush.veloff = 0
guard.velocity = -6
guard.cornerpush.veloff = 0
air.velocity = -4, -2
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-77
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1200, 4]
type = ChangeState
trigger1 = Pos Y >= 37 && Vel Y > 0
value = 1205

;Special Medium
[Statedef 1201]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[state 1201,Posset]
type=posset
trigger1=!time
y=0

[State 1201, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1201

[State 1201, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1,4
channel = 0

[State 1201, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = 60,0
channel = 1

[State 1201, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 5,1
channel = 1

[State 1201, VelSet]
type = VelAdd
trigger1 = animelem = 2
x = 0.4
y = -2.8

[State 1201, VelSet]
type = VelAdd
trigger1 = animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13
x = 6.5
y = 5


[State 40, Dust Helper]
type = Helper
trigger1 = animelem=1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1201, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<15 || var(20))
trigger1= !time
ID = 1201
attr = S,SA
hitflag = HAF
guardflag = M
damage = 73,8
getpower = 5
givepower = 36, 36
pausetime = 4,4
guard.pausetime = 7,7
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4,-2
ground.cornerpush.veloff = 0
guard.velocity = -6
guard.cornerpush.veloff = 0
air.velocity = -4, -2
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-47
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1200, 4]
type = ChangeState
trigger1 = Pos Y >= 37 && Vel Y > 0
value = 1205



;Special High
[Statedef 1202]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[state 1202,Posset]
type=posset
trigger1=!time
y=0

[State 1202, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1202

[State 1202, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1,4
channel = 0

[State 1202, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = 60,0
channel = 1

[State 1202, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 5,1
channel = 1

[State 1202, VelSet]
type = VelAdd
trigger1 = animelem = 2
x = 0.4
y = -3.5

[State 1202, VelSet]
type = VelAdd
trigger1 = animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13
x = 6.5
y = 5


[State 40, Dust Helper]
type = Helper
trigger1 = animelem=1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1202, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<15 || var(20))
trigger1= !time
ID = 1202
attr = S,SA
hitflag = HAF
guardflag = M
damage = 80 ,10
getpower = 5
givepower = 36, 36
pausetime = 4,4
guard.pausetime = 7,7
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -7,-2
ground.cornerpush.veloff = 0
guard.velocity = -6
guard.cornerpush.veloff = 0
air.velocity = -4, -2
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-47
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1200, 4]
type = ChangeState
trigger1 = Pos Y >= 37 && Vel Y > 0
value = 1205


[Statedef 1205]
type=S
physics=N
movetype=I
anim=1203
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 1205, Snd]
type = playsnd
trigger1 = !time
value = 52,0

[State 1205, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1020, Pos]
type = PosSet
trigger1 = !Time
y = 0

[State 1020, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;Special Light
[Statedef 1250]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500
facep2=1

[State 1010, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(20) > 0
var(20) = -335

[State 1010, EX Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000

[State 1010, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 40

[State 1010, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -4, -60
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[state 1250,Posset]
type=posset
trigger1=!time
y=0

[State 1250, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1250

[State 1250, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1,4
channel = 0

[State 1250, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = 60,0
channel = 1

[State 1250, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 5,1
channel = 1

[State 1250, VelSet]
type = VelAdd
trigger1 = animelem = 2
x = 0.4
y = -4


[State 1250, VelSet]
type = VelAdd
trigger1 = animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13
x = 8
y = 4.4


[State 40, Dust Helper]
type = Helper
trigger1 = animelem=1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 1250, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<15 || var(20))
trigger1= !time
ID = 1250
attr = S,SA
hitflag = HAF
guardflag = M
damage = 64,6
getpower = 5
givepower = 36, 36
pausetime = 10,6
guard.pausetime = 7,7
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -8,-3
ground.cornerpush.veloff = 0
guard.velocity = -6
guard.cornerpush.veloff = 0
air.velocity = -4, -2
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-47
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1200, 4]
type = ChangeState
trigger1 = Pos Y >= 37 && Vel Y > 0
value = 1205

;SOMERSAULT KICK>=
[StateDef 1300]
type = S
physics = N
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
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1320, ifElse(var(10) = 1, 1310, 1300))

[State 1300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0 && !var(10)
trigger2 = AnimElemTime(4) < 6 && var(10) = 1
trigger3 = AnimElemTime(3) < 0 && var(10) = 2
value = SCA
time = 1

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 60,0
channel = 0

[State 1300, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 61,1
channel = 1

[State 1300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1300, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 1.667
y = -6.333 - (var(10) * 1.333)

[State 1300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.58

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 1300, Somersault Kick FX (Additive) Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1390
ID = 1390
sprPriority = 3
bindTime = -1
posType = P1
scale = 1,1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1300, Somersault Kick FX (Subtractive) Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 1106
ID = 1106
sprPriority = 3
bindTime = -1
posType = P1
scale = 0.5 * const(size.xScale),0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1300, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10), 119, 105)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 126, ifElse(var(10), 119, 105)))), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
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
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -39
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301


;Landing
[StateDef 1301]
type = S
anim = 1301
physics = N
moveType = I
velSet = 0,0

[State 1301, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 1301, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1301, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1301, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1301, End]
type = ChangeState
trigger1 = AnimElemTime(2) = 2 && command = "holddown"
value = 11
ctrl = 1

[State 1301, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


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
var(25) = 11

[State 1330, EX FX]
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

[State 1330, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1330, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 60,0
channel = 0

[State 1330, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 61,1
channel = 3

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 1130, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
x = 8

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 2.667
y = -11.33200

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 9
x = 1.667

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.58

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 1130, Somersault Kick FX (Additive) Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 1390
ID = 1390
sprPriority = 3
bindTime = -1
posType = P1
scale = 1,1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1330, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -39
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 6
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(!MoveContact, 105, 42) < 7, 7, fvar(11) * ifElse(!MoveContact, 105, 42))), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120


[State 1330, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1301

;Genee
[StateDef 1400]
type=S
movetype=A
physics=N
ctrl=0
velset=0,0
poweradd=72 * !var(20)
sprpriority=1
facep2=1

[State 1100, VarSet]
type=VarSet
trigger1 =!AILevel&& !time
var(10)=ifelse(command="SPARK OF LIGHT1",0,ifelse(command="SPARK OF LIGHT2",1,2))
ignorehitpause=1

[State 1100, VarSet]
type=VarSet
trigger1 =AILevel&& !time
var(10)=ifelse(random<700,1,2)
ignorehitpause=1

[State 1100, Anim]
type = ChangeAnim
trigger1 = !time
value = 1001
ignorehitpause=1

[State 3000, spark]
type = explod
trigger1 = animelem = 7
anim = 1011
id = 1011
pos = 0,-0
sprpriority = 7
trans = add
scale = 0.9,0.9
bindtime = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S22,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S61,2
channel = 1

[State 1000, Genee]
type=helper
trigger1= animelem=7
helpertype=normal
stateno=1406
ID=1406
name="SPARK OF LIGHT"
postype=p1
pos=IfElse(var(10)=0,80,IfElse(var(10)=1,140,200)),-83
ownpal=1
size.xscale=.3*const(size.xscale)
size.yscale=.3*const(size.yscale)

[State -2, StopSnd]
type = StopSnd
trigger1 =Movetype=H 
channel = 1
ignorehitpause = 1

[State 1400, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1


;EX Genee
[Statedef 1425]
type=S
movetype=A
physics=S
anim=1001
ctrl=0
velset=0,0
poweradd=-500
sprpriority=1
facep2=1

[State 1025, MAX Timer Drain]
type=VarAdd
trigger1=!Time
trigger1=var(20) > 0
var(20)=-250
[State 1025, Custom Combo Juggle Reset]
type=VarSet
trigger1=!Time && var(20)
var(15)=0
ignoreHitPause=1
[State 1025, EX Flash]
type=VarSet
trigger1=!Time
var(25)=40
[State 1025, EX FX]
type=Explod
trigger1=!Time
anim=8210
sprPriority=3
posType=p1
pos= -5, -67
scale=0.5, 0.5
pauseMoveTime=-1
superMoveTime=-1
ownPal=1
[State 1025, EX-SND]
type=PlaySnd
trigger1 =!time
value=0,1000
channel=3
[State 1025, VarSet]
type=VarSet
trigger1 =!time
var(10)=3
ignorehitpause=1
[State 1025, VarSet]
type = VarSet
trigger1 =!time
var(12)=0

[State 3000, spark]
type = explod
trigger1 = animelem = 7
anim = 1011
id = 1011
pos = 0,-0
sprpriority = 7
trans = add
scale = 0.9,0.9
bindtime = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S22,0

[State 1000, Genee]
type=helper
trigger1= animelem=7 
helpertype=normal
stateno=1406
ID=1406
name="SPARK OF LIGHT"
postype=p1
pos=140,-83
ownpal=1
size.xscale=.3*const(size.xscale)
size.yscale=.3*const(size.yscale)

[State 1000, Genee]
type=helper
trigger1= animelem=7 
helpertype=normal
stateno=1406
ID=1406
name="SPARK OF LIGHT"
postype=p1
pos=240,-83
ownpal=1
size.xscale=.3*const(size.xscale)
size.yscale=.3*const(size.yscale)

[State 1400, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1

;---------------------------------------------------------------------------
;Dark Genee
[StateDef 11200]
type=S
movetype=A
physics=N
ctrl=0
velset=0,0
poweradd=72 * !var(20)
sprpriority=1
facep2=1

[State 1100, VarSet]
type=VarSet
trigger1 =!AILevel&& !time
var(10)=ifelse(command="SPARK OF LIGHT1",0,ifelse(command="SPARK OF LIGHT2",1,2))
ignorehitpause=1

[State 1100, VarSet]
type=VarSet
trigger1 =AILevel&& !time
var(10)=ifelse(random<700,1,2)
ignorehitpause=1

[State 1100, Anim]
type = ChangeAnim
trigger1 = !time
value = 1400
ignorehitpause=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S0,15
channel = 1

[State 1000, Genee]
type=helper
trigger1= animelem=7 
helpertype=normal
stateno=11206
ID=11206
name="Genee"
postype=p1
pos=IfElse(var(10)=0,80,IfElse(var(10)=1,140,200)),-83
ownpal=1
size.xscale=.5*const(size.xscale)
size.yscale=.5*const(size.yscale)

[State -2, StopSnd]
type = StopSnd
trigger1 =Movetype=H 
channel = 1
ignorehitpause = 1

[State 1300, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1

;PUNCH ZERO COUNTER
[STATEDEF 2900]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
faceP2 = 1

[STATE 2900,POSSET]
type=posset
trigger1=!time
y=0

[STATE 2900,ANIM]
type=changeanim
trigger1=!time
value=2900

[STATE 2900,DUST]
type = helper
trigger1 = Animelem=3
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[STATE 2900,WIDTH]
type = Width
trigger1 = 1
edge = 30,0

[STATE 2900,NOT HIT BY]
type = NotHitBy
trigger1 = Anim = 2900
trigger1 = AnimElemNo(0) = [1,5]
value = SCA
time = 1

[STATE 2900,HIT]
type=hitdef
trigger1= !var(16) && (var(15)<15 || var(20))
trigger1= !Time
ID = 2900
attr = S,SA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getpower = 0
givepower = 0, 0
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animtype = Heavy
air.animtype = Heavy
fall.animtype = Diagup
ground.type = hIGH
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -3,-7.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2,-7
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-77
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120

[STATE 2900,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[STATE 2900,CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
 
;KICK ZERO COUNTER
[STATEDEF 2910]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0

[STATE 2910,POSSET]
type=posset
trigger1=!time
y=0

[STATE 2910,ANIM]
type=changeanim
trigger1=!time
value=2910

[STATE 2910,NOT HIT BY]
type = nothitby
trigger1 = animelemtime(6) < 0
value = SCA
time = 1
ignorehitpause = 1

[STATE 2910,WIDTH]
type = Width
trigger1 = 1
edge = 40,0

[STATE 2910,HIT]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
ID = 2910
attr = S, SA
hitFlag = MAF
guardFlag = M
damage =ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getPower = 0, 0
givePower = 0, 0
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animType = Back
air.animType = Back
fall.animType = Diagup
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -6,-5.5
ground.cornerPush.velOff = 0
guard.velocity = -6
guard.cornerPush.velOff = 0
air.velocity = -6.46, -4.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=76), var(36):=-83
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[STATE 2910,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[STATE 2910,CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1