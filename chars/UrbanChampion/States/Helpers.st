; ________________________________________________
;| Urban Champion by NovaMagnolia 			|
; 
;==
;=HELPER STATES==
;==

;==PARRY HELPER=
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
trigger1 = !(Root, AILevel) && ifElse(Root, NumExplod(92828282) || Root, NumExplod(92468246), Root, command = "up", Root, command = "down")
trigger2 = Root, AILevel && (Root, StateType != A) && P2StateType = C
value = 766

[State 765, Change to Standing / Jumping]
type = ChangeAnim
triggerAll = !Time
trigger1 = !Root, NumExplod(94646464) && !Root, NumExplod(92468246)
trigger1 = !(Root, AILevel) && ifElse(Root, P2dist x >= 0, Root, command = "fwd", Root, command = "back")
trigger2 = Root, NumExplod(94646464) || Root, NumExplod(92468246)
trigger2 = !(Root, AILevel) && ifElse(Root, P2dist x >= 0, Root, command = "back", Root, command = "fwd")
trigger3 = Root, AILevel && Anim != 766
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
triggerAll = !Root, NumExplod(92828282) && !Root, NumExplod(94646464) && !Root, NumExplod(92468246)
trigger1 = ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd")
trigger2 = Time < 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") + Root, command = "holddown") > 1
trigger3 = Time >= 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") || Root, command = "holddown")
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && ifElse(Root, P2dist x >= 0, Root, command = "fwd", Root, command = "back")) || (Anim = 766 && Root, command = "down"))
var(0) = 1

[State 765, Disable (Reverse Commands)]
type = VarSet
triggerAll = !(Root, AILevel)
triggerAll = Root, NumExplod(94646464) || Root, NumExplod(92468246)
trigger1 = ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback")
trigger2 = Time < 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd") + ifElse(Root, NumExplod(92468246), Root, command = "holdup", Root, command = "holddown")) > 1
trigger3 = Time >= 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd") || ifElse(Root, NumExplod(92468246), Root, command = "holdup", Root, command = "holddown"))
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && ifElse(Root, P2dist x >= 0, Root, command = "back", Root, command = "fwd")) || (Anim = 766 && ifElse(Root, NumExplod(92468246), Root, command = "up", Root, command = "down")))
var(0) = 1

[State 765, Disable (Reverse Up/Down only)]
type = VarSet
triggerAll = !(Root, AILevel)
triggerAll = Root, NumExplod(92828282) && !Root, NumExplod(94646464) && !Root, NumExplod(92468246)
trigger1 = ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd")
trigger2 = Time < 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") + Root, command = "holdup") > 1
trigger3 = Time >= 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") || Root, command = "holdup")
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && ifElse(Root, P2dist x >= 0, Root, command = "fwd", Root, command = "back")) || (Anim = 766 && Root, command = "up"))
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
trigger3 = !(Root, ctrl) && (Root, StateNo != [760, 762]) && (Root, StateNo != 5120)
trigger4 = (Root, StateNo = [760, 762]) && (Root, Time <= 1)


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
trigger1 = Root, StateNo = [760, 762]
trigger2 = Time >= 2

;---------------------------------------------------------------------------
;Scapegoat (Police Car)
[Statedef 3105]
type = S
movetype= A
physics = N
velset = 16*const(size.xscale),0
anim = 3105
ctrl = 0
sprpriority = 4
movehitpersist = 1

[State 3105, Driving in my car]
type = AssertSpecial
trigger1 = root,var(10)
flag = invisible
ignorehitpause = 1

[State 3105, Driving in my car]
type = Explod
trigger1 = !Time && root,var(10)
anim = 3106
ID = 3106
sprPriority = 4
posType = P1
scale = 1.5,1.5
bindtime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3103, 6]
type = PlayerPush
trigger1 = 1
value = 0

[State 1005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3025, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
;trigger1 = var(0) > 0
attr = S, HP
hitFlag = M
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 170 < 7, 7, fvar(11) * 170)), 10
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15
guard.hittime = (15) - 6
ground.slideTime = 15
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -4.46927374302,-6.5625
ground.cornerPush.velOff = 0
guard.velocity = -7.93322405606
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
fall.recoverTime = 34
forceStand = 1
p1sprpriority = 4
hitSound = -1 + 0 * (var(31) := 11)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 3110
var(18) = 1
ignorehitpause = 1

[State -2, Hit Detection]
type = VarSet
trigger1 = MoveContact = 1 && var(30) < 0
var(30) = HitPauseTime
ignoreHitPause = 1

[State 3006, Juggle Points]
type = ParentVarAdd
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
persistent = 0
var(15) = 1

[State -2, Hit Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && var(31) >= 0
value = 2, var(31)
channel = 2
ignoreHitPause = 1

[State -2, Guard Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveGuarded = 1 && var(32) >= 0
value = 3, var(32)
channel = 2
ignoreHitPause = 1

[State -2, Hit Sparks]
type = Helper
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
;triggerAll = var(35) > 0
helperType = Normal
stateNo = ifElse(MoveGuarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 60, ceil(P2Dist x), 60)), -50
facing = -1
ownPal = 1
size.xscale = 1
size.yscale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State -2, Hit Detection]
type = VarSet
trigger1 = 1
var(30) = -1

[State 3005, ChangeState]
type = Null;ChangeState
trigger1 = MoveContact && movetype = A
value = ifElse(NumTarget, 3106, 3105)
ignoreHitPause = 1

