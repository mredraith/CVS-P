; _________________________________________
;| Shingo Yabuki by Jmorphman              |
; 
;
;<SUPER STATES>==
;

;<GESHIKI: KAKE HORIN>=
;Startup
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

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 2

[State 3000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 3000, ifElse(var(10) = 1, 3001, 3002))

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
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -12,-53
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000,0
channel = 0

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 8

[State 3000, Step Sound]
type = PlaySnd
trigger1 = AnimElem = 5 || AnimElem = 8 || AnimElem = 11
value = 100, ifElse((AnimElem = 5 || AnimElem = 11), 0, 1)

[State 3000, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110,0
channel = 1

[State 3000, Dust Helper]
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

[State 3000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger2 = P2BodyDist x <= 10 && AnimElemTime(3) >= 0
trigger3 = AnimElemTime(3) >= 0 && !AILevel
trigger3 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
value = 3010


;Attack
[StateDef 3010]
type = S
anim = 3010
physics = N
moveType = A
velSet = 0,0

[State 3010, PosAdd]
type = PosAdd
trigger1 = !Time
x = 8

[State 3010, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) < 2
x = (8 * exp((-0.082489) * (Time + 1)))

[State 3010, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 1
x = 0

[State 3010, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3010,0
channel = 0

[State 3010, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 3

[State 3010, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(9) < 0
value = 24,0

[State 3010, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
ID = ifElse(PrevStateNo = 3050, 3060, 3010)
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(PrevStateNo = 3050, 175, 140) < 7, 7, fvar(11) * ifElse(PrevStateNo = 3050, 175, 140))), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 16,18
guard.pauseTime = 16,16
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -1.375, -11
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -1.375, -11
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 1)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8006)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -47
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3010, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3010) > 1
ID = 3010
keepOne = 1
excludeID = 3010
ignoreHitPause = 1

[State 3010, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3060) > 1
ID = 3060
keepOne = 1
excludeID = 3060
ignoreHitPause = 1

[State 3010, Guard Crush]
type = TargetState
trigger1 = MoveGuarded && NumTarget(3010)
value = 5905
ID = 3010
ignoreHitPause = 1
persistent = 0

[State 3010, Guard Crush]
type = TargetState
trigger1 = MoveGuarded && NumTarget(3060)
value = 5905
ID = 3060
ignoreHitPause = 1
persistent = 0

[State 3010, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(12) && NumTarget(3010)
trigger2 = MoveHit && !var(12) && NumTarget(3060)
var(15) = 0

[State 3010, VarAdd]
type = VarAdd
trigger1 = MoveHit && NumTarget(3010)
trigger2 = MoveHit && NumTarget(3060)
var(12) = 1
persistent = 0

[State 3010, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= 16
value = 3010
elem = 5
ignoreHitPause = 1

[State 3010, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 3010, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<GUARD CRUSH>==
;pre-crush state
[StateDef 5905]
type = U
moveType = H
physics  = N
velSet = 0,0

[State 5905, ChangeAnim (Stand)]
type = ChangeAnim
trigger1 = StateType != A && StateType != C
value = 150

[State 5905, ChangeAnim (Crouch)]
type = ChangeAnim
trigger1 = StateType = C
value = 151

[State 5905, ChangeAnim (Air)]
type = ChangeAnim
trigger1 = StateType = A
value = 152

[State 5905, EnvShake]
type = EnvShake
trigger1 = !Time
time = 18
ampl = 6
freq = 120
ignoreHitPause = 1

[State 5905, Standing]
type = Changestate
trigger1 = StateType != A && StateType != C
trigger1 = HitShakeOver
value = 5910

[State 5905, Crouching]
type = Changestate
trigger1 = StateType = C
trigger1 = HitShakeOver
value = 5920

[State 5905, Jumping]
type = Changestate
trigger1 = StateType = A
trigger1 = HitShakeOver
value = 5930

[State 5905, SelfState]
type = SelfState
trigger1 = Time = 48
value = ifElse(StateType = A, 5210, 0)
ctrl = 1


;Standing Guard Crush
[Statedef 5910]
type = S
moveType = H
physics = N

[State 5910, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 5910, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5910), 5910, 5012)

[State 5910, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5910 || Anim = 5012) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5910), 5910, 5012)
elem = AnimElemNo(0)

[State 5910, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5910 || Anim = 5012) && Time = 24
value = ifElse(SelfAnimExist(5911), 5911, 5017)

[State 5910, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5911 || Anim = 5017) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5911), 5911, 5017)
elem = AnimElemNo(0)

