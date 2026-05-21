; ________________________________________________
;| Urban Champion by NovaMagnolia 			|
; 
;==
;==SPECIAL MOVES=
;==

;---------------------------------------------------------------------------
; Quick Dash
[StateDef 1000]
type = S
physics = N
moveType = A
anim = 1000 ;+ 10000 * (var(40) = [1, 2])
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1200, Button Detect (AI Neutral)]
type = VarSet
trigger1 = !Time && AILevel && enemynear,stateno < 5000
var(10) = ifElse(p2bodydist x < 105,0,ifElse(p2bodydist x < 130,1,2))

[State 1200, Button Detect (AI Combo)]
type = VarSet
trigger1 = !Time && AILevel && enemynear,stateno >= 5000
var(10) = 0

[State 1200, Button Detect (AI Chase)]
type = VarSet
trigger1 = !Time && AILevel && (PrevStateNo = 810 || PrevStateNo = 820 || PrevStateNo = 3255)
var(10) = 2

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1001, 1002))

[State 1200, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 0
channel = 3

[State 1200, Dust Helper]
type = Helper
trigger1 = Cond(!var(10),(AnimElem = 3),(AnimElem = 4))
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1200, VelSet]
type = VelSet
trigger1 = Cond(!var(10),(AnimElem = 3),(AnimElem = 4))
x = ifElse(var(10) = 2, 18, ifElse(var(10) = 1, 14, 10))

[State 1200, VelSet]
type = VelAdd
trigger1 = AnimElemTime(3 + 1*(var(10)>0)) > 0 && AnimElemTime(6 + 1*(var(10)>0)) < 0
x = Cond(var(10),-1,-0.65)

[State 1200, VelSet]
type = VelSet
trigger1 = Cond(!var(10),(AnimElem = 6),(AnimElem = 7))
x = 0

[State 1200, AttackDist]
type = AttackDist
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1000, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1000, Face Breaker]
type = VarSet
triggerAll = !var(14) && AnimElemTime(5 + 1*(var(10)>0)) >= 0 && AnimElemTime(6 + 1*(var(10)>0)) < 0
trigger1 = !AILevel
;c
trigger1 = NumExplod(90000220)
var(14) = 1015

[State 1000, Low Sweep]
type = VarSet
triggerAll = !var(14) && AnimElemTime(5 + 1*(var(10)>0)) >= 0 && AnimElemTime(6 + 1*(var(10)>0)) < 0
trigger1 = !AILevel
;b
trigger1 = NumExplod(90000210)
var(14) = 1010

[State 1000, High Smash]
type = VarSet
triggerAll = !var(14) && AnimElemTime(5 + 1*(var(10)>0)) >= 0 && AnimElemTime(6 + 1*(var(10)>0)) < 0
trigger1 = !AILevel
;a
trigger1 = NumExplod(90000200)
var(14) = 1005

[State 1000, Power Launcher]
type = Null;VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(5 + 1*(var(10)>0)) >= 0 && AnimElemTime(6 + 1*(var(10)>0)) < 0
trigger1 = !AILevel
;c
trigger1 = NumExplod(90000220)
var(14) = 1020

[State 1000, AI Followup]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(5 + 1*(var(10)>0)) >= 0 && AnimElemTime(6 + 1*(var(10)>0)) < 0
trigger1 = AILevel && (P2BodyDist x = [-10, 105]) && enemynear,pos y > -15 && p2statetype != L
var(14) = Cond(p2statetype = S, 1005 + 5*(random%3 && enemynear,stateno < 5000), 1010 + 5*(random%2 && enemynear,stateno < 5000))

[State 1000, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(5 + 1*(var(10)>0)) >= 0 && AnimElemTime(6 + 1*(var(10)>0)) < 0
value = var(14)

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Face Breaker
[StateDef 1005]
type = S
physics = N
moveType = A
anim = 1005
ctrl = 0
velSet = 4,0
sprPriority = 1
faceP2 = 1

[State 1005, Voice]
type = PlaySnd
trigger1 = !time
value = 1005, 0
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) < 0
x = -0.2

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 1010, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20) * !var(50), 18 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 21
guard.hittime = (21) - 6
ground.slideTime = 21
air.hitTime = 120
ground.velocity = -10
ground.cornerPush.velOff = 0
guard.velocity = -10
guard.cornerPush.velOff = 0
air.velocity = -4.5,-7
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -78
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 210, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 1005
elem = 3
ignoreHitPause = 1

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Low Sweep
[StateDef 1010]
type = S
physics = N
moveType = A
anim = 1010
ctrl = 0
velSet = 4,0
sprPriority = 1
faceP2 = 1

[State 1005, Voice]
type = PlaySnd
trigger1 = !time
value = 1010, 0
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) < 0
x = -0.2

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 1010, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 2
ID = 1010
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20) * !var(50), 18 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Trip
ground.hitTime = 15
guard.hittime = (15) - 6
ground.slideTime = 15
air.hitTime = 120
ground.velocity = -3.35195530726, -7.34375
ground.cornerPush.velOff = 0
guard.velocity = -10
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
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
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -20
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 210, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 1010
elem = 3
ignoreHitPause = 1

[State 450, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1010) > 1
ID = 450
keepOne = 1
excludeID = 450
ignoreHitPause = 1

[State 450, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1010)
trigger1 = !(Target(1010), Time)
value = 50450
ID = 1010
ignoreHitPause = 1

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Head Smasher
[StateDef 1015]
type = S
physics = N
moveType = A
anim = 1015
ctrl = 0
velSet = 4,0
sprPriority = 1
faceP2 = 1

[State 1005, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1015, 0
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 5
channel = 1

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) < 0
x = -0.2

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 1010, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 92 < 7, 7, fvar(11) * 92)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20) * !var(50), 18 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 23
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -6
ground.cornerPush.velOff = 0
guard.velocity = -6
guard.cornerPush.velOff = 0
air.velocity = -4.5,-7
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -25
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 210, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 1015
elem = 5
ignoreHitPause = 1

[State 210, AI Overhead Cheat]
type = AssertSpecial
trigger1 = enemynear,AILevel && random%2
flag = unguardable

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; EX Quick Dash
[StateDef 1030]
type = S
physics = N
moveType = A
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
var(25) = 20

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -14, -68
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1030, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1200, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000, 0

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1200, VelSet]
type = VelSet
trigger1 = (AnimElem = 3)
x = 14

[State 1200, VelSet]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(6) < 0
x = -1

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1200, AttackDist]
type = AttackDist
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1000, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1000, Power Launcher]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger1 = !AILevel
;c
trigger1 = NumExplod(90000220)
var(14) = 1045

[State 1000, Low Sweep]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger1 = !AILevel
;b
trigger1 = NumExplod(90000210)
var(14) = 1040

[State 1000, High Smash]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger1 = !AILevel
;a
trigger1 = NumExplod(90000200)
var(14) = 1035

[State 1000, AI Followup]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger1 = AILevel && (P2BodyDist x = [-10, 105])
var(14) = Cond(p2statetype = S, 1035 + 5*((random >= 700 || power >= 1000) && enemynear,stateno < 5000), 1040 + 5*(random%2 && enemynear,stateno < 5000))