[State 3106, RemoveExplod]
type = RemoveExplod
trigger1 = FrontEdgeDist < -100
ID = 3106

[State 3103, 8]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 ;|| BackEdgeDist < -100

;Hit Pause
[StateDef 3106]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 3006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 3006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 60, ceil(P2Dist x), 60)), -50
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 3006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3006, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [3000, 3050]
var(18) = 1

[State 3006, End]
type = ChangeState
trigger1 = Time >= 14 && var(0) > 1
trigger2 = Time >= 14 && var(0) <= 1
value = 3105

;Wait
[StateDef 3108]
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
trigger2 = Target, Time <= 1 && !(Target, HitShakeOver)

;---------------------------------------------------------------------------
; Flowerpot Crash Pushbox
[StateDef 3203]
physics = N
anim = 3203
velSet = 0,0
sprPriority = -1

[State 3503, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
pos = 0, 10
ignoreHitPause = 1

[State 3503, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignoreHitPause = 1

[State 3503, HitBy]
type = HitBy
trigger1 = 1
value =
time = 1
ignoreHitPause = 1

[State 3503, DestroySelf]
type = DestroySelf
trigger1 = Root, StateNo != 3200 && Root, StateNo != 3250 
trigger2 = Root, MoveType = H

;---------------------------------------------------------------------------
;Manhole
[Statedef 3305]
type = S
movetype= I
physics = S
anim = 3305
ctrl = 0
sprpriority = -5

[State 8010, Trans]
type = Trans
trigger1 = time < 10
trans = AddAlpha
alpha = ceil(25.6 * Time), 256

[State 4005, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 4005, 1]
type = ChangeAnim
trigger1 = root,var(10) = 1 && anim != 1
trigger2 = root,var(10) = 2 && anim != 3305
value = Cond(root,var(10) = 2,3305,1)
elem = 1 + (root,var(10) = 2)

[State 4005, 2]
type = Null;Helper
trigger1 = root,StateNo = 4030 && root,Time = 1
name = "OH GOD THE FISH"
ID = 4030
stateno = 4031
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 4005, 3]
type = Null;ChangeState
trigger1 = root,StateNo = 4003 && root,Time = 20
trigger2 = root,StateNo != [4000,4999]
value = 4006

[State 4005, 1]
type = ChangeState
trigger1 = !(root,stateno = [3300,3311])
value = 3306

;---------------------------------------------------------------------------
;Manhole Leave
[Statedef 3306]
type = S
movetype= I
physics = S
ctrl = 0
sprpriority = -5

[State 8010, Trans]
type = Trans
trigger1 = time >= 0
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 4005, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 8010, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8010, End]
type = DestroySelf
trigger1 = Time >= 16


;==DARKEN=
[StateDef 13340]
type = S
velSet = 0, 0
anim = 1

[State 13340, AllPalFX: Fade to Black]
type = BGPalFX
trigger1 = (Root, StateNo = 3300) && (Root, HitPauseTime) > 52
time = 1
add = 0 - 32 * (60 - (Root, HitPauseTime)), 0 - 32 * (60 - (Root, HitPauseTime)), 0 - 32 * (60 - (Root, HitPauseTime))

[State 13340, BGPalFX]
type = BGPalFX
trigger1 = (Root, StateNo = 3300) && (Root, HitPauseTime) <= 52
trigger2 = (Root, StateNo = 3340) && !(Root, NumTarget(3340)) && !(Root, NumTarget(3341))
time = 1
add = -256, -256, -256

[State 13341, EnvColor]
type = EnvColor
trigger1 = (Root, StateNo = 3340) && (Root, NumTarget(3340)) && (Root, HitPauseTime)
time = 1
value = 0 + 64 * (4 - (Root, HitPauseTime)), 0, 0
under = 1

[State 13341, EnvColor]
type = EnvColor
trigger1 = (Root, StateNo = 3340) && (Root, NumTarget(3340)) && !(Root, HitPauseTime)
trigger2 = (Root, StateNo = 3340) && (Root, NumTarget(3341))
time = 1
value = 255, 0, 0
under = 1

[State 13341, End]
type = ChangeState
trigger1 = (Root, StateNo = 3340) && (Root, AnimElem = 8)
value = 3614

;==FADE OUT=
[StateDef 3613]
type = S
velSet = 0, 0
anim = 1

[State 3613, Timer Decrement]
type = VarAdd
trigger1 = 1
var(0) = -1 

[State 3613, AllPalFX: Fade to Black]
type = AllPalFX
trigger1 = Time <= 12
time = 1
add = 0 - 22 * Time, 0 - 22 * Time, 0 - 22 * Time

[State 3613, BGPalFX]
type = BGPalFX
trigger1 = Time > 12
time = 1
add = -256, -256, -256

[State 3613, End]
type = ChangeState
trigger1 = Time > 12 && !var(0)
trigger2 = Root, StateNo = 3311 && root,animelem = 3
value = 3614


;Fade In
[StateDef 3614]
type = S
velSet = 0, 0
anim = 1

[State 3614, BGPalFX: Reset]
type = BGPalFX
trigger1 = !(Root, var(40) = 2)
time = 1

[State 3614, End]
type = DestroySelf
trigger1 = !(Root, var(40) = 2)
trigger2 = Time >= 16 && Root, var(40) = 2