[State 5910, End]
type = SelfState
trigger1 = Time = 36 && GetHitVar(chainID) = 3010
trigger2 = Time = 48 && GetHitVar(chainID) = 3060
value = 0
ctrl = 1


;Crouching Guard Crush
[Statedef 5920]
type = C
moveType = H
physics = N

[State 5920, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 5920, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5920), 5920, 5022)

[State 5920, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5920 || Anim = 5022) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5920), 5920, 5022)
elem = AnimElemNo(0)

[State 5920, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5920 || Anim = 5022) && Time = 24
value = ifElse(SelfAnimExist(5921), 5921, 5027)

[State 5920, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5921 || Anim = 5027) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5921), 5921, 5027)
elem = AnimElemNo(0)

[State 5920, End]
type = SelfState
trigger1 = Time = 36 && GetHitVar(chainID) = 3010
trigger2 = Time = 48 && GetHitVar(chainID) = 3060
value = 11
ctrl = 1


;Jumping Guard Crush
[Statedef 5930]
type = A
movetype = H
physics = N
velSet = -6.703910615, -1.25 ;-6, -1

[State 5930, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 5930, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5930), 5930, 5022)

[State 5930, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5930 || Anim = 5022) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5930), 5930, 5022)
elem = AnimElemNo(0)

[State 5930, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = 0.634765625 ;0.40625

[State 5930, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5931


;Jumping Guard Crush (Land)
[StateDef 5931]
type = C
moveType = H
physics = N
velSet = 0,0

[State 5931, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5931, Explod]
type = Explod
trigger1 = Time = 1
anim = F60
pos = 0,0
sprPriority = -10

[State 5931, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = F7,0

[State 5931, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5920), 5921, 5027)

[State 5931, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5921 || Anim = 5027) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5921), 5921, 5027)
elem = AnimElemNo(0)

[State 5931, End]
type = SelfState
trigger1 = Time = 36 && GetHitVar(chainID) = 3010
trigger2 = Time = 48 && GetHitVar(chainID) = 3060
value = 11
ctrl = 1



;<MAX GESHIKI: KAKE HORIN>=
;Startup
[StateDef 3050]
type = S
physics = N
moveType = A
anim = 3002
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
var(17) = 45

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
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -12,-53
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3050, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000,0
channel = 0

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 8

[State 3050, Step Sound]
type = PlaySnd
trigger1 = AnimElem = 5 || AnimElem = 8 || AnimElem = 11
value = 100, ifElse((AnimElem = 5 || AnimElem = 11), 0, 1)