[State 1000, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
value = var(14)

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Power Launcher
[StateDef 1035]
type = S
physics = N
moveType = A
anim = 1035
ctrl = 0
velSet = 4,0
sprPriority = 1
faceP2 = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 7

[State 1005, Voice]
type = PlaySnd
trigger1 = !time
value = 1005, 0
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) < 0
x = -0.2

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 1010, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 2
ID = 1035
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 22
air.hitTime = 120
ground.velocity = -0.27932960893, -14.375
ground.cornerPush.velOff = 0
guard.velocity = -11.3689709948
guard.cornerPush.velOff = 0
air.velocity = -0.27932960893, -14.375
air.cornerPush.velOff = 0
yAccel = 0.78125
fall = 1
fall.recover = 1
fall.recoverTime = 255
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -78
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 210, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 1035
elem = 3
ignoreHitPause = 1

[State 1200, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(51) && NumTarget(1035)
trigger1 = Target(1035), StateType = A
var(15) = 0

[State 1330, Power Launcher Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1035)
trigger1 = Target(1035), StateType = A
var(51) = 1
persistent = 0

[State 1200, End]
type = ChangeState
trigger1 = AILevel >= 6 && NumEnemy && MoveHit
trigger1 = !AnimTime
value = 500

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; EX Low Sweep
[StateDef 1040]
type = S
physics = N
moveType = A
anim = 1040
ctrl = 0
velSet = 4,0
sprPriority = 1
faceP2 = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 7

[State 1005, Voice]
type = PlaySnd
trigger1 = !time
value = 1010, 0
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) < 0
x = -0.2

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 1010, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 21
guard.hittime = (21) - 6
ground.slideTime = 21
air.hitTime = 120
ground.velocity = -7.93322405606
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.5,-7
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -20
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 210, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 1040
elem = 3
ignoreHitPause = 1

[State 1200, End]
type = ChangeState
trigger1 = AILevel >= 6 && NumEnemy && MoveHit
trigger1 = !AnimTime
value = 210

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; EX Head Smasher
[StateDef 1045]
type = S
physics = N
moveType = A
anim = 1015
ctrl = 0
velSet = 4,0
sprPriority = 1
faceP2 = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 18

[State 1005, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1015, 0
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 5
channel = 1

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) < 0
x = -0.2

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 1010, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4
ID = 1045
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 92 < 7, 7, fvar(11) * 92)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1.11731843575, 5
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, 5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -25
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1045) > 1
ID = 1045
keepOne = 1
excludeID = 1045
ignoreHitPause = 1

[State 1400, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1045)
trigger1 = !(Target(1045), Time)
value = ifElse(Target(1045), StateType = A, 5425, 5420)
ID = 1045
ignoreHitPause = 1

[State 210, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 1015
elem = 5
ignoreHitPause = 1

[State 210, AI Overhead Cheat]
type = AssertSpecial
trigger1 = enemynear,AILevel && random%2
flag = unguardable

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rising Champion
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = Cond(enemynear,stateno < 5000, random%3,2)

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1100, ifElse(var(10) = 1, 1101, 1102))

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100, 0 
channel = 0

[State 1100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 40, 0
channel = 4

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElemTime(3) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 2
x = ifElse(var(10) = 2, 8.93854748603, ifElse(var(10) = 1, 6.70391061453, 4.46927374302))
y = ifElse(var(10) = 2, -11.25, ifElse(var(10) = 1, -8.75, -6.25))

[State 1100, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(3) > 2
x = -0.69832402234

[State 1100, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 2
y = 0.5859375

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0 && !var(10)
trigger2 = AnimElemTime(3) < 0 && var(10)
value = SCA
time = 1

[State 1100, PosAdd]
type = PosAdd
trigger1 = (AnimElemTime(3) = [0,1])
x = 10*const(size.xscale)

[State 1100, Debug Pause]
type = Null;Pause
trigger1 = vel x = 0 && vel y > 0 && statetype = A
time = 100
persistent = 0

[State 1100, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10) = 1, 63, 56)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10) = 1, 63, 56)))), ifElse(var(10) = 2, 10, ifElse(var(10) = 1, 9, 8))
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Air Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 3 ;&& !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, AI ChangeState] ;Oh fuck uhhhhhhhhhhhhh
type = ChangeState
trigger1 = AILevel >= 6 && roundstate = 2 && power >= 1000
trigger1 = var(7) && movecontact && enemynear,pos y > -10
value = Cond(movehit,3000,3100)

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1100, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1105


;Landing
[StateDef 1105]
type = S
anim = 1105
physics = N
moveType = I
velSet = 0,0

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
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1105, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 1105, End]
type = ChangeState
trigger1 = AILevel >= 6
trigger1 = Cond(NumTarget,target,gethitvar(fall) = 1,enemynear,stateno = 5201)
trigger1 = !AnimTime
value = 110