;==AFTER IMAGE=
[Statedef 3701]
type = S
velSet = 0, 0
anim = 3701
sprPriority = 2

[State 3701, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(IsHelper(3702), -5, 5)

[State 3701, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - 16 * Time, 0 + 16 * Time
ignoreHitPause = 1

[State 3701, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 3701, End]
type = DestroySelf
trigger1 = Time = 16



;==SPARKS=
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
trigger1 = Time < 4
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


;Guard Break Spark (Normal)
[StateDef 8005]
type = A
physics = N
moveType = I
anim = 8005
velset = 0,0
sprPriority = 5

[State 8005, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8005, Scale]
type = AngleDraw
trigger1 = Time < 4
scale = 0.125 + (0.046875 * Time), 0.125 + (0.046875 * Time)
ignoreHitPause = 1

[State 8005, Scale]
type = AngleDraw
trigger1 = Time >= 4
scale = 0.3125, 0.3125
ignoreHitPause = 1

[State 8005, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8005, Transparency]
type = Trans
trigger1 = Time >= 8
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 256
ignoreHitPause = 1

[State 8005, End]
type = DestroySelf
trigger1 = Time >= 16


;Guard Break Spark (Special)
[StateDef 8006]
type = A
physics = N
moveType = I
anim = 8006
velset = 0,0
sprPriority = 5

[State 8006, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8006, Scale]
type = AngleDraw
trigger1 = Time < 4
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
ignoreHitPause = 1

[State 8006, Scale]
type = AngleDraw
trigger1 = Time >= 4
scale = 0.375, 0.375
ignoreHitPause = 1

[State 8006, Transparency]
type = Trans
trigger1 = Time < 8
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8006, Transparency]
type = Trans
trigger1 = Time >= 8
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 256
ignoreHitPause = 1

[State 8006, End]
type = DestroySelf
trigger1 = Time >= 16


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
scale = (0.3 - (Time * 0.03)) * 0.65, (0.3 - (Time * 0.03)) * 0.65
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
scale = (0.15 + (0.009375 * Time)) * 0.65, (0.15 + (0.009375 * Time)) * 0.65
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
scale = (0.15 + (0.009375 * Time)) * 0.65, (0.15 + (0.009375 * Time)) * 0.65
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
scale = (0.3 - (0.0375 * Time)) * 0.65, (0.3 - (0.0375 * Time)) * 0.65
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
scale = (0.35 - (Time * 0.035)) * 0.65, (0.35 - (Time * 0.035)) * 0.65
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
scale = (0.175 + (0.0109375 * Time)) * 0.65, (0.175 + (0.0109375 * Time)) * 0.65
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
scale = (0.175 + (0.0109375 * Time)) * 0.65, (0.175 + (0.0109375 * Time)) * 0.65
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
scale = (0.35 - (0.04375 * Time)) * 0.65, (0.35 - (0.04375 * Time)) * 0.65
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
scale = (0.4 - (Time * 0.04)) * 0.65, (0.4 - (Time * 0.04)) * 0.65
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
scale = (0.2 + (0.0125 * Time)) * 0.65, (0.2 + (0.0125 * Time)) * 0.65
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
scale = (0.2 + (0.0125 * Time)) * 0.65, (0.2 + (0.0125 * Time)) * 0.65
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
scale = (0.4 - (0.05 * Time)) * 0.65, (0.4 - (0.05 * Time)) * 0.65
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
scale = (0.45 - (Time * 0.045)) * 0.65, (0.45 - (Time * 0.045)) * 0.65
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
scale = (0.225 + (0.0140625 * Time)) * 0.65, (0.225 + (0.0140625 * Time)) * 0.65
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
scale = (0.225 + (0.0140625 * Time)) * 0.65, (0.225 + (0.0140625 * Time)) * 0.65
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
scale = (0.4) * 0.65, (0.4) * 0.65
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8013, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority=3
removeTime=8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.45 - (0.05625 * Time)) * 0.65, (0.45 - (0.05625 * Time)) * 0.65
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
scale = (0.5 - (Time * 0.05)) * 0.65, (0.5 - (Time * 0.05)) * 0.65
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
scale = (0.25 + (0.015625 * Time)) * 0.65, (0.25 + (0.015625 * Time)) * 0.65
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
scale = (0.25 + (0.015625 * Time)) * 0.65, (0.25 + (0.015625 * Time)) * 0.65
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
scale = (0.5) * 0.65, (0.5) * 0.65
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
scale = (0.5 - (0.0625 * Time)) * 0.65, (0.5 - (0.0625 * Time)) * 0.65
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
scale = (0.25 + (0.09375 * Time)) * 0.65, (0.25 + (0.09375 * Time)) * 0.65
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

;Armor Spark
[StateDef 8025]
type = A
physics = N
moveType = I
anim = 8025
velSet = 0,0
sprPriority = 5

[State 8025, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8025, Scale]
type = AngleDraw
trigger1 = 1
scale = (0.25 + (0.03125 * Time)) * 0.5, (0.25 + (0.03125 * Time)) * 0.5
ignoreHitPause = 1

[State 8025, Transparency]
type = Trans
trigger1 = Time < 8
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8025, Transparency]
type = Trans
trigger1 = Time >= 8
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 256
ignoreHitPause = 1

[State 8025, End]
type = DestroySelf
trigger1 = Time >= 16