[State 3050, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110,0
channel = 1

[State 3050, Dust Helper]
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

[State 3050, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger2 = P2BodyDist x <= 10 && AnimElemTime(3) >= 0
trigger3 = AnimElemTime(3) >= 0 && !AILevel
trigger3 = NumExplod(90000200) || NumExplod(90000205) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000220) || NumExplod(90000225)
value = 3010



;<BURNING SHINGO>=
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
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3100, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -8,-72
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3100, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3000,0
channel = 0

[State 3100, Woosh sound 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2
channel = 1

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 7.541899441 ;6.75

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 8.938547486 ;10

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3100,0
channel = 0

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 10.72625698 ;12

[State 3100, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0
value = 16,0

[State 3100, Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 32,32
guard.pauseTime = 32,32
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.586592179,-5.78125 ;-5, -4.625
air.cornerPush.velOff = 0
yAccel = 0.5126953125 ;0.328125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= 26
value = 3100
elem = 6
ignoreHitPause = 1

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 14
x = 13

[State 3100, Woosh sound 2]
type = PlaySnd
trigger1 = AnimElem = 16
value = 1,2
channel = 3

[State 3100, Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 17
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 8,8
guard.pauseTime = 8,8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.586592179,-5.78125 ;-5, -4.625
air.cornerPush.velOff = 0
yAccel = 0.5126953125 ;0.328125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 20
x = 4

[State 3100, Woosh sound 3]
type = PlaySnd
trigger1 = AnimElem = 21
value = 1,2
channel = 4

[State 3100, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 23
value = 3100,1
channel = 0

[State 3100, Hit 3]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 23
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 8,8
guard.pauseTime = 8,8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.586592179,-5.78125 ;-5, -4.625
air.cornerPush.velOff = 0
yAccel = 0.5126953125 ;0.328125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -38
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 30
trigger2 = AnimElem = 31
x = 8

[State 3100, Woosh sound 4]
type = PlaySnd
trigger1 = AnimElem = 33
value = 1,2
channel = 5

[State 3100, Final Hit]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 34
ID = 3100
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 32,32
guard.pauseTime = 32,32
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -5.25, -9
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.25, -9
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 48
envShake.ampl = 6
envShake.freq = 120

[State 3100, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(34) >= 0 && AnimElemTime(35) <= 0
trigger1 = HitPauseTime <= 26
value = 3100
elem = 35
ignoreHitPause = 1

[State 3100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(36) >= 0
moveType = I

[State 3100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<MAX BURNING SHINGO>=
[StateDef 3150]
type = S
physics = N
moveType = A
anim = 3150
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
var(17) = 45

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
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3150, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -8,-72
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3150, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000,0
channel = 0

[State 3150, Woosh sound 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2
channel = 1

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 7.541899441 ;6.75

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 8.938547486 ;10

[State 3150, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3100,0
channel = 0

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 10.72625698 ;12

[State 3150, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0
value = 16,0

[State 3150, Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 48,48
guard.pauseTime = 48,48
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.586592179,-5.78125 ;-5, -4.625
air.cornerPush.velOff = 0
yAccel = 0.5126953125 ;0.328125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= 46
value = 3150
elem = 6
ignoreHitPause = 1

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 15
x = 7.541899441 ;6.75

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 16
x = 0

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 15
x = 8.938547486 ;10

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 16
trigger2 = AnimElem = 18
trigger3 = AnimElem = 22
x = 9.832402235 ;11

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 17
trigger2 = AnimElem = 23
x = 13.40782123 ;15

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 19
x = 0.8938547486 ;1

[State 3150, Woosh sound 2]
type = PlaySnd
trigger1 = AnimElem = 18
value = 1,2
channel = 3

[State 3150, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 19
value = 3100,1
channel = 0

[State 3150, Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 19
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 16,16
guard.pauseTime = 16,16
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.586592179,-5.78125 ;-5, -4.625
air.cornerPush.velOff = 0
yAccel = 0.5126953125 ;0.328125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 24
x = 13

[State 3150, Woosh sound 3]
type = PlaySnd
trigger1 = AnimElem = 26
value = 1,2
channel = 4

[State 3150, Hit 3]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 27
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 8,8
guard.pauseTime = 8,8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.586592179,-5.78125 ;-5, -4.625
air.cornerPush.velOff = 0
yAccel = 0.5126953125 ;0.328125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 31
x = 4

[State 3150, Voice 4-6]
type = PlaySnd
trigger1 = AnimElem = 34
trigger2 = AnimElem = 45
trigger3 = AnimElem = 56
value = 1500,0
channel = 0

[State 3150, Woosh sound 4]
type = PlaySnd
trigger1 = AnimElem = 32
value = 1,2
channel = 5

[State 3150, Woosh sound 5]
type = PlaySnd
trigger1 = AnimElem = 43
value = 1,2
channel = 6

[State 3150, Woosh sound 6]
type = PlaySnd
trigger1 = AnimElem = 54
value = 1,2
channel = 7

[State 3150, Hits 4-6]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 34 || AnimElem = 45 || AnimElem = 56
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 8,8
guard.pauseTime = 8,8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
guard.hittime = (30) - 6
ground.slideTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.586592179,-5.78125 ;-5, -4.625
air.cornerPush.velOff = 0
yAccel = 0.5126953125 ;0.328125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -38
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElem = 63
trigger2 = AnimElem = 64
x = 8

[State 3150, Woosh sound 7]
type = PlaySnd
trigger1 = AnimElem = 66
value = 1,2
channel = 8

[State 3150, Final Hit]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 67
ID = 3100
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 48,48
guard.pauseTime = 48,48
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -5.25, -9
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.25, -9
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 48
envShake.ampl = 6
envShake.freq = 120

[State 3150, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(67) >= 0 && AnimElemTime(68) <= 0
trigger1 = HitPauseTime <= 46
value = 3150
elem = 68
ignoreHitPause = 1

[State 3150, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(70) >= 0
moveType = I

[State 3150, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;<SHINGO KINSEI ORE SHIKI: KAMUKURA>=
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
trigger1 = Time = 3
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 47

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
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = -12,-53
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = !Time
value = 3200,0
channel = 0

[State 3200, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1,0
channel = 1

[State 3200, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3 && !var(37)
attr = S, ST
hitFlag = M
priority = 7, Miss
getPower = 0,0
givePower = 0,0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -60
numHits = 0
p1StateNo = 3210

[State 3200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 3200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Connected
[Statedef 3210]
type = S
physics = N
moveType = A
anim = 3210
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3210, SuperPause]
type = SuperPause
trigger1 = !Time
time = 0
p2DefMul = 1
anim = -1
darken = 0

[State 3210, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3210, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3215

[State 3220, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3210, Width]
type = Width
trigger1 = 1
edge = 64,0

[State 3210, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 45,0

[State 3210, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 30,0

[State 3210, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 45,0

[State 3210, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 60,0

[State 3210, Width]
type = Width
trigger1 = AnimElemTime(6) >= 0
value = 16,0

[State 3210, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 4,4
channel = 0

[State 3210, Woosh 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1,2
channel = 1

[State 3210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
x = 8

[State 3210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
x = 6

[State 3210, Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 10
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.586592179,-5.78125 ;-5, -4.625
air.cornerPush.velOff = 0
yAccel = 0.5126953125 ;0.328125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -38
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3210, Woosh 2]
type = PlaySnd
trigger1 = AnimElem = 21
value = 1,2
channel = 3

[State 3210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 18
x = 8.938547486 ;10

[State 3210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 19
trigger2 = AnimElem = 21
trigger3 = AnimElem = 25
x = 9.832402235 ;11

[State 3210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 20
trigger2 = AnimElem = 26
x = 13.40782123 ;15

[State 3210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 22
x = 0.8938547486 ;1

[State 3210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 27
x = 2.681564246 ;3

[State 3210, Hit 2]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 22
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 32,34
guard.pauseTime = 32,34
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.586592179,-5.78125 ;-5, -4.625
air.cornerPush.velOff = 0
yAccel = 0.5126953125 ;0.328125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3210, Woosh 3]
type = PlaySnd
trigger1 = AnimElem = 30
value = 1,2
channel = 4

[State 3210, Hit 3]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 31
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.586592179,-5.78125 ;-5, -4.625
air.cornerPush.velOff = 0
yAccel = 0.5126953125 ;0.328125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3210, Woosh 4]
type = PlaySnd
trigger1 = AnimElem = 42
value = 1,2
channel = 5

[State 3210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 42
x = 8.938547486 ;10

[State 3210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 43
x = 10.72625698 ;12

[State 3210, Hit 4]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 43
ID = 3210
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.586592179,-5.78125 ;-5, -4.625
air.cornerPush.velOff = 0
yAccel = 0.5126953125 ;0.328125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3210, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3210) > 1
ID = 3210
keepOne = 1
excludeID = 3210
ignoreHitPause = 1

[State 3210, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3210)
trigger1 = !(Target(3210), Time)
value = 3216
ID = 3210
ignoreHitPause = 1

[State 3210, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 58
value = ifElse(Random < 500, 3210, 195),0
channel = 0

[State 3210, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 111
value = 3210,1
channel = 0

[State 3210, Light bulb ding]
type = PlaySnd
trigger1 = AnimElem = 111
value = 3210,2
channel = 6

[State 3210, Light bulb thought balloon overlay]
type = Explod
trigger1 = AnimElem = 108
anim = 23210
bindTime = -1
sprPriority = 3
posType = P1
pos = -5 + 9 * (Facing = -1),-105
facing = ifElse(Facing = 1, 1, -1)
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3210, Light bulb thought balloon]
type = Explod
trigger1 = AnimElem = 108
anim = 13210
bindTime = -1
sprPriority = 3
posType = P1
pos = -5,-105
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3210, Woosh 5]
type = PlaySnd
trigger1 = AnimElem = 125
value = 1,2
channel = 1

[State 3210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 122
x = 8.938547486 ;10

[State 3210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 123
trigger2 = AnimElem = 125
trigger3 = AnimElem = 129
x = 9.832402235 ;11

[State 3210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 124
trigger2 = AnimElem = 130
x = 13.40782123 ;15

[State 3210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 126
x = 0.8938547486 ;1

[State 3210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 131
x = 2.681564246 ;3

[State 3210, Hit 5]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 126
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.586592179,-5.78125 ;-5, -4.625
air.cornerPush.velOff = 0
yAccel = 0.5126953125 ;0.328125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3210, Woosh 6]
type = PlaySnd
trigger1 = AnimElem = 135
value = 1,2
channel = 3

[State 3210, Voice 4]
type = PlaySnd
trigger1 = AnimElem = 136
value = 3210,3
channel = 0

[State 3210, Hit 6]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 137
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -5.586592179,-5.78125 ;-5, -4.625
air.cornerPush.velOff = 0
yAccel = 0.5126953125 ;0.328125
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 37), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3210, PosAdd]
type = PosAdd
trigger1 = AnimElem = 136
trigger2 = AnimElem = 137
trigger3 = AnimElem = 139
trigger4 = AnimElem = 142
trigger5 = AnimElem = 143
x = 8

[State 3210, Woosh 7]
type = PlaySnd
trigger1 = AnimElem = 139
value = 1,2
channel = 4

[State 3210, Hit 7]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 141
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -2,-10.8
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2,-10.8
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 20), var(36) := -99
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3210, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 143
value = 40,0
channel = 5

[State 3210, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 143
stateType = A
physics = N

[State 3210, Dust Helper]
type = Helper
trigger1 = AnimElem = 143
helperType = Normal
stateNo = 8100
ID = 8100
name = "Nie Togi Dust"
posType = P1
ownPal = 1

[State 3210, VelSet (x-movement)]
type = VelSet
trigger1 = AnimElemTime(143) >= 0 && AnimElemTime(147) < 1
x = 5 * exp((-0.08248934360989325722859930675326) * AnimElemTime(143))

[State 3210, VelSet (halt x-movement)]
type = VelSet
trigger1 = AnimElemTime(147) = 1
x = 0

[State 3210, VelSet (y-movement)]
type = VelSet
trigger1 = AnimElem = 143
y = -8

[State 1520, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(143) > 0
y = 0.42578125

[State 3210, Woosh 8]
type = PlaySnd
trigger1 = AnimElem = 143
value = 1,2
channel = 5

[State 3210, Final Hit]
type = HitDef
trigger1 = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 144
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 32,32
guard.pauseTime = 32,32
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -5.25, -9
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.25, -9
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -105
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(145) >= 0
moveType = I

[State 3210, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201



;<KAMUKURA (TARGET)>==
;Grabbed
[StateDef 3215]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 3215, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3215

[State 3215, StateTypeSet]
type = StateTypeSet
trigger1 = !AnimTime && Anim = 3215
stateType = S

[State 3215, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime && Anim = 3215
value = 5007

[State 3215, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3215, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 3215, Safety]
type = SelfState
trigger1 = Time > 100
value = 0
ctrl = 1


;Stunned get-hit (shaking)
[StateDef 3216]
type = S
moveType = H
physics = N
velSet = 0,0

[State 3216, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(AnimType) != [3,5]
value = ifElse((GetHitVar(GroundType) = 1), 5000, 5010) + GetHitVar(AnimType)

[State 3216, Freeze Anim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 3216, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 3217


;Stunned get-hit (knocked back)
[StateDef 3217]
type = S
moveType = H
physics = N
velSet = 0,0

[State 3217, ChangeAnim]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5005

[State 3217, ChangeState]
type = ChangeState
trigger1 = HitOver
value = 3218


;Stunned get-hit (dizzied)
[StateDef 3218]
type = S
moveType = H
physics = N
anim = 5300
velSet = 0,0

[State 3218, SelfState]
type = SelfState
trigger1 = Time = 325
value = 0
ctrl = 1