[State 1105, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; EX Rising Champion
[StateDef 1130]
type = S
physics = N
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
var(25) = 24

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(23*const(size.xscale)), ceil(-37*const(size.yscale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1130, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1130, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0
channel = 0

[State 1130, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 7 || AnimElem = 11
value = 1, 2
channel = 1

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 1
value = 40, 0
channel = 5

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElemTime(3) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 2
x = 11.1731843575
y = -13.75

[State 1130, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(3) > 2
x = -0.69832402234

[State 1130, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 2
y = 0.5859375

[State 1130, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
value = SCA
time = 1

[State 1100, PosAdd]
type = PosAdd
trigger1 = (AnimElemTime(3) = [0,1])
x = 10*const(size.xscale)

[State 1130, Ground Hit]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Air Hit 1]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 3
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -15
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Air Hit 2]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 7
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Air Hit 3]
type = HitDef
triggerAll = !var(16) && var(15) < 4
trigger1 = AnimElem = 11
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
moveType = I

[State 1130, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1105

;---------------------------------------------------------------------------
; Fists of Fury
[StateDef 1200]
type = S
physics = N
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1200, Button Detect (AI Light)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 0

[State 1200, Button Detect (AI Medium)]
type = VarSet
trigger1 = !Time && AILevel
trigger1 = ((PrevStateNo = [210,211]) || PrevStateNo = 240 || PrevStateNo = 410 || PrevStateNo = 440)
var(10) = 1

[State 1200, Button Detect (AI Heavy)]
type = VarSet
trigger1 = !Time && AILevel
trigger1 = (PrevStateNo = 225 || PrevStateNo = 255 || PrevStateNo = 420)
var(10) = 2

[State 1200, Button Detect (AI Custom Combo)]
type = VarSet
trigger1 = !Time && var(20) && AILevel
var(10) = 2

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1201, 1202))

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && !var(10) || AnimElem = 5 && var(10)
value = 1200, 0
channel = 0

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = !Time
value = 40, 0
channel = 1

[State 1200, Voice]
type = PlaySnd
trigger1 = (AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12 || AnimElem = 15) && !var(10)
trigger2 = (AnimElem = 8 || AnimElem = 10 || AnimElem = 12 || AnimElem = 14 || AnimElem = 18) && var(10) = 1
trigger3 = (AnimElem = 8 || AnimElem = 10 || AnimElem = 12 || AnimElem = 14 || AnimElem = 18) && var(10) = 2
value = 3010,0
channel = 0

[State 1200, Woosh Sound]
type = PlaySnd
trigger1 = (AnimElem = 3 || AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12 || AnimElem = 15) && !var(10)
trigger2 = (AnimElem = 5 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12 || AnimElem = 14 || AnimElem = 18) && var(10) = 1
trigger3 = (AnimElem = 5 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12 || AnimElem = 14 || AnimElem = 18) && var(10) = 2
value = 1, 2
channel = 1

[State 1150, 6]
type = PosAdd
trigger1 = !Var(10) && (AnimElemTime(2) = 0 || AnimElemTime(3) = 0 || (AnimElemTime(15) = [0,1]))
x = 10*const(size.xscale)

[State 1150, 7]
type = PosAdd
trigger1 = Var(10) && (AnimElemTime(3) = 0 || AnimElemTime(4) = 0 || AnimElemTime(16 + 1*(var(10) = 2)) = 0)
x = (10-(4*(AnimElemTime(4) = 0)))*const(size.xscale)

[State 1150, 11]
type = VelSet
trigger1 = (!Var(10) && AnimElem = 2) || (Var(10) && AnimElem = 3)
x = ifElse(var(10) = 0, 5.12, ifElse(var(10) = 1, 8.19, 11.26)) 

[State 1150, 11]
type = VelAdd
trigger1 = vel x > 0
x = -0.82;*const(size.xscale)

[State 1150, 11]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1200, HitDef (Initial Hit)]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3 && !var(10) 
trigger2 = AnimElem = 5 && var(10) = 1
trigger3 = AnimElem = 5 && var(10) = 2
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 35, ifElse(var(10) = 1, 21, 14)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 35, ifElse(var(10) = 1, 35, 21)))), ifElse(var(10) = 2, 14, ifElse(var(10) = 1, 13, 12))
getPower = ifElse(!var(13), 72, 36) * !var(20) * !var(50), 12 * !var(20) * !var(50)
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
ground.velocity = 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 255
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef (Barrage)]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = (AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12) && !var(10) 
trigger2 = (AnimElem = 8 || AnimElem = 10 || AnimElem = 12 || AnimElem = 14) && var(10) = 1
trigger3 = (AnimElem = 8 || AnimElem = 10 || AnimElem = 12 || AnimElem = 14) && var(10) = 2
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20) * !var(50), 12 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 1, 2), ifElse(var(20), 1, 2)
guard.pauseTime = ifElse(var(20), 1, 2), ifElse(var(20), 1, 2)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 255
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1210, HitDef (LP Final Hit)]
type = HitDef
triggerAll = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 15 && !var(10)
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 21
guard.hittime = (21) - 6
ground.slideTime = 21
air.hitTime = 120
ground.velocity = -7.93322405606
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.67597765363, -7.1875
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1210, HitDef (MP Final Hit)]
type = HitDef
triggerAll = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 18 && var(10) = 1
ID = 1200
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 21
guard.hittime = (21) - 6
ground.slideTime = 21
air.hitTime = 120
ground.velocity = -1.11731843575, 5
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, 5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -25
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1210, HitDef (HP Final Hit)]
type = HitDef
triggerAll = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 18 && var(10) = 2
ID = 1200
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 21
guard.hittime = (21) - 6
ground.slideTime = 21
air.hitTime = 120
ground.velocity = -0.27932960893, -14.375
ground.cornerPush.velOff = 0
guard.velocity = -11.3689709948
guard.cornerPush.velOff = 0
air.velocity = -0.27932960893, -14.375
air.cornerPush.velOff = 0
yAccel = 0.78125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -110
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1200) > 1
ID = 1200
keepOne = 1
excludeID = 1200
ignoreHitPause = 1

[State 1400, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1200)
trigger1 = !(Target(1200), Time)
trigger1 = var(10) = 1
value = ifElse(Target(1200), StateType = A, 5425, 5420)
ID = 1200
ignoreHitPause = 1

[State 1200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3 + 2*(var(10) > 0)) >= 0 && AnimElemTime(4 + 2*(var(10) > 0)) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1201, 1202)) 
elem = 4 + 2*(var(10) > 0)
ignoreHitPause = 1

[State 1200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(15 + 3*(var(10) > 0)) >= 0 && AnimElemTime(16 + 3*(var(10) > 0)) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1201, 1202)) 
elem = 16 + 3*(var(10) > 0)
ignoreHitPause = 1

[State 1200, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(52) && NumTarget(1200) && var(10) = 2
trigger1 = Target(1200), StateType = A
var(15) = 0

[State 1330, Fists of Fury Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1200)
trigger1 = Target(1200), StateType = A
var(52) = 1
persistent = 0

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(16) >= 0 && !var(10)
trigger2 = AnimElemTime(19) >= 0 && var(10)
moveType = I

[State 1200, End]
type = ChangeState
trigger1 = AILevel >= 6 && NumEnemy && var(10)
trigger1 = !AnimTime
value = 500

[State 1200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; EX Fists of Fury
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
var(25) = 55

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(10*const(size.xscale)), ceil(-33*const(size.yscale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1230, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1230, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1200, 0
channel = 0

[State 1230, Jump Sound]
type = PlaySnd
trigger1 = !Time
value = 40, 0
channel = 1

[State 1200, Voice]
type = PlaySnd
trigger1 = (AnimElem = 8 || AnimElem = 10 || AnimElem = 12 || AnimElem = 14 || AnimElem = 18)
value = 3010,0
channel = 0

[State 1230, Woosh Sound]
type = PlaySnd
trigger1 = (AnimElem = 5 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12 || AnimElem = 14 || AnimElem = 18)
value = 1, 5
channel = 1

[State 1230, PosAdd]
type = PosAdd
trigger1 = (AnimElemTime(3) = 0 || AnimElemTime(4) = 0 || AnimElemTime(16) = 0)
x = (10-(4*(AnimElemTime(4) = 0)))*const(size.xscale)

[State 1230, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 11.26

[State 1230, VelAdd]
type = VelAdd
trigger1 = vel x > 0
x = -0.82;*const(size.xscale)

[State 1230, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1200, HitDef (Initial Hit)]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
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
ground.velocity = 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 255
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef (Barrage)]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = (AnimElem = 8 || AnimElem = 10 || AnimElem = 12 || AnimElem = 14)
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 1, 2), ifElse(var(20), 1, 2)
guard.pauseTime = ifElse(var(20), 1, 2), ifElse(var(20), 1, 2)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 255
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1210, HitDef (Final Hit)]
type = HitDef
triggerAll = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 18
ID = 1230
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 21
guard.hittime = (21) - 6
ground.slideTime = 21
air.hitTime = 120
ground.velocity = -1.11731843575, 5
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, 5
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -25
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1230) > 1
ID = 1200
keepOne = 1
excludeID = 1200
ignoreHitPause = 1

[State 1400, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1230)
trigger1 = !(Target(1230), Time)
value = ifElse(Target(1230), StateType = A, 5425, 5420)
ID = 1230
ignoreHitPause = 1

[State 1200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 1230
elem = 6
ignoreHitPause = 1

[State 1200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(19) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 1230
elem = 19
ignoreHitPause = 1

[State 1235, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Counter Attack
[StateDef 1300]
type = S
physics = N
moveType = A
anim = 1300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = !time
value = 1300,0
channel = 0

[State 700, Dodge Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 3
channel = 1

[State 1000, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1000, Spin Punch]
type = VarSet
triggerAll = !var(14) && AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger1 = !AILevel
; FF
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001016)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001064))
trigger2 = AILevel >= 6 && AnimElemTime(4) = 1 && (enemynear,movetype = A || random > 500)
var(14) = 1310

[State 1000, Retreat]
type = VarSet
triggerAll = !var(14) && AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger1 = !AILevel
; BB
trigger1 = (ifElse(P2Dist x < 0, Facing = -1, Facing = 1) && NumExplod(90001064)) || (ifElse(P2Dist x < 0, Facing = 1, Facing = -1) && NumExplod(90001016))
trigger2 = AILevel >= 6 && AnimElemTime(4) = 1 && (enemynear,movetype = A || random > 500)
var(14) = 1305

[State 1000, Followup]
type = ChangeState
trigger1 = var(14) = [1000,2999]
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
value = var(14)

[State 1300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1, 2
channel = 1

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0 
value = SCA
time = 1

[State 1100, 6]
type = PosAdd
trigger1 = AnimElem = 7
x = 6*const(size.xscale)

[State 1100, 7]
type = Velset
trigger1 = AnimElem = 6
x = 5.5

[State 1100, 7]
type = VelAdd
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(9) < 0
x = -.3

[State 1100, 7]
type = Velset
trigger1 = AnimElem = 9
x = 0

[State 1300, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 7
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 126)), 15
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.46927374302, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1300
elem = 7
ignoreHitPause = 1

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1300, AI ChangeState] ;Surely they fall for it again
type = ChangeState
trigger1 = !AnimTime && AILevel >= 5 && MoveGuarded && random > 200
value = 1300

[State 3010, AI End]
type = ChangeState
trigger1 = AILevel >= 6
trigger1 = Cond(NumTarget,target,gethitvar(fall) = 1,enemynear,stateno = 5201)
trigger1 = !AnimTime
value = Cond((enemynear,BackEdgeBodyDist > 10 || p2bodydist x > 10),110,500)

[State 1300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Retreat
[StateDef 1305]
type = S
physics = N
moveType = A
anim = 1305
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 1300, Voice]
type = PlaySnd
trigger1 = !time
value = 1200,0
channel = 0

[State 105, Dust Helper]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
facing = -1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 111, Dash End Sound]
type = PlaySnd
trigger1 = !Time
value = 101,0