;==JUMP DUST=
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



;==DASH DUST=
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



;==IMPACT DUST=
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
scale = 0.25 + (0.03125 * Time) * 0.5, 0.25 + (0.03125 * Time) * 0.5
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8110, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8110, End]
type = DestroySelf
trigger1 = !NumExplod



;==FLAMES=
[StateDef 8150]
type = A
velSet = 0, 0
anim = 1

[State 8150, Player]
type = VarSet
trigger1 = !Time
var(0) = Parent, var(43)

[State 8150, PosSet]
type = PosSet
trigger1 = PlayerIDexist(var(0))
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) + (PlayerID(var(0)), const(size.mid.pos.y))

[State 8150, PosSet (Laying Down)]
type = PosSet
trigger1 = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), StateType = L
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) - 20

[State 8150, Facing]
type = Turn
trigger1 = PlayerIDexist(var(0))
trigger1 = Facing != (PlayerID(var(0)), Facing)

[State 8150, End]
type = DestroySelf
trigger1 = Time >= 600
trigger2 = !PlayerIDexist(var(0))
trigger3 = RoundState < 3
trigger3 = !var(44)

[State 8150, End]
type = DestroySelf
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), ctrl
trigger2 = PlayerID(var(0)), Movetype != H || PlayerID(var(0)), StateNo = 5300
trigger3 = RoundState >= 3
trigger3 = PlayerID(var(0)), StateType = L && (PlayerID(var(0)), StateNo != [5080, 5081])
trigger4 = PlayerID(var(0)), StateNo = 5110

[State 8150, Timer Decrement]
type = VarAdd
trigger1 = 1
var(44) = -1

[State 8150, Flame Explod 1]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8150
sprPriority = 1
posType = P1
random = 40,40
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1

[State 8150, Flames Explod 2]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8150
sprPriority = 1
posType = P1
random = 60,60
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1



;==SHOCK=
[StateDef 8155]
type = A
velSet = 0,0
anim = 1

[State 8155, Player]
type = VarSet
trigger1 = !Time
var(0) = Parent, var(45)

[State 8155, PosSet]
type = PosSet
trigger1 = PlayerIDexist(var(0))
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) + (PlayerID(var(0)), const(size.mid.pos.y))

[State 8155, PosSet (Laying Down)]
type = PosSet
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), StateType = L
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) - 20

[State 8155, Facing]
type = Turn
trigger1 = PlayerIDexist(var(0))
trigger1 = Facing != (PlayerID(var(0)), Facing)

[State 8155, End]
type = DestroySelf
trigger1 = Time >= 600
trigger2 = !PlayerIDexist(var(0))
trigger3 = RoundState < 3
trigger3 = !var(46)

[State 8155, End]
type = DestroySelf
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), ctrl
trigger2 = PlayerID(var(0)), MoveType != H || PlayerID(var(0)), StateNo = 5300
trigger3 = RoundState >= 3
trigger3 = PlayerID(var(0)), StateType = L && (PlayerID(var(0)), StateNo != [5080, 5081])
trigger4 = PlayerID(var(0)), StateNo = 5110

[State 8155, Timer Decrement]
type = VarAdd
trigger1 = 1
var(46) = -1

[State 8155, Spark Explod]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8155
sprPriority = 3
posType = P1
random = 40,40
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
;bindtime = -1
scale = 0.25, 0.25
ownPal = 1



;==RECOVER FX=
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



;==COUNTER FX=
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



;==POWER CHARGE FX==
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
pos = 0, 0

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
vel = (RootDist x / 32.0), ((RootDist y - 50)/ 32.0)
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



;==ZERO COUNTER FX==
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



;==CUSTOM COMBO=
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



;==SUPER PAUSE FX=
;Level 1 Super FX
[StateDef 8500]
type = A
velSet = 0,0
anim = Cond(root,var(40) = 2,7500,8500)
sprPriority = 5

[State 8500, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8500, BGpalFX]
type = BGpalFX
triggerall = root,var(40) != 2
trigger1 = Time < 39 && !(root,stateno = 3110 && root,var(10))
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
trigger1 = root,var(40) != 2
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8500, Scale]
type = AngleDraw
trigger1 = root,var(40) != 2
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
triggerall = root,var(40) != 2
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
triggerall = root,var(40) != 2
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8500, Scale Lines Explod 2]
type = ModifyExplod
triggerall = root,var(40) != 2
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
triggerall = root,var(40) != 2
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
triggerall = root,var(40) != 2
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Circle Explod]
type = Explod
triggerall = root,var(40) != 2
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
triggerall = root,var(40) != 2
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

;-----------------------------------------
;Rare Akuma explods 

[State 8500, Rare Akuma BGpalFX]
type = bgpalfx
triggerall = root,var(40) = 2
trigger1 = time <= 10 && !(root,stateno = 3110 && root,var(10))
time = 1
add = 256 -ceil(25.6 * time), 256 -ceil(25.6 * time), 256 -ceil(25.6 * time)
mul = 256 -floor(25.6 * time), 256, 256 -floor(25.6 * time)
color = 256 -floor(25.6 * time)

[State 8500, Rare Akuma BGpalFX]
type = bgpalfx
triggerall = root,var(40) = 2
trigger1 = (time = [11, 34]) && !(root,stateno = 3110 && root,var(10))
time = 1
mul = 0, 256, 0
color = 0

