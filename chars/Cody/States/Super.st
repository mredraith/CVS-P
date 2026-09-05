; _______________________________________________
;| Cody Travers by Trololo |
; 
;
;SUPER STATES=
;

;FINAL DESTRUCTION=
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
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 1
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(33 * const(size.xscale)), ceil(-84 * const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 1
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Knife Dropped]
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

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElemTime(3)>=0 && AnimElemTime(6)<0
x = 7.5

[State 3000, VelMul]
type = VelMul
trigger1 = AnimElemTime(6)>=0
x = 0.75

[State 3000, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000, 0
channel = 0

[State 3000, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0
channel = 1

[State 3000, Skid Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 101,0
channel = 2

[State 3000, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 12 || var(20))
trigger1 = AnimElem = 5
ID = 3000
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 45 < 7, 7, fvar(11) * 45)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 10, 10
guard.pauseTime = 10, 10
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = -6.75, 0
ground.cornerPush.velOff = 0
guard.velocity = -6.75
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 74), var(36):= -85
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forcestand = 1

[State 3000, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3000) && Enemy,StateType != A
value = 3010
ignorehitpause = 1

[State 3000, ChangeState]
type = ChangeState
trigger1 = MoveHit && NumTarget(3000) && Enemy,StateType != A
value = 3005
ctrl = 0
ignorehitpause = 0

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 3000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Success
[StateDef 3005]
type = S
physics = S
moveType = A
anim = 3005
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 3005, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000, 1
channel = 0

[State 3005, Woosh: Jabs]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 20
value = 1,0
channel = 1

[State 3005, HitDef: Jabs]
type = HitDef
triggerall = !var(16) && (var(15) < 13 || var(20))
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 6 < 7, 7, fvar(11) * 6)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 1, 1
guard.pauseTime = 1, 1
animType = Light
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 22
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -6.75
guard.cornerPush.velOff = 0
air.velocity = 0, -2.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 0
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 74), var(36):= -85
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3005, Voice]
type = PlaySnd
trigger1 = AnimElem = 31
value = 4, 3
channel = 0

[State 3005, Woosh: Body Blow]
type = PlaySnd
trigger1 = AnimElem = 31
value = 1,1
channel = 1

[State 3005, HitDef: Body Blow]
type = HitDef
triggerall = !var(16) && (var(15) < 18 || var(20))
trigger1 = AnimElem = 32
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 39 < 7, 7, fvar(11) * 39)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Medium
air.animType = Up
fall.animType = Up
ground.type = Low
air.type = Low
ground.hitTime = 20
guard.hittime = (20) - 6
ground.slideTime = 20
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -6.75
guard.cornerPush.velOff = 0
air.velocity = 0, -2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 0
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3005, Voice]
type = PlaySnd
trigger1 = AnimElem = 38
value = 3000, 2
channel = 0

[State 3005, Woosh: Upper]
type = PlaySnd
trigger1 = AnimElem = 38
value = 1,2
channel = 1

[State 3005, HitDef: Upper]
type = HitDef
triggerall = !var(16) && (var(15) < 19 || var(20))
trigger1 = AnimElem = 39
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 62 < 7, 7, fvar(11) * 62)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Up
fall.animType = Up
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -3, -11
ground.cornerPush.velOff = 0
guard.velocity = -6.75
guard.cornerPush.velOff = 0
air.velocity = -3, -11
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3005, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(40) >= 0
moveType = I