[State 1300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 1

[State 1100, VelSet]
type = Velset
trigger1 = AnimElem = 1 || AnimElem = 3
x = Cond((AnimElem = 1),-10,13)

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
trigger2 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
x = Cond((AnimElemTime(3) >= 0 && AnimElemTime(5) < 0),-1.2,.9)

[State 1100, 7]
type = Velset
trigger1 = AnimElem = 2 || AnimElem = 5
x = 0

[State 1400, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = , AT
time = 1

[State 1300, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 126)), 15
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -46
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 3010, AI End]
type = ChangeState
trigger1 = AILevel >= 6
trigger1 = Cond(NumTarget,target,gethitvar(fall) = 1,enemynear,stateno = 5201)
trigger1 = !AnimTime
value = Cond((enemynear,BackEdgeBodyDist > 10 || p2bodydist x > 10),110,500)

[State 1300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Piroeutte Punch
[StateDef 1310]
type = S
physics = N
moveType = A
anim = 1310
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = !time
value = 3010,1
channel = 0

[State 700, Dodge Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 3
channel = 1

[State 1300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 1100, 7]
type = Velset
trigger1 = AnimElem = 1
x = 7

[State 1100, 7]
type = Velset
trigger1 = AnimElem = 6
x = 0

[State 1300, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 126)), 15
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -4.46927374302, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1310
elem = 7
ignoreHitPause = 1

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 3010, AI End]
type = ChangeState
trigger1 = AILevel >= 6
trigger1 = Cond(NumTarget,target,gethitvar(fall) = 1,enemynear,stateno = 5201)
trigger1 = !AnimTime
value = Cond((enemynear,BackEdgeBodyDist > 10 || p2bodydist x > 10),110,500)

[State 1300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Street Smasher
[StateDef 1400]
type = S
physics = N
moveType = A
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1200, AI Button Detect]
type = VarSet
trigger1 = !Time && AILevel
var(10) = Cond(enemynear,stateno >= 5000,2,random%3)

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1400, ifElse(var(10) = 1, 1401, 1402))

[State 1200, Reset QCBx2 Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030104)
ID = 90030104

[State 1200, Reset QCBx2 Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030006)
ID = 90030006

[State 1200, Voice]
type = PlaySnd
trigger1 = !Time
value = 1010,0
channel = 0