[State 8500, Rare Akuma BGpalFX]
type = bgpalfx
triggerall = root,var(40) = 2
trigger1 = time >= 35 && !(root,stateno = 3110 && root,var(10))
time = 1
mul = ceil(51.2 * (time -35)), 256, ceil(51.2 * (time -35))
color = floor(51.2 * (time -35))

[State 7500, Rare Akuma scale]
type = AngleDraw
trigger1 = root,var(40) = 2
scale = 1.5 -(0.0333 * time), 1.5 -(0.0333 * time)

[State 7500, Rare Akuma Main]
type = null;explod
triggerall = root,var(40) = 2
trigger1 = !time
anim = 7500
ID = 7500
sprpriority = 5
postype = p1
removetime = -1
pausemovetime = -1
supermovetime = -1

[State 7500, Rare Akuma Large Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = !time
anim = 7501
ID = 7501
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = !time
anim = 7502
ID = 75021
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = time = 7
anim = 7502
ID = 75022
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = time = 14
anim = 7502
ID = 75023
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = time = 21
anim = 7502
ID = 75024
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = time = 28
anim = 7502
ID = 75025
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Rare Akuma Portrait]
type = explod
triggerall = root,var(40) = 2
trigger1 = !time
anim = 7503
ID = 7503
sprpriority = 5
postype = p1
facing = Cond(root,facing = 1,1,-1)
pausemovetime = -1
supermovetime = -1

[State 7500, Rare Akuma scale]
type = modifyexplod
trigger1 = root,var(40) = 2
ID = 7500
scale = 1.5 -(0.0333 * time), 1.5 -(0.0333 * time)

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(7501)
ID = 7501
scale = 0.25 + (0.075 * time), 0.25 + (0.075 * time)
trans = addalpha
alpha = ceil(256 -6.4 * time), 256

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(75021)
ID = 75021
scale = 0.25 + (0.0375 * time), 0.25 + (0.0375 * time)

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(75022)
ID = 75022
scale = 0.25 + (0.0375 * (time -7)), 0.25 + (0.0375 * (time -7))

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(75023)
ID = 75023
scale = 0.25 + (0.0375 * (time -14)), 0.25 + (0.0375 * (time -14))

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(75024)
ID = 75024
scale = 0.25 + (0.0375 * (time -21)), 0.25 + (0.0375 * (time -21))

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(75025)
ID = 75025
scale = 0.25 + (0.0375 * (time -28)), 0.25 + (0.0375 * (time -28))

[State 7500, Rare Akuma Portrait scale]
type = modifyexplod
trigger1 = root,var(40) = 2
ID = 7503
scale = 1 +(0.0333 * time), 1 + (0.0333 * time)
trans = addalpha
alpha = Cond(time < 15, 256,ceil(256 -6.4 * time - 15)), 256

[State 8500, Driving in my car]
type = Explod
trigger1 = !time && root,stateno = 3110 && root,var(10)
anim = 3199
ID = 3199
pos = ceil(gamewidth/2),ceil(gameheight/2)
postype = left
facing = Cond(facing = 1,facing,-facing)
vfacing = 1
bindtime = -1
supermovetime = 999999999999
pausemovetime = 999999999999
scale = (gamewidth/257),(gameheight/196)
sprpriority = -10
removeongethit = 0

;-----------------------------------------

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
triggerall = root,var(40) != 2
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
triggerall = root,var(40) != 2
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8510, Scale]
type = AngleDraw
triggerall = root,var(40) != 2
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
triggerall = root,var(40) != 2
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
triggerall = root,var(40) != 2
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8510, Scale Lines Explod 2]
type = ModifyExplod
triggerall = root,var(40) != 2
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
triggerall = root,var(40) != 2
trigger1 = NumExplod(4)
ID = 4
scale = 1 -(0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8510, Circle Explod]
type = Explod
triggerall = root,var(40) != 2
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
triggerall = root,var(40) != 2
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24)<4, 64 * (Time - 24), 256), 256

;-----------------------------------------
;Rare Akuma explods 

[State 8500, Rare Akuma BGpalFX]
type = Null
triggerall = root,var(40) = 2
trigger1 = time <= 10 && !(root,stateno = 3110 && root,var(10))
time = 1
add = 256 -ceil(25.6 * time), 256 -ceil(25.6 * time), 256 -ceil(25.6 * time)
mul = 256 -floor(25.6 * time), 256, 256 -floor(25.6 * time)
color = 256 -floor(25.6 * time)

[State 8500, Rare Akuma BGpalFX]
type = Null
triggerall = root,var(40) = 2
trigger1 = (time = [11, 34]) && !(root,stateno = 3110 && root,var(10))
time = 1
mul = 0, 256, 0
color = 0

[State 8500, Rare Akuma BGpalFX]
type = Null
triggerall = root,var(40) = 2
trigger1 = time >= 35 && !(root,stateno = 3110 && root,var(10))
time = 1
mul = ceil(51.2 * (time -35)), 256, ceil(51.2 * (time -35))
color = floor(51.2 * (time -35))

[State 8500, Rare Akuma BGpalFX]
type = bgpalfx
triggerall = root,var(40) = 2
trigger1 = time <= 10 && !(root,stateno = 3110 && root,var(10))
time = 1
add = 256 -ceil(25.6 * time), 256 -ceil(25.6 * time), 256 -ceil(25.6 * time)
mul = 256 -floor(6.4 * time), 256 -floor(25.6 * time), 256
color = 256 -floor(25.6 * time)