[State 3005, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Target
[StateDef 3010]
type = S
moveType = H
physics = N
velSet = 0,0

[State 3010, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 3010, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 3010, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 3010, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 3010, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 3010, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 3010, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 3010, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[State 3010, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 3011

[State 3010, 7]
type = SelfState
trigger1 = HitShakeOver
value = 5030

[Statedef 3011]
type = S
movetype= H
physics = S

[State 3011, 1]
type = VelSet
trigger1 = Time = 0
x = ifelse(facing = -1, GetHitVar(xvel), (GetHitVar(xvel) * -1))

[State 3011, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 3011, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 3011, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 3011, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 3011, 6]
type = SelfState
trigger1 = HitOver
value = 0
ctrl = 1

;FINAL DESTRUCTION MAX=
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
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

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
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3050, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(33 * const(size.xscale)), ceil(-84 * const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3050, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, Knife Dropped]
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

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElemTime(3)>=0 && AnimElemTime(6)<0
x = 7.5

[State 3050, VelMul]
type = VelMul
trigger1 = AnimElemTime(6)>=0
x = 0.75

[State 3050, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000, 0
channel = 0

[State 3050, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0
channel = 1

[State 3050, Skid Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 101,0
channel = 2

[State 3050, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 12 || var(20))
trigger1 = AnimElem = 5
ID = 3050
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 45 < 7, 7, fvar(11) * 45)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 10, 10
guard.pauseTime = 10, 10
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = -6.75, 0
ground.cornerPush.velOff = 0
guard.velocity = -6.75
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 74), var(36):= -85
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forcestand = 1

[State 3050, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3050) && Enemy,StateType != A
value = 3010
ignorehitpause = 1

[State 3050, ChangeState]
type = ChangeState
trigger1 = MoveHit && NumTarget(3050) && Enemy,StateType != A
value = 3055
ctrl = 0
ignorehitpause = 0

[State 3050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 3050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Success
[StateDef 3055]
type = S
physics = S
moveType = A
anim = 3055
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 3055, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000, 1
channel = 0

[State 3055, Woosh: Jabs]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 20
trigger6 = AnimElem = 30
trigger7 = AnimElem = 33
trigger8 = AnimElem = 36
trigger9 = AnimElem = 46
trigger10 = AnimElem = 49
trigger11 = AnimElem = 52
value = 1,0
channel = 1

[State 3055, HitDef: Jabs]
type = HitDef
triggerall = !var(16) && (var(15) < 13 || var(20))
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
trigger6 = AnimElem = 31
trigger7 = AnimElem = 34
trigger8 = AnimElem = 37
trigger9 = AnimElem = 47
trigger10 = AnimElem = 50
trigger11 = AnimElem = 53
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 6 < 7, 7, fvar(11) * 6)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 1, 1
guard.pauseTime = 1, 1
animType = Light
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 22
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -6.75
guard.cornerPush.velOff = 0
air.velocity = 0, -2.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 0
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 74), var(36):= -85
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3055, Voice]
type = PlaySnd
trigger1 = AnimElem = 63
trigger2 = AnimElem = 68
trigger3 = AnimElem = 71
trigger4 = AnimElem = 76
trigger5 = AnimElem = 82
value = 4, 3
channel = 0

[State 3055, Woosh: Medium Punches]
type = PlaySnd
trigger1 = AnimElem = 63
trigger2 = AnimElem = 68
trigger3 = AnimElem = 71
trigger4 = AnimElem = 76
trigger5 = AnimElem = 82
value = 1,1
channel = 1

[State 3055, HitDef: Light Upper]
type = HitDef
triggerall = !var(16) && (var(15) < 24 || var(20))
trigger1 = AnimElem = 64
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 22 < 7, 7, fvar(11) * 22)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Medium
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -6.75
guard.cornerPush.velOff = 0
air.velocity = 0, -2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 0
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 69), var(36) := -89
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3055, HitDef: Light Body Blow]
type = HitDef
triggerall = !var(16) && (var(15) < 25 || var(20))
trigger1 = AnimElem = 68
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 17 < 7, 7, fvar(11) * 17)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Medium
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -6.75
guard.cornerPush.velOff = 0
air.velocity = 0, -2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 0
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3055, HitDef: Medium Upper 1]
type = HitDef
triggerall = !var(16) && (var(15) < 26 || var(20))
trigger1 = AnimElem = 72
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 17 < 7, 7, fvar(11) * 17)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Medium
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -6.75
guard.cornerPush.velOff = 0
air.velocity = 0, -2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 0
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 43), var(36) := -97
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3055, HitDef: Medium Upper 2]
type = HitDef
triggerall = !var(16) && (var(15) < 27 || var(20))
trigger1 = AnimElem = 77
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 17 < 7, 7, fvar(11) * 17)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Medium
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -6.75
guard.cornerPush.velOff = 0
air.velocity = 0, -2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 0
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -98
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3055, HitDef: Hard Body Blow]
type = HitDef
triggerall = !var(16) && (var(15) < 28 || var(20))
trigger1 = AnimElem = 83
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 17 < 7, 7, fvar(11) * 17)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 8, 8
guard.pauseTime = 8, 8
animType = Medium
air.animType = Up
fall.animType = Up
ground.type = Low
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 22
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = 0, -3.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 0
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3005, Voice]
type = PlaySnd
trigger1 = AnimElem = 89
value = 3000, 2
channel = 0

[State 3055, Woosh: Final Upper]
type = PlaySnd
trigger1 = AnimElem = 89
value = 1,2
channel = 1

