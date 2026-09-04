; _______________________________________________
;| Cody Travers by Trololo |
; 
;
;SPECIAL MOVES==
;

;BAD STONE=
[StateDef 1000]
type = S
physics = S
moveType = I
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2Dist x > 180, 0, ifElse((p2Dist x > 130 && P2Dist x <= 180), 1, 2))

[State 1000, Charge Reset]
type = VarSet
trigger1 = !Time
var(11) = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1000, 0
channel = 0

[State 1000, Grab]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 1
channel = 3

[State 1000, Charge (Player)]
type = ChangeState
triggerall = !AILevel && !AnimTime
trigger1 = command = "holdx" && !var(10)
trigger2 = command = "holdy" && var(10) = 1
trigger3 = command = "holdz" && var(10) = 2
value = 1001

[State 1000, Release (Player)]
type = ChangeState
triggerall = !AILevel && !AnimTime
trigger1 = command != "holdx" && !var(10)
trigger2 = command != "holdy" && var(10) = 1
trigger3 = command != "holdz" && var(10) = 2
value = 1002

[State 1000, Release (AI)]
type = ChangeState
trigger1 = AILevel && !AnimTime
value = ifelse((P2Dist x < 50 || var(6)), 1002, 1001)

;Holding
[StateDef 1001]
type = S
physics = S
moveType = I
anim = 1001
velSet = 0,0

[State 1001, Stones]
type = Explod
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
anim = 19000
ID = 19000
pos = ceil(-25 * const(size.xscale)), ceil(-76 * const(size.yscale))
postype = p1
bindtime = 13
removetime = -2
scale = 1 * const(size.xscale),1 * const(size.yscale)
sprpriority = 0
ownpal = 1
removeongethit = 1
shadow = 100,100,100

[State 1001, Charge Level Up]
type = VarAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 10
var(11) = 1

[State 1001, Throw (AI)]
type = ChangeState
triggerall = AILevel
trigger1 = (AnimElem = 3 || AnimElem = 6 || AnimElem = 9)
trigger1 = P2Dist x < 75 || Enemy, vel x > 0 && ((P2Dist x/Enemy, vel x) < 25)
trigger2 = AnimElemTime(10)>=1
value = 1002

[State 1001, MAX Charge Throw (Player)]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemTime(10)>=1
trigger1 = command = "holdx" && !var(10)
trigger2 = command = "holdy" && var(10) = 1
trigger3 = command = "holdz" && var(10) = 2
value = 1002

[State 1001, Preemptive Throw (Player)]
type = ChangeState
triggerall = !AILevel
triggerall = (AnimElem = 3 || AnimElem = 6 || AnimElem = 9)
trigger1 = command != "holdx" && !var(10)
trigger2 = command != "holdy" && var(10) = 1
trigger3 = command != "holdz" && var(10) = 2
value = 1002


;Release
[StateDef 1002]
type = S
physics = N
moveType = A
velSet = 0,0