[State 8500, Rare Akuma BGpalFX]
type = bgpalfx
triggerall = root,var(40) = 2
trigger1 = (time = [11, 34]) && !(root,stateno = 3110 && root,var(10))
time = 1
mul = 192, 0, 256
color = 0

[State 8500, Rare Akuma BGpalFX]
type = bgpalfx
triggerall = root,var(40) = 2
trigger1 = time >= 35 && !(root,stateno = 3110 && root,var(10))
time = 1
mul = 256 - ceil(32 * (time -35)), ceil(51.2 * (time -35)), 256
color = floor(51.2 * (time -35))

[State 7500, Rare Akuma Portrait]
type = explod
triggerall = root,var(40) = 2
trigger1 = !time
anim = 7503
ID = 7503
sprpriority = 5
postype = p1
facing = Cond(root,facing = 1,1,-1)
pausemovetime = -1
supermovetime = -1

[State 7500, Rare Akuma scale]
type = AngleDraw
trigger1 = root,var(40) = 2
scale = 1.5 -(0.0333 * time), 1.5 -(0.0333 * time)

[State 7500, Rare Akuma Portrait scale]
type = modifyexplod
trigger1 = root,var(40) = 2
ID = 7503
scale = 1 +(0.0333 * time), 1 + (0.0333 * time)
trans = addalpha
alpha = Cond(time < 15, 256,ceil(256 -6.4 * time - 15)), 256

[State 7500, Rare Akuma Main]
type = null;explod
triggerall = root,var(40) = 2
trigger1 = !time
anim = 7500
ID = 7500
sprpriority = 5
postype = p1
removetime = -1
pausemovetime = -1
supermovetime = -1

[State 7500, Rare Akuma Large Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = !time
anim = 8512
ID = 7501
sprpriority = 5
postype = p1
removetime = -1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = !time
anim = 7502
ID = 75021
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = time = 7
anim = 7502
ID = 75022
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = time = 14
anim = 7502
ID = 75023
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = time = 21
anim = 7502
ID = 75024
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = time = 28
anim = 7502
ID = 75025
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Rare Akuma scale]
type = modifyexplod
trigger1 = root,var(40) = 2
ID = 7500
scale = 1.5 -(0.0333 * time), 1.5 -(0.0333 * time)

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(7501)
ID = 7501
scale = 0.25 + (0.075 * time), 0.25 + (0.075 * time)
trans = addalpha
alpha = ceil(256 -6.4 * time), 256

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(75021)
ID = 75021
scale = 0.25 + (0.0375 * time), 0.25 + (0.0375 * time)

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(75022)
ID = 75022
scale = 0.25 + (0.0375 * (time -7)), 0.25 + (0.0375 * (time -7))

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(75023)
ID = 75023
scale = 0.25 + (0.0375 * (time -14)), 0.25 + (0.0375 * (time -14))

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(75024)
ID = 75024
scale = 0.25 + (0.0375 * (time -21)), 0.25 + (0.0375 * (time -21))

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(75025)
ID = 75025
scale = 0.25 + (0.0375 * (time -28)), 0.25 + (0.0375 * (time -28))

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

[State 3300, Button Detect Reset]
type = VarSet
trigger1 = !Time && root,var(40) = 2
var(10) = random%2

[State 8520, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

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
anim = 8525 + Cond(root,var(40) = 2,var(10),Root, var(40))
ID = 20
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Portrait 2]
type = Explod
trigger1 = !Time
anim = 8525 + Cond(root,var(40) = 2,var(10),Root, var(40))
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
triggerall = root,var(40) != 2
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
triggerall = root,var(40) != 2
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8520, Scale Lines Explod 2]
type = ModifyExplod
triggerall = root,var(40) != 2
trigger1 = NumExplod(2)
ID = 2
scale = 1-(0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8520, Scale Lines Explod 3]
type = ModifyExplod
triggerall = root,var(40) != 2
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8520, Scale Lines Explod 4]
type = ModifyExplod
triggerall = root,var(40) != 2
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Circle Explod]
type = Explod
triggerall = root,var(40) != 2
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
triggerall = root,var(40) != 2
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

;-----------------------------------------
;Rare Akuma explods 

[State 7500, Rare Akuma Portrait]
type = explod
triggerall = root,var(40) = 2
trigger1 = !time
anim = 7503
ID = 7503
sprpriority = 5
postype = p1
facing = Cond(root,facing = 1,1,-1)
pausemovetime = -1
supermovetime = -1

[State 7500, Rare Akuma scale]
type = AngleDraw
trigger1 = root,var(40) = 2
scale = 1.5 -(0.0333 * time), 1.5 -(0.0333 * time)

[State 7500, Rare Akuma Portrait scale]
type = modifyexplod
trigger1 = root,var(40) = 2
ID = 7503
scale = 1 +(0.0333 * time), 1 + (0.0333 * time)
trans = addalpha
alpha = Cond(time < 15, 256,ceil(256 -6.4 * time - 15)), 256

[State 7500, Rare Akuma Main]
type = null;explod
triggerall = root,var(40) = 2
trigger1 = !time
anim = 7500
ID = 7500
sprpriority = 5
postype = p1
removetime = -1
pausemovetime = -1
supermovetime = -1