[State 3055, HitDef: Final Upper]
type = HitDef
triggerall = !var(16) && (var(15) < 29 || var(20))
trigger1 = AnimElem = 90
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 39 < 7, 7, fvar(11) * 39)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Up
fall.animType = Up
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -3.25, -11
ground.cornerPush.velOff = 0
guard.velocity = -6.75
guard.cornerPush.velOff = 0
air.velocity = -3.25, -11
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3055, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(91) >= 0
moveType = I

[State 3055, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;DEAD END IRONY=
[StateDef 3100]
type = S
physics = N
moveType = A
anim = ifelse(var(40), 13100, 3100)
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
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3100, SuperPause FX]
type = Helper
trigger1 = Time = 1
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(34 * const(size.xscale)), ceil(-81 * const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 1
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 1 && !NumExplod(3101)
anim = 3101
ID = 3101
pos = ceil(16 * const(size.xscale)), ceil(5 * const(size.yscale))
postype = p1
bindtime = 15
removetime = -2
pausemovetime = 0
scale = 1 * const(size.xscale), 1 * const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 11
trigger2 = AnimElem = 15
trigger3 = AnimElem = 21
x = 4.25

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 12
trigger2 = AnimElem = 16
trigger3 = AnimElem = 22
x = 0

[State 3100, Voice]
type = PlaySnd
trigger1 = !Time
value = 3100, 0
channel = 0

[State 3100, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 15
value = 4, 3
channel = 0

[State 3100, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 10
trigger3 = AnimElem = 15
trigger4 = AnimElem = 20
trigger5 = AnimElem = 25
value = 1,5
channel = 1

[State 3100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 24
value = 40,0
channel = 2

[State 3100, HitDef 1]
type = HitDef
triggerall = !var(16) && (var(15) < 12 || var(20))
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 39 < 7, 7, fvar(11) * 39)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 7, 7
guard.pauseTime = 7, 7
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -3.375, 0
ground.cornerPush.velOff = 0
guard.velocity = -3.375
guard.cornerPush.velOff = 0
air.velocity = -4.5, -6.75
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 98), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3100, HitDef 2]
type = HitDef
triggerall = !var(16) && (var(15) < 13 || var(20))
trigger1 = AnimElem = 11
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -3.375, 0
ground.cornerPush.velOff = 0
guard.velocity = -3.375
guard.cornerPush.velOff = 0
air.velocity = -4.5, -6.15
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 84), var(36) := -9
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3100, HitDef 3]
type = HitDef
triggerall = !var(16) && (var(15) < 14 || var(20))
trigger1 = AnimElem = 15
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -3.375, 0
ground.cornerPush.velOff = 0
guard.velocity = -3.375
guard.cornerPush.velOff = 0
air.velocity = -4.5, -6.15
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 98), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forcestand = 1

[State 3100, HitDef 4]
type = HitDef
triggerall = !var(16) && (var(15) < 15 || var(20))
trigger1 = AnimElem = 21
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -3.375, 0
ground.cornerPush.velOff = 0
guard.velocity = -3.375
guard.cornerPush.velOff = 0
air.velocity = -4.5, -6.15
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 111), var(36) := -93
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElem = 24
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 24
x = 3
y = -4.5