[State 1200, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 0
channel = 1

[State 1200, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = ifElse(var(10) = 2, 10.0558659218, ifElse(var(10) = 1, 8.37988826816, 6.70391061453))

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1 && AnimElemTime(5) < 0
x = -ifElse(var(10) = 2, 0.39280726257, ifElse(var(10) = 1, 0.32733938547, 0.26187150838))

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
x = 0

[State 1200, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
guard.hittime = (15) - 6
ground.slideTime = 15
air.hitTime = 120
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1400, ifElse(var(10) = 1, 1401, 1402))
elem = 5
ignoreHitPause = 1

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1200, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1200, 127 Street Upper]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(5) >= 0 && AnimElemTime(8) < 0
trigger1 = !AILevel
;command = "QCB"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
trigger2 = AILevel && (EnemyNear, Alive)
trigger2 = MoveContact
var(14) = 1410

[State 1200, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(5) >= 1 && AnimElemTime(8) < 0
value = var(14)

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Street Upper
[StateDef 1410]
type = S
physics = N
moveType = A
velSet = 0, 0
anim = 1410
ctrl = 0
sprPriority = 1
hitCountPersist = 1

[State 1210, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1410, ifElse(var(10) = 1, 1411, 1412))

[State 1210, Reset QCFx2 explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030104)
ID = 90030104

[State 1210, Reset QCFx2 explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030006)
ID = 90030006

[State 1210, Voice]
type = PlaySnd
trigger1 = !Time
value = 1005,0
channel = 0

[State 1210, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 0
channel = 1

[State 1210, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 1210, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = ifElse(var(10) = 2, 10.0558659218, ifElse(var(10) = 1, 8.37988826816, 6.70391061453))

[State 1210, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1 && AnimElemTime(5) < 0
x = -ifElse(var(10) = 2, 0.39280726257, ifElse(var(10) = 1, 0.32733938547, 0.26187150838))

[State 1210, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
x = 0

[State 1210, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20) * !var(50), 18 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
guard.hittime = (15) - 6
ground.slideTime = 15
air.hitTime = 120
ground.velocity = -4.46927374302, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1210, Juggle Reset]
type = Null;VarSet
trigger1 = MoveHit && !var(11) && NumTarget(1210) && var(40) = 1
var(15) = 0

[State 1210, 127 Shiki: Aoibana Juggle Flag]
type = Null;VarAdd
trigger1 = MoveHit && NumTarget(1210) && var(40) = 1
var(11) = 1
persistent = 0

[State 1210, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1410, ifElse(var(10) = 1, 1411, 1412))
elem = 5
ignoreHitPause = 1

[State 1210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 3010, AI End]
type = ChangeState
trigger1 = AILevel >= 6
trigger1 = Cond(NumTarget,target,gethitvar(fall) = 1,enemynear,stateno = 5201)
trigger1 = !AnimTime
value = Cond((enemynear,BackEdgeBodyDist > 10 || p2bodydist x > 10),110,500)

[State 1210, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; EX Street Smasher
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

[State 1130, VarSet]
type = VarSet
trigger1 = 1
var(10) = AnimElemNo(0)

[State 1200, Reset QCBx2 Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030104)
ID = 90030104

[State 1200, Reset QCBx2 Explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030006)
ID = 90030006

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
var(25) = 29

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -14, -68
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1030, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1200, Voice]
type = PlaySnd
trigger1 = !Time
value = 1010,0
channel = 0

[State 1200, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 0
channel = 1

[State 1200, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = 10.0558659218

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1 && AnimElemTime(5) < 0
x = 0.39280726257

[State 1430, HitOverride]
type = HitOverride
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
attr = SCA, AA, AP
stateNo = 1431

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
x = 0

[State 1200, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
guard.hittime = (15) - 6
ground.slideTime = 15
air.hitTime = 120
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1400, ifElse(var(10) = 1, 1401, 1402))
elem = 5
ignoreHitPause = 1

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1200, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1200, 127 Street Upper]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(5) >= 0 && AnimElemTime(8) < 0
trigger1 = !AILevel
;command = "QCB"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
trigger2 = AILevel && (EnemyNear, Alive)
trigger2 = MoveHit
var(14) = 1440

[State 1200, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(5) >= 1 && AnimElemTime(8) < 0
value = var(14)

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; (Armored)
[StateDef 1431]
type = S
physics = N
moveType = A
anim = 1430
ctrl = 0
;velSet = 0,0
sprPriority = 1

[State 1131, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 24

[State 1131, Pause]
type = Pause
trigger1 = !Time
time = 8

[State 1131, Armor Flash]
type = PalFX
trigger1 = !Time
time = 1
color = 128
mul = 256, 256, 256
add = -128, 56, 56
ignoreHitPause = 1

[State 1131, Armor Sound]
type = PlaySnd
trigger1 = !Time
value = 3, 10
channel = 2
ignoreHitPause = 1

[State 1131, Armor Spark]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8025
ID = 8000
name = "Spark"
postype = P1
pos = 0, -58
facing = 1
ownPal = 1
size.xscale = 0.83333333333 ;Borrowed this from KarmaCharmeleon's Alex, hence the weird scaling.
size.yscale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1131, LifeAdd]
type = LifeAdd
trigger1 = !Time
value = -(GetHitVar(Damage))
kill = 0

[State 1131, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1430
elem = var(10)

[State 1200, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 0
channel = 1

[State 1200, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = 10.0558659218

[State 1200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1 && AnimElemTime(5) < 0
x = 0.39280726257

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
x = 0

[State 1200, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
guard.hittime = (15) - 6
ground.slideTime = 15
air.hitTime = 120
ground.velocity = -7.93322405606, 0
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1400, ifElse(var(10) = 1, 1401, 1402))
elem = 5
ignoreHitPause = 1

[State 1200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1200, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1200, 127 Street Upper]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(5) >= 0 && AnimElemTime(8) < 0
trigger1 = !AILevel
;command = "QCB"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90010104)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90010006))
;a / b / c
trigger1 = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
trigger2 = AILevel && (EnemyNear, Alive)
trigger2 = MoveHit
var(14) = 1440

[State 1200, Followup]
type = ChangeState
trigger1 = var(14) = [1000, 2999]
trigger1 = AnimElemTime(5) >= 1 && AnimElemTime(8) < 0
value = var(14)

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; EX Street Upper
[StateDef 1440]
type = S
physics = N
moveType = A
velSet = 0, 0
anim = 1440
ctrl = 0
sprPriority = 1
hitCountPersist = 1

[State 1210, Reset QCFx2 explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030104)
ID = 90030104

[State 1210, Reset QCFx2 explod]
type = RemoveExplod
trigger1 = !Time
trigger1 = NumExplod(90030006)
ID = 90030006

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
var(25) = 25

[State 1210, Voice]
type = PlaySnd
trigger1 = !Time
value = 1005,0
channel = 0

[State 1210, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 0
channel = 1

[State 1210, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 1210, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = 10.0558659218

[State 1210, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1 && AnimElemTime(5) < 0
x = 0.39280726257

[State 1210, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
x = 0

[State 1210, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4
ID = 1440
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
guard.hittime = (15) - 6
ground.slideTime = 15
air.hitTime = 120
ground.velocity = -3.35195530726, -9.375
ground.cornerPush.velOff = 0
guard.velocity = -11.3689709948
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -9.375
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1210, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(53) && NumTarget(1440)
var(15) = 0

[State 1210, 127 Shiki: Aoibana Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1440) && var(40) = 1
var(53) = 1
persistent = 0

[State 1210, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = ifElse(var(10) = 0, 1410, ifElse(var(10) = 1, 1411, 1412))
elem = 5
ignoreHitPause = 1

[State 1210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1210, AI ChangeState]
type = ChangeState
trigger1 = !AnimTime && AILevel >= 6 && MoveHit
value = 1600

[State 1210, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Downtown Beatdown
[StateDef 1500]
type = S
physics = N
moveType = A
anim = 1500
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1000, AI Button Detect]
type = VarSet
trigger1 = !Time && AILevel
var(10) = Cond(P2BodyDist x < 30, 2, Cond(P2BodyDist x < 32,1,0) )

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1500, ifElse(var(10) = 1, 1501, 1502))

[State 1400, Debug p2Bodydist Testing]
type = Null;PosAdd
trigger1 = !time
x = p2bodydist x - 30;*facing

;Trial and error because of size.xscale... 

[State 1400, HitDef: Throw]
type = HitDef
triggerall = AnimElem = 3 && !var(38)
trigger1 = P2BodyDist x < 36 && !var(10)
trigger2 = P2BodyDist x < 32 && var(10) = 1
trigger3 = P2BodyDist x < 30 && var(10) = 2
attr = S, ST
hitFlag = M-
priority = 7, Miss
getPower = 0,0
givePower = 0,0
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -70
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 1510

[State 1400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 800, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 5
value = 800, 0
channel = 0

[State 800, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 1400, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Downtown Beatdown (Success)
[Statedef 1510]
type = S
movetype= A
physics = N
velset = 0,0
poweradd = 80 * !var(20) * !var(50)
ctrl = 0
anim = 1510
sprpriority = 2

[State 1210, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1515

[State 1351, 2]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
pos = 40*const(size.xscale),0

[State 1351, 3]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 24*const(size.xscale), -26*const(size.yscale)

[State 1351, 4]
type = PosAdd
trigger1 = AnimElem = 4
x = 24

[State 1351, 5]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 26*const(size.xscale),-17*const(size.yscale)

[State 1351, 6]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0
pos = 18*const(size.yscale),0

[State 1351, 7]
type = Width
trigger1 = AnimElemTime(1) >= 0
edge = 40,0

[State 1351, 9]
type = PlaySnd
trigger1 = AnimElem = 6
value = 2,820

[State 1351, Voice]
type = PlaySnd
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24)
value = S3010,0
channel = 0

[State 1351, 10]
type = PlaySnd
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24)
value = S2,2
channel = 2

[State 1351, 12]
type = TargetLifeAdd
trigger1 = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24)
value = floor(ifElse(14 * fvar(11) < 7, -7, -14 * fvar(11)))
kill = 0

[State 1210, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24)
value = 18

[State 1210, Power]
type = PowerAdd
trigger1 = NumTarget && !var(20) && !var(50)
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24)
value = 36

[State 1351, 14]
type = HitAdd
trigger1 = NumTarget 
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24)
value = 1
 
[State 1351, VarAdd]
type = VarAdd
trigger1 = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24)
var(13) = 1
ignorehitpause = 1

[State 1210, Impact Dust]
type = Helper
trigger1 = NumTarget && AnimElem = 6
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = 48, 0
facing = -1
ownPal = 1

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget && (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24)
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = ceil(29*const(size.xscale)),ceil(-7*const(size.yscale))
ownPal = 1
size.xscale = 1
size.yscale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1210, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = (AnimElem = 6 || AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24)
time = 14
ampl = -4
freq = 120

[State 1351, 15]
type = ChangeState
trigger1 = !AnimTime
value = 1511

;---------------------------------------------------------------------------
;Downtown Beatdown (End)
[Statedef 1511]
type = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 1511
sprpriority = 2

[State 1352, 1]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
pos = 18*const(size.xscale),0

[State 1352, 2]
type = TargetLifeAdd
trigger1 = NumTarget && !Time
value = floor(ifElse(ifElse(var(10) = 0, 56, ifElse(var(10) = 1, 63, 70)) * fvar(11) < 7, -7, -ifElse(var(10) = 0, 56, ifElse(var(10) = 1, 63, 70)) * fvar(11)))
kill = 1

[State 1210, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && !Time
value = 18

[State 1210, Power]
type = PowerAdd
trigger1 = NumTarget && !Time && !var(20) && !var(50)
value = 36

[State 1352, 4]
type = HitAdd
trigger1 = NumTarget && !Time
value = 1

[State 1351, VarAdd]
type = VarAdd
trigger1 = NumTarget && !Time
var(13) = 1

[State 1210, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 4
var(15) = 1
ignoreHitPause = 1

[State 1210, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 4
var(16) = 1
ignoreHitPause = 1

[State 1351, Voice]
type = PlaySnd
trigger1 = !Time
value = S3010,0
channel = 0

[State 1352, 5]
type = PlaySnd
trigger1 = !Time
value = S2,2
channel = 2

[State 810, Hit Spark]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = ceil(29*const(size.xscale)),ceil(-7*const(size.yscale))
ownPal = 1
size.xscale = 1
size.yscale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1210, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = !time
time = 14
ampl = -4
freq = 120

[State 1352, 7]
type = Null;TargetState
trigger1 = NumTarget && !Time
value = 1355

[State 1352, 8]
type = PosAdd
trigger1 = AnimElem = 3
x = -14*const(size.xscale)

[State 1351, 9]
type = PlaySnd
trigger1 = AnimElem = 4
value = S40,0

[State 1351, 10]
type = VelSet
trigger1 = AnimElem = 4
x = -2.5
y = -3.9

[State 1351, 10]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = const(movement.yaccel)

[State 1351, 11]
type = TargetState
trigger1 = AnimElem = 4
value = 1516

[State 1351, 12]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = A

[State 1130, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1512

;Landing
[StateDef 1512]
type = S
anim = 57
physics = N
moveType = I
velSet = 0,0

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
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1105, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 1105, End]
type = ChangeState
trigger1 = AILevel >= 6
trigger1 = Cond(NumTarget,target,gethitvar(fall) = 1,enemynear,stateno = 5201)
trigger1 = !AnimTime
value = 110

[State 1105, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Downtown Beatdown (Target)
[Statedef 1515]
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = -2

[State 1515, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1515, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1515

[State 1515, ChangeAnim]
type = ChangeAnim
trigger1 = time = 44 || time = 57 || time = 70 || time = 83 || time = 96 || time = 109
value = 5080

;---------------------------------------------------------------------------
;Downtown Beatdown (After Throw)
[Statedef 1516]
type = A
movetype= H
physics = N
velset = -2.5,-3.4
ctrl = 0
sprpriority = -2

[State 1356, 1]
type = ChangeAnim2
trigger1 = !Time
value = 1516

[State 1356, 2]
type = VelAdd
trigger1 = 1
y = .35

[State 1356, 3]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------
; EX Downtown Beatdown
[StateDef 1530]
type = S
physics = N
moveType = A
anim = 1530
ctrl = 0
velSet = 0, 0
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
var(25) = 55

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(-7*const(size.xscale)), ceil(-37*const(size.yscale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1230, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1230, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0 
value = SCA
time = 1

[State 1400, HitDef: Throw]
type = HitDef
triggerall = AnimElem = 3 && !var(38)
trigger1 = P2BodyDist x < 36
attr = S, ST
hitFlag = M-
priority = 7, Miss
getPower = 0,0
givePower = 0,0
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -70
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 1540

[State 1400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 800, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 5
value = 800, 0
channel = 0

[State 800, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 1400, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX Downtown Beatdown (Success)
[Statedef 1540]
type = S
movetype= A
physics = N
velset = 0,0
poweradd = 80
ctrl = 0
anim = 1540
sprpriority = 2

[State 1240, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 98

[State 1210, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1545

[State 1351, 2]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) < 0
pos = 40*const(size.xscale),0

[State 1351, 3]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 24*const(size.xscale), -26*const(size.yscale)

[State 1351, 4]
type = PosAdd
trigger1 = AnimElem = 4
x = 24

[State 1351, 5]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 26*const(size.xscale),-17*const(size.yscale)

[State 1351, 6]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0
pos = 18*const(size.yscale),0

[State 1351, 7]
type = Width
trigger1 = AnimElemTime(1) >= 0
edge = 40,0

[State 1351, 9]
type = PlaySnd
trigger1 = AnimElem = 6
value = 2,820

[State 1351, Voice]
type = PlaySnd
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24 || AnimElem = 27 || AnimElem = 30)
value = S3010,0
channel = 0

[State 1351, 10]
type = PlaySnd
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24 || AnimElem = 27 || AnimElem = 30)
value = S2,2
channel = 2

[State 1351, 12]
type = TargetLifeAdd
trigger1 = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24 || AnimElem = 27 || AnimElem = 30)
value = floor(ifElse(14 * fvar(11) < 7, -7, -14 * fvar(11)))
kill = 0

[State 1210, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24 || AnimElem = 27 || AnimElem = 30)
value = 18

[State 1351, 14]
type = HitAdd
trigger1 = NumTarget 
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24 || AnimElem = 27 || AnimElem = 30)
value = 1
 
[State 1351, VarAdd]
type = VarAdd
trigger1 = NumTarget
trigger1 = (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24 || AnimElem = 27 || AnimElem = 30)
var(13) = 1
ignorehitpause = 1

[State 1210, Impact Dust]
type = Helper
trigger1 = NumTarget && AnimElem = 6
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = 48, 0
facing = -1
ownPal = 1

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget && (AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24 || AnimElem = 27 || AnimElem = 30)
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = ceil(29*const(size.xscale)),ceil(-7*const(size.yscale))
ownPal = 1
size.xscale = 1
size.yscale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1210, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = (AnimElem = 6 || AnimElem = 9 || AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21 || AnimElem = 24 || AnimElem = 27 || AnimElem = 30)
time = 14
ampl = -4
freq = 120

[State 1351, 15]
type = ChangeState
trigger1 = !AnimTime
value = 1541

;---------------------------------------------------------------------------
;EX Downtown Beatdown (End)
[Statedef 1541]
type = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 1511
sprpriority = 2

[State 1240, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 15

[State 1352, 1]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
pos = 18*const(size.xscale),0

[State 1352, 2]
type = TargetLifeAdd
trigger1 = NumTarget && !Time
value = floor(ifElse(63 * fvar(11) < 7, -7, -63 * fvar(11)))
kill = 1

[State 1210, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && !Time
value = 18

[State 1352, 4]
type = HitAdd
trigger1 = NumTarget && !Time
value = 1

[State 1351, VarAdd]
type = VarAdd
trigger1 = NumTarget && !Time
var(13) = 1

[State 1210, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 4
var(15) = 1
ignoreHitPause = 1

[State 1210, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 4
var(16) = 1
ignoreHitPause = 1

[State 1352, Voice]
type = PlaySnd
trigger1 = !Time
value = S3010,0
channel = 0

[State 1352, 5]
type = PlaySnd
trigger1 = !Time
value = S2,2
channel = 2

[State 810, Hit Spark]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = ceil(29*const(size.xscale)),ceil(-7*const(size.yscale))
ownPal = 1
size.xscale = 1
size.yscale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1210, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = !time
time = 14
ampl = -4
freq = 120

[State 1352, 7]
type = Null;TargetState
trigger1 = NumTarget && !Time
value = 1355

[State 1352, 8]
type = PosAdd
trigger1 = AnimElem = 3
x = -14*const(size.xscale)

[State 1351, 9]
type = PlaySnd
trigger1 = AnimElem = 4
value = S40,0

[State 1351, 10]
type = VelSet
trigger1 = AnimElem = 4
x = -2.5;*const(size.xscale)
y = -3.9;*const(size.yscale)

[State 1351, 10]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = const(movement.yaccel)

[State 1351, 11]
type = TargetState
trigger1 = AnimElem = 4
value = 1516

[State 1351, 12]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = A

[State 1130, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1512

;---------------------------------------------------------------------------
;EX Downtown Beatdown (Target)
[Statedef 1545]
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = -2

[State 1515, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1515, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1515

[State 1515, ChangeAnim]
type = ChangeAnim
trigger1 = time = 42 || time = 49 || time = 56 || time = 63 || time = 70 || time = 77 || time = 84 || time = 91 || time = 98
value = 5080

;---------------------------------------------------------------------------
; Ultimate Haymaker
[StateDef 1600]
type = S
physics = N
moveType = A
anim = 1600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && !var(20) && AILevel
var(10) = Cond(PrevStateNo = 1440,0,random%3)

[State 1200, Button Detect (AI Custom Combo)]
type = VarSet
trigger1 = !Time && var(20) && AILevel
var(10) = 2

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1600, ifElse(var(10) = 1, 1601, 1602))

[State 1300, Voice]
type = Null;PlaySnd
trigger1 = !time
value = 1300,0
channel = 0

[State 1300, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3010,1
channel = 0

[State 1000, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 41, 0
channel = 4

[State 1300, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 3010,0
channel = 0

[State 1000, I-Frames]
type = Null;NotHitBy
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 1000, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 9;ifElse(var(10) = 2, 18, ifElse(var(10) = 1, 16, 9))
;did not know all dash punches share the same x vel...

[State 1200, VelSet]
type = VelAdd
trigger1 = AnimElemTime(8) > 0 && AnimElemTime(11) < 0 && vel x > 0
x = -0.5

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 11 || vel x < 0
x = 0

[State 1000, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 8
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 77, 70)))), ifElse(var(10) = 2, 12, ifElse(var(10) = 1, 11, 10))
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 21
guard.hittime = (21) - 6
ground.slideTime = 21
air.hitTime = 120
ground.velocity = -10.52
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 210, ChangeAnimElem]
type = ChangeAnim
trigger1 = p2bodydist x <= 30
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(7) <= 0
value = ifElse(var(10) = 0, 1600, ifElse(var(10) = 1, 1601, 1602))
elem = 7
ignoreHitPause = 1

[State 210, AI ChangeState] ;Funny Tick Throw
type = ChangeState
trigger1 = !AnimTime && movecontact && enemynear,statetype != A && AILevel >= 5 && random < 500
trigger1 = var(40) = 1 || power >= 500
value = 1500 + 30*(power >= 500 && (random > 500 || var(40) = 2 ))

[State 3010, AI End]
type = ChangeState
trigger1 = AILevel >= 6
trigger1 = Cond(NumTarget,target,gethitvar(fall) = 1,enemynear,stateno = 5201)
trigger1 = !AnimTime
value = Cond((enemynear,BackEdgeBodyDist > 10 || p2bodydist x > 10),110,500)

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; EX Ultimate Haymaker
[StateDef 1630]
type = S
physics = N
moveType = A
anim = 1630
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
var(25) = 44

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -14, -68
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 3

[State 1030, Power]
type = VarSet
trigger1 = !Time && var(50)
var(24) = Power

[State 1300, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3010,1
channel = 0

[State 1000, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 41, 0
channel = 4

[State 1300, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3010,0
channel = 0

[State 1000, Dust Helper]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 9

[State 1200, VelSet]
type = VelAdd
trigger1 = AnimElemTime(5) > 0 && AnimElemTime(8) < 0 && vel x > 0
x = -0.5

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 8 || vel x < 0
x = 0

[State 1000, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
ID = 1630
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 12
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 21
guard.hittime = (21) - 6
ground.slideTime = 21
air.hitTime = 120
ground.velocity = -8.93854748603, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -8.93854748603, -5.78125
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(54) && NumTarget(1630)
var(15) = 0

[State 1330, EX Ultimate Haymaker Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1630)
var(54) = 1
persistent = 0

[State 1330, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1630) > 1
ID = 1630
keepOne = 1
excludeID = 1630
ignoreHitPause = 1

[State 1330, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1630)
trigger1 = !(Target(1630), Time)
value = 1645
ID = 1630
ignoreHitPause = 1

[State 210, ChangeAnimElem]
type = ChangeAnim
trigger1 = p2bodydist x <= 30
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(4) <= 0
value = 1630
elem = 4
ignoreHitPause = 1

[State 3010, AI End]
type = ChangeState
trigger1 = AILevel >= 6
trigger1 = NumTarget && MoveHit
trigger1 = !AnimTime
value = 500

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;==HIT BY EX JODAN SOKUTO GERI=
;Being Launched
[StateDef 1645]
type = A
moveType = H
physics = N
velSet = 0,0

[State 1715, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 1715, End]
type = ChangeState
trigger1 = HitShakeOver
value = 1646


;Heading Towards Wall
[StateDef 1646]
type = A
moveType = H
physics = N

[State 1346, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 1346, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel) * 0.67

[State 1346, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = (vel y < 0), 0
ignoreHitPause = 1

[State 1346, ScreenBound]
type = ScreenBound
triggerAll = NumEnemy
trigger1 = pos x > -40 && Enemy, pos x > -40
trigger2 = pos x < 40 && Enemy, pos x < 40
value = 1
moveCamera = 1, 0

[State 1346, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1346, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5900)
value = 5900

[State 1346, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5900)
trigger1 = AnimElemTime(AnimElemNo(0) + 1) = 0
value = 5012
elem = AnimElemNo(0)

[State 1346, Bounce Off Wall]
type = ChangeState
trigger1 = Time >= 4
trigger1 = BackEdgeBodyDist <= 0 || FrontEdgeBodyDist <= 0
value = 1647

[State 1346, End]
type = SelfState
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;Impacting Wall
[StateDef 1647]
type = A
moveType = H
physics = N

[State 1347, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 1347, PosAdd]
type = PosAdd
trigger1 = 1
x = -BackEdgeBodyDist

[State 1347, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1347, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 1347, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1347, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5901)
value = 5901

[State 1347, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5901)
value = 5000

[State 1347, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,0

[State 1347, Hitting the Wall FX]
type = Explod
trigger1 = !Time
anim = F72
pos = 0, floor(ScreenPos y) - 50
posType = Back
sprPriority = 3

[State 1347, End]
type = ChangeState
trigger1 = Time >= 4
value = 1648

;Bouncing Off Wall
[Statedef 1648]
type = A
moveType = H
physics = N

[State 1348, Turn]
type = Turn
trigger1 = !Time

[State 1348, Gravity]
type = VelAdd
trigger1 = Time
y = 0.5

[State 1348, VelSet]
type = VelSet
trigger1 = !Time
x = ((EnemyNear, pos x - pos x) * Facing + 40) / 36.0
y = (pos y + 0.5 * 0.4850 * 36 ** 2) / -36.0

[State 1348, VelSet]
type = VelSet
trigger1 = !Time
trigger1 = vel x != [-9, 0]
x = ifElse(vel x < -9, -9, 0)

[State 1348, Turn]
type = Turn
trigger1 = !Time && AuthorName = "Moku"

[State 1348, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5902)
value = 5902

[State 1348, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5902)
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 1348, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1348, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 1348, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 1348, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 1348, End]
type = SelfState
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100

;---------------------------------------------------------------------------
; Flowerpot Drop
[StateDef 1700]
type = S
physics = N
moveType = A
anim = 1700
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20) * !var(50)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = Cond(P2bodydist x >= 225, 2,Cond(P2bodydist x >= 130,1,0))

[State 1200, ChangeAnim]
type = Null;ChangeAnim
trigger1 = !Time
value = (ifElse(var(10) = 2, 1702, ifElse(var(10) = 1, 1701, 1700)))

[State 1200, PosAdd]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = ifElse(var(10) = 2, 6.06060606061, ifElse(var(10) = 1, 5.1724137931, 3.57142857143))
y = ifElse(var(10) = 2, -9, ifElse(var(10) = 1, -7.5, -5))

[State 1200, PosAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1
y = 0.65

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Flowerpot Drop Dust"
posType = P1
ownPal = 1

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 41, 0
channel = 4

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = 110, 0
channel = 5

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 193, 0
channel = 0

[State 1200, Debug Pause]
type = Null;Pause
trigger1 = pos y > -vel y
time = 120
persistent = 0

[State 1200, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1705

;startup: 21f, 29f, 33f
;this is so hard to keep track of man

;Landing
[StateDef 1705]
type = S
physics = N
moveType = A
anim = 1705
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1201, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1200, Jump Land Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 4

[State 1201, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 193, 1
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 2
channel = 1

[State 1201, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !MoveContact && !MoveReversed
trigger1 = AnimElem = 1
ID = 1700
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(50), 36 * !var(20) * !var(50)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
guard.hittime = (15) - 6
ground.slideTime = 15
air.hitTime = 120
ground.velocity = -4.46927374302, 10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, 10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 67), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1705, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1705
elem = 2
ignoreHitPause = 1

[State 1201, AI Overhead Cheat]
type = AssertSpecial
trigger1 = enemynear,AILevel && gametime%2 = 0
flag = unguardable
ignoreHitPause = 1

[State 1201, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1700) > 1
ID = 1700
keepOne = 1
excludeID = 1700
ignoreHitPause = 1

[State 1201, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1700)
trigger1 = !(Target(1700), Time)
value = ifElse(Target(1700), StateType = A, 5425, 5420)
ID = 1700
ignoreHitPause = 1

[State 1201, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
moveType = I

[State 1200, End]
type = ChangeState
trigger1 = AILevel >= 6 && MoveHit
trigger1 = !AnimTime
value = 500

[State 1201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; EX Flowerpot Drop
[StateDef 1730]
type = S
physics = N
moveType = A
anim = 1700
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
var(25) = 25

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 10, -85
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1200, PosAdd]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = 3.57142857143
y = -5

[State 1200, PosAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1
y = 0.65

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Flowerpot Drop Dust"
posType = P1
ownPal = 1

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 41, 0
channel = 4

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = 110, 0
channel = 5

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 193, 0
channel = 0

[State 1200, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1735


;Landing
[StateDef 1735]
type = S
physics = N
moveType = A
anim = 1705
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1201, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1200, Jump Land Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 4

[State 1201, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 193, 1
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 2
channel = 1

[State 1201, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !MoveContact && !MoveReversed
trigger1 = AnimElem = 1
ID = 1730
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 126 < 7, 7, fvar(11) * 126)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15
guard.hittime = (15) - 6
ground.slideTime = 15
air.hitTime = 120
ground.velocity = -ifElse(var(56), 5.58659217877, 4.40734669781), ifElse(var(56), -5.78125, 0)
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(var(56), 1, 0)
air.fall = 1
fall.recover = ifElse(var(56), 1, 0)
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 67), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1705, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 1705
elem = 2
ignoreHitPause = 1

[State 210, AI Overhead Cheat]
type = AssertSpecial
trigger1 = enemynear,AILevel && random%2
flag = unguardable

[State 1201, TargetDrop]
type = TargetDrop
triggerall = !var(56)
trigger1 = NumTarget(1730) > 1
ID = 1700
keepOne = 1
excludeID = 1730
ignoreHitPause = 1

[State 1330, EX Flowerpot Drop Crumple Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1730)
trigger1 = !(Target(1730), StateType = A)
var(56) = 1
persistent = 0

[State 1201, TargetState]
type = TargetState
triggerall = !var(56)
trigger1 = MoveHit && NumTarget(1730)
trigger1 = !(Target(1730), Time) && !(Target(1730), StateType = A)
value = 5450
ID = 1730
ignoreHitPause = 1

[State 1201, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 1201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Punch Alpha Counter
[StateDef 2900]
type = S
physics = N
moveType = A
anim = 2900
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 0

[State 2900, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0
channel = 0

[State 2900, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 1
value = 40, 0
channel = 4

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElemTime(4) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 2
x = 6.70391061453
y = -8.75

[State 1100, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(3) > 2
x = -0.69832402234

[State 1100, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 2
y = 0.5859375

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 1100, PosAdd]
type = PosAdd
trigger1 = (AnimElemTime(3) = [0,1])
x = 10*const(size.xscale)

[State 2900, Ground Hit 1]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getPower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 22), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, Air Hit]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getPower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 2900, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1105

;---------------------------------------------------------------------------
; Punch Alpha Counter (2010)
[StateDef 2905]
type = S
physics = N
moveType = A
anim = 2905
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2905, Voice]
type = PlaySnd
trigger1 = !Time
value = 1005,0
channel = 0

[State 2905, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 2
channel = 1

[State 2905, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2905, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0, 0
givepower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, -5.3125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.3125
air.cornerPush.velOff = 0
yAccel = 0.59814453125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 210, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 2905
elem = 3
ignoreHitPause = 1

[State 2905, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(3) >= 0
moveType = I

[State 2905, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Kick Alpha Counter
[StateDef 2910]
type = S
physics = N
moveType = A
anim = 2910
ctrl = 0
velSet = 0, 0
sprPriority = 1
powerAdd = 0

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1010,0
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 5
channel = 1

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0,0
givepower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.58659217877, -5.3125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.3125
air.cornerPush.velOff = 0
yAccel = 0.59814453125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= 10
value = 2910
elem = 6
ignoreHitPause = 1

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(6) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1