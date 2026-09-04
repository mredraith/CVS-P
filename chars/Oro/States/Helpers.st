; _________________________________________
;| Oro by varo_hades |
; 
;
;HELPER STATES=
;

;PARRY HELPER=
[StateDef 765]
type = A
physics = N
moveType = I
anim = ifElse(Root, StateType = C, 766, ifElse(Root, StateType = A, 767, 765))
velSet = 0,0
ctrl = 0

[State 765, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 765, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1

[State 765, Change to Crouching]
type = ChangeAnim
triggerAll = !Time
trigger1 = !(Root, AILevel) && Root, command = "down"
trigger2 = Root, AILevel && (Root, StateType != A) && P2StateType = C
value = 766

[State 765, Change to Standing / Jumping]
type = ChangeAnim
triggerAll = !Time
trigger1 = !(Root, AILevel) && Root, command = "fwd"
trigger2 = Root, AILevel && Anim != 766
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Change to Standing / Jumping]
type = ChangeAnim
trigger1 = Anim = 765 || Anim = 767
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Disable]
type = VarSet
trigger1 = Time >= ifElse((Root, StateType = A), 7, 8)
trigger2 = Facing != (Root, Facing)
trigger3 = !(Root, ctrl)
trigger3 = (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
var(0) = 1

[State 765, Disable]
type = VarSet
triggerAll = !(Root, AILevel)
trigger1 = (Root, command = "holdback")
trigger2 = Time < 4 && (Root, command = "holdfwd" + Root, command = "holddown") > 1
trigger3 = Time >= 4 && (Root, command = "holdfwd" || Root, command = "holddown")
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && Root, command = "fwd") || (Anim = 766 && Root, command = "down"))
var(0) = 1

[State 765, Disable]
type = ChangeAnim
trigger1 = var(0) = 1
value = 1

[State 765, Standing/Air]
type = ReversalDef
trigger1 = !var(0) && (Anim = 765 || Anim = 767)
trigger1 = (Root, StateNo != 5120) || !(Root, AnimTime)
reversal.attr = SCA,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Crouching]
type = ReversalDef
trigger1 = !var(0) && Anim = 766
reversal.attr = SC,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Disable]
type = ReversalDef
trigger1 = var(0) = 1
reversal.attr =
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, End]
type = DestroySelf
trigger1 = Time >= 18
trigger2 = (Root, MoveType != I)
trigger3 = !(Root, ctrl) && (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
trigger4 = (Root, StateNo = [760,762]) && (Root, Time <= 1)


;Success
[StateDef 766]
moveType = I
ctrl = 0

[State 766, Disable]
type = VarSet
trigger1 = 1
var(0) = 1

[State 766, End]
type = DestroySelf
trigger1 = Root, StateNo = [760,762]
trigger2 = Time >= 2

;NICHIRIN SHOU PROJECTILE=
[StateDef 1005]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 3

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1005, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(var(10) = 2, 3.3, ifElse(var(10) = 1, 5.1, 4))
y = ifElse(var(10) = 2, -4.2, ifElse(var(10) = 1, -3.2, 0))

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1005, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1 = root,var(28) = 0
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = Root, StateNo != 193
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10), 56, 49)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10), 56, 49)))), ifElse(var(10) >= 2, 8, 7)
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, HitDef]
type = HitDef
trigger1 = root,var(28) != 0
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = Root, StateNo != 193
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10), 56, 49)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10), 56, 49)))), ifElse(var(10) >= 2, 8, 7)
getPower = 0,0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-200,200]

;Hit Pause
[StateDef 1006]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000,1030]
var(18) = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = ifElse(var(12) < 2 && var(10) = 3, 1035, 1007)

;Disappear
[StateDef 1007]
type = A
physics = N
moveType = A
anim = 1007
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 3
volume = -128
lowPriority = 1

[State 1007, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008

;Wait
[StateDef 1008]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 1008, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target,HitShakeOver)

;EX NICHIRIN SHOU PROJECTILE=
[StateDef 1035]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 3

[State 1035, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(2) < 2, 1035, 1007)
ignoreHitPause = 1

[State 1035, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1035, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005 && !PrevStateNo
value = 1005

[State 1035, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 1

[State 1035, VelSet]
type = VelSet
trigger1 = 1
x = ifElse((Time < 2 && var(2) > 1), 1, 2)

[State 1805, Velocity]
type = VelAdd
trigger1 = time = 14
y = 0.7 * 1

[State 1805, Velocity]
type = VelAdd
trigger1 = time = 75
x = .3
y = 1.9 * -1

[State 1035, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1035, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1035, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1035, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1035, Hit 1]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = var(2) < 2
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 4 * (var(2) < 2), ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 4 * (var(2) < 2), ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1035, Hit 2]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = var(2) >= 2
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 4 * (var(2) < 2), ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 4 * (var(2) < 2), ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1035, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 1035, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1035, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1035, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1
persistent = 0

[State 1035, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1
persistent = 0

[State 1035, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
persistent = 0

[State 1035, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000,1030]
var(18) = 1
persistent = 0

[State 1035, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(var(2) < 2, 1035, 1007)
ignoreHitPause = 1

[State 1035, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1035, End]
type = DestroySelf
trigger1 = pos x != [-200,200]

;YAGYOU OODAMA HELPER=
[Statedef 3105]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 3105, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 6, 3105, 3107)
ignorehitpause = 1

[State 3105, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3105, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 3120

[State 3105, hitvar]
type = varadd
trigger1 = !time
var(2) = 1

[State 3105, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3105, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3105, timevar]
type = varadd
trigger1 = time
var(1) = 1

[State 3105, VelSet]
type = VelSet
trigger1 = time >= 0
x = 3
y = 5

[State 3105, VelSet]
type = VelSet
trigger1 = time >= 20
x = 2.2
y = 5

[State 3105, VelSet]
type = VelSet
trigger1 = time >= 34
x = 0
y = 0

[State 3105, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3105, HitSound]
type = playsnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 1
persistent = 0
ignorehitpause = 1

[State 3105, Hit]
type = hitdef
trigger1 = !(Root, var(16)) && (Root, var(15) < 15 || Root, var(20))
priority = 4, Hit
attr = S, HP
damage = ceil(ifElse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 8
animtype = Back
hitflag = MAFP
guardflag = M
pausetime = 4 * (var(2) < 6), 6
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
guardsound = -1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
guard.hittime = (16) - 6
ground.velocity = ifelse(var(2) < 6, 0, -4), 0
ground.cornerpush.veloff = 0
air.velocity = -2, -8
guard.velocity = -10.52
fall = 0
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3
yAccel = (0.5 + (ComboCount * 0.06))
forcestand = 1

[State 3105, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3105, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 3105, Parent Hit Count]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3105, Self Hit Count]
type = VarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3105, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 3105, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3105, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [3100,3150]
var(18) = 1

[State 3105, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) < 6, 3105, 3107)
ignorehitpause = 1

[State 3105, End]
type = destroyself
trigger1 = pos x != [ -280 , 280 ]
trigger2 = time = 120

;Hit
[Statedef 3106]
type = A
physics = N
movetype = I
anim = 3006
ctrl = 0
sprpriority = 4
movehitpersist = 1

[State 3106, Vel]
type = velmul
trigger1 = 1
x = 0.8

[State 3106, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3106, End]
type = destroyself
trigger1 = !animtime

;Disapear
[Statedef 3107]
type = A
physics = N
movetype = I
anim = 3125
velset = 0,0
ctrl = 0
sprpriority = 4
movehitpersist = 1

[State 3107, PosSet]
type = PosSet
trigger1 = time>=0
y = 0

[State 3107, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3107, End]
type = destroyself
trigger1 = !animtime

;MAX YAGYOU OODAMA HELPER=
[Statedef 3155]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 3155, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 12, 3155, 3157)
ignorehitpause = 1

[State 3155, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3155, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 3120

[State 3155, hitvar]
type = varadd
trigger1 = !time
var(2) = 1

[State 3155, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3155, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3155, timevar]
type = varadd
trigger1 = time
var(1) = 1

[State 3155, VelSet]
type = VelSet
trigger1 = time >= 0
x = 3
y = 5

[State 3155, VelSet]
type = VelSet
trigger1 = time >= 20
x = 2.2
y = 5

[State 3155, VelSet]
type = VelSet
trigger1 = time >= 34
x = 0
y = 0

[State 3155, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3155, HitSound]
type = playsnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 1
persistent = 0
ignorehitpause = 1

[State 3155, Hit]
type = hitdef
trigger1 = !(Root, var(16)) && (Root, var(15) < 15 || Root, var(20))
priority = 4, Hit
attr = S, HP
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 8
animtype = Back
hitflag = MAFP
guardflag = M
pausetime = 4 * (var(2) < 12), 6
sparkno = -1
sparkxy = 0, 0
guard.sparkno = -1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
guardsound = -1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
guard.hittime = (16) - 6
ground.velocity = ifelse(var(2) < 10, 0, -4), 0
ground.cornerpush.veloff = 0
air.velocity = -2, -8
guard.velocity = -10.52
fall = 0
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3
yAccel = (0.5 + (ComboCount * 0.06))
forcestand = 1

[State 3155, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 3155, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 3155, Parent Hit Count]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3155, Self Hit Count]
type = VarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3155, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 3155, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3155, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [3100,3150]
var(18) = 1

[State 3155, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) < 12, 3155, 3157)
ignorehitpause = 1

[State 3155, End]
type = destroyself
trigger1 = pos x != [ -280 , 280 ]
trigger2 = time = 120

;Disapear
[Statedef 3157]
type = A
physics = N
movetype = I
anim = 3126
velset = 0,0
ctrl = 0
sprpriority = 4
movehitpersist = 1

[State 3107, PosSet]
type = PosSet
trigger1 = time>=0
y = 0

[State 3107, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3107, End]
type = destroyself
trigger1 = !animtime

;TENGU ISHI HELPER=
[Statedef 3405]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0,0
anim = 3404
juggle = 0

[State 3405, Helper attack]
type = Helper
triggerall =parent,var(27)>10
triggerall = time > 11
triggerall = numhelper(34300) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = [600,699]
trigger1 = parent, vel X < 0
helpertype = player
name = "34411"
ID = 34300
stateno = 34411
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3405, Helper attack]
type = Helper
triggerall =parent,var(27)>10
triggerall = time > 11
triggerall = numhelper(34300) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = [600,699]
trigger1 = parent, vel X > 0
helpertype = player
name = "34401"
ID = 34300
stateno = 34401
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3405, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34300) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = [600,699]
trigger1 = parent, vel X = 0
helpertype = player
name = "34300"
ID = 34300
stateno = 34300
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3405, VelSet]
type = AssertSpecial
triggerall = time > 11
trigger1 = NumHelper(34400) = 1
flag = invisible

[State 3405, VelSet]
type = AssertSpecial
triggerall = time > 11
trigger1 = parent, Numexplod(34400) = 1
trigger2 = parent, Numexplod(34440) = 1
trigger3 = parent, Numexplod(34410) = 1
trigger4 = parent, Numexplod(34420) = 1
trigger5 = parent, Numexplod(34430) = 1
trigger6 = parent, Numexplod(34440) = 1
flag = invisible

[State 3405, VelSet]
type = AssertSpecial
triggerall = time > 11
trigger1 = NumHelper(34240) = 1
trigger2 = NumHelper(34510) = 1
trigger3 = NumHelper(34250) = 1
trigger4 = NumHelper(34260) = 1
trigger5 = NumHelper(34270) = 1
trigger6 = NumHelper(34530) = 1
trigger7 = numhelper(34200) = 1
trigger8 = numhelper(34550) = 1
trigger9 = numhelper(34300) = 1
trigger10 = numhelper(34310) = 1
trigger11 = numhelper(34610) = 1
trigger12 = numhelper(34320) = 1
trigger13 = numhelper(34330) = 1
trigger14 = numhelper(34630) = 1
flag = invisible

[State 3405, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34630) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 450
helpertype = player
name = "34630"
ID = 34630
stateno = 34630
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3405, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34330) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 440
helpertype = player
name = "34330"
ID = 34330
stateno = 34330
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3405, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34320) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 430
helpertype = player
name = "34320"
ID = 34320
stateno = 34320
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3405, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34300) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 400
trigger2 = parent,stateno = 410
trigger3 = parent,stateno = 420
helpertype = player
name = "34300"
ID = 34300
stateno = 34300
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3405, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34550) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 215
helpertype = player
name = "34550"
ID = 34550
stateno = 34550
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3405, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34240) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 200
trigger2 = parent,stateno = 240
helpertype = player
name = "34240"
ID = 34240
stateno = 34240
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3405, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34510) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 210
trigger2 = parent,stateno = 219
helpertype = player
name = "34510"
ID = 34510
stateno = 34510
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3405, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34250) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 220
helpertype = player
name = "34250"
ID = 34250
stateno = 34250
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3405, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34260) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 230
helpertype = player
name = "34260"
ID = 34260
stateno = 34260
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3405, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34530) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 250
helpertype = player
name = "34530"
ID = 34530
stateno = 34530
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3405, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34200) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 205
trigger2 = parent,stateno = 235
trigger3 = parent,stateno = 245
helpertype = player
name = "34200"
ID = 34200
stateno = 34200
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3405, Helper leave]
type = Helper
triggerall = parent, var(27) = 1
triggerall = numhelper(34055) = 0
trigger1 = numhelper(34240) = 0
trigger2 = numhelper(34250) = 0
trigger3 = numhelper(34510) = 0
trigger4 = numhelper(34260) = 0
trigger5 = numhelper(34270) = 0
trigger6 = numhelper(34530) = 0
trigger7 = numhelper(34200) = 0
trigger8 = numhelper(34550) = 0
helpertype = player
name = "34055"
ID = 34055
stateno = 34055
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3405]
type = Turn
trigger1 = parent,facing != facing

[State 3405, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 3405, VelSet]
type = VelSet
triggerall = time < 10
trigger1 = parentdist x > 10
x = 8

[State 3405, VelSet]
type = VelSet
triggerall = time < 10
trigger1 = parentdist y < 0
y = -2