[State 7500, Rare Akuma Large Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = !time
anim = 8522
ID = 7501
sprpriority = 5
postype = p1
removetime = -1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = !time
anim = 7502
ID = 75021
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = time = 7
anim = 7502
ID = 75022
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = time = 14
anim = 7502
ID = 75023
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = time = 21
anim = 7502
ID = 75024
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
triggerall = root,var(40) = 2
trigger1 = time = 28
anim = 7502
ID = 75025
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Rare Akuma scale]
type = modifyexplod
trigger1 = root,var(40) = 2
ID = 7500
scale = 1.5 -(0.0333 * time), 1.5 -(0.0333 * time)

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(7501)
ID = 7501
scale = 0.25 + (0.075 * time), 0.25 + (0.075 * time)
trans = addalpha
alpha = ceil(256 -6.4 * time), 256

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(75021)
ID = 75021
scale = 0.25 + (0.0375 * time), 0.25 + (0.0375 * time)

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(75022)
ID = 75022
scale = 0.25 + (0.0375 * (time -7)), 0.25 + (0.0375 * (time -7))

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(75023)
ID = 75023
scale = 0.25 + (0.0375 * (time -14)), 0.25 + (0.0375 * (time -14))

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(75024)
ID = 75024
scale = 0.25 + (0.0375 * (time -21)), 0.25 + (0.0375 * (time -21))

[State 7500, scale]
type = modifyexplod
triggerall = root,var(40) = 2
trigger1 = numexplod(75025)
ID = 75025
scale = 0.25 + (0.0375 * (time -28)), 0.25 + (0.0375 * (time -28))

[State 8520, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8520, End]
type = DestroySelf
trigger1 = Time >= 40



;==SUPER FINISH=
[StateDef 8600]
type = A
velSet = 0,0
anim = 1

[State 8600, Super Finish Sound]
type = PlaySnd
trigger1 = !Time
value = 8600,random%2
channel = 1

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

[State 8600, Move Name: Urban Beatdown]
type = VarSet
trigger1 = !Time && Root, var(23) = 3000
var(0) = 2

[State 8600, Move Name: Scapegoat]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3100, 3199])
var(0) = 3

[State 8600, Move Name: Flowerpot Crash]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3200, 3299])
var(0) = 4

[State 8600, Move Name: Sewer Brawl]
type = VarSet
trigger1 = !Time && Root, var(23) = 3300
var(0) = 5

[State 8600, Move Name: Street Fight]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3400, 3499])
var(0) = 6

[State 8600, Move Name: Alley Uppercut]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3500, 3599])
var(0) = 7

[State 8600, Move Name: Playing with Power]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3600, 3699])
var(0) = 8

[State 8600, Move Name: Raging Champion]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3700, 3799])
var(0) = 9

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
scale = (0.25 * time) * (1.3333333 * GameHeight / GameWidth), (0.25 * time) * (1.3333333 * GameHeight / GameWidth)
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

;==SUPER FINISH (KANJI)=
[StateDef 8620]
type = A
velSet = 0, 0
anim = 1

[State 8620, Assert]
type = AssertSpecial
trigger1 = Time < 120
flag = NoMusic

[State 8620, Snd]
type = PlaySnd
trigger1 = !Time
value = 2, 3620

[State 8620, Black]
type = BGPalFX
trigger1 = Time < 120
time = 2
add = -255, -255, -255

[State 8620, Black]
type = BGPalFX
trigger1 = Time = 120
time = 60
add = -255, -255, -255
sinAdd = 255, 255, 255, 240

[State 8620, Fade]
type = PalFX
trigger1 = Time = 120
time = 60
sinAdd = -255, -255, -255, 240

[State 8620, Shun Goku Satsu Kanji]
type = Explod
trigger1 = !Time
anim = 8618
ID = 8618
sprPriority = -5
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 1 * (1.3333333 * GameHeight / GameWidth), 1 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1

[State 8620, Shrink]
type = ModifyExplod
trigger1 = Time < 6
ID = 8618
scale = (5.5 - time) * (1.3333333 * GameHeight / GameWidth), (5.5 - time) * (1.3333333 * GameHeight / GameWidth)

[State 8620, Shrink]
type = ModifyExplod
trigger1 = Time >= 6
ID = 8618
scale = 0.5 * (1.3333333 * GameHeight / GameWidth), 0.5 * (1.3333333 * GameHeight / GameWidth)

[State 8620, Last Judgement Flames]
type = Explod
trigger1 = !Time
anim = 8620
ID = 8620
sprPriority = 5
posType = Left
pos = 0, floor((GameHeight / GameWidth) * 80) - 60
bindTime = -1
removeTime = -1
pauseMoveTime = 300
superMoveTime = 300

[State 8620, Assert]
type = AssertSpecial
trigger1 = Time < 120
flag = noFG
ignoreHitPause = 1

[State 8620, Safety]
type = RemoveExplod
trigger1 = Time >= 180

[State 8620, End]
type = DestroySelf
trigger1 = Time >= 180



;==DIZZY STARS=
[Statedef 8970]
type = A
physics = N
moveType = I
anim = 1
velSet = 0, 0
sprPriority = 0

[State 8970, Pos]
type = PosSet
trigger1 = NumEnemy
x = EnemyNear, pos x
y = (EnemyNear, pos y) + (EnemyNear, const(size.head.pos.y)) - 16