[State 1002, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = ifelse(var(11) > 2, 1004, ifelse(var(11) = 2, 1003, 1002))

[State 1002, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 1002, Projectile]
type = Helper
trigger1 = AnimElemTime(4) = ifelse(anim = 1004, 2, 1)
helperType = Normal
stateNo = 1005
ID = 1005
name = "Bad Stone Projectile"
posType = P1
pos = ceil(87 * const(size.xscale)), ceil(-88 * const(size.yscale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1002, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElem = 5
moveType = I

[State 1002, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;EX BAD STONE=
[StateDef 1030]
type = S
physics = N
moveType = I
anim = 1030
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

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
var(25) = 35

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(10 * const(size.xscale)), ceil(-78 * const(size.yscale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1030, 0
channel = 0

[State 1030, Woosh]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1,2
channel = 2

[State 1030, Grab]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 1
channel = 3

[State 1030, Projectile]
type = Helper
trigger1 = AnimElemTime(10) = 1
helperType = Normal
stateNo = 1035
ID = 1035
name = "Bad Stone Projectile"
posType = P1
pos = ceil(87 * const(size.xscale)), ceil(-88 * const(size.yscale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(7) = 1
movetype = A

[State 1030, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 11
movetype = I

[State 1030, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;CRIMINAL UPPER=
[StateDef 1100]
type = S
physics = S
moveType = A
anim = ifelse(var(40), 11100, 1100)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 0, ifElse(Random < 500, 1, 2))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = ifelse(var(10) = 2, ifelse(var(40), 11120, 1120), ifelse(var(10) = 1, ifelse(var(40), 11110, 1110), ifelse(var(40), 11100, 1100)))

[State 1100, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(3)>=0 && AnimElemTime(4)<0
x = 10

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100, 0
channel = 0

[State 1100, Whirling Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1100, 1
channel = 3

[State 1100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * (50 + (var(10)*6)) < 7, 7, fvar(11) * (50 + (var(10)*6)))), 7
getPower = ifElse(!var(13), 72, 36), 12
givePower = 36, 36
pauseTime = ifElse(var(20), 7, 14), ifElse(var(20), 8, 17)
guard.pauseTime = ifElse(var(20), 7, 14), ifElse(var(20), 8, 17)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -8.81
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -59
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Projectile]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 1105
ID = 1105
name = "Criminal Upper Projectile"
posType = P1
pos = ceil(50 * const(size.xscale)), ceil(5 * const(size.yscale))
size.xScale = 0.5 * const(size.xscale)
size.yScale = 0.575 * const(size.yscale)
ownPal = 1

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;EX CRIMINAL UPPER=
[StateDef 1130]
type = S
physics = S
moveType = A
anim = ifelse(var(40), 11130, 1130)
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
var(25) = 35

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(52 * const(size.xscale)), ceil(-56 * const(size.yscale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1130, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(3)>=0 && AnimElemTime(4)<0
x = 15

[State 1130, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1130, 0
channel = 0

[State 1130, Whirling Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1100, 1
channel = 3

[State 1130, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 62 < 7, 7, fvar(11) * 62)), 0
getPower = 0, 0
givePower = 36, 36
pauseTime = 14, 17
guard.pauseTime = 14, 17
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -8.81
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -59
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Projectile]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 1135
ID = 1135
name = "Criminal Upper Projectile"
posType = P1
pos = ceil(50 * const(size.xscale)), ceil(5 * const(size.yscale))
size.xScale = 0.5 * const(size.xscale)
size.yScale = 0.575 * const(size.yscale)
ownPal = 1

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1130, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;RUFFIAN KICK=
[StateDef 1200]
type = S
physics = S
moveType = A
anim = ifelse(var(40), 11200, 1200)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2StateType = A, 2, ifElse((P2StateType != A && P2Dist x >= 120 || P2MoveType = H), 1, 0))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = ifelse(var(10) = 2, ifelse(var(40), 11220, 1220), ifelse(var(10) = 1, ifelse(var(40), 11210, 1210), ifelse(var(40), 11200, 1200)))

[State 1200, Voice]
type = PlaySnd
trigger1 = Anim = ifelse(var(40), 11200, 1200) && AnimElem = 3
trigger2 = Anim = ifelse(var(40), 11210, 1210) && AnimElem = 3
trigger3 = Anim = ifelse(var(40), 11220, 1220) && AnimElem = 2
value = 1200, 0 + var(10)
channel = 0

[State 1200, Skid Sound]
type = PlaySnd
trigger1 = !time
value = 101, 0
channel = 1

[State 1200, Woosh Sound]
type = PlaySnd
trigger1 = Anim = ifelse(var(40), 11200, 1200) && AnimElem = 4
trigger2 = Anim = ifelse(var(40), 11210, 1210) && AnimElem = 4
trigger3 = Anim = ifelse(var(40), 11220, 1220) && AnimElem = 3
value = 1, 5
channel = 3

[State 1200, Skid Dust]
type = Explod
trigger1 = Anim = ifelse(var(40), 11200, 1200) && AnimElem = 5
trigger2 = Anim = ifelse(var(40), 11210, 1210) && AnimElem = 4
trigger3 = Anim = ifelse(var(40), 11220, 1220) && AnimElem = 3
anim = 8104
sprPriority=3
posType = P1
pos = ceil(ifelse(var(10)=0, -42, ifelse(var(10)=1, -10, 0)) * const(size.xscale)),0
bindtime = 25
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1200, VelSet]
type = VelSet
trigger1 = (Anim = ifelse(var(40), 11200, 1200) || Anim = ifelse(var(40), 11210, 1210)) && (AnimElemTime(3)>=0 && AnimElemTime(6)<0)
trigger2 = Anim = ifelse(var(40), 11220, 1220) && (AnimElemTime(3)>=0 && AnimElemTime(5)<0)
x = ifelse(var(10)=2, 5.25, ifelse(var(10)=1, 5.5, 4.6))

[State 1200, VelSet]
type = VelSet
trigger1 = (Anim = ifelse(var(40), 11200, 1200) || Anim = ifelse(var(40), 11210, 1210)) && AnimElem = 6
trigger2 = Anim = ifelse(var(40), 11220, 1220) && AnimElem = 5
x = 0

[State 1200, LK HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 7 || var(20))
trigger1 = !Var(10) && AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 7
getpower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
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
ground.velocity = -1.5, -8
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6.625, -13.25)
guard.cornerPush.velOff = 0
air.velocity = -1.5, -8
air.cornerPush.velOff = 0
fall.xvelocity = -1.5
fall.yvelocity = -2.25
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 84), var(36) := -9
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 1200, MK HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 7 || var(20))
trigger1 = Var(10) = 1 && AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 7
getPower = ifElse(!var(13), 216, 72)*!var(20), 36*!var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -5.25, -6.55
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6.625, -13.25)
guard.cornerPush.velOff = 0
air.velocity = -5.25, -6.55
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall.xvelocity = -3
fall.yvelocity = -4.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forceStand = 1

[State 1200, HK HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 7 || var(20))
trigger1 = Var(10) = 2 && AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 7
getPower = ifElse(!var(13), 216, 72)*!var(20), 36*!var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -4.16, -6.81
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6.625, -13.25)
guard.cornerPush.velOff = 0
air.velocity = -4.16, -6.81
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall.xvelocity = -3
fall.yvelocity = -4.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -124
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forceStand = 1

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = (Anim = ifelse(var(40), 11200, 1200) || Anim = ifelse(var(40), 11210, 1210)) && AnimElemTime(6) >= 0
trigger2 = Anim = ifelse(var(40), 11220, 1220) && AnimElemTime(5) >= 0
moveType = I

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;EX RUFFIAN KICK=
[StateDef 1230]
type = S
physics = S
moveType = A
anim = ifelse(var(40), 11230, 1230)
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
var(25) = 35

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(31 * const(size.xscale)), ceil(-48 * const(size.yscale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1230, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1230, 0
channel = 0

[State 1230, Skid Sound]
type = PlaySnd
trigger1 = !time
value = 101, 0
channel = 4

[State 1230, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 5
channel = 3

[State 1230, Skid Dust]
type = Explod
trigger1 = AnimElem = 5
anim = 8104
sprPriority=3
posType = P1
pos = ceil(-42 * const(size.xscale)),0
bindtime = 25
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElemTime(3)>=0 && AnimElemTime(6)<0
x = 6.5

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1230, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 7 || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Up
fall.animType = Up
ground.type = Trip
air.type = Trip
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = 0, -7.5
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6.625, -13.25)
guard.cornerPush.velOff = 0
air.velocity = 0, -7.5
air.cornerPush.velOff = 0
fall.xvelocity = -1.5
fall.yvelocity = -2.25
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 84), var(36) := -9
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 1230, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1230, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;BAD SPRAY=
;Falling
[StateDef 1300]
type = A
moveType = H
physics = A

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5035 && !AnimTime
value = 5050

[State 1300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 1300, End]
type = SelfState
trigger1 = pos y > -vel y
value = 1301

;Bad Spray
[StateDef 1301]
type = L
physics = C
moveType = H
anim = 1301
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)

[State 1301, EnvShake]
type = FallEnvShake
trigger1 = !Time

[State 1301, Explod]
type = Explod
trigger1 =!Time
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
postype = p1
pos = 0, 0
facing = facing
sprpriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 1301, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 1301, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 1301, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6)<0
value = SCA,AA,AP,AT
time = 1
ignorehitpause = 1

[State 1301, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
statetype = C
physics = C
movetype = A
ignorehitpause = 1

[State 1230, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1300, 0
channel = 0

[State 1230, Skid Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1300, 1
channel = 2

[State 1230, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 2
channel = 3

[State 1301, Explod]
type = Explod
trigger1 = AnimElem = 8
anim = 1305
ID = 1305
pos = ceil(15 * const(size.xscale)), ceil(4 * const(size.yscale))
postype = p1
bindtime = 15
removetime = -2
pausemovetime = 0
scale = 1 * const(size.xscale), 1 * const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1301, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 8
attr = S, SP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 7
getpower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
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
ground.velocity = -4.25, -6.55
ground.cornerPush.velOff = 0
guard.velocity = -15
guard.cornerPush.velOff = 0
air.velocity = -4.25, -6.55
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.xvelocity = -2
fall.yvelocity = -4
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 118), var(36) := -51
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 1301, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1301, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1


;KNIFE PICK-UP=
[StateDef 1400]
type = S
physics = S
moveType = I
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1400, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1400, 0
channel = 0

[State 1400, Grab]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1400, 1
channel = 3

[State 1400, VarSet]
type = VarSet
trigger1 = AnimElem = 2
var(40) = 1
ignorehitpause = 1

[State 1400, Light Splash]
type = Explod
trigger1 = AnimElem = 13
anim = 14000
pos = ceil(-15 * const(size.xscale)), ceil(-84 * const(size.yscale))
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 11
scale = 1,1
sprpriority = 3
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 1400, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;BAD KNIFE=
[StateDef 1500]
type = S
physics = S
moveType = I
anim = 1500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1500, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1500,0
channel = 0

[State 1500, Woosh]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1,2
channel = 1

[State 1500, Light Splash]
type = Explod
trigger1 = Anim = 1500 && AnimElemTime(2)=5
anim = 14000
pos = ceil(-16 * const(size.xscale)), ceil(-83 * const(size.yscale))
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 11
scale = 1,1
sprpriority = 3
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 1500, Projectile]
type = Helper
trigger1 = AnimElemTime(11) = 1
helperType = Normal
stateNo = 1505
ID = 15000
name = "Bad Knife Projectile"
posType = P1
pos = ceil(81 * const(size.xscale)), ceil(-91 * const(size.yscale))
size.xScale = 1 * const(size.xscale)
size.yScale = 1 * const(size.yscale)
ownPal = 1

[State 1500, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElem = 5
moveType = I

[State 1500, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;PUNCH ZERO COUNTER=
[StateDef 2900]
type = S
physics = S
moveType = A
anim = 2900
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2900, Knife Dropped]
type = helper
triggerall = var(40)
trigger1 = !Time
name = "Knife"
id = 15000
pos = ceil(0 * const(size.xscale)), ceil(-60 * const(size.yscale))
postype = p1
stateno = 15500
size.xscale = const(Size.xscale)
size.yscale = const(Size.yscale)
helpertype = normal
ownpal = 1
keyctrl = 0
ignorehitpause = 1
size.ground.back = 18
size.ground.front = 18
supermovetime = 99999999

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(4)<0
value = 0

[State 2900, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x = 10

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElem = 3
x = 16.5

[State 2900, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 2900, Skid Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 101,0
channel = 3

[State 2900, Skid Dust]
type = Explod
trigger1 = AnimElem = 3
anim = 8104
sprPriority=3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
ID = 2900
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 0
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -12.75, -4.55
ground.cornerPush.velOff = 0
guard.velocity = -25
guard.cornerPush.velOff = 0
air.velocity = -12.75, -4.55
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.xvelocity = -2
fall.yvelocity = -4
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -39), var(36) := -88
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forceStand = 1

[State 2900, TargetState]
type = TargetState
trigger1 = NumTarget && AnimElemTime(4)<0
value = 2905
ignorehitpause = 1

[State 2900, TargetBind 1]
type = TargetBind
triggerall = MoveHit && NumTarget(2900)
trigger1 = AnimElemTime(3)>=0 && AnimElemTime(4)<0
time = 1
pos = ceil(-20 * const(size.xscale)), ceil(-86 * const(size.yscale))
ignorehitpause = 1

[State 2900, TargetState]
type = TargetState
trigger1 = NumTarget && AnimElem = 4
value = 2906
ignorehitpause = 1

[State 2900, TargetBind 2]
type = TargetBind
triggerall = MoveHit && NumTarget(2900)
trigger1 = AnimElemTime(4)>=0 && AnimElemTime(5)<0
time = 1
pos = ceil(27 * const(size.xscale)), ceil(-94 * const(size.yscale))
ignorehitpause = 1

[State 2900, TargetBind 3]
type = TargetBind
triggerall = MoveHit && NumTarget(2900)
trigger1 = AnimElem = 5
time = 1
pos = ceil(60 * const(size.xscale)), ceil(-94 * const(size.yscale))
ignorehitpause = 1

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 2900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Target
[Statedef 2905]
type = A
movetype= H
physics = N

[State 2905, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 2905

[State 2905, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[Statedef 2906]
type = A
movetype= H
physics = N

[State 2905, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time
value = 2905
elem = 2

[State 2905, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2905, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = -9.5
y = -5

[State 2905, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3)>=0
y = .475

[State 2905, End]
type = SelfState
triggerall = AnimElemTime(3)>=0
trigger1 = pos y > -vel y
value = 5100


;KICK ZERO COUNTER=
[StateDef 2910]
type = S
physics = N
moveType = A
anim = ifelse(var(40), 12910, 2910)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = C, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 0
getpower = 0, 0
givepower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Trip
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -4.5, -8
ground.cornerPush.velOff = 0
guard.velocity = -13.25
guard.cornerPush.velOff = 0
air.velocity = -4.5, -8
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 87), var(36) := -38
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(5) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1