[State 3405, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < -45
x = -0.5

[State 3405, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < -50
x = -2

[State 3405, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < -60
x = -4

[State 3405, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < -90
x = -6

[State 3405, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > -35
x = 0.5

[State 3405, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > -30
x = 2

[State 3405, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > -10
x = 4

[State 3405, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > 10
x = 6

[State 3405, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y < 130
y = -0.5

[State 3405, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y < 130
y = -2

[State 3405, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y >= 119
y = 0.5

[State 3405, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y > 110
y = 2

[State 3405, VelSet]
type = VelSet
triggerall = parent, statetype = C
trigger1 = parentdist y > 60
y = 2

[State 3405, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3405, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1000

[State 3405, VelSet]
type = AssertSpecial
triggerall = time > 11
trigger1 = NumHelper(34050) = 1
trigger2 = NumHelper(34510) = 1
flag = invisible

[State 3405, DestroySelf]
type = DestroySelf
trigger1 = parent, var(27) = 0
ignorehitpause = 1

[State 3405, DestroySelf]
type = DestroySelf
trigger1 = numhelper(3410) = 0 || numhelper(3415) = 0

;TENGU ISHI HELPER=
[Statedef 34550]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3405
juggle = 0

[State 34550, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34550, VelSet]
type = VelSet
trigger1 = time >= 4
x = 3
y = 6

[State 34550, VelSet]
type = VelSet
trigger1 = time >= 10
x = 1
y = 1

[State 34550, VelSet]
type = VelSet
trigger1 = time >= 12
x = -1
y = -1

[State 34550, VelSet]
type = VelSet
trigger1 = time >= 14
x = -3 ;(- 2 for front fast)
y = -3

[State 34550, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 14
y = -3

[State 34550, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 14
y = 3

[State 34550, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 14
x = -3

[State 34550, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 14
x = 3

[State 34550, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 14
x = 0

[State 34550, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3405) = 0
trigger1 = numhelper(34055) = 0
helpertype = player
name = "34055"
ID = 34055
stateno = 34055
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34550, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34055) = 1

[State 34550, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 40

[State 34550,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -1
air.velocity = -1,-8
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34550, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34550, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34550, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34550, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34550, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34550, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34240]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3405
juggle = 0

[State 34240, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34240, VelSet]
type = VelSet
trigger1 = time >= 4
x = 4
y = 6

[State 34240, VelSet]
type = VelSet
trigger1 = time >= 10
x = 1
y = 1

[State 34240, VelSet]
type = VelSet
trigger1 = time >= 12
x = -1
y = -1

[State 34240, VelSet]
type = VelSet
trigger1 = time >= 14
x = -3 ;(- 2 for front fast)
y = -5

[State 34240, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 14
y = -3

[State 34240, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 14
y = 3

[State 34240, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 14
x = -3

[State 34240, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 14
x = 3

[State 34240, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 14
x = 0

[State 34240, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3405) = 0
trigger1 = numhelper(34055) = 0
helpertype = player
name = "34055"
ID = 34055
stateno = 34055
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34240, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34055) = 1

[State 34240, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34240,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34240, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34240, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34240, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34240, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34240, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34240, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34510]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3405
juggle = 0

[State 34510, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34510, VelSet]
type = VelSet
trigger1 = time >= 4
x = 8
y = 6

[State 34510, VelSet]
type = VelSet
trigger1 = time >= 10
x = 1
y = 1

[State 34510, VelSet]
type = VelSet
trigger1 = time >= 12
x = -1
y = -1

[State 34510, VelSet]
type = VelSet
trigger1 = time >= 14
x = -3 ;(- 2 for front fast)
y = -5

[State 34510, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 18
y = -3

[State 34510, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 18
y = 3

[State 34510, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 14
x = -3

[State 34510, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 14
x = 3

[State 34510, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 14
x = 0

[State 34510, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3405) = 0
trigger1 = numhelper(34055) = 0
helpertype = player
name = "34055"
ID = 34055
stateno = 34055
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34510, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34055) = 1

[State 34510, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34510,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34510, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34510, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34510, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34510, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34510, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34510, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 34510, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34250]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3405
juggle = 0

[State 34250, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34250, VelSet]
type = VelSet
trigger1 = time >= 14
x = 6
y = 10

[State 34250, VelSet]
type = VelSet
trigger1 = time >= 17
x = 1
y = 1

[State 34250, VelSet]
type = VelSet
trigger1 = time >= 25
x = -1
y = -1

[State 34250, VelSet]
type = VelSet
trigger1 = time >= 27
x = -3 ;(- 2 for front fast)
y = -8

[State 34250, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 31
y = -3

[State 34250, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 31
y = 3

[State 34250, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 31
x = -3

[State 34250, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 31
x = 3

[State 34250, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 31
x = 0

[State 34250, Helper]
type = Helper
trigger1 = time = 46
trigger1 = numhelper(3405) = 0
trigger1 = numhelper(34055) = 0
helpertype = player
name = "34055"
ID = 34055
stateno = 34055
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34250, DestroySelf]
type = DestroySelf
trigger1 = time = 47
trigger2 = numhelper(34055) = 1

[State 34250, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 47

[State 34250,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 10,10
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -6
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34250, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34250, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34250, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34250, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34250, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34250, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34260]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3405
juggle = 0

[State 34260, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34260, PosAdd]
type = PosAdd
trigger1 = time = 2
x = 16
y = 40

[State 34260, VelSet]
type = null;VelSet
trigger1 = time >= 0
x = 10
y = 16

[State 34260, VelSet]
type = VelSet
trigger1 = time >= 3
x = 1
y = 1

[State 34260, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34260, VelSet]
type = VelSet
trigger1 = time >= 11
x = -3
y = -8

[State 34260, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 11
y = -3

[State 34260, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 11
y = 3

[State 34260, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 11
x = -3

[State 34260, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 11
x = 3

[State 34260, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 11
x = 0

[State 34260, Helper]
type = Helper
trigger1 = time = 25
trigger1 = numhelper(3405) = 0
trigger1 = numhelper(34055) = 0
helpertype = player
name = "34055"
ID = 34055
stateno = 34055
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34260, DestroySelf]
type = DestroySelf
trigger1 = time = 26
trigger2 = numhelper(34055) = 1

[State 34260, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 26

[State 34260,hitdef]
type = null;HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 8,12
guard.pausetime = 8,12
ground.slidetime = 20
ground.hittime = 20
air.hittime = 40
guard.ctrltime =12
ground.velocity = -4
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34260, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34260, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34260, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34260, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34260, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34260, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34530]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3405
juggle = 0

[State 34530, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34530, VelSet]
type = VelSet
trigger1 = time >= 4
x = 4
y = 5

[State 34530, VelSet]
type = VelSet
trigger1 = time >= 10
x = 1
y = 1

[State 34530, VelSet]
type = VelSet
trigger1 = time >= 12
x = -1
y = -1

[State 34530, VelSet]
type = VelSet
trigger1 = time >= 14
x = -3 ;(- 2 for front fast)
y = -3

[State 34530, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 14
y = -3

[State 34530, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 14
y = 3

[State 34530, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 14
x = -3

[State 34530, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 14
x = 3

[State 34530, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 14
x = 0

[State 34530, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3405) = 0
trigger1 = numhelper(34055) = 0
helpertype = player
name = "34055"
ID = 34055
stateno = 34055
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34530, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34055) = 1

[State 34530, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34530,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34530, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34530, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34530, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34530, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34530, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34530, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34300]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3405
juggle = 0

[State 34300, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34300, VelSet]
type = VelSet
trigger1 = time >= 4
x = 3
y = 6

[State 34300, VelSet]
type = VelSet
trigger1 = time >= 10
x = 1
y = 1

[State 34300, VelSet]
type = VelSet
trigger1 = time >= 12
x = -1
y = -1

[State 34300, VelSet]
type = VelSet
trigger1 = time >= 14
x = -3 ;(- 2 for front fast)
y = -5

[State 34300, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 14
y = -3

[State 34300, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 14
y = 3

[State 34300, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 14
x = -3

[State 34300, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 14
x = 3

[State 34300, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 14
x = 0

[State 34300, Helper]
type = Helper
trigger1 = time =34
trigger1 = numhelper(3405) = 0
trigger1 = numhelper(34055) = 0
helpertype = player
name = "34055"
ID = 34055
stateno = 34055
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34300, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34055) = 1

[State 34300, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34300,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34300, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34300, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34300, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34300, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34300, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34300, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34200]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3405
juggle = 0

[State 34200, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34200, VelSet]
type = VelSet
trigger1 = time >= 4
x = 3
y = 6

[State 34200, VelSet]
type = VelSet
trigger1 = time >= 10
x = 1
y = 1

[State 34200, VelSet]
type = VelSet
trigger1 = time >= 12
x = -1
y = -1

[State 34200, VelSet]
type = VelSet
trigger1 = time >= 14
x = -3 ;(- 2 for front fast)
y = -5

[State 34200, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 14
y = -3

[State 34200, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 14
y = 3

[State 34200, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 14
x = -3

[State 34200, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 14
x = 3

[State 34200, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 14
x = 0

[State 34200, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3405) = 0
trigger1 = numhelper(34055) = 0
helpertype = player
name = "34055"
ID = 34055
stateno = 34055
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34200, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34055) = 1

[State 34200, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34200,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34200, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34200, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34200, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34200, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34200, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34200, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34630]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3405
juggle = 0

[State 34630, VelSet]
type = VelSet
trigger1 = time >= 0
x = 10
y = 10

[State 34630, VelSet]
type = VelSet
trigger1 = time >= 3
x = 1
y = 1

[State 34630, VelSet]
type = VelSet
trigger1 = time >= 5
x = 0
y = 0

[State 34630, VelSet]
type = VelSet
trigger1 = time >= 7
x = -2
y = -2

[State 34630, VelSet]
type = VelSet
trigger1 = time >= 10
x = -6 ;(- 2 for front fast)
y = -6

[State 34630, VelSet]
type = VelSet
trigger1 = parentdist y < 5
trigger1 = time >= 15
y = -3

[State 34630, VelSet]
type = VelSet
trigger1 = parentdist y > 5
trigger1 = time >= 15
y = 3

[State 34630, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 16
x = -3

[State 34630, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 16
x = 3

[State 34630, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34630, Helper]
type = Helper
trigger1 = time = 41
trigger1 = numhelper(3405) = 0
trigger1 = numhelper(34055) = 0
helpertype = player
name = "34055"
ID = 34055
stateno = 34055
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34630, DestroySelf]
type = DestroySelf
trigger1 = time = 42
trigger2 = numhelper(34055) = 1

[State 34630, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 42

[State 34630,hitdef]
type = HitDef
trigger1 = time = 4
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34630, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34630, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34630, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34630, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34630, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34630, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34330]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3405
juggle = 0

[State 34330, VelSet]
type = VelSet
trigger1 = time >= 0
x = 8
y = 18

[State 34330, VelSet]
type = VelSet
trigger1 = time >= 3
x = 1
y = 1

[State 34330, VelSet]
type = VelSet
trigger1 = time >= 5
x = 0
y = 0

[State 34330, VelSet]
type = VelSet
trigger1 = time >= 7
x = -2
y = -1

[State 34330, VelSet]
type = VelSet
trigger1 = time >= 10
x = -6 ;(- 2 for front fast)
y = -10

[State 34330, VelSet]
type = VelSet
trigger1 = parentdist y < 5
trigger1 = time >= 15
y = -3

[State 34330, VelSet]
type = VelSet
trigger1 = parentdist y > 5
trigger1 = time >= 15
y = 3

[State 34330, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 11
x = -3

[State 34330, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 11
x = 3

[State 34330, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 11
x = 0

[State 34330, Helper]
type = Helper
trigger1 = time = 27
trigger1 = numhelper(3405) = 0
trigger1 = numhelper(34055) = 0
helpertype = player
name = "34055"
ID = 34055
stateno = 34055
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34330, DestroySelf]
type = DestroySelf
trigger1 = time = 28
trigger2 = numhelper(34055) = 1

[State 34330, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 28

[State 34330,hitdef]
type = HitDef
trigger1 = time = 4
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34330, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34330, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34330, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34330, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34330, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34330, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34320]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3405
juggle = 0

[State 34320, VelSet]
type = VelSet
trigger1 = time >= 0
x = 8
y = 18

[State 34320, VelSet]
type = VelSet
trigger1 = time >= 3
x = 1
y = 1

[State 34320, VelSet]
type = VelSet
trigger1 = time >= 5
x = 0
y = 0

[State 34320, VelSet]
type = VelSet
trigger1 = time >= 7
x = -2
y = -1

[State 34320, VelSet]
type = VelSet
trigger1 = time >= 10
x = -6 ;(- 2 for front fast)
y = -10

[State 34320, VelSet]
type = VelSet
trigger1 = parentdist y < 5
trigger1 = time >= 15
y = -3

[State 34320, VelSet]
type = VelSet
trigger1 = parentdist y > 5
trigger1 = time >= 15
y = 3

[State 34320, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 11
x = -3

[State 34320, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 11
x = 3

[State 34320, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 11
x = 0

[State 34320, Helper]
type = Helper
trigger1 = time = 24
trigger1 = numhelper(3405) = 0
trigger1 = numhelper(34055) = 0
helpertype = player
name = "34055"
ID = 34055
stateno = 34055
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34320, DestroySelf]
type = DestroySelf
trigger1 = time = 25
trigger2 = numhelper(34055) = 1

[State 34320, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 25

[State 34320,hitdef]
type = HitDef
trigger1 = time = 4
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34320, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34320, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34320, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34320, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34320, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34320, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 3410]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0,0
anim = 3409
juggle = 0

[State 3410, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34301) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = [600,699]
trigger1 = parent, vel X < 0
helpertype = player
name = "34412"
ID = 34301
stateno = 34412
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3410, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34301) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = [600,699]
trigger1 = parent, vel X > 0
helpertype = player
name = "34402"
ID = 34301
stateno = 34402
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3410, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34301) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = [600,699]
trigger1 = parent, vel X = 0
helpertype = player
name = "34301"
ID = 34301
stateno = 34301
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3410, VelSet]
type = AssertSpecial
triggerall = time > 11
trigger1 = NumHelper(34400) = 1
flag = invisible

[State 3410, VelSet]
type = AssertSpecial
triggerall = time > 11
trigger1 = parent, Numexplod(34401) = 1
trigger2 = parent, Numexplod(34441) = 1
trigger3 = parent, Numexplod(34411) = 1
trigger4 = parent, Numexplod(34421) = 1
trigger5 = parent, Numexplod(34431) = 1
trigger6 = parent, Numexplod(34441) = 1
flag = invisible

[State 3410, VelSet]
type = AssertSpecial
triggerall = time > 11
trigger1 = NumHelper(34241) = 1
trigger2 = NumHelper(34511) = 1
trigger3 = NumHelper(34251) = 1
trigger4 = NumHelper(34261) = 1
trigger5 = NumHelper(34271) = 1
trigger6 = NumHelper(34531) = 1
trigger7 = NumHelper(34201) = 1
trigger8 = numhelper(34551) = 1
trigger9 = numhelper(34301) = 1
trigger10 = numhelper(34311) = 1
trigger11 = numhelper(34611) = 1
trigger12 = numhelper(34321) = 1
trigger13 = numhelper(34331) = 1
trigger14 = numhelper(34631) = 1
flag = invisible

[State 3410, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34631) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 450
helpertype = player
name = "34631"
ID = 34631
stateno = 34631
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3410, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34331) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 440
helpertype = player
name = "34331"
ID = 34331
stateno = 34331
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3410, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34321) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 430
helpertype = player
name = "34321"
ID = 34321
stateno = 34321
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3410, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34301) = 0
triggerall = numhelper(3410) = 1
trigger1 = parent,stateno = 400
trigger2 = parent,stateno = 410
trigger3 = parent,stateno = 420
helpertype = player
name = "34301"
ID = 34301
stateno = 34301
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3410, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34551) = 0
triggerall = numhelper(3410) = 1
trigger1 = parent,stateno = 215
helpertype = player
name = "34551"
ID = 34551
stateno = 34551
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3410, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34241) = 0
triggerall = numhelper(3410) = 1
trigger1 = parent,stateno = 200
trigger2 = parent,stateno = 240
helpertype = player
name = "34241"
ID = 34241
stateno = 34241
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3410, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34511) = 0
triggerall = numhelper(3410) = 1
trigger1 = parent,stateno = 210
trigger2 = parent,stateno = 219
helpertype = player
name = "34511"
ID = 34511
stateno = 34511
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3410, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34251) = 0
triggerall = numhelper(3410) = 1
trigger1 = parent,stateno = 220
helpertype = player
name = "34251"
ID = 34251
stateno = 34251
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3410, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34261) = 0
triggerall = numhelper(3410) = 1
trigger1 = parent,stateno = 230
helpertype = player
name = "34261"
ID = 34261
stateno = 34261
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3410, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34531) = 0
triggerall = numhelper(3410) = 1
trigger1 = parent,stateno = 250
helpertype = player
name = "34531"
ID = 34531
stateno = 34531
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3410, Helper]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34201) = 0
triggerall = numhelper(3415) = 1
trigger1 = parent,stateno = 205
trigger2 = parent,stateno = 235
trigger3 = parent,stateno = 245
helpertype = player
name = "34201"
ID = 34201
stateno = 34201
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3410, Helper leave]
type = Helper
triggerall = parent, var(27) = 1
triggerall = numhelper(34105) = 0
trigger1 = numhelper(34241) = 0
trigger2 = numhelper(34251) = 0
trigger3 = numhelper(34511) = 0
trigger4 = numhelper(34261) = 0
trigger5 = numhelper(34271) = 0
trigger6 = numhelper(34531) = 0
trigger7 = numhelper(34201) = 0
trigger8 = numhelper(34551) = 0
helpertype = player
name = "34105"
ID = 34105
stateno = 34105
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3410, VelSet]
type = VelSet
triggerall = time < 10
trigger1 = parentdist x > 10
x = 8

[State 3410, VelSet]
type = VelSet
triggerall = time < 10
trigger1 = parentdist y < 0
y = -2

[State 3410, VelSet]
type = VelSet
trigger1 = time >= 589
x = -8

[State 3410, VelSet]
type = VelSet
trigger1 = time >= 589
y = -8

[State 3410, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < -5
x = -0.5

[State 3410, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < -10
x = -1

[State 3410, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < -20
x = -2

[State 3410, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < -50
x = -4

[State 3410, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > 5
x = 0.5

[State 3410, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > 10
x = 1

[State 3410, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > 20
x = 2

[State 3410, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > 50
x = 4

[State 3410, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y < 120
y = -0.5

[State 3410, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y < 130
y = -2

[State 3410, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y >= 119
y = 0.5

[State 3410, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y > 110
y = 2

[State 3410, VelSet]
type = VelSet
triggerall = parent, statetype = C
trigger1 = parentdist y > 60
y = 2

[State 3410]
type = Turn
trigger1 = parent,facing != facing

[State 3410, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 3410, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3410, DestroySelf]
type = DestroySelf
trigger1 = parent, var(27) = 0
ignorehitpause = 1

[State 3410, DestroySelf]
type = DestroySelf
trigger1 = numhelper(3410) = 0 || numhelper(3415) = 0
ignorehitpause = 1

;TENGU ISHI HELPER=
[Statedef 34551]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3410
juggle = 0

[State 34551, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34551, VelSet]
type = VelSet
trigger1 = time >= 3
x = 10
y = 6

[State 34551, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34551, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34551, VelSet]
type = VelSet
trigger1 = time >= 10
x = -6 ;(- 2 for front fast)
y = -3

[State 34551, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 16
y = -3

[State 34551, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 16
y = 3

[State 34551, VelSet]
type = VelSet
trigger1 = parentdist x < 1;10
trigger1 = time >= 16
x = -3

[State 34551, VelSet]
type = VelSet
trigger1 = parentdist x > 1;10
trigger1 = time >= 16
x = 3

[State 34551, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34551, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3410) = 0
trigger1 = numhelper(34105) = 0
helpertype = player
name = "34105"
ID = 34105
stateno = 34105
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34551, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34105) = 1

[State 34551, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34551,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -1
air.velocity = -1,-8
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34551, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34551, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34551]
type = Turn
trigger1 = parent,facing != facing

[State 34551, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34551, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34551, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34241]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3410
juggle = 0

[State 34241, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34241, VelSet]
type = VelSet
trigger1 = time >= 3
x = 15
y = 6

[State 34241, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34241, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34241, VelSet]
type = VelSet
trigger1 = time >= 10
x = -8 ;(- 2 for front fast)
y = -3

[State 34241, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 16
y = -3

[State 34241, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 16
y = 3

[State 34241, VelSet]
type = VelSet
trigger1 = parentdist x < 1;10
trigger1 = time >= 16
x = -3

[State 34241, VelSet]
type = VelSet
trigger1 = parentdist x > 1;10
trigger1 = time >= 16
x = 3

[State 34241, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34241, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3410) = 0
trigger1 = numhelper(34105) = 0
helpertype = player
name = "34105"
ID = 34105
stateno = 34105
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34241, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34105) = 1

[State 34241, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34241,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34241, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34241, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34241]
type = Turn
trigger1 = parent,facing != facing

[State 34241, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34241, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34241, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34511]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3410
juggle = 0

[State 34511, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34511, VelSet]
type = VelSet
trigger1 = time >= 3
x = 18
y = 6

[State 34511, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34511, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34511, VelSet]
type = VelSet
trigger1 = time >= 10
x = -14 ;(- 2 for front fast)
y = -3

[State 34511, VelSet]
type = VelSet
trigger1 = parentdist y < 5
trigger1 = time >= 16
y = -3

[State 34511, VelSet]
type = VelSet
trigger1 = parentdist y > 5
trigger1 = time >= 16
y = 3

[State 34511, VelSet]
type = VelSet
trigger1 = parentdist x < 1;10
trigger1 = time >= 16
x = -3

[State 34511, VelSet]
type = VelSet
trigger1 = parentdist x > 1;10
trigger1 = time >= 16
x = 3

[State 34511, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34511, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3410) = 0
trigger1 = numhelper(34105) = 0
helpertype = player
name = "34105"
ID = 34105
stateno = 34105
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34511, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34105) = 1

[State 34511, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34511,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34511, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34511, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34511]
type = Turn
trigger1 = parent,facing != facing

[State 34511, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34511, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34511, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34251]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3410
juggle = 0

[State 34251, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34251, VelSet]
type = VelSet
trigger1 = time >= 13
x = 20
y = 10

[State 34251, VelSet]
type = VelSet
trigger1 = time >= 16
x = 1
y = 1

[State 34251, VelSet]
type = VelSet
trigger1 = time >= 25
x = -1
y = -1

[State 34251, VelSet]
type = VelSet
trigger1 = time >= 27
x = -6 ;(- 2 for front fast)
y = -8

[State 34251, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 31
y = -3

[State 34251, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 31
y = 3

[State 34251, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 31
x = -3

[State 34251, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 31
x = 3

[State 34251, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 31
x = 0

[State 34251, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3410) = 0
trigger1 = numhelper(34105) = 0
helpertype = player
name = "34105"
ID = 34105
stateno = 34105
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34251, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34105) = 1

[State 34251, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 50

[State 34251,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 10,10
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -6
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34251, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34251, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34251]
type = Turn
trigger1 = parent,facing != facing

[State 34251, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34251, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34251, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34261]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3410
juggle = 0

[State 34261, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34261, PosAdd]
type = PosAdd
trigger1 = time = 2
x = 52
y = 40

[State 34261, VelSet]
type = null;VelSet
trigger1 = time >= 0
x = 10
y = 16

[State 34261, VelSet]
type = VelSet
trigger1 = time >= 3
x = 1
y = 1

[State 34261, VelSet]
type = VelSet
trigger1 = time >= 9
x = -2
y = -2

[State 34261, VelSet]
type = VelSet
trigger1 = time >= 11
x = -8 ;(- 2 for front fast)
y = -8

[State 34261, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 13
y = -3

[State 34261, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 13
y = 3

[State 34261, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 13
x = -3

[State 34261, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 13
x = 3

[State 34261, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 13
x = 0

[State 34261, Helper]
type = Helper
trigger1 = time = 25
trigger1 = numhelper(3410) = 0
trigger1 = numhelper(34105) = 0
helpertype = player
name = "34105"
ID = 34105
stateno = 34105
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34261, DestroySelf]
type = DestroySelf
trigger1 = time >= 26
trigger2 = numhelper(34105) = 1

[State 34261, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 26

[State 34261,hitdef]
type = null;HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 8,12
guard.pausetime = 8,12
ground.slidetime = 20
ground.hittime = 20
air.hittime = 40
guard.ctrltime =12
ground.velocity = -4
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34261, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34261, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34261]
type = Turn
trigger1 = parent,facing != facing

[State 34261, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34261, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34261, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

;TENGU ISHI HELPER=
[Statedef 34531]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3410
juggle = 0

[State 34531, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34531, VelSet]
type = VelSet
trigger1 = time >= 3
x = 15
y = 5

[State 34531, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34531, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34531, VelSet]
type = VelSet
trigger1 = time >= 10
x = -8 ;(- 2 for front fast)
y = -2

[State 34531, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 16
y = -3

[State 34531, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 16
y = 3

[State 34531, VelSet]
type = VelSet
trigger1 = parentdist x < 1;10
trigger1 = time >= 16
x = -3

[State 34531, VelSet]
type = VelSet
trigger1 = parentdist x > 1;10
trigger1 = time >= 16
x = 3

[State 34531, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34531, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3410) = 0
trigger1 = numhelper(34105) = 0
helpertype = player
name = "34105"
ID = 34105
stateno = 34105
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34531, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34105) = 1

[State 34531, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34531,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34531, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34531, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34531]
type = Turn
trigger1 = parent,facing != facing

[State 34531, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34531, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34531, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34301]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3410
juggle = 0

[State 34301, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34301, VelSet]
type = VelSet
trigger1 = time >= 3
x = 10
y = 6

[State 34301, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34301, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34301, VelSet]
type = VelSet
trigger1 = time >= 10
x = -8 ;(- 2 for front fast)
y = -3

[State 34301, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 16
y = -3

[State 34301, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 16
y = 3

[State 34301, VelSet]
type = VelSet
trigger1 = parentdist x < 1;10
trigger1 = time >= 16
x = -3

[State 34301, VelSet]
type = VelSet
trigger1 = parentdist x > 1;10
trigger1 = time >= 16
x = 3

[State 34301, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34301, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3410) = 0
trigger1 = numhelper(34105) = 0
helpertype = player
name = "34105"
ID = 34105
stateno = 34105
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34301, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34105) = 1

[State 34301, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34301,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34301, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34301, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34301]
type = Turn
trigger1 = parent,facing != facing

[State 34301, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34301, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34301, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34201]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3410
juggle = 0

[State 34201, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34201, VelSet]
type = VelSet
trigger1 = time >= 3
x = 10
y = 6

[State 34201, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34201, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34201, VelSet]
type = VelSet
trigger1 = time >= 10
x = -8 ;(- 2 for front fast)
y = -3

[State 34201, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 16
y = -3

[State 34201, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 16
y = 3

[State 34201, VelSet]
type = VelSet
trigger1 = parentdist x < 1;10
trigger1 = time >= 16
x = -3

[State 34201, VelSet]
type = VelSet
trigger1 = parentdist x > 1;10
trigger1 = time >= 16
x = 3

[State 34201, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34201, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3410) = 0
trigger1 = numhelper(34105) = 0
helpertype = player
name = "34105"
ID = 34105
stateno = 34105
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34201, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34105) = 1

[State 34201, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34201,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34201, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34201, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34201]
type = Turn
trigger1 = parent,facing != facing

[State 34201, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34201, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34201, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34631]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3410
juggle = 0

[State 34631, VelSet]
type = VelSet
trigger1 = time >= 0
x = 20
y = 10

[State 34631, VelSet]
type = VelSet
trigger1 = time >= 3
x = 1
y = 1

[State 34631, VelSet]
type = VelSet
trigger1 = time >= 5
x = 0
y = 0

[State 34631, VelSet]
type = VelSet
trigger1 = time >= 7
x = -2
y = -2

[State 34631, VelSet]
type = VelSet
trigger1 = time >= 10
x = -6 ;(- 2 for front fast)
y = -6

[State 34631, VelSet]
type = VelSet
trigger1 = parentdist y < 5
trigger1 = time >= 15
y = -3

[State 34631, VelSet]
type = VelSet
trigger1 = parentdist y > 5
trigger1 = time >= 15
y = 3

[State 34631, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 16
x = -3

[State 34631, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 16
x = 3

[State 34631, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34631, Helper]
type = Helper
trigger1 = time = 41
trigger1 = numhelper(3410) = 0
trigger1 = numhelper(34105) = 0
helpertype = player
name = "34105"
ID = 34105
stateno = 34105
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34631, DestroySelf]
type = DestroySelf
trigger1 = time >= 42
trigger2 = numhelper(34105) = 1

[State 34631, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 42

[State 34631,hitdef]
type = HitDef
trigger1 = time = 4
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34631, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34631, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34631, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34631, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34631, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34631, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34331]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3410
juggle = 0

[State 34331, VelSet]
type = VelSet
trigger1 = time >= 0
x = 20
y = 18

[State 34331, VelSet]
type = VelSet
trigger1 = time >= 3
x = 1
y = 1

[State 34331, VelSet]
type = VelSet
trigger1 = time >= 5
x = 0
y = 0

[State 34331, VelSet]
type = VelSet
trigger1 = time >= 7
x = -4
y = -1

[State 34331, VelSet]
type = VelSet
trigger1 = time >= 10
x = -6 ;(- 2 for front fast)
y = -10

[State 34331, VelSet]
type = VelSet
trigger1 = parentdist y < 5
trigger1 = time >= 16
y = -3

[State 34331, VelSet]
type = VelSet
trigger1 = parentdist y > 5
trigger1 = time >= 16
y = 3

[State 34331, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 16
x = -3

[State 34331, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 16
x = 3

[State 34331, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34331, Helper]
type = Helper
trigger1 = time = 27
trigger1 = numhelper(3410) = 0
trigger1 = numhelper(34105) = 0
helpertype = player
name = "34105"
ID = 34105
stateno = 34105
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34331, DestroySelf]
type = DestroySelf
trigger1 = time >= 28
trigger2 = numhelper(34105) = 1

[State 34331, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 28

[State 34331,hitdef]
type = HitDef
trigger1 = time = 5
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34331, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34331, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34331, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34331, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34331, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34331, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34321]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3410
juggle = 0

[State 34321, VelSet]
type = VelSet
trigger1 = time >= 0
x = 20
y = 18

[State 34321, VelSet]
type = VelSet
trigger1 = time >= 3
x = 1
y = 1

[State 34321, VelSet]
type = VelSet
trigger1 = time >= 5
x = 0
y = 0

[State 34321, VelSet]
type = VelSet
trigger1 = time >= 7
x = -4
y = -1

[State 34321, VelSet]
type = VelSet
trigger1 = time >= 10
x = -8 ;(- 2 for front fast)
y = -10

[State 34321, VelSet]
type = VelSet
trigger1 = parentdist y < 5
trigger1 = time >= 15
y = -3

[State 34321, VelSet]
type = VelSet
trigger1 = parentdist y > 5
trigger1 = time >= 15
y = 3

[State 34321, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 16
x = -3

[State 34321, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 16
x = 3

[State 34321, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34321, Helper]
type = Helper
trigger1 = time = 24
trigger1 = numhelper(3410) = 0
trigger1 = numhelper(34105) = 0
helpertype = player
name = "34105"
ID = 34105
stateno = 34105
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34321, DestroySelf]
type = DestroySelf
trigger1 = time >= 25
trigger2 = numhelper(34105) = 1

[State 34321, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 25

[State 34321,hitdef]
type = HitDef
trigger1 = time = 4
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34321, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34321, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34321, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34321, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34321, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34321, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 3415]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0,0
anim = 3414
juggle = 0

[State 3415, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34302) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = [600,699]
trigger1 = parent, vel X < 0
helpertype = player
name = "34413"
ID = 34302
stateno = 34413
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3415, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34302) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = [600,699]
trigger1 = parent, vel X > 0
helpertype = player
name = "34403"
ID = 34302
stateno = 34403
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3415, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34302) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = [600,699]
trigger1 = parent, vel X = 0
helpertype = player
name = "34302"
ID = 34302
stateno = 34302
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3415, VelSet]
type = AssertSpecial
triggerall = time > 11
trigger1 = NumHelper(34400) = 1
flag = invisible

[State 3415, VelSet]
type = AssertSpecial
triggerall = time > 11
trigger1 = parent, Numexplod(34402) = 1
trigger2 = parent, Numexplod(34442) = 1
trigger3 = parent, Numexplod(34412) = 1
trigger4 = parent, Numexplod(34422) = 1
trigger5 = parent, Numexplod(34432) = 1
trigger6 = parent, Numexplod(34442) = 1
flag = invisible

[State 3415, VelSet]
type = AssertSpecial
triggerall = time > 11
trigger1 = NumHelper(34242) = 1
trigger2 = NumHelper(34512) = 1
trigger3 = NumHelper(34252) = 1
trigger4 = NumHelper(34262) = 1
trigger5 = NumHelper(34272) = 1
trigger6 = NumHelper(34532) = 1
trigger7 = NumHelper(34202) = 1
trigger8 = numhelper(34552) = 1
trigger9 = numhelper(34302) = 1
trigger10 = numhelper(34312) = 1
trigger11 = numhelper(34612) = 1
trigger12 = numhelper(34322) = 1
trigger13 = numhelper(34332) = 1
trigger14 = numhelper(34632) = 1
flag = invisible

[State 3415, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34632) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 450
helpertype = player
name = "34632"
ID = 34632
stateno = 34632
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3415, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34332) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 440
helpertype = player
name = "34332"
ID = 34332
stateno = 34332
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3415, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34322) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 430
helpertype = player
name = "34322"
ID = 34322
stateno = 34322
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3415, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34302) = 0
triggerall = numhelper(3415) = 1
trigger1 = parent,stateno = 400
trigger2 = parent,stateno = 410
trigger3 = parent,stateno = 420
helpertype = player
name = "34302"
ID = 34302
stateno = 34302
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3415, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34552) = 0
triggerall = numhelper(3415) = 1
trigger1 = parent,stateno = 215
helpertype = player
name = "34552"
ID = 34552
stateno = 34552
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3415, Helper]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34242) = 0
triggerall = numhelper(3415) = 1
trigger1 = parent,stateno = 200
trigger2 = parent,stateno = 240
helpertype = player
name = "34242"
ID = 34242
stateno = 34242
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3415, Helper]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34512) = 0
triggerall = numhelper(3415) = 1
trigger1 = parent,stateno = 210
trigger2 = parent,stateno = 219
helpertype = player
name = "34512"
ID = 34512
stateno = 34512
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3415, Helper]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34252) = 0
triggerall = numhelper(3415) = 1
trigger1 = parent,stateno = 220
helpertype = player
name = "34252"
ID = 34252
stateno = 34252
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3415, Helper]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34262) = 0
triggerall = numhelper(3415) = 1
trigger1 = parent,stateno = 230
helpertype = player
name = "34262"
ID = 34262
stateno = 34262
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3415, Helper]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34532) = 0
triggerall = numhelper(3415) = 1
trigger1 = parent,stateno = 250
helpertype = player
name = "34532"
ID = 34532
stateno = 34532
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3415, Helper]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34202) = 0
triggerall = numhelper(3415) = 1
trigger1 = parent,stateno = 205
trigger2 = parent,stateno = 235
trigger3 = parent,stateno = 245
helpertype = player
name = "34202"
ID = 34202
stateno = 34202
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3415, Helper]
type = Helper
triggerall = parent, var(27) = 1
triggerall = numhelper(34155) = 0
trigger1 = numhelper(34242) = 0
trigger2 = numhelper(34252) = 0
trigger3 = numhelper(34512) = 0
trigger4 = numhelper(34262) = 0
trigger5 = numhelper(34272) = 0
trigger6 = numhelper(34532) = 0
trigger7 = numhelper(34202) = 0
trigger8 = numhelper(34552) = 0
helpertype = player
name = "34155"
ID = 34155
stateno = 34155
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3415, VelSet]
type = VelSet
triggerall = time < 10
trigger1 = parentdist x > 10
x = 4

[State 3415, VelSet]
type = VelSet
triggerall = time < 10
trigger1 = parentdist y < 0
y = -2

[State 3415, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < 35
x = -0.5

[State 3415, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < 30
x = -1

[State 3415, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < 20
x = -2

[State 3415, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < 30
x = -4

[State 3415, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > 45
x = 0.5

[State 3415, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > 80
x = 1

[State 3415, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > 70
x = 2

[State 3415, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > 90
x = 4

[State 3415, VelSet]
type = VelSet
trigger1 = time >= 589
x = -8

[State 3415, VelSet]
type = VelSet
trigger1 = time >= 589
y = -8

[State 3415, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y < 120
y = -0.5

[State 3415, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y < 130
y = -2

[State 3415, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y >= 119
y = 0.5

[State 3415, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y > 110
y = 2

[State 3415, VelSet]
type = VelSet
triggerall = parent, statetype = C
;triggerall = time > 11
trigger1 = parentdist y > 60
y = 2

[State 3415]
type = Turn
trigger1 = parent,facing != facing

[State 3415, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 3415, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3415, DestroySelf]
type = DestroySelf
trigger1 = parent, var(27) = 0
ignorehitpause = 1

[State 3415, DestroySelf]
type = DestroySelf
trigger1 = numhelper(3410) = 0 || numhelper(3415) = 0
ignorehitpause = 1

;TENGU ISHI HELPER=
[Statedef 34552]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3415
juggle = 0

[State 34552, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34552, VelSet]
type = VelSet
trigger1 = time >= 2
x = 14
y = 6

[State 34552, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34552, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34552, VelSet]
type = VelSet
trigger1 = time >= 11
x = -8 ;(- 2 for front fast)
y = -5

[State 34552, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -3

[State 34552, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 3

[State 34552, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 20
x = -3

[State 34552, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 20
x = 3

[State 34552, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 20
x = 0

[State 34552, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3415) = 0
trigger1 = numhelper(34155) = 0
helpertype = player
name = "34155"
ID = 34155
stateno = 34155
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34552, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34155) = 1

[State 34552, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34552,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -1
air.velocity = -1,-8
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34552, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34552, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34552, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34552]
type = Turn
trigger1 = parent,facing != facing

[State 34552, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34552, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34242]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3415
juggle = 0

[State 34242, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34242, VelSet]
type = VelSet
trigger1 = time >= 2
x = 20
y = 6

[State 34242, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34242, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34242, VelSet]
type = VelSet
trigger1 = time >= 11
x = -14 ;(- 2 for front fast)
y = -5

[State 34242, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -3

[State 34242, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 3

[State 34242, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 16
x = -3

[State 34242, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 16
x = 3

[State 34242, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34242, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3415) = 0
trigger1 = numhelper(34155) = 0
helpertype = player
name = "34155"
ID = 34155
stateno = 34155
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34242, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34155) = 1

[State 34242, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34242,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34242, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34242, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34242, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34242]
type = Turn
trigger1 = parent,facing != facing

[State 34242, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34242, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34512]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3415
juggle = 0

[State 34512, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34512, VelSet]
type = VelSet
trigger1 = time >= 2
x = 20
y = 6

[State 34512, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34512, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34512, VelSet]
type = VelSet
trigger1 = time >= 11
x = -14 ;(- 2 for front fast)
y = -3

[State 34512, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -3

[State 34512, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 3

[State 34512, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 16
x = -3

[State 34512, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 16
x = 3

[State 34512, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34512, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3415) = 0
trigger1 = numhelper(34155) = 0
helpertype = player
name = "34155"
ID = 34155
stateno = 34155
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34512, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34155) = 1

[State 34512, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34512,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34512, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34512, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34512, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34512]
type = Turn
trigger1 = parent,facing != facing

[State 34512, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34512, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34252]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3415
juggle = 0

[State 34252, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34252, VelSet]
type = VelSet
trigger1 = time >= 12
x = 29
y = 10

[State 34252, VelSet]
type = VelSet
trigger1 = time >= 15
x = 1
y = 1

[State 34252, VelSet]
type = VelSet
trigger1 = time >= 25
x = -1
y = -1

[State 34252, VelSet]
type = VelSet
trigger1 = time >= 27
x = -20 ;(- 2 for front fast)
y = -8

[State 34252, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 31
y = -3

[State 34252, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 31
y = 3

[State 34252, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 31
x = -3

[State 34252, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 31
x = 3

[State 34252, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 31
x = 0

[State 34252, Helper]
type = Helper
trigger1 = time = 49
trigger1 = numhelper(3415) = 0
trigger1 = numhelper(34155) = 0
helpertype = player
name = "34155"
ID = 34155
stateno = 34155
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34252, DestroySelf]
type = DestroySelf
trigger1 = time >= 50
trigger2 = numhelper(34155) = 1

[State 34252, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 50

[State 34252,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 10,10
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -6
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34252, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34252, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34252, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34252]
type = Turn
trigger1 = parent,facing != facing

[State 34252, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34252, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34262]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3415
juggle = 0

[State 34262, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34262, PosAdd]
type = PosAdd
trigger1 = time = 2
x = 100
y = 40

[State 34262, VelSet]
type = null;VelSet
trigger1 = time >= 0
x = 10
y = 16

[State 34262, VelSet]
type = VelSet
trigger1 = time >= 3;4
x = 1
y = 1

[State 34262, VelSet]
type = VelSet
trigger1 = time >= 9
x = -10
y = -4

[State 34262, VelSet]
type = VelSet
trigger1 = time >= 11
x = -18 ;(- 2 for front fast)
y = -10

[State 34262, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 14
y = -3

[State 34262, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 14
y = 3

[State 34262, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 14
x = -3

[State 34262, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 14
x = 3

[State 34262, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34262, Helper]
type = Helper
trigger1 = time = 25
trigger1 = numhelper(3415) = 0
trigger1 = numhelper(34155) = 0
helpertype = player
name = "34155"
ID = 34155
stateno = 34155
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34262, DestroySelf]
type = DestroySelf
trigger1 = time >= 26
trigger2 = numhelper(34155) = 1

[State 34262, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 26

[State 34262,hitdef]
type = null;HitDef
trigger1 = time >= 3
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 8,12
guard.pausetime = 8,12
ground.slidetime = 20
ground.hittime = 20
air.hittime = 40
guard.ctrltime =12
ground.velocity = -4
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34262, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34262, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34262, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34262]
type = Turn
trigger1 = parent,facing != facing

[State 34262, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34262, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

;TENGU ISHI HELPER=
[Statedef 34532]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3415
juggle = 0

[State 34532, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34532, VelSet]
type = VelSet
trigger1 = time >= 2
x = 20
y = 5

[State 34532, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34532, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34532, VelSet]
type = VelSet
trigger1 = time >= 11
x = -14 ;(- 2 for front fast)
y = -3

[State 34532, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -3

[State 34532, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 3

[State 34532, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 16
x = -3

[State 34532, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 16
x = 3

[State 34532, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34532, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3415) = 0
trigger1 = numhelper(34155) = 0
helpertype = player
name = "34155"
ID = 34155
stateno = 34155
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34532, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34155) = 1

[State 34532, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34532,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34532, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34532, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34532, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34532]
type = Turn
trigger1 = parent,facing != facing

[State 34532, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34532, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34302]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3415
juggle = 0

[State 34302, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34302, VelSet]
type = VelSet
trigger1 = time >= 2
x = 18
y = 6

[State 34302, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34302, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34302, VelSet]
type = VelSet
trigger1 = time >= 11
x = -14 ;(- 2 for front fast)
y = -5

[State 34302, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -3

[State 34302, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 3

[State 34302, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 16
x = -3

[State 34302, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 16
x = 3

[State 34302, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34302, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3415) = 0
trigger1 = numhelper(34155) = 0
helpertype = player
name = "34155"
ID = 34155
stateno = 34155
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34302, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34155) = 1

[State 34302, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34302,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34302, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34302, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34302, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34302]
type = Turn
trigger1 = parent,facing != facing

[State 34302, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34302, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34202]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3415
juggle = 0

[State 34202, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34202, VelSet]
type = VelSet
trigger1 = time >= 2
x = 18
y = 6

[State 34202, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34202, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34202, VelSet]
type = VelSet
trigger1 = time >= 11
x = -14 ;(- 2 for front fast)
y = -5

[State 34202, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -3

[State 34202, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 3

[State 34202, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 16
x = -3

[State 34202, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 16
x = 3

[State 34202, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34202, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3415) = 0
trigger1 = numhelper(34155) = 0
helpertype = player
name = "34155"
ID = 34155
stateno = 34155
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34202, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34155) = 1

[State 34202, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34202,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34202, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34202, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34202, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34202]
type = Turn
trigger1 = parent,facing != facing

[State 34202, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34202, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34632]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3415
juggle = 0

[State 34632, VelSet]
type = VelSet
trigger1 = time >= 0
x = 34
y = 10

[State 34632, VelSet]
type = VelSet
trigger1 = time >= 3
x = 1
y = 1

[State 34632, VelSet]
type = VelSet
trigger1 = time >= 5
x = 0
y = 0

[State 34632, VelSet]
type = VelSet
trigger1 = time >= 7
x = -2
y = -2

[State 34632, VelSet]
type = VelSet
trigger1 = time >= 10
x = -6 ;(- 2 for front fast)
y = -6

[State 34632, VelSet]
type = VelSet
trigger1 = parentdist y < 5
trigger1 = time >= 15
y = -3

[State 34632, VelSet]
type = VelSet
trigger1 = parentdist y > 5
trigger1 = time >= 15
y = 3

[State 34632, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 16
x = -3

[State 34632, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 16
x = 3

[State 34632, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34632, Helper]
type = Helper
trigger1 = time = 41
trigger1 = numhelper(3415) = 0
trigger1 = numhelper(34155) = 0
helpertype = player
name = "34155"
ID = 34155
stateno = 34155
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34632, DestroySelf]
type = DestroySelf
trigger1 = time >= 42
trigger2 = numhelper(34155) = 1

[State 34632, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 42

[State 34632,hitdef]
type = HitDef
trigger1 = time = 4
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34632, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34632, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34632, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34632, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34632, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34632, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34332]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3415
juggle = 0

[State 34332, VelSet]
type = VelSet
trigger1 = time >= 0
x = 34
y = 18

[State 34332, VelSet]
type = VelSet
trigger1 = time >= 3
x = 1
y = 1

[State 34332, VelSet]
type = VelSet
trigger1 = time >= 5
x = 0
y = 0

[State 34332, VelSet]
type = VelSet
trigger1 = time >= 7
x = -6
y = -1

[State 34332, VelSet]
type = VelSet
trigger1 = time >= 10
x = -12 ;(- 2 for front fast)
y = -10

[State 34332, VelSet]
type = VelSet
trigger1 = parentdist y < 5
trigger1 = time >= 15
y = -3

[State 34332, VelSet]
type = VelSet
trigger1 = parentdist y > 5
trigger1 = time >= 15
y = 3

[State 34332, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 16
x = -3

[State 34332, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 16
x = 3

[State 34332, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34332, Helper]
type = Helper
trigger1 = time = 27
trigger1 = numhelper(3415) = 0
trigger1 = numhelper(34155) = 0
helpertype = player
name = "34155"
ID = 34155
stateno = 34155
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34332, DestroySelf]
type = DestroySelf
trigger1 = time >= 28
trigger2 = numhelper(34155) = 1

[State 34332, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 29

[State 34332,hitdef]
type = HitDef
trigger1 = time = 5
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34332, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34332, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34332, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34332, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34332, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34332, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34322]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3415
juggle = 0

[State 34322, VelSet]
type = VelSet
trigger1 = time >= 0
x = 34
y = 18

[State 34322, VelSet]
type = VelSet
trigger1 = time >= 3
x = 1
y = 1

[State 34322, VelSet]
type = VelSet
trigger1 = time >= 5
x = 0
y = 0

[State 34322, VelSet]
type = VelSet
trigger1 = time >= 7
x = -6
y = -1

[State 34322, VelSet]
type = VelSet
trigger1 = time >= 10
x = -14 ;(- 2 for front fast)
y = -10

[State 34322, VelSet]
type = VelSet
trigger1 = parentdist y < 5
trigger1 = time >= 15
y = -3

[State 34322, VelSet]
type = VelSet
trigger1 = parentdist y > 5
trigger1 = time >= 15
y = 3

[State 34322, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 16
x = -3

[State 34322, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 16
x = 3

[State 34322, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34322, Helper]
type = Helper
trigger1 = time = 24
trigger1 = numhelper(3415) = 0
trigger1 = numhelper(34155) = 0
helpertype = player
name = "34155"
ID = 34155
stateno = 34155
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34322, DestroySelf]
type = DestroySelf
trigger1 = time >= 25
trigger2 = numhelper(34155) = 1

[State 34322, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 25

[State 34322,hitdef]
type = HitDef
trigger1 = time = 4
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34322, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34322, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34322, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34322, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34322, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34322, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34055]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3405
juggle = 0

[State 34055]
type = Turn
trigger1 = parent,facing != facing

[State 34055, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34055, VelSet]
type = VelSet
trigger1 = time >= 0
x = -8
y = -8

[State 34055, DestroySelf]
type = DestroySelf
trigger1 = time >= 35

;TENGU ISHI HELPER=
[Statedef 34105]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3406
juggle = 0

[State 34105]
type = Turn
trigger1 = parent,facing != facing

[State 34105, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34105, VelSet]
type = VelSet
trigger1 = time >= 0
x = -8
y = -8

[State 34105, DestroySelf]
type = DestroySelf
trigger1 = time >= 35

;TENGU ISHI HELPER=
[Statedef 34155]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3407
juggle = 0

[State 34155]
type = Turn
trigger1 = parent,facing != facing

[State 34155, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34155, VelSet]
type = VelSet
trigger1 = time >= 0
x = -8
y = -8

[State 34155, DestroySelf]
type = DestroySelf
trigger1 = time >= 35

;TENGU ISHI HELPER=
[Statedef 34411]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3405
juggle = 0

[State 34411, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 1

[State 34411, VelSet]
type = VelSet
trigger1 = time >= 4
x = 0
y = 6

[State 34411, VelSet]
type = VelSet
trigger1 = time >= 10
x = 0
y = 1

[State 34411, VelSet]
type = VelSet
trigger1 = time >= 12
x = 0
y = -1

[State 34411, VelSet]
type = VelSet
trigger1 = time >= 14
x = -2 ;(- 2 for front fast)
y = -5

[State 34411, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 14
y = -3

[State 34411, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 14
y = 3

[State 34411, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 14
x = -3

[State 34411, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 14
x = 3

[State 34411, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 14
x = 0

[State 34411, Helper]
type = Helper
trigger1 = time >= 35
trigger1 = numhelper(3405) = 0
helpertype = player
name = "34055"
ID = 34055
stateno = 34055
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34411, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger1 = numhelper(3405) = 1

[State 34411, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34411,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34411, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34411, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34411, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34411, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34411, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34411, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34412]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3410
juggle = 0

[State 34412, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 1

[State 34412, VelSet]
type = VelSet
trigger1 = time >= 3
x = 1
y = 6

[State 34412, VelSet]
type = VelSet
trigger1 = time >= 8
x = 0
y = 1

[State 34412, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34412, VelSet]
type = VelSet
trigger1 = time >= 10
x = -2 ;(- 2 for front fast)
y = -3

[State 34412, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 16
y = -2

[State 34412, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 16
y = 2

[State 34412, VelSet]
type = VelSet
trigger1 = parentdist x < 1;10
trigger1 = time >= 16
x = -2

[State 34412, VelSet]
type = VelSet
trigger1 = parentdist x > 1;10
trigger1 = time >= 16
x = 2

[State 34412, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34412, Helper]
type = Helper
trigger1 = time >= 35
trigger1 = numhelper(3410) = 0
helpertype = player
name = "34055"
ID = 34055
stateno = 34055
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34412, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(3405) = 1

[State 34412, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34412,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34412, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34412, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34412]
type = Turn
trigger1 = parent,facing != facing

[State 34412, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34412, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34412, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34413]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3415
juggle = 0

[State 34413, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34413, VelSet]
type = VelSet
trigger1 = time >= 2
x = 1
y = 6

[State 34413, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34413, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34413, VelSet]
type = VelSet
trigger1 = time >= 11
x = -2 ;(- 2 for front fast)
y = -5

[State 34413, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -3

[State 34413, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 3

[State 34413, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 16
x = -3

[State 34413, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 16
x = 3

[State 34413, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34413, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34155) = 1

[State 34413, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34413, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3415) = 0
trigger1 = numhelper(34155) = 0
helpertype = player
name = "34155"
ID = 34155
stateno = 34155
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34413,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34413, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34413, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34413, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34413]
type = Turn
trigger1 = parent,facing != facing

[State 34413, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34413, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;MAX TENGU ISHI HELPER=
[Statedef 34414]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3435
juggle = 0

[State 34414, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34414, VelSet]
type = VelSet
trigger1 = time >= 2
x = 1
y = 6

[State 34414, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34414, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34414, VelSet]
type = VelSet
trigger1 = time >= 11
x = -2 ;(- 2 for front fast)
y = -5

[State 34414, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -3

[State 34414, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 3

[State 34414, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 16
x = -3

[State 34414, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 16
x = 3

[State 34414, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34414, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34165) = 1

[State 34414, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34414, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3420) = 0
trigger1 = numhelper(34165) = 0
helpertype = player
name = "34165"
ID = 34165
stateno = 34165
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34414,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34414, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34414, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34414, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34414]
type = Turn
trigger1 = parent,facing != facing

[State 34414, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34414, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;MAX TENGU ISHI HELPER=
[Statedef 34415]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3445
juggle = 0

[State 34415, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1
y = 1

[State 34415, VelSet]
type = VelSet
trigger1 = time >= 2
x = 1
y = 6

[State 34415, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34415, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34415, VelSet]
type = VelSet
trigger1 = time >= 11
x = -2 ;(- 2 for front fast)
y = -5

[State 34415, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -3

[State 34415, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 3

[State 34415, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 16
x = -3

[State 34415, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 16
x = 3

[State 34415, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34415, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34175) = 1

[State 34415, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34415, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3425) = 0
trigger1 = numhelper(34175) = 0
helpertype = player
name = "34175"
ID = 34175
stateno = 34175
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34415,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34415, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34415, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34415, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34415]
type = Turn
trigger1 = parent,facing != facing

[State 34415, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34415, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34401]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3405
juggle = 0

[State 34401, VelSet]
type = VelSet
trigger1 = time >= 0
x = 4
y = 1

[State 34401, VelSet]
type = VelSet
trigger1 = time >= 4
x = 3
y = 6

[State 34401, VelSet]
type = VelSet
trigger1 = time >= 10
x = 1
y = 1

[State 34401, VelSet]
type = VelSet
trigger1 = time >= 12
x = -1
y = -1

[State 34401, VelSet]
type = VelSet
trigger1 = time >= 14
x = -3 ;(- 2 for front fast)
y = -5

[State 34401, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 14
y = -3

[State 34401, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 14
y = 3

[State 34401, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 14
x = -3

[State 34401, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 14
x = 3

[State 34401, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 14
x = 0

[State 34401, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3405) = 0
trigger1 = numhelper(34055) = 0
helpertype = player
name = "34055"
ID = 34055
stateno = 34055
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34401, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34055) = 1

[State 34401, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34401,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34401, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34401, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34401, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34401, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34401, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34401, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34402]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3410
juggle = 0

[State 34402, VelSet]
type = VelSet
trigger1 = time >= 0
x = 4
y = 1

[State 34402, VelSet]
type = VelSet
trigger1 = time >= 3
x = 10
y = 6

[State 34402, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34402, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34402, VelSet]
type = VelSet
trigger1 = time >= 10
x = -8 ;(- 2 for front fast)
y = -3

[State 34402, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 16
y = -3

[State 34402, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 16
y = 3

[State 34402, VelSet]
type = VelSet
trigger1 = parentdist x < 1;10
trigger1 = time >= 16
x = -3

[State 34402, VelSet]
type = VelSet
trigger1 = parentdist x > 1;10
trigger1 = time >= 16
x = 3

[State 34402, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34402, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3410) = 0
trigger1 = numhelper(34105) = 0
helpertype = player
name = "34105"
ID = 34105
stateno = 34105
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34402, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34105) = 1

[State 34402, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34402,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34402, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34402, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34402]
type = Turn
trigger1 = parent,facing != facing

[State 34402, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34402, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34402, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34403]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3415
juggle = 0

[State 34403, VelSet]
type = VelSet
trigger1 = time >= 0
x = 4
y = 1

[State 34403, VelSet]
type = VelSet
trigger1 = time >= 2
x = 18
y = 6

[State 34403, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34403, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34403, VelSet]
type = VelSet
trigger1 = time >= 11
x = -14 ;(- 2 for front fast)
y = -5

[State 34403, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -3

[State 34403, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 3

[State 34403, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 16
x = -3

[State 34403, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 16
x = 3

[State 34403, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34403, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34155) = 1

[State 34403, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34403, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3415) = 0
trigger1 = numhelper(34155) = 0
helpertype = player
name = "34155"
ID = 34155
stateno = 34155
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34403,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34403, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34403, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34403, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34403]
type = Turn
trigger1 = parent,facing != facing

[State 34403, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34403, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;MAX TENGU ISHI HELPER=
[Statedef 34404]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3435
juggle = 0

[State 34404, VelSet]
type = VelSet
trigger1 = time >= 0
x = 4
y = 1

[State 34404, VelSet]
type = VelSet
trigger1 = time >= 2
x = 18
y = 6

[State 34404, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34404, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34404, VelSet]
type = VelSet
trigger1 = time >= 11
x = -14 ;(- 2 for front fast)
y = -5

[State 34404, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -3

[State 34404, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 3

[State 34404, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 16
x = -3

[State 34404, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 16
x = 3

[State 34404, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34404, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34165) = 1

[State 34404, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34404, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3420) = 0
trigger1 = numhelper(34165) = 0
helpertype = player
name = "34165"
ID = 34165
stateno = 34165
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34404,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34404, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34404, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34404, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34404]
type = Turn
trigger1 = parent,facing != facing

[State 34404, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34404, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;MAX TENGU ISHI HELPER=
[Statedef 34405]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3445
juggle = 0

[State 34405, VelSet]
type = VelSet
trigger1 = time >= 0
x = 4
y = 1

[State 34405, VelSet]
type = VelSet
trigger1 = time >= 2
x = 18
y = 6

[State 34405, VelSet]
type = VelSet
trigger1 = time >= 8
x = 1
y = 1

[State 34405, VelSet]
type = VelSet
trigger1 = time >= 9
x = -1
y = -1

[State 34405, VelSet]
type = VelSet
trigger1 = time >= 11
x = -14 ;(- 2 for front fast)
y = -5

[State 34405, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -3

[State 34405, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 3

[State 34405, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 16
x = -3

[State 34405, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 16
x = 3

[State 34405, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34405, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34175) = 1

[State 34405, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34405, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3425) = 0
trigger1 = numhelper(34175) = 0
helpertype = player
name = "34175"
ID = 34175
stateno = 34175
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34405,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34405, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34405, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34405, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34405]
type = Turn
trigger1 = parent,facing != facing

[State 34405, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34405, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34400]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 34059
juggle = 0

[State 34400, Helper]
type = Helper
triggerall = numhelper(3405) = 0
triggerall = numhelper(34055) = 0
trigger1 = time = 1
helpertype = player
name = "34055"
ID = 34055
stateno = 34055
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34400, DestroySelf]
type = DestroySelf
trigger1 = time = 2
trigger2 = numhelper(34055) = 1

[State 34400, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 4

[State 34400,hitdef]
type = HitDef
trigger1 = animelem = 1
trigger1 = hitcount < 1
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -4
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34400, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34400, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34400, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34400, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34400, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;MAX TENGU ISHI HELPER=
[Statedef 3420]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0,0
anim = 3434
juggle = 0

[State 3420, Helper attack]
type = Helper
triggerall =parent,var(27)>10
triggerall = time > 11
triggerall = numhelper(34303) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = [600,699]
trigger1 = parent, vel X < 0
helpertype = player
name = "34414"
ID = 34303
stateno = 34414
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3420, Helper attack]
type = Helper
triggerall =parent,var(27)>10
triggerall = time > 11
triggerall = numhelper(34303) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = [600,699]
trigger1 = parent, vel X > 0
helpertype = player
name = "34404"
ID = 34303
stateno = 34404
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3420, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34303) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = [600,699]
trigger1 = parent, vel X = 0
helpertype = player
name = "34303"
ID = 34303
stateno = 34303
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3420, VelSet]
type = AssertSpecial
triggerall = time > 11
trigger1 = NumHelper(34400) = 1
flag = invisible

[State 3420, VelSet]
type = AssertSpecial
triggerall = time > 11
trigger1 = parent, Numexplod(34403) = 1
trigger2 = parent, Numexplod(34443) = 1
trigger3 = parent, Numexplod(34413) = 1
trigger4 = parent, Numexplod(34423) = 1
trigger5 = parent, Numexplod(34433) = 1
trigger6 = parent, Numexplod(34443) = 1
flag = invisible

[State 3420, VelSet]
type = AssertSpecial
triggerall = time > 11
trigger1 = NumHelper(34243) = 1
trigger2 = NumHelper(34513) = 1
trigger3 = NumHelper(34253) = 1
trigger4 = NumHelper(34263) = 1
trigger5 = NumHelper(34273) = 1
trigger6 = NumHelper(34533) = 1
trigger7 = numhelper(34203) = 1
trigger8 = numhelper(34553) = 1
trigger9 = numhelper(34303) = 1
trigger10 = numhelper(34313) = 1
trigger11 = numhelper(34613) = 1
trigger12 = numhelper(34323) = 1
trigger13 = numhelper(34333) = 1
trigger14 = numhelper(34633) = 1
flag = invisible

[State 3420, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34633) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 450
helpertype = player
name = "34633"
ID = 34633
stateno = 34633
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3420, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34333) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 440
helpertype = player
name = "34333"
ID = 34333
stateno = 34333
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3420, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34323) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 430
helpertype = player
name = "34323"
ID = 34323
stateno = 34323
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0
ignorehitpause = 1

[State 3420, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34303) = 0
triggerall = numhelper(3420) = 1
trigger1 = parent,stateno = 400
trigger2 = parent,stateno = 410
trigger3 = parent,stateno = 420
helpertype = player
name = "34303"
ID = 34303
stateno = 34303
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3420, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34553) = 0
triggerall = numhelper(3420) = 1
trigger1 = parent,stateno = 215
helpertype = player
name = "34553"
ID = 34553
stateno = 34553
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3420, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34243) = 0
triggerall = numhelper(3420) = 1
trigger1 = parent,stateno = 200
trigger2 = parent,stateno = 240
helpertype = player
name = "34243"
ID = 34243
stateno = 34243
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3420, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34513) = 0
triggerall = numhelper(3420) = 1
trigger1 = parent,stateno = 210
trigger2 = parent,stateno = 219
helpertype = player
name = "34513"
ID = 34513
stateno = 34513
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3420, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34253) = 0
triggerall = numhelper(3420) = 1
trigger1 = parent,stateno = 220
helpertype = player
name = "34253"
ID = 34253
stateno = 34253
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3420, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34263) = 0
triggerall = numhelper(3420) = 1
trigger1 = parent,stateno = 230
helpertype = player
name = "34263"
ID = 34263
stateno = 34263
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3420, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34533) = 0
triggerall = numhelper(3420) = 1
trigger1 = parent,stateno = 250
helpertype = player
name = "34533"
ID = 34533
stateno = 34533
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3420, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34203) = 0
triggerall = numhelper(3420) = 1
trigger1 = parent,stateno = 205
trigger2 = parent,stateno = 235
trigger3 = parent,stateno = 245
helpertype = player
name = "34203"
ID = 34203
stateno = 34203
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3420, Helper leave]
type = Helper
triggerall = parent, var(27) = 1
triggerall = numhelper(34165) = 0
trigger1 = numhelper(34243) = 0
trigger2 = numhelper(34253) = 0
trigger3 = numhelper(34513) = 0
trigger4 = numhelper(34263) = 0
trigger5 = numhelper(34273) = 0
trigger6 = numhelper(34533) = 0
trigger7 = numhelper(34203) = 0
trigger8 = numhelper(34553) = 0
helpertype = player
name = "34165"
ID = 34165
stateno = 34165
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3420]
type = Turn
trigger1 = parent,facing != facing

[State 3420, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 3420, VelSet]
type = VelSet
triggerall = time < 10
trigger1 = parentdist x > 10
x = 8

[State 3420, VelSet]
type = VelSet
triggerall = time < 10
trigger1 = parentdist y < 0
y = -2

[State 3420, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < -45
x = -0.5

[State 3420, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < -50
x = -2

[State 3420, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < -60
x = -4

[State 3420, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < -90
x = -6

[State 3420, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > -35
x = 0.5

[State 3420, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > -30
x = 2

[State 3420, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > -10
x = 4

[State 3420, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > 10
x = 6

[State 3420, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y < 160
y = -0.5

[State 3420, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y < 160
y = -2

[State 3420, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y >= 149
y = 0.5

[State 3420, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y > 140
y = 2

[State 3420, VelSet]
type = VelSet
triggerall = parent, statetype = C
trigger1 = parentdist y > 90
y = 2

[State 3420, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3420, DestroySelf]
type = DestroySelf
trigger1 = parent, var(27) = 0
ignorehitpause = 1

[State 3420, DestroySelf]
type = DestroySelf
trigger1 = numhelper(3410) = 0 || numhelper(3415) = 0

;TENGU ISHI HELPER=
[Statedef 34553]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3435
juggle = 0

[State 34553, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34553, VelSet]
type = VelSet
trigger1 = time >= 4
x = 4
y = 7

[State 34553, VelSet]
type = VelSet
trigger1 = time >= 10
x = 2
y = 2

[State 34553, VelSet]
type = VelSet
trigger1 = time >= 12
x = -2
y = -2

[State 34553, VelSet]
type = VelSet
trigger1 = time >= 14
x = -4 ;(- 2 for front fast)
y = -4

[State 34553, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 14
y = -4

[State 34553, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 14
y = 4

[State 34553, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 14
x = -4

[State 34553, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 14
x = 4

[State 34553, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 14
x = 0

[State 34553, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3405) = 0
trigger1 = numhelper(34165) = 0
helpertype = player
name = "34165"
ID = 34165
stateno = 34165
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34553, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34165) = 1

[State 34553, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 40

[State 34553,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -1
air.velocity = -1,-8
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34553, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34553, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34553, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34553, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34553, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34553, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34243]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3435
juggle = 0

[State 34243, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34243, VelSet]
type = VelSet
trigger1 = time >= 4
x = 5
y = 7

[State 34243, VelSet]
type = VelSet
trigger1 = time >= 10
x = 2
y = 2

[State 34243, VelSet]
type = VelSet
trigger1 = time >= 12
x = -2
y = -2

[State 34243, VelSet]
type = VelSet
trigger1 = time >= 14
x = -4 ;(- 2 for front fast)
y = -6

[State 34243, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 14
y = -4

[State 34243, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 14
y = 4

[State 34243, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 14
x = -4

[State 34243, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 14
x = 4

[State 34243, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 14
x = 0

[State 34243, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3420) = 0
trigger1 = numhelper(34165) = 0
helpertype = player
name = "34165"
ID = 34165
stateno = 34165
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34243, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34165) = 1

[State 34243, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34243,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34243, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34243, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34243, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34243, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34243, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34243, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34513]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3435
juggle = 0

[State 34513, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34513, VelSet]
type = VelSet
trigger1 = time >= 4
x = 9
y = 7

[State 34513, VelSet]
type = VelSet
trigger1 = time >= 10
x = 2
y = 2

[State 34513, VelSet]
type = VelSet
trigger1 = time >= 12
x = -2
y = -2

[State 34513, VelSet]
type = VelSet
trigger1 = time >= 14
x = -4 ;(- 2 for front fast)
y = -6

[State 34513, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 18
y = -4

[State 34513, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 18
y = 4

[State 34513, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 14
x = -4

[State 34513, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 14
x = 4

[State 34513, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 14
x = 0

[State 34513, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3420) = 0
trigger1 = numhelper(34165) = 0
helpertype = player
name = "34165"
ID = 34165
stateno = 34165
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34513, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34165) = 1

[State 34513, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34513,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34513, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34513, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34513, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34513, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34513, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34513, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 34513, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34253]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3435
juggle = 0

[State 34253, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34253, VelSet]
type = VelSet
trigger1 = time >= 14
x = 7
y = 11

[State 34253, VelSet]
type = VelSet
trigger1 = time >= 17
x = 2
y = 2

[State 34253, VelSet]
type = VelSet
trigger1 = time >= 25
x = -2
y = -2

[State 34253, VelSet]
type = VelSet
trigger1 = time >= 27
x = -4 ;(- 2 for front fast)
y = -9

[State 34253, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 31
y = -4

[State 34253, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 31
y = 4

[State 34253, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 31
x = -4

[State 34253, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 31
x = 4

[State 34253, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 31
x = 0

[State 34253, Helper]
type = Helper
trigger1 = time = 46
trigger1 = numhelper(3420) = 0
trigger1 = numhelper(34165) = 0
helpertype = player
name = "34165"
ID = 34165
stateno = 34165
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34253, DestroySelf]
type = DestroySelf
trigger1 = time = 47
trigger2 = numhelper(34165) = 1

[State 34253, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 47

[State 34253,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 10,10
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -6
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34253, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34253, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34253, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34253, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34253, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34253, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34263]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3435
juggle = 0

[State 34263, VelSet]
type = VelSet
trigger1 = time >= 0
x = 3
y = 3

[State 34263, PosAdd]
type = PosAdd
trigger1 = time = 2
x = 17
y = 41

[State 34263, VelSet]
type = null;VelSet
trigger1 = time >= 0
x = 11
y = 17

[State 34263, VelSet]
type = VelSet
trigger1 = time >= 3
x = 2
y = 2

[State 34263, VelSet]
type = VelSet
trigger1 = time >= 9
x = -2
y = -2

[State 34263, VelSet]
type = VelSet
trigger1 = time >= 11
x = -4
y = -9

[State 34263, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 11
y = -4

[State 34263, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 11
y = 4

[State 34263, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 11
x = -4

[State 34263, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 11
x = 4

[State 34263, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 11
x = 0

[State 34263, Helper]
type = Helper
trigger1 = time = 25
trigger1 = numhelper(3420) = 0
trigger1 = numhelper(34165) = 0
helpertype = player
name = "34165"
ID = 34165
stateno = 34165
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34263, DestroySelf]
type = DestroySelf
trigger1 = time = 26
trigger2 = numhelper(34165) = 1

[State 34263, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 26

[State 34263,hitdef]
type = null;HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 8,12
guard.pausetime = 8,12
ground.slidetime = 20
ground.hittime = 20
air.hittime = 40
guard.ctrltime =12
ground.velocity = -4
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34263, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34263, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34263, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34263, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34263, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34263, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34533]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3435
juggle = 0

[State 34533, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34533, VelSet]
type = VelSet
trigger1 = time >= 4
x = 5
y = 6

[State 34533, VelSet]
type = VelSet
trigger1 = time >= 10
x = 2
y = 2

[State 34533, VelSet]
type = VelSet
trigger1 = time >= 12
x = -2
y = -2

[State 34533, VelSet]
type = VelSet
trigger1 = time >= 14
x = -4 ;(- 2 for front fast)
y = -4

[State 34533, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 14
y = -4

[State 34533, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 14
y = 4

[State 34533, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 14
x = -4

[State 34533, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 14
x = 4

[State 34533, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 14
x = 0

[State 34533, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3420) = 0
trigger1 = numhelper(34165) = 0
helpertype = player
name = "34165"
ID = 34165
stateno = 34165
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34533, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34165) = 1

[State 34533, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34533,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34533, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34533, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34533, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34533, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34533, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34533, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34303]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3435
juggle = 0

[State 34303, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34303, VelSet]
type = VelSet
trigger1 = time >= 4
x = 4
y = 7

[State 34303, VelSet]
type = VelSet
trigger1 = time >= 10
x = 2
y = 2

[State 34303, VelSet]
type = VelSet
trigger1 = time >= 12
x = -2
y = -2

[State 34303, VelSet]
type = VelSet
trigger1 = time >= 14
x = -4 ;(- 2 for front fast)
y = -6

[State 34303, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 14
y = -4

[State 34303, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 14
y = 4

[State 34303, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 14
x = -4

[State 34303, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 14
x = 4

[State 34303, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 14
x = 0

[State 34303, Helper]
type = Helper
trigger1 = time =34
trigger1 = numhelper(3420) = 0
trigger1 = numhelper(34165) = 0
helpertype = player
name = "34165"
ID = 34165
stateno = 34165
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34303, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34165) = 1

[State 34303, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34303,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34303, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34303, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34303, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34303, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34303, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34303, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34203]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3435
juggle = 0

[State 34203, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34200, VelSet]
type = VelSet
trigger1 = time >= 4
x = 4
y = 7

[State 34203, VelSet]
type = VelSet
trigger1 = time >= 10
x = 2
y = 2

[State 34203, VelSet]
type = VelSet
trigger1 = time >= 12
x = -2
y = -2

[State 34203, VelSet]
type = VelSet
trigger1 = time >= 14
x = -4 ;(- 2 for front fast)
y = -6

[State 34203, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 14
y = -4

[State 34203, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 14
y = 4

[State 34203, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 14
x = -4

[State 34203, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 14
x = 4

[State 34203, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 14
x = 0

[State 34203, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3420) = 0
trigger1 = numhelper(34165) = 0
helpertype = player
name = "34165"
ID = 34165
stateno = 34165
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34203, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34165) = 1

[State 34203, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34203,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34203, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34203, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34203, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34203, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34203, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34203, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34633]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3435
juggle = 0

[State 34633, VelSet]
type = VelSet
trigger1 = time >= 0
x = 11
y = 11

[State 34633, VelSet]
type = VelSet
trigger1 = time >= 3
x = 2
y = 2

[State 34633, VelSet]
type = VelSet
trigger1 = time >= 5
x = 1
y = 1

[State 34633, VelSet]
type = VelSet
trigger1 = time >= 7
x = -3
y = -3

[State 34633, VelSet]
type = VelSet
trigger1 = time >= 10
x = -7 ;(- 2 for front fast)
y = -7

[State 34633, VelSet]
type = VelSet
trigger1 = parentdist y < 5
trigger1 = time >= 15
y = -4

[State 34633, VelSet]
type = VelSet
trigger1 = parentdist y > 5
trigger1 = time >= 15
y = 4

[State 34633, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 16
x = -4

[State 34633, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 16
x = 4

[State 34633, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34633, Helper]
type = Helper
trigger1 = time = 41
trigger1 = numhelper(3420) = 0
trigger1 = numhelper(34165) = 0
helpertype = player
name = "34165"
ID = 34165
stateno = 34165
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34633, DestroySelf]
type = DestroySelf
trigger1 = time = 42
trigger2 = numhelper(34165) = 1

[State 34633, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 42

[State 34633,hitdef]
type = HitDef
trigger1 = time = 4
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34633, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34633, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34633, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34633, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34633, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34633, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34333]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3435
juggle = 0

[State 34333, VelSet]
type = VelSet
trigger1 = time >= 0
x = 9
y = 19

[State 34333, VelSet]
type = VelSet
trigger1 = time >= 3
x = 2
y = 2

[State 34333, VelSet]
type = VelSet
trigger1 = time >= 5
x = 1
y = 1

[State 34333, VelSet]
type = VelSet
trigger1 = time >= 7
x = -3
y = -2

[State 34333, VelSet]
type = VelSet
trigger1 = time >= 10
x = -7 ;(- 2 for front fast)
y = -11

[State 34333, VelSet]
type = VelSet
trigger1 = parentdist y < 5
trigger1 = time >= 15
y = -4

[State 34333, VelSet]
type = VelSet
trigger1 = parentdist y > 5
trigger1 = time >= 15
y = 4

[State 34333, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 11
x = -4

[State 34333, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 11
x = 4

[State 34333, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 11
x = 0

[State 34333, Helper]
type = Helper
trigger1 = time = 27
trigger1 = numhelper(3420) = 0
trigger1 = numhelper(34165) = 0
helpertype = player
name = "34165"
ID = 34165
stateno = 34165
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34333, DestroySelf]
type = DestroySelf
trigger1 = time = 28
trigger2 = numhelper(34165) = 1

[State 34333, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 28

[State 34333,hitdef]
type = HitDef
trigger1 = time = 4
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34333, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34333, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34333, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34333, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34333, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34333, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34323]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3435
juggle = 0

[State 34323, VelSet]
type = VelSet
trigger1 = time >= 0
x = 9
y = 19

[State 34323, VelSet]
type = VelSet
trigger1 = time >= 3
x = 2
y = 2

[State 34323, VelSet]
type = VelSet
trigger1 = time >= 5
x = 1
y = 1

[State 34323, VelSet]
type = VelSet
trigger1 = time >= 7
x = -3
y = -2

[State 34323, VelSet]
type = VelSet
trigger1 = time >= 10
x = -7 ;(- 2 for front fast)
y = -11

[State 34323, VelSet]
type = VelSet
trigger1 = parentdist y < 5
trigger1 = time >= 15
y = -4

[State 34323, VelSet]
type = VelSet
trigger1 = parentdist y > 5
trigger1 = time >= 15
y = 4

[State 34323, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 11
x = -4

[State 34323, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 11
x = 4

[State 34323, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 11
x = 0

[State 34323, Helper]
type = Helper
trigger1 = time = 24
trigger1 = numhelper(3420) = 0
trigger1 = numhelper(34165) = 0
helpertype = player
name = "34165"
ID = 34165
stateno = 34165
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34323, DestroySelf]
type = DestroySelf
trigger1 = time = 25
trigger2 = numhelper(34165) = 1

[State 34323, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 25

[State 34323,hitdef]
type = HitDef
trigger1 = time = 4
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34323, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34323, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34323, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34323, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34323, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34323, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;MAX TENGU ISHI HELPER=
[Statedef 34165]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3435
juggle = 0

[State 34165]
type = Turn
trigger1 = parent,facing != facing

[State 34165, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34165, VelSet]
type = VelSet
trigger1 = time >= 0
x = -8
y = -8

[State 34165, DestroySelf]
type = DestroySelf
trigger1 = time >= 35

;MAX TENGU ISHI HELPER=
[Statedef 34175]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3445
juggle = 0

[State 34175]
type = Turn
trigger1 = parent,facing != facing

[State 34175, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34175, VelSet]
type = VelSet
trigger1 = time >= 0
x = -8
y = -8

[State 34175, DestroySelf]
type = DestroySelf
trigger1 = time >= 35

;MAX TENGU ISHI HELPER=
[Statedef 3425]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0,0
anim = 3444
juggle = 0

[State 3425, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34304) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = [600,699]
trigger1 = parent, vel X < 0
helpertype = player
name = "34415"
ID = 34304
stateno = 34415
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3425, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34304) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = [600,699]
trigger1 = parent, vel X > 0
helpertype = player
name = "34405"
ID = 34304
stateno = 34405
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3425, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34304) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = [600,699]
trigger1 = parent, vel X = 0
helpertype = player
name = "34304"
ID = 34304
stateno = 34304
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3425, VelSet]
type = AssertSpecial
triggerall = time > 11
trigger1 = NumHelper(34400) = 1
flag = invisible

[State 3425, VelSet]
type = AssertSpecial
triggerall = time > 11
trigger1 = parent, Numexplod(34404) = 1
trigger2 = parent, Numexplod(34444) = 1
trigger3 = parent, Numexplod(34414) = 1
trigger4 = parent, Numexplod(34424) = 1
trigger5 = parent, Numexplod(34434) = 1
trigger6 = parent, Numexplod(34444) = 1
flag = invisible

[State 3425, VelSet]
type = AssertSpecial
triggerall = time > 11
trigger1 = NumHelper(34244) = 1
trigger2 = NumHelper(34514) = 1
trigger3 = NumHelper(34254) = 1
trigger4 = NumHelper(34264) = 1
trigger5 = NumHelper(34274) = 1
trigger6 = NumHelper(34534) = 1
trigger7 = NumHelper(34204) = 1
trigger8 = numhelper(34554) = 1
trigger9 = numhelper(34304) = 1
trigger10 = numhelper(34314) = 1
trigger11 = numhelper(34614) = 1
trigger12 = numhelper(34324) = 1
trigger13 = numhelper(34334) = 1
trigger14 = numhelper(34634) = 1
flag = invisible

[State 3425, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34634) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 450
helpertype = player
name = "34634"
ID = 34634
stateno = 34634
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3425, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34334) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 440
helpertype = player
name = "34334"
ID = 34334
stateno = 34334
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3425, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34324) = 0
triggerall = numhelper(3405) = 1
trigger1 = parent,stateno = 430
helpertype = player
name = "34324"
ID = 34324
stateno = 34324
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3425, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34304) = 0
triggerall = numhelper(3425) = 1
trigger1 = parent,stateno = 400
trigger2 = parent,stateno = 410
trigger3 = parent,stateno = 420
helpertype = player
name = "34304"
ID = 34304
stateno = 34304
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3425, Helper attack]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34554) = 0
triggerall = numhelper(3425) = 1
trigger1 = parent,stateno = 215
helpertype = player
name = "34554"
ID = 34554
stateno = 34554
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3425, Helper]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34244) = 0
triggerall = numhelper(3425) = 1
trigger1 = parent,stateno = 200
trigger2 = parent,stateno = 240
helpertype = player
name = "34244"
ID = 34244
stateno = 34244
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3425, Helper]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34514) = 0
triggerall = numhelper(3425) = 1
trigger1 = parent,stateno = 210
trigger2 = parent,stateno = 219
helpertype = player
name = "34514"
ID = 34514
stateno = 34514
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3425, Helper]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34254) = 0
triggerall = numhelper(3425) = 1
trigger1 = parent,stateno = 220
helpertype = player
name = "34254"
ID = 34254
stateno = 34254
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3425, Helper]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34264) = 0
triggerall = numhelper(3425) = 1
trigger1 = parent,stateno = 230
helpertype = player
name = "34264"
ID = 34264
stateno = 34264
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3425, Helper]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34534) = 0
triggerall = numhelper(3425) = 1
trigger1 = parent,stateno = 250
helpertype = player
name = "34534"
ID = 34534
stateno = 34534
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3425, Helper]
type = Helper
triggerall = time > 11 && (parent,var(27)>10)
triggerall = numhelper(34204) = 0
triggerall = numhelper(3425) = 1
trigger1 = parent,stateno = 205
trigger2 = parent,stateno = 235
trigger3 = parent,stateno = 245
helpertype = player
name = "34204"
ID = 34204
stateno = 34204
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3425, Helper]
type = Helper
triggerall = parent, var(27) = 1
triggerall = numhelper(34175) = 0
trigger1 = numhelper(34244) = 0
trigger2 = numhelper(34254) = 0
trigger3 = numhelper(34514) = 0
trigger4 = numhelper(34264) = 0
trigger5 = numhelper(34274) = 0
trigger6 = numhelper(34534) = 0
trigger7 = numhelper(34204) = 0
trigger8 = numhelper(34554) = 0
helpertype = player
name = "34175"
ID = 34175
stateno = 34175
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 3425, VelSet]
type = VelSet
triggerall = time < 10
trigger1 = parentdist x > 10
x = 4

[State 3425, VelSet]
type = VelSet
triggerall = time < 10
trigger1 = parentdist y < 0
y = -2

[State 3425, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < 35
x = -0.5

[State 3425, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < 30
x = -1

[State 3425, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < 20
x = -2

[State 3425, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x < 30
x = -4

[State 3425, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > 45
x = 0.5

[State 3425, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > 80
x = 1

[State 3425, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > 70
x = 2

[State 3425, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist x > 90
x = 4

[State 3425, VelSet]
type = VelSet
trigger1 = time >= 589
x = -8

[State 3425, VelSet]
type = VelSet
trigger1 = time >= 589
y = -8

[State 3425, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y < 150
y = -0.5

[State 3425, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y < 160
y = -2

[State 3425, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y >= 149
y = 0.5

[State 3425, VelSet]
type = VelSet
triggerall = time > 11
trigger1 = parentdist y > 140
y = 2

[State 3425, VelSet]
type = VelSet
triggerall = parent, statetype = C
;triggerall = time > 11
trigger1 = parentdist y > 90
y = 2

[State 3425]
type = Turn
trigger1 = parent,facing != facing

[State 3425, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 3425, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3425, DestroySelf]
type = DestroySelf
trigger1 = parent, var(27) = 0
ignorehitpause = 1

[State 3425, DestroySelf]
type = DestroySelf
trigger1 = numhelper(3410) = 0 || numhelper(3415) = 0
ignorehitpause = 1

;TENGU ISHI HELPER=
[Statedef 34554]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3445
juggle = 0

[State 34554, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34554, VelSet]
type = VelSet
trigger1 = time >= 2
x = 15
y = 7

[State 34554, VelSet]
type = VelSet
trigger1 = time >= 8
x = 2
y = 2

[State 34554, VelSet]
type = VelSet
trigger1 = time >= 9
x = -2
y = -2

[State 34554, VelSet]
type = VelSet
trigger1 = time >= 11
x = -9 ;(- 2 for front fast)
y = -6

[State 34554, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -4

[State 34554, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 4

[State 34554, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 20
x = -4

[State 34554, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 20
x = 4

[State 34554, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 20
x = 0

[State 34554, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3425) = 0
trigger1 = numhelper(34175) = 0
helpertype = player
name = "34175"
ID = 34175
stateno = 34175
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34554, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34175) = 1

[State 34554, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34554,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -1
air.velocity = -1,-8
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34554, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34554, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34554, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34554]
type = Turn
trigger1 = parent,facing != facing

[State 34554, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34554, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34244]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3445
juggle = 0

[State 34244, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34244, VelSet]
type = VelSet
trigger1 = time >= 2
x = 21
y = 7

[State 34244, VelSet]
type = VelSet
trigger1 = time >= 8
x = 2
y = 2

[State 34244, VelSet]
type = VelSet
trigger1 = time >= 9
x = -2
y = -2

[State 34244, VelSet]
type = VelSet
trigger1 = time >= 11
x = -15 ;(- 2 for front fast)
y = -6

[State 34244, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -4

[State 34244, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 4

[State 34244, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 16
x = -4

[State 34244, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 16
x = 4

[State 34244, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34244, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3425) = 0
trigger1 = numhelper(34175) = 0
helpertype = player
name = "34175"
ID = 34175
stateno = 34175
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34244, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34175) = 1

[State 34244, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34244,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34244, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34244, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34244, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34244]
type = Turn
trigger1 = parent,facing != facing

[State 34244, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34244, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34514]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3445
juggle = 0

[State 34514, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34514, VelSet]
type = VelSet
trigger1 = time >= 2
x = 21
y = 7

[State 34514, VelSet]
type = VelSet
trigger1 = time >= 8
x = 2
y = 2

[State 34514, VelSet]
type = VelSet
trigger1 = time >= 9
x = -2
y = -2

[State 34514, VelSet]
type = VelSet
trigger1 = time >= 11
x = -15 ;(- 2 for front fast)
y = -4

[State 34514, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -4

[State 34514, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 4

[State 34514, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 16
x = -4

[State 34514, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 16
x = 4

[State 34514, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34514, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3425) = 0
trigger1 = numhelper(34175) = 0
helpertype = player
name = "34175"
ID = 34175
stateno = 34175
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34514, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34175) = 1

[State 34514, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34514,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34514, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34514, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34514, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34514]
type = Turn
trigger1 = parent,facing != facing

[State 34514, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34514, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34254]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3445
juggle = 0

[State 34254, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34254, VelSet]
type = VelSet
trigger1 = time >= 12
x = 30
y = 11

[State 34254, VelSet]
type = VelSet
trigger1 = time >= 15
x = 2
y = 2

[State 34254, VelSet]
type = VelSet
trigger1 = time >= 25
x = -2
y = -2

[State 34254, VelSet]
type = VelSet
trigger1 = time >= 27
x = -21 ;(- 2 for front fast)
y = -9

[State 34254, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 31
y = -4

[State 34254, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 31
y = 4

[State 34254, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 31
x = -4

[State 34254, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 31
x = 4

[State 34254, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 31
x = 0

[State 34254, Helper]
type = Helper
trigger1 = time = 49
trigger1 = numhelper(3425) = 0
trigger1 = numhelper(34175) = 0
helpertype = player
name = "34175"
ID = 34175
stateno = 34175
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34254, DestroySelf]
type = DestroySelf
trigger1 = time >= 50
trigger2 = numhelper(34175) = 1

[State 34254, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 50

[State 34254,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 10,10
guard.pausetime = 10,10
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -6
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34254, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34254, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34254, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34254]
type = Turn
trigger1 = parent,facing != facing

[State 34254, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34254, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34264]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3445
juggle = 0

[State 34264, VelSet]
type = VelSet
trigger1 = time >= 0
x = 3
y = 3

[State 34264, PosAdd]
type = PosAdd
trigger1 = time = 2
x = 101
y = 41

[State 34264, VelSet]
type = null;VelSet
trigger1 = time >= 0
x = 11
y = 17

[State 34264, VelSet]
type = VelSet
trigger1 = time >= 3;4
x = 2
y = 2

[State 34264, VelSet]
type = VelSet
trigger1 = time >= 9
x = -11
y = -5

[State 34264, VelSet]
type = VelSet
trigger1 = time >= 11
x = -19 ;(- 2 for front fast)
y = -11

[State 34264, VelSet]
type = VelSet
trigger1 = parentdist y < 10
trigger1 = time >= 14
y = -4

[State 34264, VelSet]
type = VelSet
trigger1 = parentdist y > 10
trigger1 = time >= 14
y = 4

[State 34264, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 14
x = -4

[State 34264, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 14
x = 4

[State 34264, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34264, Helper]
type = Helper
trigger1 = time = 25
trigger1 = numhelper(3425) = 0
trigger1 = numhelper(34175) = 0
helpertype = player
name = "34175"
ID = 34175
stateno = 34175
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34264, DestroySelf]
type = DestroySelf
trigger1 = time >= 26
trigger2 = numhelper(34175) = 1

[State 34264, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 26

[State 34264,hitdef]
type = null;HitDef
trigger1 = time >= 3
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 8,12
guard.pausetime = 8,12
ground.slidetime = 20
ground.hittime = 20
air.hittime = 40
guard.ctrltime =12
ground.velocity = -4
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34264, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34264, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34264, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34264]
type = Turn
trigger1 = parent,facing != facing

[State 34264, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34264, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

;TENGU ISHI HELPER=
[Statedef 34534]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3425
juggle = 0

[State 34534, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34534, VelSet]
type = VelSet
trigger1 = time >= 2
x = 21
y = 6

[State 34534, VelSet]
type = VelSet
trigger1 = time >= 8
x = 2
y = 2

[State 34534, VelSet]
type = VelSet
trigger1 = time >= 9
x = -2
y = -2

[State 34534, VelSet]
type = VelSet
trigger1 = time >= 11
x = -15 ;(- 2 for front fast)
y = -4

[State 34534, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -4

[State 34534, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 4

[State 34534, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 16
x = -4

[State 34534, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 16
x = 4

[State 34534, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34534, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3425) = 0
trigger1 = numhelper(34175) = 0
helpertype = player
name = "34175"
ID = 34175
stateno = 34175
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34534, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34175) = 1

[State 34534, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34534,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34534, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34534, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34534, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34534]
type = Turn
trigger1 = parent,facing != facing

[State 34534, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34534, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34304]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3445
juggle = 0

[State 34304, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34304, VelSet]
type = VelSet
trigger1 = time >= 2
x = 19
y = 7

[State 34304, VelSet]
type = VelSet
trigger1 = time >= 8
x = 2
y = 2

[State 34304, VelSet]
type = VelSet
trigger1 = time >= 9
x = -2
y = -2

[State 34304, VelSet]
type = VelSet
trigger1 = time >= 11
x = -15 ;(- 2 for front fast)
y = -6

[State 34304, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -4

[State 34304, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 4

[State 34304, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 16
x = -4

[State 34304, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 16
x = 4

[State 34304, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34304, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3425) = 0
trigger1 = numhelper(34175) = 0
helpertype = player
name = "34175"
ID = 34175
stateno = 34175
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34304, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34175) = 1

[State 34304, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34304,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34304, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34304, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34304, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34304]
type = Turn
trigger1 = parent,facing != facing

[State 34304, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34304, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34204]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3445
juggle = 0

[State 34204, VelSet]
type = VelSet
trigger1 = time >= 0
x = 2
y = 2

[State 34204, VelSet]
type = VelSet
trigger1 = time >= 2
x = 19
y = 7

[State 34204, VelSet]
type = VelSet
trigger1 = time >= 8
x = 2
y = 2

[State 34204, VelSet]
type = VelSet
trigger1 = time >= 9
x = -2
y = -2

[State 34204, VelSet]
type = VelSet
trigger1 = time >= 11
x = -15 ;(- 2 for front fast)
y = -6

[State 34204, VelSet]
type = VelSet
trigger1 = parentdist y < 1
trigger1 = time >= 16
y = -4

[State 34204, VelSet]
type = VelSet
trigger1 = parentdist y > 1
trigger1 = time >= 16
y = 4

[State 34204, VelSet]
type = VelSet
trigger1 = parentdist x < 10
trigger1 = time >= 16
x = -4

[State 34204, VelSet]
type = VelSet
trigger1 = parentdist x > 10
trigger1 = time >= 16
x = 4

[State 34204, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34204, Helper]
type = Helper
trigger1 = time = 34
trigger1 = numhelper(3425) = 0
trigger1 = numhelper(34175) = 0
helpertype = player
name = "34175"
ID = 34175
stateno = 34175
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34204, DestroySelf]
type = DestroySelf
trigger1 = time >= 35
trigger2 = numhelper(34175) = 1

[State 34204, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35

[State 34204,hitdef]
type = HitDef
trigger1 = time = 0
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = M
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S5,0
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34204, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34204, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34204, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34204]
type = Turn
trigger1 = parent,facing != facing

[State 34204, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34204, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34634]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3445
juggle = 0

[State 34634, VelSet]
type = VelSet
trigger1 = time >= 0
x = 35
y = 11

[State 34634, VelSet]
type = VelSet
trigger1 = time >= 3
x = 2
y = 2

[State 34634, VelSet]
type = VelSet
trigger1 = time >= 5
x = 1
y = 1

[State 34634, VelSet]
type = VelSet
trigger1 = time >= 7
x = -3
y = -3

[State 34634, VelSet]
type = VelSet
trigger1 = time >= 10
x = -7 ;(- 2 for front fast)
y = -7

[State 34634, VelSet]
type = VelSet
trigger1 = parentdist y < 5
trigger1 = time >= 15
y = -4

[State 34634, VelSet]
type = VelSet
trigger1 = parentdist y > 5
trigger1 = time >= 15
y = 4

[State 34634, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 16
x = -4

[State 34634, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 16
x = 4

[State 34634, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34634, Helper]
type = Helper
trigger1 = time = 41
trigger1 = numhelper(3425) = 0
trigger1 = numhelper(34175) = 0
helpertype = player
name = "34175"
ID = 34175
stateno = 34175
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34634, DestroySelf]
type = DestroySelf
trigger1 = time >= 42
trigger2 = numhelper(34175) = 1

[State 34634, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 42

[State 34634,hitdef]
type = HitDef
trigger1 = time = 4
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34634, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34634, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34634, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34634, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34634, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34634, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34334]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3445
juggle = 0

[State 34334, VelSet]
type = VelSet
trigger1 = time >= 0
x = 35
y = 19

[State 34334, VelSet]
type = VelSet
trigger1 = time >= 3
x = 2
y = 2

[State 34334, VelSet]
type = VelSet
trigger1 = time >= 5
x = 1
y = 1

[State 34334, VelSet]
type = VelSet
trigger1 = time >= 7
x = -7
y = -2

[State 34334, VelSet]
type = VelSet
trigger1 = time >= 10
x = -13 ;(- 2 for front fast)
y = -11

[State 34334, VelSet]
type = VelSet
trigger1 = parentdist y < 5
trigger1 = time >= 15
y = -4

[State 34334, VelSet]
type = VelSet
trigger1 = parentdist y > 5
trigger1 = time >= 15
y = 4

[State 34334, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 16
x = -4

[State 34334, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 16
x = 4

[State 34334, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34334, Helper]
type = Helper
trigger1 = time = 27
trigger1 = numhelper(3425) = 0
trigger1 = numhelper(34175) = 0
helpertype = player
name = "34175"
ID = 34175
stateno = 34175
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34334, DestroySelf]
type = DestroySelf
trigger1 = time >= 28
trigger2 = numhelper(34175) = 1

[State 34334, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 29

[State 34334,hitdef]
type = HitDef
trigger1 = time = 5
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34334, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34334, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34334, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34334, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34334, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34334, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;TENGU ISHI HELPER=
[Statedef 34324]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3445
juggle = 0

[State 34324, VelSet]
type = VelSet
trigger1 = time >= 0
x = 35
y = 19

[State 34324, VelSet]
type = VelSet
trigger1 = time >= 3
x = 2
y = 2

[State 34324, VelSet]
type = VelSet
trigger1 = time >= 5
x = 1
y = 1

[State 34324, VelSet]
type = VelSet
trigger1 = time >= 7
x = -7
y = -2

[State 34324, VelSet]
type = VelSet
trigger1 = time >= 10
x = -15 ;(- 2 for front fast)
y = -11

[State 34324, VelSet]
type = VelSet
trigger1 = parentdist y < 5
trigger1 = time >= 15
y = -4

[State 34324, VelSet]
type = VelSet
trigger1 = parentdist y > 5
trigger1 = time >= 15
y = 4

[State 34324, VelSet]
type = VelSet
trigger1 = parentdist x < 5
trigger1 = time >= 16
x = -4

[State 34324, VelSet]
type = VelSet
trigger1 = parentdist x > 5
trigger1 = time >= 16
x = 4

[State 34324, VelSet]
type = VelSet
trigger1 = parentdist x = 0
trigger1 = time >= 16
x = 0

[State 34324, Helper]
type = Helper
trigger1 = time = 24
trigger1 = numhelper(3425) = 0
trigger1 = numhelper(34175) = 0
helpertype = player
name = "34175"
ID = 34175
stateno = 34175
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove = 0
pausemove = 0

[State 34324, DestroySelf]
type = DestroySelf
trigger1 = time >= 25
trigger2 = numhelper(34175) = 1

[State 34324, NotHitBy]
type = NotHitBy
trigger1 =time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 25

[State 34324,hitdef]
type = HitDef
trigger1 = time = 4
priority = 3, Hit
attr = A,NA
hitflag = MAF
guardflag = L
animtype = hard
air.animtype = hard
ground.type = high
damage = 20,0
getpower = 0
GivePower = 0
pausetime = 6,6
guard.pausetime = 6,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =12
ground.velocity = -7
air.velocity = -2, -9
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
hitsound = S7,1
guardsound = S6,1
sparkxy = -20,0
sparkno = s17300+(Random%8)
guard.sparkno = s17010
fall = 0
air.fall = 1
fall.recover = 0

[State 34324, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 34324, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 34324, Turn]
type = Turn
trigger1 = parent,facing != facing

[State 34324, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 34324, DestroySelf]
type = DestroySelf
trigger1 = parentdist x = 0
trigger1 = parentdist y = 0

[State 34324, PlayerPush]
type = PlayerPush
trigger1 = time>=0
value = 0

;SPARKS=
;Guard Spark (Normal)
[StateDef 8000]
type = A
physics = N
moveType = I
anim = 8000
velset = 0,0
sprPriority = 5

[State 8000, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8000, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.125 + (0.046875 * Time), 0.125 + (0.046875 * Time)
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8000, End]
type = DestroySelf
trigger1 = Time >= 8


;Guard Spark (Special)
[StateDef 8001]
type = A
physics = N
moveType = I
anim = 8001
velSet = 0,0
sprPriority = 5

[State 8001, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8001, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8001, End]
type = DestroySelf
trigger1 = Time >= 8


;Weak Hit Spark
[StateDef 8010]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8010, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8010, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8010, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8010, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.3 - (Time * 0.03), 0.3 - (Time * 0.03)
ignoreHitPause = 1

[State 8010, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8010, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8010, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8010, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8010, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.3 - (0.0375 * Time), 0.3 - (0.0375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8010, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8010, End]
type = DestroySelf
trigger1 = Time >= 16


;Medium Hit Spark
[StateDef 8011]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8011, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8011, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8011, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8011, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.35 - (Time * 0.035), 0.35 - (Time * 0.035)
ignoreHitPause = 1

[State 8011, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8011, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8011, Center]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removetime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.35 - (0.04375 * Time), 0.35 - (0.04375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8011, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8011, End]
type = DestroySelf
trigger1 = Time >= 16


;Strong Hit Spark
[StateDef 8012]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8012, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8012, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8012, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8012, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.4 - (Time * 0.04), 0.4 - (Time * 0.04)
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8012, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8012, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.4 - (0.05 * Time), 0.4 - (0.05 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8012, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8012, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Hit Spark
[StateDef 8013]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8013, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8013, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8013, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8013, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.45 - (Time * 0.045), 0.45 - (Time * 0.045)
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8013, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8013, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = -1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale P2 Back Explod]
type = ModifyExplod
trigger1= NumExplod(3)
ID = 3
scale = 0.4, 0.4
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8013, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(random < 500, -1, 1)
vFacing = ifElse(random < 500, -1, 1)
sprPriority=3
removeTime=8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.45 - (0.05625 * Time), 0.45 - (0.05625 * Time)
trans = AddAlpha
alpha = 192 - (24 * Time), 256

[State 8013, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8013, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Hit Spark
[StateDef 8014]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8014, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8014, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8014, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8014, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.5 - (Time * 0.05), 0.5 - (Time * 0.05)
ignoreHitPause = 1

[State 8014, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8014, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8014, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = ifElse((Parent, StateNo = [3000,3999]), -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale P2 Back Explod]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.5,0.5
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8014, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.5 - (0.0625 * Time), 0.5 - (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8014, Remove Explods]
type = RemoveExplod
trigger1 = time >= 16

[State 8014, End]
type = DestroySelf
trigger1 = Time >= 16


;Reversal Spark
[StateDef 8020]
type = A
physics = N
moveType = I
anim = 8020
velSet = 0,0
sprPriority = 5

[State 8020, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8020, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.09375 * Time), 0.25 + (0.09375 * Time)
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8020, End]
type = DestroySelf
trigger1 = Time >= 8



;JUMP DUST=
[StateDef 8100]
type = S
anim = 1
velSet = 0,0

[State 8100, Bind]
type = BindToRoot
trigger1 = Time

[State 8100, Floor Dust]
type = Explod
trigger1 = !Time
anim = 8100
sprPriority = 3
posType = P1
pos = 0, ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, Player Dust]
type = Explod
trigger1 = !Time || Time = 2 || Time = 6
anim = 8101
sprPriority = 3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, End]
type = DestroySelf
trigger1 = Time >= 7



;DASH DUST=
[StateDef 8103]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8103, posSet]
type = PosSet
trigger1 = !Time = 0
y = 0

[State 8103, Dash Dust]
type = Explod
trigger1 = Time = 0 || Time = 3 || Time = 6
anim = 8103
ID = ifElse((Time = 6), 3, ifElse((Time = 3), 2, 1))
posType = P1
pos = 0,-4
random = 8,8
vel = -3 - (Random / 1000.0), -2 - (Random / 2000.0)
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 16
sprPriority = 3
pauseMoveTime = -1
superMoveTime = -1

[State 8103, Scale Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.1 + (0.025 * Time), 0.1 + (0.025 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8103, Scale Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.1 + (0.025 * (Time - 3)), 0.1 + (0.025 * (Time - 3))
trans = AddAlpha
alpha = 256 - (16 * (Time - 3)), 256

[State 8103, Scale Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.1 + (0.025 * (Time - 6)), 0.1 + (0.025 * (Time - 6))
trans = AddAlpha
alpha = 256 - (16 * (Time - 6)), 256

[State 8103, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 22

[State 8103, End]
type = DestroySelf
trigger1 = !NumExplod


;IMPACT DUST=
[StateDef 8110]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8110, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8110
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8120
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8110, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8110, End]
type = DestroySelf
trigger1 = !NumExplod


;WALL IMPACT DUST=
[StateDef 8111]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8111, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8111
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8121
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8111, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8111, End]
type = DestroySelf
trigger1 = !NumExplod



;RECOVER FX=
[StateDef 8200]
type = A
velSet = 0,0
anim = 8200
sprPriority = 5

[State 8200, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8200, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.017 * Time), 0.25 + (0.017 * Time)
ignoreHitPause = 1

[State 8200, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = ceil(256 - 17.1 * Time), 256
ignoreHitPause = 1

[State 8200, End]
type = DestroySelf
trigger1 = Time >= 15



;COUNTER FX=
[StateDef 8290]
type = A
physics = N
velSet = 0,0
anim = 1

[State 8290, "Counter!" Text Explod]
type = Explod
trigger1 = !NumExplod(8290)
anim = 8290
ID = 8290
sprPriority = 64
posType = P1
facing = Facing
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8290, Scale]
type = ModifyExplod
trigger1 = Time < 8
ID = 8290
scale = 0.5, .5
trans = AddAlpha
alpha = 256,0

[State 8290, Scale]
type = ModifyExplod
trigger1 = Time >= 8
ID = 8290
scale = 0.5 + 0.0625 * (Time - 8), 0.5 + 0.0625 * (Time - 8)
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 32 * (Time - 8)

[State 8290, Safety]
type = RemoveExplod
trigger1 = Time >= 16

[State 8290, End]
type = DestroySelf
trigger1 = Time >= 16



;POWER CHARGE FX=
;Aura and Dust
[StateDef 8330]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velset = 0,0

[State 8330, BindToRoot]
type = BindToRoot
trigger1 = (Root, StateNo = 730)
pos = 0,0

[State 8330, Charging Sound]
type = PlaySnd
trigger1 = !Time
value = 730,0
channel = 0

[State 8330, Power Charge Aura]
type = Explod
trigger1 = !NumExplod(8330)
ID = 8330
anim = 8330
sprPriority = 3
posType = P1
bindTime = -1
removeTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8330, Power Charge Dust]
type = Explod
trigger1 = !(Time % 6)
anim = 8105
sprPriority = -3
posType = P1
pos = 0, -ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8330, Modify Aura 1]
type = ModifyExplod
trigger1 = Numexplod(8330) && Root, Power < 3000
ID = 8330
scale = 0.5, 0.1 + 0.4 * (Root, Power / 3000.0)

[State 8330, Modify Aura 2]
type = ModifyExplod
trigger1 = NumExplod(8330) && Root, Power >= 3000
ID = 8330
scale = 0.5, 0.5

[State 8330, StopSnd]
type = StopSnd
trigger1 = Root, StateNo != 730
channel = 0

[State 8330, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 730

[State 8330, End]
type = DestroySelf
trigger1 = Root, StateNo != 730


;Particles
[StateDef 8331]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8331, BindToRoot]
type = BindToRoot
trigger1 = !(Time % 8)
pos = ceil(-151 + (Random / 3.125)), ceil(98 - (Random / 3.125))

[State 8331, Particle]
type = Explod
trigger1 = (Time % 8) = 1
anim = 8331
sprPriority = ifElse(Random < 750, 5, -1)
posType = P1
vel = ((RootDist x - 9) / 32.0), ((RootDist y - 71) / 32.0)
scale = ifElse(Random < 500, 0.5, -0.5), ifElse(Random < 500, 0.5, -0.5)
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8331, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 730

[State 8331, End]
type = DestroySelf
trigger1 = Root, StateNo != 730


;VIOLENT WIN VS VEGA PARTICLES=
[StateDef 8332]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8332, BindToRoot]
type = BindToRoot
trigger1 = !(Time % 4)
pos = ceil(-40 + (Random /10.25)), ceil(-17 - (Random / 10.25))

[State 8332, Particles]
type = Explod
trigger1 = (Time % 4) = 1
anim = 8332
sprPriority = ifElse(Random < 750,5,-1)
posType = P1
vel = (-(RootDist x + 4) / 10.0),(-(RootDist y - 85) / 10.0)
scale = ifElse(random < 500 ,0.5, -0.5),ifElse(random < 500, 0.5, -0.5)
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8332, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 187 || Root, AnimElemTime(60) >= 0

[State 833, End]
type = DestroySelf
trigger1 = Root, StateNo != 187 || Root, AnimElemTime(60) >= 0



;ZERO COUNTER FX=
[StateDef 8350]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8350, bgPalFX]
type = bgPalFX
trigger1 = 1
time = 1
color = 16 * Time
mul = 16 * Time, 16 * Time, 16 * Time

[State 8350, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8350
ID = 1
sprPriority = 3
posType = P1
removeTime = 16
superMoveTime = -1
ownPal = 1

[State 8350, Scale]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.0625 * Time), (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8350, Lightning Explod]
type = Explod
trigger1 = !Time
anim = 8351
ID = 2
sprPriority = -2
posType = P1
pos = 0, -ceil(pos y)
superMoveTime = -1
ownPal = 1

[State 8350, End]
type = DestroySelf
trigger1 = Time >= 16



;CUSTOM COMBO=
[StateDef 8400]
type = A
physics = N
moveType = I
anim = 8400
ctrl = 0
velSet = 0,0
sprPriority = 5

[State 8400, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8400, BGpalFX]
type = BGpalFX
trigger1 = Time < 25
time = 1
mul = 128,128,128

[State 8400, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8400, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8400, Scale]
type = AngleDraw
trigger1 = Time < 8
scale = (0.0625 * Time), (0.0625 * Time)
ignoreHitPause = 1

[State 8400, Scale]
type = AngleDraw
trigger1 = Time >= 8
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8400, Transparency]
type = Trans
trigger1 = Time < 16
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8400, Transparency]
type = Trans
trigger1 = Time >= 16
trans = AddAlpha
alpha = ceil(256 - 25.6 * (Time - 16)), 256
ignoreHitPause = 1

[State 8400, Lines Explod]
type = Explod
trigger1 = !Time
anim = 8401
ID = 1
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8400, Scale Lines Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 2 - (0.125 * Time), 2 - (0.125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8400, Circle Explod]
type = Explod
trigger1 = Time = 16
anim = 8402
ID = 2
sprPriority = 5
posType = P1
removeTime = 32
superMoveTime = -1

[State 8400, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.1 * (Time - 16)), (0.1 * (Time - 16))
trans = AddAlpha
alpha = ceil(256 - 25.6 * (Time - 16)), 256

[State 8400, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 26

[State 8400, End]
type = DestroySelf
trigger1 = Time >= 26



;SUPER PAUSE FX=
;Level 1 Super FX
[StateDef 8500]
type = A
velSet = 0,0
anim = 8500
sprPriority = 5

[State 8500, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8500, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 0,0,256

[State 8500, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8500, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8500, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8500, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5,0.5
ignoreHitPause = 1

[State 8500, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8500, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8501
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8500, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8500, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8502
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8500, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8500, End]
type = DestroySelf
trigger1 = Time >= 40


;Level 2 Super FX
[StateDef 8510]
type = A
velSet = 0,0
anim = 8510
sprPriority = 5

[State 8510, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8510, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 192,0,256

[State 8510, Rotate]
type = AngleSet
trigger1 = !Time
value =6 * (Random % 60)

[State 8510, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8510, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8510, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8510, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8510, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8511
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8510, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8510, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8510, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8510, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 -(0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8510, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8512
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 32
superMoveTime = -1

[State 8510, Scale]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24)<4, 64 * (Time - 24), 256), 256

[State 8510, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8510, End]
type = DestroySelf
trigger1 = Time >= 40


;Level 3 Super FX
[StateDef 8520]
type = A
velset = 0,0
anim = 8520
sprPriority = 5

[State 8520, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8520, Assert: NoBG, NoFG]
type = AssertSpecial
trigger1 = Time < 40
flag = NoBG
flag2 = NoFG

[State 8520, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8520, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8520, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8520, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8520, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8520, Portrait 1]
type = Explod
trigger1 = !Time
anim = 8525
ID = 20
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Portrait 2]
type = Explod
trigger1 = !Time
anim = 8525
ID = 21
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Scale Portrait 1a]
type = ModifyExplod
trigger1 = NumExplod(20) && Time < 16
ID = 20
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 1 - (0.03125 * Time), 1 - (0.03125 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 2a]
type = ModifyExplod
trigger1 = NumExplod(21) && Time < 16
ID = 21
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 2 - (0.09375 * Time), 2 - (0.09375 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 1b]
type = ModifyExplod
trigger1 = NumExplod(20) && (Time = [16,32])
ID = 20
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 256, 256

[State 8520, Scale Portrait 2b]
type = ModifyExplod
trigger1 = NumExplod(21) && (Time = [16,32])
ID = 21
scale = 0,0

[State 8520, Scale Portrait 1c]
type = ModifyExplod
trigger1 = NumExplod(20) && Time >= 32
ID = 20
posType = Back
pos = 160 + (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type = ModifyExplod
trigger1 = NumExplod(21) && Time >= 32
ID = 21
posType = Back
pos = 160 - (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Lines Explod]
type = explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8521
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8520, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8520, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1-(0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8520, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8520, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8522
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1 ,1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8520, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8520, End]
type = DestroySelf
trigger1 = Time >= 40



;SUPER FINISH=
[StateDef 8600]
type = A
velSet = 0,0
anim = 1

[State 8600, Super Finish Sound]
type = PlaySnd
trigger1 = !Time
value = 8600,0
channel = 0

[State 8600, SndPan]
type = SndPan
trigger1 = Time <= 80
channel = 1
absPan = ceil(sin(GameTime / 20.0 * pi) * 160)

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time < 16
time = 1
mul = 0, 0, 0

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time = [16,24)
time = 1
mul = 32 * (Time - 16), 32 * (Time - 16), 32 * (Time - 16)

[State 8600, Move Name: Custom Combo]
type = VarSet
trigger1= !Time && Root, var(23) = 900
var(0) = 1

[State 8600, Move Name: Yagyou Dama]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3000,3099])
var(0) = 2

[State 8600, Move Name: Yagyou Oodama]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3100,3199])
var(0) = 3

[State 8600, Move Name: Kishin Tsui]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3200,3299])
var(0) = 4

[State 8600, Move Name: Kishin Riki]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3300,3399])
var(0) = 5

[State 8600, Move Name: Tengu Ishi]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3400,3499])
var(0) = 6

[State 8600, Super Finish Explod]
type = Explod
trigger1 = !Time
anim = 8600
ID = 8600
ontop = 1
postype = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Super Finish Explod Fade]
type = ModifyExplod
trigger1 = NumExplod(8600)
ID = 8600
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), 256

[State 8600, Text 1]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 10
onTop = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 2]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 11
onTop = 1
posType = left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 1 Fade]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), ifElse(Time < 16, 0, 32 * (Time - 16))

[State 8600, Text 2 Fade]
type = ModifyExplod
trigger1 = NumExplod(11)
ID = 11
scale = 0.5 + (0.0625 * Time), 0.5 + (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time), 32 * Time

[State 8600, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8601
ID = 8601
under = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
bindTime = -1
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Circle Fade]
type = ModifyExplod
trigger1 = NumExplod(8601)
ID = 8601
scale = (0.25 * Time) * (1.3333333 * GameHeight / GameWidth), (0.25 * Time) * (1.3333333 * GameHeight / GameWidth)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8600, Assert: NoFG]
type = AssertSpecial
trigger1 = Time < 16
flag = NoFG



[State 8600, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 24
trigger2 = RoundState < 3

[State 8600, End]
type = DestroySelf
trigger1 = RoundState < 3



;CAMERA CONTROL=
[StateDef 8999]
type = S
velSet = 0,0
anim = 1

[State 8999, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 8999, End]
type = DestroySelf
trigger1 = RoundState = 2