[State 8970, Pos]
type = PosSet
trigger1 = NumEnemy = 1
trigger1 = (EnemyNear, pos y) > 0
y = (EnemyNear, const(size.head.pos.y)) - 16

[State 8970, Star]
type = Explod
trigger1 = !NumExplod(1)
anim = 8970
ID = 1
posType = P1
pos = 0, 0
sprPriority = 5
bindTime = -1
removeTime = -1
scale = 0.5, 0.5

[State 8970, Star]
type = Explod
trigger1 = !NumExplod(2)
anim = 8970
ID = 2
posType = P1
pos = 0, 0
sprPriority = 5
bindTime = -1
removeTime = -1
scale = 0.5, 0.5

[State 8970, Star]
type = Explod
trigger1 = !NumExplod(3)
anim = 8970
ID = 3
posType = P1
pos = 0, 0
sprPriority = 5
bindTime = -1
removeTime = -1
scale = 0.5, 0.5

[State 8970, Star]
type = Explod
trigger1 = !NumExplod(4)
anim = 8970
ID = 4
posType = P1
pos = 0, 0
sprPriority = 5
bindTime = -1
removeTime = -1
scale = 0.5, 0.5

[State 8970, Circle Around]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
posType = P1
pos = ceil(32 * cos((GameTime + 0) / 32.0 * pi)), ceil(6 * sin((GameTime + 0) / 32.0 * pi))
scale = 0.375 + 0.125 * sin((GameTime + 0) / 32.0 * pi), 0.375 + 0.125 * sin((GameTime + 0) / 32.0 * pi)
sprPriority = ifelse(sin((GameTime + 0) / 32.0 * pi) >= 0, 5, -5)

[State 8970, Circle Around]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
posType = P1
pos = ceil(32 * cos((GameTime + 32) / 32.0 * pi)), ceil(8 * sin((GameTime + 32) / 32.0 * pi))
scale = 0.375 + 0.125 * sin((GameTime + 32) / 32.0 * pi), 0.375 + 0.125 * sin((GameTime + 32) / 32.0 * pi)
sprPriority = ifelse(sin((GameTime + 32) / 32.0 * pi) >= 0, 5, -5)

[State 8970, Circle Around]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
posType = P1
pos = ceil(32 * cos((GameTime + 16) / 32.0 * pi)), ceil(8 * sin((GameTime + 16) / 32.0 * pi))
scale = 0.375 + 0.125 * sin((GameTime + 16) / 32.0 * pi), 0.375 + 0.125 * sin((GameTime + 16) / 32.0 * pi)
sprPriority = ifelse(sin((GameTime + 16) / 32.0 * pi) >= 0, 5, -5)

[State 8970, Circle Around]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
posType = P1
pos = ceil(32 * cos((GameTime + 48) / 32.0 * pi)), ceil(8 * sin((GameTime + 48) / 32.0 * pi))
scale = 0.375 + 0.125 * sin((GameTime + 48) / 32.0 * pi), 0.375 + 0.125 * sin((GameTime + 48) / 32.0 * pi)
sprPriority = ifElse(sin((GameTime + 48) / 32.0 * pi) >= 0, 5, -5)

[State 8970, PlaySnd]
type = PlaySnd
trigger1 = 1
value = 5300, 0
lowPriority = 1
volumeScale = 50
channel = 0

[State 8970, StopSnd]
type = StopSnd
trigger1 = !NumEnemy
trigger2 = NumEnemy
trigger2 = EnemyNear, StateNo != 55300
channel = 0

[State 8970, RemoveExplod]
type = RemoveExplod
trigger1 = !NumEnemy
trigger2 = NumEnemy
trigger2 = EnemyNear, StateNo != 55300

[State 8970, End]
type = DestroySelf
trigger1 = !NumExplod



;==CAMERA CONTROL=
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



;==EXPLODSIVE BUFFERING HELPER=
[StateDef 90000005]
type = A
physics = N
moveType = I
anim = 1
velSet = 0,0
ctrl = 0

[State 90000005, Turn]
type = Turn
trigger1 = (Root, NumExplod(94646464) || Root, NumExplod(92468246)) && !var(0)
trigger2 = !Root, NumExplod(94646464) && !Root, NumExplod(92468246) && var(0)
ignoreHitPause = 1

[State 90000005, Reverse Left/Right]
type = VarSet
trigger1 = (Root, NumExplod(94646464) || Root, NumExplod(92468246)) && !var(0)
var(0) = 1
ignoreHitPause = 1

[State 90000005, Reset Turn Variable]
type = VarSet
trigger1 = !Root, NumExplod(94646464) && !Root, NumExplod(92468246) && var(0)
var(0) = 0
ignoreHitPause = 1

[State 90000005, AI TIMER]
type = VarAdd
trigger1 = 1
ignoreHitPause = 1
var(1) = 1

[State 90000005, AI TIMER]
type = VarSet
trigger1 = var(1) >= 480
ignoreHitPause = 1
var(1) = 0

[State 90000005, Training Mode Detection]
type = VarSet
triggerall = roundno = 1 && matchno = 1
triggerall = root,power >= const(data.power) && root,life >= root,lifemax && enemynear,power >= enemynear,const(data.power)
trigger1 = (RoundState = [0,2]) ;&& teammode = single 
var(58) = 1

[State 90000005, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "by JustMorphPointman"
ignoreHitPause = 1