[State 3100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 24
statetype = A
physics = A

[State 3100, HitDef 5]
type = HitDef
triggerall = !var(16) && (var(15) < 16 || var(20))
trigger1 = AnimElem = 26
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -5.75, -6.55
ground.cornerPush.velOff = 0
guard.velocity = -3.375
guard.cornerPush.velOff = 0
air.velocity = -5, -6.2
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.xvelocity = -2
fall.yvelocity = -4
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -77
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(27) >= 0
moveType = I

[State 3100, End]
type = ChangeState
trigger1 = AnimElemTime(27) >= 0 && (pos y > -vel y)
value = 3105

;Landing
[StateDef 3105]
type = S
physics = S
moveType = I
anim = ifelse(var(40), 13105, 3105)
velSet = 0,0

[State 3105, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3105, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3105, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3105, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;DEAD END IRONY MAX=
[StateDef 3150]
type = S
physics = S
moveType = A
anim = ifelse(var(40), 13150, 3150)
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
trigger1 = AnimElemTime(4) < 0
time = 1
value = SCA

[State 3150, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(34 * const(size.xscale)), ceil(-81 * const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3150, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3150, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 3.5
y = -4

[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(8) < 0
y = .465

[State 3150, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A
physics = N

[State 3150, Voice]
type = PlaySnd
trigger1 = !Time
value = 3100, 0
channel = 0

[State 3150, Voice]
type = PlaySnd
trigger1 = AnimElem = 25
trigger2 = AnimElem = 42
value = 4, 2
channel = 0

[State 3150, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 13
trigger3 = AnimElem = 19
trigger4 = AnimElem = 25
trigger5 = AnimElem = 32
trigger6 = AnimElem = 37
trigger7 = AnimElem = 42
trigger8 = AnimElem = 47
value = 1,5
channel = 1

[State 3150, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 40,0
channel = 2

[State 3150, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 30
value = 41,0
channel = 2

[State 3150, HitDef 1]
type = HitDef
triggerall = !var(16) && (var(15) < 12 || var(20))
trigger1 = AnimElem = 5
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 39 < 7, 7, fvar(11) * 39)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 7, 7
guard.pauseTime = 7, 7
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 20
guard.hittime = (20) - 6
ground.slideTime = 20
air.hitTime = 120
ground.velocity = -3.375, 0
ground.cornerPush.velOff = 0
guard.velocity = -3.375
guard.cornerPush.velOff = 0
air.velocity = -4.5, -7.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -77
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forcestand = 1

[State 3150, ChangeAnim]
type = ChangeAnim
trigger1 = (AnimElemTime(6) >= 0 && AnimElemTime(8) < 0) && (pos y > -vel y)
value = ifelse(var(40), 13150, 3150)
elem = 8

[State 3150, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 8
statetype = S
physics = N

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0
y = 0

[State 3150, PosSet]
type = PosSet
trigger1 = AnimElem = 8
y = 0

[State 3150, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 8
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3150, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 52,0

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 14
trigger2 = AnimElem = 20
trigger3 = AnimElem = 25
x = 4.25

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 15
trigger2 = AnimElem = 21
trigger3 = AnimElem = 29
x = 0

[State 3150, HitDef 2]
type = HitDef
triggerall = !var(16) && (var(15) < 13 || var(20))
trigger1 = AnimElem = 14
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -3.375, 0
ground.cornerPush.velOff = 0
guard.velocity = -3.375
guard.cornerPush.velOff = 0
air.velocity = -4.5, -6.15
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 84), var(36) := -9
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3150, HitDef 3]
type = HitDef
triggerall = !var(16) && (var(15) < 14 || var(20))
trigger1 = AnimElem = 20
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -3.375, 0
ground.cornerPush.velOff = 0
guard.velocity = -3.375
guard.cornerPush.velOff = 0
air.velocity = -4.5, -6.15
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 3150, HitDef 4]
type = HitDef
triggerall = !var(16) && (var(15) < 15 || var(20))
trigger1 = AnimElem = 26
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -2.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -6.625
guard.cornerPush.velOff = 0
air.velocity = -2.16, -8.81
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall.xvelocity = -3
fall.yvelocity = -4.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 52), var(36) := -124
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forceStand = 1

[State 3150, Dust Helper]
type = Helper
trigger1 = AnimElem = 30
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 30
x = 3
y = -9.5

[State 3150, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 30
statetype = A
physics = A

[State 3150, HitDef 5-7]
type = HitDef
triggerall = !var(16) && (var(15) < 18 || var(20))
trigger1 = AnimElem = 33
trigger2 = AnimElem = 38
trigger3 = AnimElem = 43
trigger4 = AnimElem = 48
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -2.16, -4.81
ground.cornerPush.velOff = 0
guard.velocity = -6.625
guard.cornerPush.velOff = 0
air.velocity = -2.16, -4.81
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall.xvelocity = -3
fall.yvelocity = -4.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -77
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forceStand = 1

[State 3150, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(49) >= 0
moveType = I

[State 3150, End]
type = ChangeState
trigger1 = AnimElemTime(49) >= 0 && (pos y > -vel y)
value = 3105



;LAST DREAD DUST=
[Statedef 3200]
type = S
movetype = A
physics = N
juggle = 3
ctrl = 0
velset = 0,0
sprpriority = 2
velset = 0,0
anim = ifelse(var(40), 13200, 3200)
powerAdd = -3000
faceP2 = 1

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
trigger1 = AnimElemTime(9) < 0
time = 1
value = SCA

[State 3200, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(34 * const(size.xscale)), ceil(-81 * const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3200, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3200, Knife Dropped]
type = helper
triggerall = var(40)
trigger1 = AnimElem = 11
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

[State 3200, VarSet]
type = VarSet
trigger1 = !time
var(10) = 0

[State 3200, Explod]
type = Explod
trigger1 = animelem = 5
anim = 3201
ID = 3201
pos = ceil(15 * const(size.xscale)), ceil(2 * const(size.yscale))
postype = p1
facing = 1
vfacing = 1
bindtime = 4
removetime = -2
pausemovetime = 0
scale = 1 * const(size.xscale),1 * const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 3200, Projectile]
type = Helper
trigger1 = animelem = 6
helperType = Normal
stateNo = 3205
ID = 3205
name = "Last Dread Dust Projectile"
posType = P1
pos = ceil(36 * const(size.xscale)), ceil(0 * const(size.yscale))
size.xScale = 1 * const(size.xscale)
size.yScale = 1 * const(size.yscale)
ownPal = 1

[State 3200, Voice]
type = PlaySnd
trigger1 = !Time
value = 3200, 0
channel = 0

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3200, 2
channel = 0

[State 3200, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,5
channel = 1

[State 32000, Skid Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3200, 1
channel = 2

[State 3200, Skid Sound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 101,0
channel = 2

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElemTime(11)>=0 && AnimElemTime(14)<0
x = 12.5

[State 3200, VelMul]
type = VelMul
trigger1 = AnimElemTime(14)>=0
x = 0.75

[State 3200, Woosh]
type = PlaySnd
trigger1 = AnimElem = 13
trigger2 = AnimElem = 16
value = 1,0
channel = 1

[State 3200, HitDef: Jabs]
type = HitDef
triggerall = !var(16) && (var(15) < 16 || var(20))
trigger1 = AnimElem = 14
trigger2 = AnimElem = 17
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 12 < 7, 7, fvar(11) * 12)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Light
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 22
guard.hittime = (22) - 6
ground.slideTime = 22
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = 0, -2.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 0
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 74), var(36):= -85
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
kill = 0

[State 3200, Woosh: Body Blow]
type = PlaySnd
trigger1 = AnimElem = 19
value = 1,1
channel = 1

[State 3200, HitDef: Body Blow]
type = HitDef
triggerall = !var(16) && (var(15) < 18 || var(20))
trigger1 = AnimElem = 20
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 64 < 7, 7, fvar(11) * 64)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Medium
air.animType = Up
fall.animType = Up
ground.type = Low
air.type = Low
ground.hitTime = 20
guard.hittime = (20) - 6
ground.slideTime = 20
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = 0, -2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 0
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
kill = 0

[State 3200, Woosh: Upper]
type = PlaySnd
trigger1 = AnimElem = 22
value = 1,2
channel = 1

[State 3200, HitDef: Upper]
type = HitDef
triggerall = !var(16) && (var(15) < 19 || var(20))
trigger1 = AnimElem = 23
ID = 3200
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 103 < 7, 7, fvar(11) * 103)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 6, 6
guard.pauseTime = 6, 6
animType = Hard
air.animType = Up
fall.animType = Up
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -3, -11
ground.cornerPush.velOff = 0
guard.velocity = -8.75
guard.cornerPush.velOff = 0
air.velocity = -3, -11
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 67), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
kill = ifelse(var(10), 0, 1)

[State 3200, TargetState]
type = TargetState
triggerall = AnimElem = 24
trigger1 = MoveHit && NumTarget && var(10)
value = 3215
ignorehitpause = 0

[State 3200, ChangeState]
type = ChangeState
triggerall = AnimElem = 24
trigger1 = MoveHit && NumTarget && var(10)
value = 3210
ctrl = 0
ignorehitpause = 1

[State 3200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(24) >= 0
moveType = I

[State 3200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Success
[StateDef 3210]
type = S
physics = S
moveType = A
anim = 3210
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 3210, VelSet]
type = VelSet
trigger1 = AnimElemTime(5)>=0 && AnimElemTime(7)<0
x = 20

[State 3210, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(5)>=0 && AnimElemTime(7)<0
value = 0
ignorehitpause = 1

[State 3210, VelMul]
type = VelMul
trigger1 = AnimElemTime(7)>=0
x = 0.85

[State 3210, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3210, 0
channel = 0

[State 3210, Woosh]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1,2
channel = 1

[State 3210, HitDef]
type = HitDef
triggerall = !var(16) && (var(15) < 20 || var(20))
trigger1 = AnimElem = 6
ID = 3211
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 92 < 7, 7, fvar(11) * 92)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = 25, 25
guard.pauseTime = 25, 25
animType = Hard
air.animType = Up
fall.animType = Up
ground.type = Low
air.type = Low
ground.hitTime = 16
guard.hittime = (16) - 6
ground.slideTime = 16
air.hitTime = 120
ground.velocity = -11, -3
ground.cornerPush.velOff = 0
guard.velocity = -6.75
guard.cornerPush.velOff = 0
air.velocity = -11, -3
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -94
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
kill = 0
p2stateno = 3216
snap = ceil(25 * const(size.xscale)),ceil(-94 * const(size.yscale))

[State 3210, Explod]
type = Explod
trigger1 = Enemy, Stateno = 3217 && var(10)
anim = 1
ID = 3217
removetime = 1
pausemovetime = 0
removeongethit = 1

[State 3210, Explod]
type = Explod
trigger1 = NumExplod(3217)
anim = 1
ID = 3218
removetime = 2
pausemovetime = 0
removeongethit = 1

[State 3210, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumExplod(3217)
value = -ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50))
kill = 1

[State 3210, HitAdd]
type = HitAdd
trigger1 = NumExplod(3217)
value = 1

[State 3210, Impact Sound]
type = PlaySnd
trigger1 = NumExplod(3217)
value = 820,1
channel = 2

[State 3210, EnvShake]
type = EnvShake
trigger1 = NumExplod(3217)
time = 14
ampl = -8
freq = 120

[State 3210, Wall Impact Dust]
type = Helper
trigger1 = NumExplod(3217)
helperType = Normal
stateNo = 8111
ID = 8111
name = "Wall Impact Dust"
posType = P2
pos = 0, 0
facing = -1
ownPal = 1

[State 3210, VarSet]
type = VarSet
trigger1 = NumExplod(3217)
var(10) = 0

[State 3210, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(3217)
id = 3217

[State 3210, Voice]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3210, 1
channel = 0

[State 3210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 3210, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Target
[StateDef 3215]
type = A
physics = N
moveType = H
ctrl = 0
velset = ifelse(p2dist x >= 55, -1.15, -1.45), -13.5
sprPriority = 1

[State 3105, ChangeAnim]
type = ChangeAnim2
trigger1 = Anim != 3215 && !Time
value = 3215

[State 3325, VelAdd]
type = VelAdd
trigger1 = 1
y = .475

[State 3105, End]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= 25
value = 5100

[StateDef 3216]
type = A
physics = N
moveType = H
ctrl = 0
velset = 0, 0
sprPriority = 1

[State 3216, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,0
ignoreHitPause = 1

[State 3216, Width]
type = Width
trigger1 = 1
edge = -20,-20
player = -20,-20

[State 3216, ChangeAnim]
type = ChangeAnim2
trigger1 = Anim != 3216 && !Time
value = 3216

[State 3216, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 3216, AngleSet]
type = AngleSet
trigger1 = AnimElemTime(1)>=0 && AnimElemTime(2)<0
value = 60

[State 3216, AngleSet]
type = AngleSet
trigger1 = AnimElemTime(2)>=0
value = 80

[State 3216, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = -28
y = -4

[State 3216, Bounce Off Wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 0 || FrontEdgeBodyDist <= 0
value = 3217

[State 3216, Safety]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= 25
value = 5100

;Impacting Wall
[StateDef 3217]
type = A
moveType = H
physics = N

[State 3217, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 3217, Width]
type = Width
trigger1 = 1
edge = -20,-20
player = -20,-20

[State 3216, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 3216, AngleSet]
type = AngleSet
trigger1 = 1
value = 80

[State 3217, Hitting the Wall FX]
type = Explod
trigger1= !Time
anim = F72
pos = 0, 0
posType = p1
sprPriority = 3

[State 3217, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 3217, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,0
ignoreHitPause = 1

[State 3217, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignoreHitPause = 1

[State 3217, ChangeAnim]
type = ChangeAnim2
trigger1 = !time
value = 3217

[State 3217, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,0

[State 3217, End]
type = ChangeState
trigger1 = Time >= 35
value = 3218


;Bouncing Off Wall
[Statedef 3218]
type = A
moveType = H
physics = N

[State 3218, Turn]
type = Turn
trigger1 = !Time && !SelfAnimExist(5902)

[State 3218, Gravity]
type = VelAdd
trigger1 = 1
y = 0.5

[State 3218, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(SelfAnimExist(5902), 1.5, -1.5)

[State 3218, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5902)
value = 5902

[State 3218, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5902)
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 3218, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 3218, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 3218, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 3218, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 3218, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100